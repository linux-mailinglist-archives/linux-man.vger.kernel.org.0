Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1990768F909
	for <lists+linux-man@lfdr.de>; Wed,  8 Feb 2023 21:47:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232267AbjBHUry (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Feb 2023 15:47:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232271AbjBHUry (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Feb 2023 15:47:54 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59E462F7AE
        for <linux-man@vger.kernel.org>; Wed,  8 Feb 2023 12:47:53 -0800 (PST)
Received: from shw-obgw-4003a.ext.cloudfilter.net ([10.228.9.183])
        by cmsmtp with ESMTP
        id Pkjqps3DJc9C4PrM8pcRZ6; Wed, 08 Feb 2023 20:47:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675889272; bh=uDKXbDdOGcI7L3sUw/PA87JTCmYPkHWAJhEtYeOeKYY=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=hMjORd1jjDkEOcAcVq274tRqTxqqids+YPcn+3l6Vones26HAdqHH1pa/9Pknrj/x
         rfO5j652xSwAKbRq5lsZneCZ9X5tHk1eE7W/F/0NTyWcM0OR+zVP5NLfdg94PEj2JN
         bmUzlu9H5Qh06HuyXPv3vfcx1y1PSwt9GyimOH7/wfcu3AhoOEde0UAIV0rziobuvJ
         jJbucuBd2l+p9P+uy3rOLBui2YAvoKQL9sSm8IN9I5/weGIKwnAkdr7uKRl8V+mDGu
         sk2+aAl0YNsPMz7KrQCk4DEX8m6tG+O+6mgFB7fBVx+HH6ftfQ+H0CtEDt9jjXIZtI
         3elGs6aYkudSA==
Received: from localhost.localdomain ([184.64.102.149])
        by cmsmtp with ESMTP
        id PrM7pMwMxcyvuPrM8pm89J; Wed, 08 Feb 2023 20:47:52 +0000
X-Authority-Analysis: v=2.4 cv=VbHkgXl9 c=1 sm=1 tr=0 ts=63e40a78
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=r77TgQKjGQsHNAKrUKIA:9 a=9o1Q4b-Vvu5eL6yPq40A:9 a=QEXdDO2ut3YA:10
 a=H8y-654LedB-od9EDgoA:9 a=B2y7HmGcmWMA:10
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH v2 09/11] man2/getrandom.2: change limit to use IEC multiple symbol
Date:   Wed,  8 Feb 2023 13:27:31 -0700
Message-Id: <a3ffc66fdeafd35f95330307db043dcb4873c067.1675830945.git.Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------2.39.0"
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfILJYPbfYYrpxdaGXLFIO1PlGznL2hAljkoY0sv+Wi8PHmcpIBarklSi7NItlRfgQ9nyy18UzE3DPfuGmDLkjeS9t21EShgO/itTjkiBC7tc0AoOUT7j
 MKES7gf2JsphdEoQKlcuF3Do5kSY1KOt965GIUDF6pBW1KOelYISU1CL9U0k7r7w+7AVCODh6PeyL2RtBa6JlC4oDi8FPGGxfgh++OMXLV8WaqlUDeAT7CbW
 NBVbQ8RqlySDMYkcZNf7F4GYJ+KWymxerhaWJHtadFBwphlfWOWJpq6dXq5t0kjV
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
 man2/getrandom.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)


--------------2.39.0
Content-Type: text/x-patch; name="v2-0009-man2-getrandom.2-change-limit-to-use-IEC-suffix.patch"
Content-Transfer-Encoding: 8bit
Content-Disposition: inline; filename="v2-0009-man2-getrandom.2-change-limit-to-use-IEC-suffix.patch"

diff --git a/man2/getrandom.2 b/man2/getrandom.2
index e66815450b9c..24c0c0b80a6e 100644
--- a/man2/getrandom.2
+++ b/man2/getrandom.2
@@ -188,7 +188,7 @@ As of Linux 3.19 the following limits apply:
 .IP \(bu 3
 When reading from the
 .I urandom
-source, a maximum of 33554431 bytes is returned by a single call to
+source, a maximum of 32Mi-1 bytes is returned by a single call to
 .BR getrandom ()
 on systems where
 .I int

--------------2.39.0--


