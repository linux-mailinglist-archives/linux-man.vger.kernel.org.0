Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 89C9B68B2F0
	for <lists+linux-man@lfdr.de>; Mon,  6 Feb 2023 00:59:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229532AbjBEX7M (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Feb 2023 18:59:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229524AbjBEX7M (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Feb 2023 18:59:12 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 415CE1422C
        for <linux-man@vger.kernel.org>; Sun,  5 Feb 2023 15:59:11 -0800 (PST)
Received: from shw-obgw-4003a.ext.cloudfilter.net ([10.228.9.183])
        by cmsmtp with ESMTP
        id Oli3pmggHc9C4OoucpRsZN; Sun, 05 Feb 2023 23:59:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675641550; bh=vQ+3pG0PW3rjgiqqKLlz3g2vjhPQpfYj6S7x6UDuKjA=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=U3fwHWJ/hBq6hEvsAZOP12ASdBCizGQp7Tlub9aCrOvw0qagzQ1VZzBuTFCj9SGlP
         +CeTfXbuvCqbFRtGtK4I3g9hT+kgFYgZNsoXz3U80CMQc5YIr2JP9mWVdcVjXdCiOP
         Y1xU4wg3bTCmaGcH3likCgxN+Rq3jUKsmWI/2cdTZpGcYB0vLbq+Kg24JULRMunRCp
         OXfzzG7z47irIJa+1Rx2vUPiPt7ITflfkA2HKEgRQmrDZM/hsPT63v/cs+RtLmgSkC
         uyZ7g9B3TJQcs3L/1RGUA+YXeY7SMIq2edW0TecMxKkUCzklseMK32PELMqcbpjY1T
         pv2VEf2+ciJqQ==
Received: from localhost.localdomain ([184.64.124.72])
        by cmsmtp with ESMTP
        id OouZp57sIcyvuOoubpez0w; Sun, 05 Feb 2023 23:59:10 +0000
X-Authority-Analysis: v=2.4 cv=VbHkgXl9 c=1 sm=1 tr=0 ts=63e042ce
 a=oHm12aVswOWz6TMtn9zYKg==:117 a=oHm12aVswOWz6TMtn9zYKg==:17
 a=r77TgQKjGQsHNAKrUKIA:9 a=fAu3en0xu97xoa866EsA:9 a=QEXdDO2ut3YA:10
 a=XfNhhhkj677GN0bb8g4A:9 a=B2y7HmGcmWMA:10
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 08/11] man2/adjtimex.2: use ISO/IEC suffixes and digit separators in ranges and example docs
Date:   Sun,  5 Feb 2023 16:58:52 -0700
Message-Id: <20230205235855.64261-4-Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230205235855.64261-1-Brian.Inglis@Shaw.ca>
References: <20230205235855.64261-1-Brian.Inglis@Shaw.ca>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------2.39.0"
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfPBJJYtSCL8ou33pXHVF2tmGnPwXOUd18eI13Zna8ZYlROT/11pMbc1WE9JtwJl4UwTCWvOafBVj4evzkkUjp1fQKjPBo6kLNE4xwL8nhJNdvZaBdhl/
 tQ1nz3gz+qsQ7BxGVJkawSRxzaBjrUg5ElEgBkUTSvAQF2P0n0vZDWj8lgla72NHnNpNonZ4eXS7S7TVlW8Um3iu9MuIEOqCBSEnw/c4II3toQrOTXvHD1of
 CW4lQFqJi3GXStgDltf1MGiTUQh5BNnNspqvga3SQz/dApoK0P/osivlEAwaknSx
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
 man2/adjtimex.2 | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)


--------------2.39.0
Content-Type: text/x-patch; name="0008-man2-adjtimex.2-use-ISO-IEC-suffixes-and-digit-separ.patch"
Content-Transfer-Encoding: 8bit
Content-Disposition: attachment; filename="0008-man2-adjtimex.2-use-ISO-IEC-suffixes-and-digit-separ.patch"

diff --git a/man2/adjtimex.2 b/man2/adjtimex.2
index df7d27cd4e5e..fe613672cd93 100644
--- a/man2/adjtimex.2
+++ b/man2/adjtimex.2
@@ -108,7 +108,7 @@ Set frequency offset from
 .IR buf.freq .
 Since Linux 2.6.26,
 .\" commit 074b3b87941c99bc0ce35385b5817924b1ed0c23
-the supplied value is clamped to the range (\-32768000, +32768000).
+the supplied value is clamped to the range (\-32\[aq]000Ki, +32\[aq]000Ki).
 In older kernels, an
 .B EINVAL
 error occurs if the supplied value is out of range.
@@ -471,7 +471,7 @@ does not point to writable memory.
 .BR EINVAL " (before Linux 2.6.26)"
 An attempt was made to set
 .I buf.freq
-to a value outside the range (\-33554432, +33554432).
+to a value outside the range (\-32Mi, +32Mi).
 .\" From a quick glance, it appears there was no clamping or range check
 .\" for buf.freq before Linux 2.0
 .TP
@@ -479,8 +479,8 @@ to a value outside the range (\-33554432, +33554432).
 An attempt was made to set
 .I buf.offset
 to a value outside the permitted range.
-Before Linux 2.0, the permitted range was (\-131072, +131072).
-From Linux 2.0 onwards, the permitted range was (\-512000, +512000).
+Before Linux 2.0, the permitted range was (\-128Ki, +128Ki).
+From Linux 2.0 onwards, the permitted range was (\-512k, +512k).
 .TP
 .B EINVAL
 An attempt was made to set
@@ -505,9 +505,9 @@ for a discussion of dynamic clocks.
 An attempt was made to set
 .I buf.tick
 to a value outside the range
-.RB 900000/ HZ
+.RB 900k/ HZ
 to
-.RB 1100000/ HZ ,
+.RB 1\[aq]100k/ HZ ,
 where
 .B HZ
 is the system timer interrupt frequency.

--------------2.39.0--


