Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 865B96986DA
	for <lists+linux-man@lfdr.de>; Wed, 15 Feb 2023 22:02:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230090AbjBOVC4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Feb 2023 16:02:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230258AbjBOVCl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Feb 2023 16:02:41 -0500
Received: from omta002.cacentral1.a.cloudfilter.net (omta002.cacentral1.a.cloudfilter.net [3.97.99.33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33D8B460B5
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 13:00:53 -0800 (PST)
Received: from shw-obgw-4001a.ext.cloudfilter.net ([10.228.9.142])
        by cmsmtp with ESMTP
        id SDZZpAjFbl2xSSOtYp0Hql; Wed, 15 Feb 2023 21:00:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1676494852; bh=rMgkMydswYVQdILe+WjAohCncE+EE5zPTkL/VDdF86Y=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=MDbnkXJm7dI7BLFB51QHU0Ywmtkfz5g22E5eI5qIaoypV3jX8W4xI1Zp3tlWVMMNh
         OlaWAdWRGh8PdEil0mxfp9JOR6YbPHShN4CCxrZShOQzG1ZV5AkDBieHGT3CTIuy+o
         aPRAc0TVKavCDBJIwfAjN3/zaAlYKWDokkH8l+0ie4A8cc+6V+LDKL22q47+YDUNhc
         jPtmhmnsFtiXVwSwCb5i/SdByi4TDxBlDYmDyrLuiUWf/YaRsj0nMDDtWg573cEij0
         XjDgsF5coZuoIrcAHOtbz2zPZDkvVl6Sb6PksdtS/94fOYk0GQ4rRz7BMS5ePmd6Cy
         JvGWAZYtifF/Q==
Received: from localhost.localdomain ([184.64.102.149])
        by cmsmtp with ESMTP
        id SOtXpXnoaHFsOSOtXpSihH; Wed, 15 Feb 2023 21:00:52 +0000
X-Authority-Analysis: v=2.4 cv=XZqaca15 c=1 sm=1 tr=0 ts=63ed4804
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=mpycmITrAyTHtjc10ksA:9
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     "Linux Man Pages" <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH v3 5/6] man2/chmod.2: add C digit separators to clarify POSIX feature release dates and long numeric digit strings
Date:   Wed, 15 Feb 2023 13:17:10 -0700
Message-Id: <4c53ab820fbbeb3f3170f8d1d81a14713f256dd9.1676489381.git.Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfHBHc+NYItKkwA03q1pHXYMqIIOoO4lctnBFtE/xyHbkqnZKwZipAip2bMVZLNVMbp5KBWp5nbsSIspnO7LlsYnKyioKdBcHCIEdnkmQeIdUkRrR0h6Q
 Wgb1H2viNkNclZ3mKu0CLL8ZfEkO2m2mROostnZoMhwhqX1UM1KGPpT1o/OQLUzCTqdm82QiKC7GxH5qHZFfphxVb1PO9olUfCpcwnWQbdNoBnDkwvYTZJdj
 nUUeeXwG9BNrC6vB6w4HpHN0Il5OevszlN8qyboXMslt8X9yOtfP9st91wMXPgrZ
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

---
 man2/chmod.2 | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/man2/chmod.2 b/man2/chmod.2
index 8b5db74ed7e3..674b54368314 100644
--- a/man2/chmod.2
+++ b/man2/chmod.2
@@ -37,7 +37,7 @@ Feature Test Macro Requirements for glibc (see
 .nf
 .BR fchmod ():
     Since glibc 2.24:
-        _POSIX_C_SOURCE >= 199309L
+        _POSIX_C_SOURCE >= 1993\[aq]09L
 .\"        || (_XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED)
     glibc 2.19 to glibc 2.23
         _POSIX_C_SOURCE
@@ -45,7 +45,7 @@ Feature Test Macro Requirements for glibc (see
         _BSD_SOURCE || _POSIX_C_SOURCE
     glibc 2.12 to glibc 2.16:
         _BSD_SOURCE || _XOPEN_SOURCE >= 500
-            || _POSIX_C_SOURCE >= 200809L
+            || _POSIX_C_SOURCE >= 2008\[aq]09L
     glibc 2.11 and earlier:
         _BSD_SOURCE || _XOPEN_SOURCE >= 500
 .\"        || (_XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED)
@@ -54,7 +54,7 @@ Feature Test Macro Requirements for glibc (see
 .BR fchmodat ():
 .nf
     Since glibc 2.10:
-        _POSIX_C_SOURCE >= 200809L
+        _POSIX_C_SOURCE >= 2008\[aq]09L
     Before glibc 2.10:
         _ATFILE_SOURCE
 .fi
@@ -82,11 +82,11 @@ The new file mode is specified in
 which is a bit mask created by ORing together zero or
 more of the following:
 .TP 18
-.BR S_ISUID "  (04000)"
+.BR S_ISUID "  (04\[aq]000)"
 set-user-ID (set process effective user ID on
 .BR execve (2))
 .TP
-.BR S_ISGID "  (02000)"
+.BR S_ISGID "  (02\[aq]000)"
 set-group-ID (set process effective group ID on
 .BR execve (2);
 mandatory locking, as described in
@@ -96,36 +96,36 @@ take a new file's group from parent directory, as described in
 and
 .BR mkdir (2))
 .TP
-.BR S_ISVTX "  (01000)"
+.BR S_ISVTX "  (01\[aq]000)"
 sticky bit (restricted deletion flag, as described in
 .BR unlink (2))
 .TP
-.BR S_IRUSR "  (00400)"
+.BR S_IRUSR "  (00\[aq]400)"
 read by owner
 .TP
-.BR S_IWUSR "  (00200)"
+.BR S_IWUSR "  (00\[aq]200)"
 write by owner
 .TP
-.BR S_IXUSR "  (00100)"
+.BR S_IXUSR "  (00\[aq]100)"
 execute/search by owner ("search" applies for directories,
 and means that entries within the directory can be accessed)
 .TP
-.BR S_IRGRP "  (00040)"
+.BR S_IRGRP "  (00\[aq]040)"
 read by group
 .TP
-.BR S_IWGRP "  (00020)"
+.BR S_IWGRP "  (00\[aq]020)"
 write by group
 .TP
-.BR S_IXGRP "  (00010)"
+.BR S_IXGRP "  (00\[aq]010)"
 execute/search by group
 .TP
-.BR S_IROTH "  (00004)"
+.BR S_IROTH "  (00\[aq]004)"
 read by others
 .TP
-.BR S_IWOTH "  (00002)"
+.BR S_IWOTH "  (00\[aq]002)"
 write by others
 .TP
-.BR S_IXOTH "  (00001)"
+.BR S_IXOTH "  (00\[aq]001)"
 execute/search by others
 .PP
 The effective UID of the calling process must match the owner of the file,
-- 
2.39.0

