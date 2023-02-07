Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C36668E1ED
	for <lists+linux-man@lfdr.de>; Tue,  7 Feb 2023 21:34:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229888AbjBGUeZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Feb 2023 15:34:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229559AbjBGUeY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Feb 2023 15:34:24 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2E0637B78
        for <linux-man@vger.kernel.org>; Tue,  7 Feb 2023 12:34:22 -0800 (PST)
Received: from shw-obgw-4002a.ext.cloudfilter.net ([10.228.9.250])
        by cmsmtp with ESMTP
        id POOMpq0lIc9C4PUfWpYUni; Tue, 07 Feb 2023 20:34:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675802062; bh=gIbxiREffgQHlx9s7OvL1Re9+jiL6xrp0sJzFdM2tqA=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=lUS1ENZ7Ehh0JY7DAMWopBZ3WnIuinXaAu7KOmwx0Bs+S6YqClWiw6nEklfdHWHUI
         J5aOCgDYo/pKCvQaks4E/6YzaA0V7Y7z5QsHdZ9e3WRJxL6wrXNHFE8tfVG3y+tpqv
         qB8xvz2E72ZZkcx6m/1cCBUupPn3E+502cJeXCFS9bLSlmo1XZ2EquEmq+8HOQX2/B
         NIWWJPaUjntlDjz5v1RTV4RvLSY1rWxBOm1n+0cmAF0OJn2JaGE4sYUStzHdDfis/j
         0BM36svXeWkv3cUqw5eROAqzNuLwWLX4E8t4qgRj67BWqbxJWmzkATU/cDuzVj5oYv
         Q0zif//RSuwqQ==
Received: from localhost.localdomain ([184.64.102.149])
        by cmsmtp with ESMTP
        id PUfWp85rFyAOePUfWpHP1u; Tue, 07 Feb 2023 20:34:22 +0000
X-Authority-Analysis: v=2.4 cv=e5oV9Il/ c=1 sm=1 tr=0 ts=63e2b5ce
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=r77TgQKjGQsHNAKrUKIA:9 a=9wH1qgBj6K8oGaMhz9cA:9 a=QEXdDO2ut3YA:10
 a=7rCopnwnoNJ7hFVLseIA:9 a=B2y7HmGcmWMA:10
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 03/11] man2/: use consistent interval notation for value ranges
Date:   Tue,  7 Feb 2023 13:32:52 -0700
Message-Id: <20230207203300.49894-4-Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230207203300.49894-1-Brian.Inglis@Shaw.ca>
References: <20230207203300.49894-1-Brian.Inglis@Shaw.ca>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------2.39.0"
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfB1nbhZ7kfm4pYUvpOZZBIk3iMK0QbQaoeFvlpGsieroNKGgodQ6eDvSnS6r7k6WKpryYW+M5yS5b9aPv4HbaTYvaYZpZWX6Pi6/JJdL10ter97F3Bfp
 SrMfIj5almCqTcpY+C4eH9EezayAGofGCGuUtSzG52MsvZMdYcerv/GaZwgTV/mWZ6t6C/40BSFHGZy9n/6z1bAa/9xYfwnqTTbkGL1smekxHEmvOBivFW5D
 I/FQZLmsAYQdC5DD2se5VyfnP7U1lNcuJajHFk/VenQPTC9OE6wC8o5FG6T8rtMR
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.
--------------2.39.0
Content-Type: text/plain; charset=UTF-8; format=fixed
Content-Transfer-Encoding: 8bit

---
 man2/clock_getres.2    | 2 +-
 man2/clock_nanosleep.2 | 2 +-
 man2/getitimer.2       | 4 ++--
 man2/gettimeofday.2    | 2 +-
 man2/nanosleep.2       | 4 ++--
 man2/utimensat.2       | 2 +-
 6 files changed, 8 insertions(+), 8 deletions(-)


--------------2.39.0
Content-Type: text/x-patch; name="0003-man2-use-consistent-interval-notation-for-value-rang.patch"
Content-Transfer-Encoding: 8bit
Content-Disposition: attachment; filename="0003-man2-use-consistent-interval-notation-for-value-rang.patch"

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

--------------2.39.0--


