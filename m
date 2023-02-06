Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B9ED68B44E
	for <lists+linux-man@lfdr.de>; Mon,  6 Feb 2023 04:04:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229452AbjBFDEn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Feb 2023 22:04:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229447AbjBFDEm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Feb 2023 22:04:42 -0500
Received: from omta002.cacentral1.a.cloudfilter.net (omta002.cacentral1.a.cloudfilter.net [3.97.99.33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D19E69765
        for <linux-man@vger.kernel.org>; Sun,  5 Feb 2023 19:04:40 -0800 (PST)
Received: from shw-obgw-4001a.ext.cloudfilter.net ([10.228.9.142])
        by cmsmtp with ESMTP
        id OjrMpsmZCl2xSOro7pRcc7; Mon, 06 Feb 2023 03:04:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675652679; bh=2p+Dl2i/zJ1HYvHkkvjW1DJf5DB4z2TqltHGHSq9P8U=;
        h=From:To:Cc:Subject:Date;
        b=OKjOdkvmQR1ZPvSOjNG0zDb4g04vv39p+MRXh0BSpi9R33y7DgN2w1pVy0QrSAzC2
         xahlY1gnbLgMG3HdSYOt1xiB/N5Tggu75x3Tzc8e0oESqsAiHKCV73BW8+Y3lmxqb7
         aGzwpYEtQGg7aBNNQ3MbeOTHH5O+KHZFb03DOUPAdxyaKPMHqVh5FTJFkZhGfAGegy
         k5+/h2maD3x64fmeDsP8MIrkkYbir/j5sf6l618HEEG7dAqswXH7fo3RITs/LGgQNi
         1KrYyNcQeZeMwSa2i6rs/6wlbeHp1QAk/vbszmMH+1sQMQdO0a53FlDSZqHyk0DHVC
         FAt9iuu2/L2Rg==
Received: from localhost.localdomain ([184.64.124.72])
        by cmsmtp with ESMTP
        id Oro7pVOibHFsOOro7p3drx; Mon, 06 Feb 2023 03:04:39 +0000
X-Authority-Analysis: v=2.4 cv=XZqaca15 c=1 sm=1 tr=0 ts=63e06e47
 a=oHm12aVswOWz6TMtn9zYKg==:117 a=oHm12aVswOWz6TMtn9zYKg==:17
 a=r77TgQKjGQsHNAKrUKIA:9 a=G80oAnSK7v4uroVoX6gA:9 a=QEXdDO2ut3YA:10
 a=29SEg3U9A5LDG8xS1H8A:9 a=1X--RXN9LygA:10 a=B2y7HmGcmWMA:10
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 10/11] man2/futex.2: change limit to use ISO suffix
Date:   Sun,  5 Feb 2023 20:04:26 -0700
Message-Id: <20230206030427.35002-1-Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------2.39.0"
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfF6QU0L/rIfP5oCl5t1ubrf43nxCDbuR2XKb+sXuD4KA/LAwnYmlwHAe+mvRvkXuzVROukaqBivpJ5vcgdGQBms/+YRm7yxaQc5/0Ee5C2/CesVqIQty
 e8YUbINE6JLrU3QSy8MbVqQ9MzOmcyHDG5IzPEM1JeG0cufCZ2kRB5w73zHwYq/Ln82EZDr3e9wREWrEQBHzWJx1KyoWuTTCh0NpRlWTDm/Fhy1H52jitpKZ
 SiLr4ZMH0Y6HDTMQNHajBC6r72wUPCSojGfrV3MTikrFulbm2U2kV14sEJz+cs7Q
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
 man2/futex.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)


--------------2.39.0
Content-Type: text/x-patch; name="0010-man2-futex.2-change-limit-to-use-ISO-suffix.patch"
Content-Transfer-Encoding: 8bit
Content-Disposition: attachment; filename="0010-man2-futex.2-change-limit-to-use-ISO-suffix.patch"

diff --git a/man2/futex.2 b/man2/futex.2
index b815056d231c..b9331ead985f 100644
--- a/man2/futex.2
+++ b/man2/futex.2
@@ -1536,7 +1536,7 @@ argument was invalid
 .RI ( tv_sec
 was less than zero, or
 .I tv_nsec
-was not less than 1,000,000,000).
+was not less than 1G).
 .TP
 .B EINVAL
 The operation specified in

--------------2.39.0--


