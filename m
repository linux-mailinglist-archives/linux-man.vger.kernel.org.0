Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 19D244D8EA4
	for <lists+linux-man@lfdr.de>; Mon, 14 Mar 2022 22:26:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239913AbiCNV1k (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Mar 2022 17:27:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236574AbiCNV1k (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Mar 2022 17:27:40 -0400
Received: from mail.magicbluesmoke.com (smtp.magicbluesmoke.com [52.210.84.128])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63BF42C676
        for <linux-man@vger.kernel.org>; Mon, 14 Mar 2022 14:26:29 -0700 (PDT)
Received: from pbrady-fedora-PF1C3VX9.thefacebook.com (unknown [163.114.131.129])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.magicbluesmoke.com (Postfix) with ESMTPSA id F18404539E2;
        Mon, 14 Mar 2022 21:26:27 +0000 (UTC)
From:   =?UTF-8?q?P=C3=A1draig=20Brady?= <P@draigBrady.com>
To:     linux-man@vger.kernel.org
Cc:     =?UTF-8?q?P=C3=A1draig=20Brady?= <P@draigBrady.com>
Subject: [PATCH] stat.2, statx.2: Fix descriptions for AT_NO_AUTOMOUNT
Date:   Mon, 14 Mar 2022 21:26:12 +0000
Message-Id: <20220314212612.192646-1-P@draigBrady.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <9488e311-ab35-96ee-7791-ec65fa6fe948@gmail.com>
References: <9488e311-ab35-96ee-7791-ec65fa6fe948@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,KHOP_HELO_FCRDNS,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

fstatat(..., AT_NO_AUTOMOUNT) has had the following history in Linux:
  v2.6.37-7314-g6f45b65672c8
    add AT_NO_AUTOMOUNT and fstatat honors it
  v3.1-rc7-68-gb6c8069d3577
    ignore AT_NO_AUTOMOUNT since default operation now less eagerly mounts
  v4.10-11255-ga528d35e8bfc
    adds statx which reinstated 2.6.38 behavior for fstatat (not released)
  v4.11-rc7-14-gdeccf497d804
    adjust fstatat so that AT_NO_AUTOMOUNT always specified (to statx)

* man2/stat.2:
Adjust AT_NO_AUTOMOUNT description for fstatat.2 as per the above,
to indicate AT_NO_AUTOMOUNT should be avoided with fstatat() since
it's ignored since 3.1 and implied since 4.11.

Don't mention commit v4.13-9318-g42f461482178 as it was reverted,
and moot anyway since we can't adjust AT_NO_AUTOMOUNT since 3.1.

* man2/statx.2:
Mention that stat(), lstat(), and fstatat() imply AT_NO_AUTOMOUNT.

Signed-off-by: Pádraig Brady <P@draigBrady.com>
---
 man2/stat.2  | 31 +++----------------------------
 man2/statx.2 | 18 +++++++++++++++---
 2 files changed, 18 insertions(+), 31 deletions(-)

diff --git a/man2/stat.2 b/man2/stat.2
index 016c1f47d..9000b2ca6 100644
--- a/man2/stat.2
+++ b/man2/stat.2
@@ -319,34 +319,9 @@ to obtain its definition.
 .TP
 .BR AT_NO_AUTOMOUNT " (since Linux 2.6.38)"
 Don't automount the terminal ("basename") component of
-.I pathname
-if it is a directory that is an automount point.
-This allows the caller to gather attributes of an automount point
-(rather than the location it would mount).
-Since Linux 4.14,
-.\" commit 42f46148217865a545e129612075f3d828a2c4e4
-also don't instantiate a nonexistent name in an
-on-demand directory such as used for automounter indirect maps.
-This
-flag has no effect if the mount point has already been mounted over.
-.IP
-Both
-.BR stat ()
-and
-.BR lstat ()
-act as though
-.B AT_NO_AUTOMOUNT
-was set.
-.IP
-The
-.B AT_NO_AUTOMOUNT
-can be used in tools that scan directories
-to prevent mass-automounting of a directory of automount points.
-.IP
-This flag is Linux-specific; define
-.B _GNU_SOURCE
-.\" Before glibc 2.16, defining _ATFILE_SOURCE sufficed
-to obtain its definition.
+.I pathname.
+Since Linux 3.1 this flag is ignored.
+Since Linux 4.11 this flag is implied.
 .TP
 .B AT_SYMLINK_NOFOLLOW
 If
diff --git a/man2/statx.2 b/man2/statx.2
index 04b3e5075..d4e638756 100644
--- a/man2/statx.2
+++ b/man2/statx.2
@@ -195,11 +195,23 @@ Don't automount the terminal ("basename") component of
 if it is a directory that is an automount point.
 This allows the caller to gather attributes of an automount point
 (rather than the location it would mount).
-This flag can be used in tools that scan directories
-to prevent mass-automounting of a directory of automount points.
+This
+flag has no effect if the mount point has already been mounted over.
+.IP
 The
 .B AT_NO_AUTOMOUNT
-flag has no effect if the mount point has already been mounted over.
+flag can be used in tools that scan directories
+to prevent mass-automounting of a directory of automount points.
+.IP
+All of
+.BR stat () ,
+.BR lstat () ,
+and
+.BR fstatat ()
+act as though
+.B AT_NO_AUTOMOUNT
+was set.
+.IP
 This flag is Linux-specific; define
 .B _GNU_SOURCE
 .\" Before glibc 2.16, defining _ATFILE_SOURCE sufficed
-- 
2.34.1

