Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D8AB368E21E
	for <lists+linux-man@lfdr.de>; Tue,  7 Feb 2023 21:46:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229462AbjBGUqA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Feb 2023 15:46:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229571AbjBGUp7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Feb 2023 15:45:59 -0500
Received: from omta002.cacentral1.a.cloudfilter.net (omta002.cacentral1.a.cloudfilter.net [3.97.99.33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4610D3B646
        for <linux-man@vger.kernel.org>; Tue,  7 Feb 2023 12:45:58 -0800 (PST)
Received: from shw-obgw-4001a.ext.cloudfilter.net ([10.228.9.142])
        by cmsmtp with ESMTP
        id PRxUpwbApl2xSPUqkpXwli; Tue, 07 Feb 2023 20:45:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675802758; bh=vQ+3pG0PW3rjgiqqKLlz3g2vjhPQpfYj6S7x6UDuKjA=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=kvpYelLyu5AXU855XPVlSpvS2UkYAIYdwnK3tc5MWxnaPvDF1oi2Q8UGVBoFI9vTf
         MBNcZX14X+1JaeDzyJSm0CU0/Y2EyGaTZpWXHmPpImcpQ4aEZ7Si3jNN1OY7Aq989P
         SYDF5GDE/uc+2+62b7U1UG9wq0G/H4eSgyXcR+FWl6Y9YKS5w/AB6YXcpWqXumsySI
         y5rEIAeqruyoDBB9sMvOVEg4P0UPlN74BsXX/9D7RKujq1GT3sTCUFzfwA5lLDuPsA
         IEe1XO5tBLDZIshED9cugaMr4clKKu6FX2T3t3aaXnSNZiWicTiVa42gLJ/N89S7Wm
         jPIzkujZxOSbA==
Received: from localhost.localdomain ([184.64.102.149])
        by cmsmtp with ESMTP
        id PUqjpfz8aHFsOPUqjp7wg0; Tue, 07 Feb 2023 20:45:58 +0000
X-Authority-Analysis: v=2.4 cv=XZqaca15 c=1 sm=1 tr=0 ts=63e2b886
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=r77TgQKjGQsHNAKrUKIA:9 a=fAu3en0xu97xoa866EsA:9 a=QEXdDO2ut3YA:10
 a=XfNhhhkj677GN0bb8g4A:9 a=B2y7HmGcmWMA:10
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 08/11] man2/adjtimex.2: use ISO/IEC suffixes and digit separators in ranges and example docs
Date:   Tue,  7 Feb 2023 13:32:57 -0700
Message-Id: <20230207203300.49894-9-Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230207203300.49894-1-Brian.Inglis@Shaw.ca>
References: <20230207203300.49894-1-Brian.Inglis@Shaw.ca>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------2.39.0"
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfPA9NvpwA3S3l41rUlKlj6WaVgQQbOiRjrIBfs6bOEqF9AGtBfuB41Ccatoh9ML99b58CBcw9uqjHCFXwWf8YX8ZRZsV9x87MTlLACggw9YKb/gpPrvp
 xu4f/j3qj5qntvCotGqJhsDe9MHDyFME3zYSpf5MiVxqWL5aljoxv5W++JFprrd4+BDQPZ1Tu1pE68136l1CwnfekUnvFeslu1sJbRmxm2FZVQXf4xx148sj
 FFUCwiPxUUDF5/8b/ZiyUdqRVwskLdcsMCeFrUsZMwglX9E2GW7eFqSwjauH0Hbl
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
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


