Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3DB532024D0
	for <lists+linux-man@lfdr.de>; Sat, 20 Jun 2020 17:39:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725851AbgFTPj6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Jun 2020 11:39:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725826AbgFTPj6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Jun 2020 11:39:58 -0400
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79D22C06174E
        for <linux-man@vger.kernel.org>; Sat, 20 Jun 2020 08:39:57 -0700 (PDT)
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 05KFdmwp006606
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Sat, 20 Jun 2020 15:39:48 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 05KFdmwp006606
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 05KFdmaK019598;
        Sat, 20 Jun 2020 15:39:48 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 05KFdm9F019597;
        Sat, 20 Jun 2020 15:39:48 GMT
Date:   Sat, 20 Jun 2020 15:39:48 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man4/*: srcfix, remove trailing space in "strings"
Message-ID: <20200620153947.GA19551@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

  Trim trailing space.

  There is no change in the output from "nroff" and "groff".

Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
---
 man4/console_codes.4 | 4 ++--
 man4/initrd.4        | 2 +-
 man4/loop.4          | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/man4/console_codes.4 b/man4/console_codes.4
index 113f43151..be34a0d91 100644
--- a/man4/console_codes.4
+++ b/man4/console_codes.4
@@ -397,11 +397,11 @@ ESC [ 11 ; \fIn\fP ]	Set bell duration in msec.
 ESC [ 12 ; \fIn\fP ]	Bring specified console to the front.
 ESC [ 13 ]      	Unblank the screen.
 ESC [ 14 ; \fIn\fP ]   	Set the VESA powerdown interval in minutes.
-ESC [ 15 ]      	T{
+ESC [ 15 ]	T{
 Bring the previous console to the front
 (since Linux 2.6.0).
 T}
-ESC [ 16 ; \fIn\fP ]   	T{
+ESC [ 16 ; \fIn\fP ]	T{
 Set the cursor blink interval in milliseconds
 (since Linux 4.2).
 T}
diff --git a/man4/initrd.4 b/man4/initrd.4
index a10736456..e41917817 100644
--- a/man4/initrd.4
+++ b/man4/initrd.4
@@ -75,7 +75,7 @@ is a read-only block device.
 This device is a RAM disk that is initialized (e.g., loaded)
 by the boot loader before the kernel is started.
 The kernel then can use
-.IR /dev/initrd "'s "
+.IR /dev/initrd "'s"
 contents for a two-phase system boot-up.
 .PP
 In the first boot-up phase, the kernel starts up
diff --git a/man4/loop.4 b/man4/loop.4
index 510ed88a7..1623cad0e 100644
--- a/man4/loop.4
+++ b/man4/loop.4
@@ -42,7 +42,7 @@ You could do
 .in +4n
 .EX
 $ \fBdd if=/dev/zero of=file.img bs=1MiB count=10\fP
-$ \fBsudo losetup /dev/loop4 file.img \fP
+$ \fBsudo losetup /dev/loop4 file.img\fP
 $ \fBsudo mkfs -t ext4 /dev/loop4\fP
 $ \fBsudo mkdir /myloopdev\fP
 $ \fBsudo mount /dev/loop4 /myloopdev\fP
-- 
2.27.0
