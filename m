Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 08C6721166C
	for <lists+linux-man@lfdr.de>; Thu,  2 Jul 2020 01:01:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726395AbgGAXBZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Jul 2020 19:01:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726213AbgGAXBY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Jul 2020 19:01:24 -0400
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AAC6C08C5C1
        for <linux-man@vger.kernel.org>; Wed,  1 Jul 2020 16:01:24 -0700 (PDT)
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 061N1Lor022061
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Wed, 1 Jul 2020 23:01:22 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 061N1Lor022061
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 061N1L8X027597;
        Wed, 1 Jul 2020 23:01:21 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 061N1LSE027596;
        Wed, 1 Jul 2020 23:01:21 GMT
Date:   Wed, 1 Jul 2020 23:01:21 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man4/*: ffix, change '-' to '\-' for options
Message-ID: <20200701230121.GA27487@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

  Change '-' to '\-' for the prefix of names to indicate an option.

Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
---
 man4/cciss.4 | 4 ++--
 man4/loop.4  | 2 +-
 man4/veth.4  | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/man4/cciss.4 b/man4/cciss.4
index 9600c8f6f..d5732f168 100644
--- a/man4/cciss.4
+++ b/man4/cciss.4
@@ -140,7 +140,7 @@ For example:
 .in +4n
 .EX
 $ \fBcd /proc/driver/cciss\fP
-$ \fBls -l\fP
+$ \fBls \-l\fP
 total 0
 -rw-r--r-- 1 root root 0 2010\-09\-10 10:38 cciss0
 -rw-r--r-- 1 root root 0 2010\-09\-10 10:38 cciss1
@@ -360,7 +360,7 @@ successfully reset or the tardy command is successfully aborted, the
 tape drive may still not allow I/O to continue until some command
 is issued that positions the tape to a known position.
 Typically you must rewind the tape (by issuing
-.I "mt -f /dev/st0 rewind"
+.I "mt \-f /dev/st0 rewind"
 for example) before I/O can proceed again to a tape drive that was reset.
 .SH SEE ALSO
 .BR hpsa (4),
diff --git a/man4/loop.4 b/man4/loop.4
index 1623cad0e..41e13d16f 100644
--- a/man4/loop.4
+++ b/man4/loop.4
@@ -43,7 +43,7 @@ You could do
 .EX
 $ \fBdd if=/dev/zero of=file.img bs=1MiB count=10\fP
 $ \fBsudo losetup /dev/loop4 file.img\fP
-$ \fBsudo mkfs -t ext4 /dev/loop4\fP
+$ \fBsudo mkfs \-t ext4 /dev/loop4\fP
 $ \fBsudo mkdir /myloopdev\fP
 $ \fBsudo mount /dev/loop4 /myloopdev\fP
 .EE
diff --git a/man4/veth.4 b/man4/veth.4
index e5d11b2b6..1fdc7822e 100644
--- a/man4/veth.4
+++ b/man4/veth.4
@@ -91,7 +91,7 @@ network interface, using commands something like:
 .in +4n
 .EX
 # \fBip link add ve_A type veth peer name ve_B\fP   # Create veth pair
-# \fBethtool -S ve_A\fP         # Discover interface index of peer
+# \fBethtool \-S ve_A\fP         # Discover interface index of peer
 NIC statistics:
      peer_ifindex: 16
 # \fBip link | grep '^16:'\fP   # Look up interface
-- 
2.27.0
