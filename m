Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D676A68E1B8
	for <lists+linux-man@lfdr.de>; Tue,  7 Feb 2023 21:11:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229732AbjBGULx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Feb 2023 15:11:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229888AbjBGULv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Feb 2023 15:11:51 -0500
Received: from omta002.cacentral1.a.cloudfilter.net (omta002.cacentral1.a.cloudfilter.net [3.97.99.33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D753F86A3
        for <linux-man@vger.kernel.org>; Tue,  7 Feb 2023 12:11:48 -0800 (PST)
Received: from shw-obgw-4001a.ext.cloudfilter.net ([10.228.9.142])
        by cmsmtp with ESMTP
        id POpMpwFuQl2xSPUJfpXoUZ; Tue, 07 Feb 2023 20:11:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675800707; bh=AT0GMG1cRQYKQ3hNtWRzeD/YEKR4RYnIOfTV1ZtQk/g=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=sVbslMIcytcNqAF/VY/CCc8Y4wsOEmXiaO9fzwLnT/LFDfzeteudjRFxIfIb6MBv8
         L8HBZhTylijnwpX+nzMX3oS7lJwVe23T62JcJyivzwppRbxh0bv4vaowo3U3hIlWif
         e9D7kfmtXBYvvdkejkdyceoqEkyJm+IuwwXA79LBUEMZAijIuL1fIgtTVgtxjNVoVr
         ClfIK0DLUHHqaDpbKG0xTmYjU58ciVfKdY1TcEqC45F+6ZIVmLvZ0Br1pw2lKIQCvH
         awFkFmW0qBztqQtMOj+ikeLow4aPdKeo4xv4kjO8gIm6A5uVCxsWkcvBPk0TvbCI0v
         MTJzm+ELmaTQg==
Received: from localhost.localdomain ([184.64.102.149])
        by cmsmtp with ESMTP
        id PUJdpfnuvHFsOPUJfp7rPV; Tue, 07 Feb 2023 20:11:47 +0000
X-Authority-Analysis: v=2.4 cv=XZqaca15 c=1 sm=1 tr=0 ts=63e2b083
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=q6Okrd4aG7f5TziWnMIA:9
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 03/11] man2/: use consistent interval notation for value ranges
Date:   Tue,  7 Feb 2023 13:11:24 -0700
Message-Id: <188dd356c182de2de1d362a680ed6af7132543bc.1675800581.git.Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <4f2f18f59261d9da0d7e1c530ad6e63b6b367a2d.1675800581.git.Brian.Inglis@Shaw.ca>
References: <4f2f18f59261d9da0d7e1c530ad6e63b6b367a2d.1675800581.git.Brian.Inglis@Shaw.ca>
MIME-Version: 1.0
Organization: Systematic Software
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfAGpQUqEjIKBsBGMsRHnAR1JTAiBq+ksy/rhB7plXVaRWE0YzIeWALe5HZ9vqGbHvFPbnmlv463C9VCvApigul9cSDkvHujtKJDNX29hj5OsFDNjDzJT
 fpUL4sqsGR9W63PbwjVHr/CSpl5wtJR0+m4KqfzlVLOwMs7rOwsRSV2mCSnjroXh2pxqx6EchZdEDI1zjLPV8niqD/pMVmqNJhmmqC/tE+jk6EpQAX2+kVGs
 OOZ8OPRoXsozVCxPvbvNo473TUqrG0LKg0g9eS+v4/MK/ps5mnZmnt+tF8xETAbv
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

---
 man2/clock_getres.2    | 2 +-
 man2/clock_nanosleep.2 | 2 +-
 man2/getitimer.2       | 4 ++--
 man2/gettimeofday.2    | 2 +-
 man2/nanosleep.2       | 4 ++--
 man2/utimensat.2       | 2 +-
 6 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
index 501c878cae4e..ee0fa6735865 100644
--- a/man2/clock_getres.2
+++ b/man2/clock_getres.2
@@ -272,7 +272,7 @@ does not refer to a valid instance of a clock object.
 .I tp.tv_sec
 is negative or
 .I tp.tv_nsec
-is outside the range [0..999,999,999].
+is outside the range [0, 999,999,999].
 .TP
 .B EINVAL
 The
diff --git a/man2/clock_nanosleep.2 b/man2/clock_nanosleep.2
index 5afc2025c853..5da8d15699c2 100644
--- a/man2/clock_nanosleep.2
+++ b/man2/clock_nanosleep.2
@@ -158,7 +158,7 @@ The sleep was interrupted by a signal handler; see
 .B EINVAL
 The value in the
 .I tv_nsec
-field was not in the range 0 to 999999999 or
+field was not in the range [0, 999999999] or
 .I tv_sec
 was negative.
 .TP
diff --git a/man2/getitimer.2 b/man2/getitimer.2
index 093752b620ed..80745dd78c99 100644
--- a/man2/getitimer.2
+++ b/man2/getitimer.2
@@ -158,7 +158,7 @@ or (since Linux 2.6.22) one of the
 .I tv_usec
 fields in the structure pointed to by
 .I new_value
-contains a value outside the range 0 to 999999.
+contains a value outside the range [0, 999999].
 .SH STANDARDS
 POSIX.1-2001, SVr4, 4.4BSD (this call first appeared in 4.2BSD).
 POSIX.1-2008 marks
@@ -253,7 +253,7 @@ POSIX.1-2001 says that
 .BR setitimer ()
 should fail if a
 .I tv_usec
-value is specified that is outside of the range 0 to 999999.
+value is specified that is outside of the range [0, 999999].
 However, up to and including Linux 2.6.21,
 Linux does not give an error, but instead silently
 adjusts the corresponding seconds value for the timer.
diff --git a/man2/gettimeofday.2 b/man2/gettimeofday.2
index 6f1cd33d6512..d7219f9d42a4 100644
--- a/man2/gettimeofday.2
+++ b/man2/gettimeofday.2
@@ -152,7 +152,7 @@ is invalid.
 .I tv.tv_sec
 is negative or
 .I tv.tv_usec
-is outside the range [0..999,999].
+is outside the range [0, 999999].
 .TP
 .BR EINVAL " (since Linux 4.3)"
 .\" commit e1d7ba8735551ed79c7a0463a042353574b96da3
diff --git a/man2/nanosleep.2 b/man2/nanosleep.2
index a6f9e627f4eb..12e0cee84b85 100644
--- a/man2/nanosleep.2
+++ b/man2/nanosleep.2
@@ -66,7 +66,7 @@ The
 structure
 is used to specify intervals of time with nanosecond precision.
 .PP
-The value of the nanoseconds field must be in the range 0 to 999999999.
+The value of the nanoseconds field must be in the range [0, 999999999].
 .PP
 Compared to
 .BR sleep (3)
@@ -106,7 +106,7 @@ again and continue with the pause.
 .B EINVAL
 The value in the
 .I tv_nsec
-field was not in the range 0 to 999999999 or
+field was not in the range [0, 999999999] or
 .I tv_sec
 was negative.
 .SH STANDARDS
diff --git a/man2/utimensat.2 b/man2/utimensat.2
index 7f43aab7bdcf..1d9206ed0ced 100644
--- a/man2/utimensat.2
+++ b/man2/utimensat.2
@@ -272,7 +272,7 @@ Invalid value in
 .B EINVAL
 Invalid value in one of the
 .I tv_nsec
-fields (value outside range 0 to 999,999,999, and not
+fields (value outside range [0, 999999999], and not
 .B UTIME_NOW
 or
 .BR UTIME_OMIT );
-- 
2.39.0

