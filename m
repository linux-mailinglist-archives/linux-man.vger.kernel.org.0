Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D2FCE7B47AF
	for <lists+linux-man@lfdr.de>; Sun,  1 Oct 2023 15:45:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235058AbjJANpW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Oct 2023 09:45:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235043AbjJANpV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Oct 2023 09:45:21 -0400
X-Greylist: delayed 404 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 01 Oct 2023 06:45:15 PDT
Received: from nabal.armitage.org.uk (nabal.armitage.org.uk [IPv6:2001:470:69dd:35::188])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDDC5E8
        for <linux-man@vger.kernel.org>; Sun,  1 Oct 2023 06:45:15 -0700 (PDT)
Received: from localhost (nabal.armitage.org.uk [127.0.0.1])
        by nabal.armitage.org.uk (Postfix) with ESMTP id 967162E4C45;
        Sun,  1 Oct 2023 14:38:26 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=armitage.org.uk;
         h=content-transfer-encoding:mime-version:user-agent
        :content-type:content-type:date:date:from:from:subject:subject
        :message-id:received; s=20200110; t=1696167206; x=1697031207;
         bh=iWe+o0VhWNBRSK37mRoPxbEH46+axZksDS1C+vpoaAw=; b=P7sUaw5hzjcy
        qIfRFFevEkw+QEpbPWZj5yrAkfaL4334g9Y2ABMes3SxVxjj4HLcUVtyUOm/Ja8z
        TisjCB2Rh0IqH/sLDAtTr6CgPVrWe/rUeWVKcV2jNEGolYOMVoH/SXOBcnyMgS4v
        5+EIMGhZz9ZS9B4oV9w4oYgC5zlxz+k=
X-Virus-Scanned: amavisd-new at armitage.org.uk
Received: from samson.armitage.org.uk (samson.armitage.org.uk [IPv6:2001:470:69dd:35::210])
        by nabal.armitage.org.uk (Postfix) with ESMTPSA id 06DD52E4BAA;
        Sun,  1 Oct 2023 14:33:25 +0100 (BST)
Message-ID: <41b5afb50bec1ab2d78f7a70b43e804ab5994c7b.camel@armitage.org.uk>
Subject: [patch] truncate.2: EINVAL is returned for non regular files except
 directories
From:   Quentin Armitage <quentin@armitage.org.uk>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Date:   Sun, 01 Oct 2023 14:33:25 +0100
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

truncate(2) returns EINVAL if the file argument is a socket, a FIFO or a character or block
device. The current man page indicates that ftruncate() returns EINVAL for an fd that does
not reference regular file, but for truncate() the only reason given for returning EINVAL is
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
      fprintf(stderr, "mknod(%s) errno %d - %m\n", nodes[n].fname, errno);
      continue;
    }

    /* Returns EINVAL for IFSOCK, IFIFO, S_IFBLK, S_IFCHR, EISDIR for a directory */
    ret = truncate(nodes[n].fname, 0);

    if (ret)
      printf("truncate(\"%s\") failed with errno %s - %m\n", nodes[n].fname,
             strerrorname_np(errno));
    else
      printf("truncate(\"%s\") succeeded\n", nodes[n].fname);

    /* Remove the nodes */
    if (!(nodes[n].mode & S_IFMT))
      ret = rmdir(nodes[n].fname);
    else
      ret = unlink(nodes[n].fname);
    if (ret)
      fprintf(stderr, "unlink(%s) errno %d - %m\n", nodes[n].fname, errno);
  }
}
=====================================================

Compile the program and run it as user root.

output should be:
truncate("/tmp/trunc_file") succeeded
truncate("/tmp/trunc_fifo") failed with errno EINVAL - Invalid argument
truncate("/tmp/trunc_socket") failed with errno EINVAL - Invalid argument
truncate("/tmp/trunc_char_dev") failed with errno EINVAL - Invalid argument
truncate("/tmp/trunc_blk_dev") failed with errno EINVAL - Invalid argument
truncate("/tmp/trunc_dir") failed with errno EISDIR - Is a directory

Signed-off-by: Quentin Armitage <quentin@armitage.org.uk>

diff --git a/man2/truncate.2 b/man2/truncate.2
index 703f598b3..9fc14ce5b 100644
--- a/man2/truncate.2
+++ b/man2/truncate.2
@@ -112,7 +112,9 @@ and
 .B EINVAL
 The argument
 .I length
-is negative or larger than the maximum file size.
+is negative or larger than the maximum file size, or
+the named file is a socket, a FIFO or a block or
+character device.
 .TP
 .B EIO
 An I/O error occurred updating the inode.


