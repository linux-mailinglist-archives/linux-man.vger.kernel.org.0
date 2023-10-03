Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 35B937B696A
	for <lists+linux-man@lfdr.de>; Tue,  3 Oct 2023 14:49:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231232AbjJCMt4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 3 Oct 2023 08:49:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230283AbjJCMtz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 3 Oct 2023 08:49:55 -0400
Received: from nabal.armitage.org.uk (nabal.armitage.org.uk [IPv6:2001:470:69dd:35::188])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23F9F91
        for <linux-man@vger.kernel.org>; Tue,  3 Oct 2023 05:49:49 -0700 (PDT)
Received: from localhost (nabal.armitage.org.uk [127.0.0.1])
        by nabal.armitage.org.uk (Postfix) with ESMTP id 024972E4BE9;
        Tue,  3 Oct 2023 13:49:36 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=armitage.org.uk;
         h=content-transfer-encoding:mime-version:user-agent
        :content-type:content-type:date:date:from:from:subject:subject
        :message-id:received; s=20200110; t=1696337076; x=1697201077;
         bh=ZniaCylqI3wocL4WnlJQ5yNlTZ4qsqnnDH6oWp0vCcQ=; b=A5ULnZgs0hNN
        0GoxKa8A0DigMrSMQXF8ApKj4HMx46SPJbn4szbLU4ivW+dDR6w46kzFZIbgdPnD
        1IZ7F5xdZDjC+v54zWnZA5FRWVI5ggTTU3fz+Pl2tsWY/7ECe12l7sc/vegWSMWm
        AbgwTqDDNHl4cdxRwWIwM2aojWRTvzo=
X-Virus-Scanned: amavisd-new at armitage.org.uk
Received: from samson.armitage.org.uk (samson.armitage.org.uk [IPv6:2001:470:69dd:35::210])
        by nabal.armitage.org.uk (Postfix) with ESMTPSA id 632452E4C9F;
        Tue,  3 Oct 2023 13:44:36 +0100 (BST)
Message-ID: <8bf3407d4d0ba216dd81976b760291325d77f3ea.camel@armitage.org.uk>
Subject: [patch v3] truncate.2: EINVAL is returned for non regular files
 except directories
From:   Quentin Armitage <quentin@armitage.org.uk>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Date:   Tue, 03 Oct 2023 13:44:35 +0100
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-5.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

truncate(2) returns EINVAL if the file argument is a socket, a FIFO or
a character or block device. The current man page indicates that
ftruncate() returns EINVAL for an fd that does not reference a regular
file, but for truncate() the only reason given for returning EINVAL is
that the length is invalid.

In the Linux source code in fs/open.c, vfs_truncate(), called from do_sys_truncate() starts
with the following checks:
        /* For directories it's -EISDIR, for other non-regulars - -EINVAL */
        if (S_ISDIR(inode->i_mode))
                return -EISDIR;
        if (!S_ISREG(inode->i_mode))
                return -EINVAL;

and do_sys_truncate() contains:
        error = -EINVAL;
        if (!S_ISREG(inode->i_mode) || !(f.file->f_mode & FMODE_WRITE))
                goto out_putf;
with no check for S_IS_DIR(inode-i_mode).

truncate() therefore returns EISDIR for a directory, and EINVAL for any other non-regular
file, whereas ftruncate() returns EINVAL for any non-regular file.

The following test program demonstrates the errors returned by truncate() and ftruncate():
=====================================================
 #define _GNU_SOURCE

 #include <err.h>
 #include <errno.h>
 #include <fcntl.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
 #include <sys/stat.h>
 #include <sys/sysmacros.h>
 #include <sys/types.h>
 #include <unistd.h>

struct {
    const char *fname;
    mode_t mode;
    unsigned dev_maj;
    unsigned dev_min;
} nodes[] = {
    {"/tmp/trunc_file", S_IFREG | 0666, 0, 0},
    {"/tmp/trunc_fifo", S_IFIFO | 0666, 0, 0},
    {"/tmp/trunc_socket", S_IFSOCK | 0666, 0, 0},
    {"/tmp/trunc_char_dev", S_IFCHR | 0666, 10, 7},  // Second Amiga mouse, /dev/amigamouse1
    {"/tmp/trunc_blk_dev", S_IFBLK | 0666, 13, 3},  // Was XT disk /dev/xd3
    {"/tmp/trunc_dir", 0666, 0, 0},
};

int
main(void)
{
    int  ret;
    int  fd;
    const char *fname;

    for (size_t n = 0; n < sizeof(nodes) / sizeof(nodes[0]); n++) {
        fname = nodes[n].fname;

        /* Create the node */
        if (!(nodes[n].mode & S_IFMT))
            ret = mkdir(fname, nodes[n].mode);
        else
            ret = mknod(fname, nodes[n].mode,
                        makedev(nodes[n].dev_maj, nodes[n].dev_min));

        if (ret == -1) {
            warn("mknod(\"%s\") %#m", fname);
            continue;
        }

        /* Returns EINVAL for IFSOCK, IFIFO, S_IFBLK, S_IFCHR, EISDIR for a directory */
        errno = 0;
        ret = truncate(fname, 0);
        warn("truncate(\"%s\"): %#m", fname);

	/* We cannot open device nodes when they are not real,
	 * so replace character device with /dev/null.
	 * We don't want to mess with real block devices! */
	if ((nodes[n].mode & S_IFMT) == S_IFCHR)
	    fname = "/dev/null";

	/* We cannot open a directory for writing. The ftruncate() call will
	 * therefore return EINVAL since the fd is not open for writing. */
        fd = open(fname, !(nodes[n].mode & S_IFMT) ? O_RDONLY : O_RDWR);
        if (fd == -1)
            warn("open(\"%s\"): %#m", fname);
        else {
            errno = 0;
            ftruncate(fd, 0);
            warn("ftruncate(\"%s\"): %#m", fname);

            if (close(fd) == -1)
                warn("close(\"%s\"): %#m", fname);
        }

        /* Remove the nodes */
        ret = (nodes[n].mode & S_IFMT) ? unlink(nodes[n].fname)
                                       : rmdir(nodes[n].fname);
        if (ret == -1)
            warn("unlink(\"%s\"): %#m", nodes[n].fname);

	fprintf(stderr, "\n");
    }
}
=====================================================
Compile the program and run it as user root.

The output (if program name is trunc) should be:

trunc: truncate("/tmp/trunc_file"): 0: Success
trunc: ftruncate("/tmp/trunc_file"): 0: Success

trunc: truncate("/tmp/trunc_fifo"): EINVAL: Invalid argument
trunc: ftruncate("/tmp/trunc_fifo"): EINVAL: Invalid argument

trunc: truncate("/tmp/trunc_socket"): EINVAL: Invalid argument
trunc: open("/tmp/trunc_socket"): ENXIO: No such device or address

trunc: truncate("/tmp/trunc_char_dev"): EINVAL: Invalid argument
trunc: ftruncate("/dev/null"): EINVAL: Invalid argument

trunc: truncate("/tmp/trunc_blk_dev"): EINVAL: Invalid argument
trunc: open("/tmp/trunc_blk_dev"): EACCES: Permission denied

trunc: truncate("/tmp/trunc_dir"): EISDIR: Is a directory
trunc: ftruncate("/tmp/trunc_dir"): EINVAL: Invalid argument

The patch below has different wording for EINVAL for truncate() and ftruncate() because they
return different errors for directories. It also removes the first description for EBADF or
EINVAL for ftruncate() since a more complete description is given two entries later.

Signed-off-by: Quentin Armitage <quentin@armitage.org.uk>

diff --git a/man2/truncate.2 b/man2/truncate.2
index 703f598b3..2eb4557cc 100644
--- a/man2/truncate.2
+++ b/man2/truncate.2
@@ -112,7 +112,9 @@ and
 .B EINVAL
 The argument
 .I length
-is negative or larger than the maximum file size.
+is negative or larger than the maximum file size,
+or the named file is a socket, a FIFO,
+or a block or character device.
 .TP
 .B EIO
 An I/O error occurred updating the inode.
@@ -160,10 +162,6 @@ we now have things that can be wrong with the file descriptor,
 .I fd
 is not a valid file descriptor.
 .TP
-.BR EBADF " or " EINVAL
-.I fd
-is not open for writing.
-.TP
 .B EINVAL
 .I fd
 does not reference a regular file or a POSIX shared memory object.

