Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D403B68B2F1
	for <lists+linux-man@lfdr.de>; Mon,  6 Feb 2023 00:59:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229524AbjBEX7N (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Feb 2023 18:59:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229508AbjBEX7M (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Feb 2023 18:59:12 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E433B14EA3
        for <linux-man@vger.kernel.org>; Sun,  5 Feb 2023 15:59:11 -0800 (PST)
Received: from shw-obgw-4003a.ext.cloudfilter.net ([10.228.9.183])
        by cmsmtp with ESMTP
        id OkROpmZpUc9C4OoudpRsZQ; Sun, 05 Feb 2023 23:59:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675641551; bh=I2S8HFg440MiTjpcQ7b8clbISuqC6DS96VrPfPcPJM8=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=hT7Muw+U8mDI7r8r+rU7o/zYtCpR6vnsXHT5VIH2BaEHJaaf/GTbQUmu0j2JBRP/A
         6z2rYuEFkfLQ9LiMTv6FmDAeFCO1KvtxdvQQV1BkM9+WNeL5m8PBUYAF+sZCd9qTZA
         CyNrGLqxon/Zonom84MrR/F7ImvNmZgZsh5GNUcwFiDq2hcK7gKodqIK+Yu6/cXewU
         flp9HL3J5aJW9cxT7ZSAS7wiIZxjMPuUMilss2HYh9g58AAXWQKVQzT8xovpKJtZci
         iID/fBUZZXdm975EJRbvVH8QU6zfuupiiqXflQEdkn2eIT8B/PjgjorKtK0Jw3dQrG
         YH0jp1sJlMv5A==
Received: from localhost.localdomain ([184.64.124.72])
        by cmsmtp with ESMTP
        id OouZp57sIcyvuOoucpez13; Sun, 05 Feb 2023 23:59:11 +0000
X-Authority-Analysis: v=2.4 cv=VbHkgXl9 c=1 sm=1 tr=0 ts=63e042cf
 a=oHm12aVswOWz6TMtn9zYKg==:117 a=oHm12aVswOWz6TMtn9zYKg==:17
 a=r77TgQKjGQsHNAKrUKIA:9 a=9o1Q4b-Vvu5eL6yPq40A:9 a=QEXdDO2ut3YA:10
 a=H8y-654LedB-od9EDgoA:9 a=B2y7HmGcmWMA:10
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 09/11] man2/getrandom.2: change limit to use IEC suffix
Date:   Sun,  5 Feb 2023 16:58:53 -0700
Message-Id: <20230205235855.64261-5-Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230205235855.64261-1-Brian.Inglis@Shaw.ca>
References: <20230205235855.64261-1-Brian.Inglis@Shaw.ca>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------2.39.0"
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfJrgCRn8z80DVLF04mu5QMNe9UldN7Zw30E/Z0aITprftKEDhrtnwsVECw9Xz711zIanpTmG5avHzGvtBbkINSI5lyNnQN0oECTKQxy2XU/x3Lxp4HNB
 Q1MfATFRNHdQIGUV9HzL4MxohiICDrY/72iFPKEtZF8mFj5Smu+zPKq5L/vLf86kkjkvzwrcno7SxPQqcsxjbjC3kakI8S+FYbGm3ZL4ye79g5E2kQ45DfPc
 xrMRoiMA0YuarKxwcFSFMo9SM30LrSi4m5L8tBmxabs6SX1nFNHetSkD1OEn3IHT
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
Content-Type: text/x-patch; name="0009-man2-getrandom.2-change-limit-to-use-IEC-suffix.patch"
Content-Transfer-Encoding: 8bit
Content-Disposition: attachment; filename="0009-man2-getrandom.2-change-limit-to-use-IEC-suffix.patch"

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


