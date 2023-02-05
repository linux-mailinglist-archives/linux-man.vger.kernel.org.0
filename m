Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0CAC568B24C
	for <lists+linux-man@lfdr.de>; Sun,  5 Feb 2023 23:59:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229533AbjBEW7n (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Feb 2023 17:59:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229562AbjBEW7m (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Feb 2023 17:59:42 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69BB417CEE
        for <linux-man@vger.kernel.org>; Sun,  5 Feb 2023 14:59:41 -0800 (PST)
Received: from shw-obgw-4001a.ext.cloudfilter.net ([10.228.9.142])
        by cmsmtp with ESMTP
        id OgUlpmE9sc9C4Onz2pRkNH; Sun, 05 Feb 2023 22:59:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675637980; bh=gIbxiREffgQHlx9s7OvL1Re9+jiL6xrp0sJzFdM2tqA=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=M/JdAaAq/3y7UpJ5gNuqsq5fnYdWdvew8MEIjirXmejsLfT/xUSYWEJBTanfT3pV+
         dd2dWKk+3XPkUhmP6RSV+M8HOQHrp4qF7NTsHYi6hVQ1+XxnPzDSyBg0S85zc9BSns
         fCbPmp0EHfMHhZ47/ON9YRsn9ezTXN9CdDOKkDMGr4NesjhnM0mq42gneonbieHruL
         BrdT9omY1T6Wvtp/x5omqtb+oyb3gQY9UBRB48TO8d2JR40pzA7f9LegNACNQtuTIi
         EE3RPFgsAbOr5/tmMiPGI1e3GBZ78pi4U7AUSTPWxSh8gK7t2WiMQfq4vluC3vvDAj
         2ZRZ1V8B+wn4w==
Received: from localhost.localdomain ([184.64.124.72])
        by cmsmtp with ESMTP
        id OnyzpUKfwHFsOOnz2p3JLH; Sun, 05 Feb 2023 22:59:40 +0000
X-Authority-Analysis: v=2.4 cv=XZqaca15 c=1 sm=1 tr=0 ts=63e034dc
 a=oHm12aVswOWz6TMtn9zYKg==:117 a=oHm12aVswOWz6TMtn9zYKg==:17
 a=r77TgQKjGQsHNAKrUKIA:9 a=9wH1qgBj6K8oGaMhz9cA:9 a=QEXdDO2ut3YA:10
 a=7rCopnwnoNJ7hFVLseIA:9 a=B2y7HmGcmWMA:10
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 03/11] man2/: use consistent interval notation for value ranges
Date:   Sun,  5 Feb 2023 15:59:16 -0700
Message-Id: <20230205225924.63300-4-Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230205225924.63300-1-Brian.Inglis@Shaw.ca>
References: <20230205225924.63300-1-Brian.Inglis@Shaw.ca>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------2.39.0"
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfEV2tl7SeSD8LDsYBqsLvjFNBcwFujxwpF1RKMO+yHjpVPII405gqMhC+ZFFvsf6P2FDTcGQhlqOoDaozpwn2Mh0QS6PEMMbSZA2SbM8IR5MgHyf1g5+
 RUs/6OYNIZlTYDKnE0aG5BIWOuSYf98uT/yaeCOGGp8RH5DNHfn1nmW/HYZI9qIjpjbF1JSs5y+Q1Kg/UXPiNkOCjrK+W13vc6nCEGgWW0smnuy464aS0v5Y
 VL1MHMDF71SI06LZUgrxJAKPBTlpiAmcWqo+jOwwxU71tyEYVFsqOBqPnz5oy2F7
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


