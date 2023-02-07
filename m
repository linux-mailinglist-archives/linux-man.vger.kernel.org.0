Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 350B168E224
	for <lists+linux-man@lfdr.de>; Tue,  7 Feb 2023 21:50:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229462AbjBGUuQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Feb 2023 15:50:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229441AbjBGUuP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Feb 2023 15:50:15 -0500
Received: from omta002.cacentral1.a.cloudfilter.net (omta002.cacentral1.a.cloudfilter.net [3.97.99.33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3AD4CDD2
        for <linux-man@vger.kernel.org>; Tue,  7 Feb 2023 12:50:14 -0800 (PST)
Received: from shw-obgw-4003a.ext.cloudfilter.net ([10.228.9.183])
        by cmsmtp with ESMTP
        id POGopwCt5l2xSPUurpXxgX; Tue, 07 Feb 2023 20:50:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675803013; bh=I2S8HFg440MiTjpcQ7b8clbISuqC6DS96VrPfPcPJM8=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=aYhpRVZ3BakCSxj+3PwD908qD5z74MvAlGWRPJwarH62zjqxogJCXdsCHBayioJtB
         pH/8eO3S6DFIY27CzzFFGg1fsTz1DXNuX/qxXnTPb9b/v3P3vkphYClJjs0FMbVp6x
         rU55Pbm/5xagThnHER99vxLK6phgsU2v9AEgItBNIwie5MwwCWfDde3YPWHrZmc8ac
         J4LXZ7Y1aTDr2gMArkCcpnY4OlhesiQPKbXSPljiuETAiFhPfy7X2YAILuPXWAw+gZ
         Fe4HqBe12BYQeFE3u6EuVbbh31CnoY/qUnAGkRkn4D/HXue0kzFqA7tX3mVbF05e87
         P8XoR1N5wLxtQ==
Received: from localhost.localdomain ([184.64.102.149])
        by cmsmtp with ESMTP
        id PUurpGj5McyvuPUurpjWyn; Tue, 07 Feb 2023 20:50:13 +0000
X-Authority-Analysis: v=2.4 cv=VbHkgXl9 c=1 sm=1 tr=0 ts=63e2b985
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=r77TgQKjGQsHNAKrUKIA:9 a=9o1Q4b-Vvu5eL6yPq40A:9 a=QEXdDO2ut3YA:10
 a=H8y-654LedB-od9EDgoA:9 a=B2y7HmGcmWMA:10
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 09/11] man2/getrandom.2: change limit to use IEC suffix
Date:   Tue,  7 Feb 2023 13:32:58 -0700
Message-Id: <20230207203300.49894-10-Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230207203300.49894-1-Brian.Inglis@Shaw.ca>
References: <20230207203300.49894-1-Brian.Inglis@Shaw.ca>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------2.39.0"
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfNG34JH5ND2b5k25PBstIQ8jUiiHKiiyq01Gp7HRuWa7p3cWnhd3lVEtOxvRB7maWK/l/yV47zREcJ9Eoxs+Ucw8AOCcabkahcO/A8eJr9KOlkSsBToE
 5f/jq+amA0dIoUKM/GMDNqXc8uEtxkD7qimQD3smReH9aLJujgXlZ6pb8pO6qvUttTcKI540FXEm4FcenHOpWFvwT5fcZbK7lzJlPlgOhCLL5PZgGIU9Ib43
 nFh6dW0O+ZVCxVkrx4JZZSIQCPSMuqWg6oPlPdT66Cta4zJoRb7pr9qW/1PdgvXZ
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


