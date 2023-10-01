Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7FCAE7B4846
	for <lists+linux-man@lfdr.de>; Sun,  1 Oct 2023 17:02:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235112AbjJAPCa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Oct 2023 11:02:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235075AbjJAPC3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Oct 2023 11:02:29 -0400
X-Greylist: delayed 5029 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 01 Oct 2023 08:02:22 PDT
Received: from nabal.armitage.org.uk (unknown [92.27.6.192])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B186D8
        for <linux-man@vger.kernel.org>; Sun,  1 Oct 2023 08:02:22 -0700 (PDT)
Received: from localhost (nabal.armitage.org.uk [127.0.0.1])
        by nabal.armitage.org.uk (Postfix) with ESMTP id 4F40F2E4C7E;
        Sun,  1 Oct 2023 16:02:20 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=armitage.org.uk;
         h=content-transfer-encoding:mime-version:user-agent
        :content-type:content-type:date:date:from:from:subject:subject
        :message-id:received; s=20200110; t=1696172240; x=1697036241;
         bh=sI0/0buyzJCY0w1IuDWpVZRMvwcEH8EHqIprctWRArI=; b=LtHPIC8aV10f
        1dOcNdyUdCvf144gVFZch+gk51VJrIxmZQB3zudYneutH2EivRiEEM0DCo+HTAc5
        ceYOipKbSomq1KXGicz19Dr2X4KfKlEodb16ZJbubS6sIP2sYlSb/iFRGOMJ5lmL
        ZHplAo3zrX+mwnx1bIc/+YBu/gWxvmc=
X-Virus-Scanned: amavisd-new at armitage.org.uk
Received: from samson.armitage.org.uk (samson.armitage.org.uk [IPv6:2001:470:69dd:35::210])
        by nabal.armitage.org.uk (Postfix) with ESMTPSA id AB7432E4C66;
        Sun,  1 Oct 2023 15:57:19 +0100 (BST)
Message-ID: <0feddd7ac2b9d59dd8c35e4b3452dfaad7d57788.camel@armitage.org.uk>
Subject: [patch v2] truncate.2: EINVAL is returned for non regular files
 except directories
From:   Quentin Armitage <quentin@armitage.org.uk>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Date:   Sun, 01 Oct 2023 15:57:19 +0100
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-5.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

truncate(2) returns EINVAL if the file argument is a socket, a FIFO or
a character or block device. The current man page indicates that
ftruncate() returns EINVAL for an fd that does not reference a regular
file, but for truncate() the only reason given for returning EINVAL is
that the length is invalid.

The following test program demonstrates the errors returned by truncate():
=====================================================
#define _GNU_SOURCE

#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <sys/types.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/sysmacros.h>
#include <string.h>
#include <err.h>

struct {
  const char *fname;
  mode_t mode;
  unsigned dev_maj;
  unsigned dev_min;
} nodes[] = {
  { "/tmp/trunc_file", S_IFREG | 0666 },
  { "/tmp/trunc_fifo", S_IFIFO | 0666 },
  { "/tmp/trunc_socket", S_IFSOCK | 0666 },
  { "/tmp/trunc_char_dev", S_IFCHR | 0666, 10, 7},  // Second Amiga mouse, /dev/amigamouse1
  { "/tmp/trunc_blk_dev", S_IFBLK | 0666, 13, 3 },  // Was XT disk /dev/xd3
  { "/tmp/trunc_dir", 0666 },
};

int main(int C, char **V)
{
  int n;
  int ret;

  for (n = 0; n < sizeof(nodes) / sizeof(nodes[0]); n++) {
    /* Create the nodes */
    if (!(nodes[n].mode & S_IFMT))
      ret = mkdir(nodes[n].fname, nodes[n].mode);
    else
      ret = mknod(nodes[n].fname, nodes[n].mode,
                  makedev(nodes[n].dev_maj, nodes[n].dev_min));

    if (ret) {
      warn("mknod(%s) errno %d", nodes[n].fname, errno);
      continue;
    }

    /* Returns EINVAL for IFSOCK, IFIFO, S_IFBLK, S_IFCHR, EISDIR for a directory */
    ret = truncate(nodes[n].fname, 0);

    if (ret)
      warn("truncate(\"%s\") failed with errno %s", nodes[n].fname,
              strerrorname_np(errno));
    else
      printf("truncate(\"%s\") succeeded\n", nodes[n].fname);

    /* Remove the nodes */
    if (!(nodes[n].mode & S_IFMT))
      ret = rmdir(nodes[n].fname);
    else
      ret = unlink(nodes[n].fname);
    if (ret)
      warn("unlink(%s) errno %d", nodes[n].fname, errno);
  }
}
=====================================================

Compile the program and run it as user root.

output (if program name is trunc) should be:
truncate("/tmp/trunc_file") succeeded
trunc: truncate("/tmp/trunc_fifo") failed with errno EINVAL: Invalid argument
trunc: truncate("/tmp/trunc_socket") failed with errno EINVAL: Invalid argument
trunc: truncate("/tmp/trunc_char_dev") failed with errno EINVAL: Invalid argument
trunc: truncate("/tmp/trunc_blk_dev") failed with errno EINVAL: Invalid argument
trunc: truncate("/tmp/trunc_dir") failed with errno EISDIR: Is a directory

Signed-off-by: Quentin Armitage <quentin@armitage.org.uk>

diff --git a/man2/truncate.2 b/man2/truncate.2
index 703f598b3..44750b9e2 100644
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

