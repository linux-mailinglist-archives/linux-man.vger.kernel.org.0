Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 219B368F8D7
	for <lists+linux-man@lfdr.de>; Wed,  8 Feb 2023 21:30:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231334AbjBHUaC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Feb 2023 15:30:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229479AbjBHUaB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Feb 2023 15:30:01 -0500
Received: from omta002.cacentral1.a.cloudfilter.net (omta002.cacentral1.a.cloudfilter.net [3.97.99.33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99CC139282
        for <linux-man@vger.kernel.org>; Wed,  8 Feb 2023 12:30:00 -0800 (PST)
Received: from shw-obgw-4001a.ext.cloudfilter.net ([10.228.9.142])
        by cmsmtp with ESMTP
        id PpGSpykLvl2xSPr4ppbl6f; Wed, 08 Feb 2023 20:29:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675888199; bh=xhxAZeQcLXGG0Z8Hd3jABGxEZkXEN2Jugh7uMcVVW2E=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=iIxljVnBTFX7MEI6MrRp0cgBm0EtZzQL5v5tw97ZYA5C9rcEvDj/qTOogSrgSmjJX
         nNXScTo2Kf00pFKJh72cqGCanI9Bz208amD5YfcQbHSEGuot7ibZpV8tqIhXC30uJW
         9fN6V+tnvo2sJAx5JPzmwv/2jCAjoo9zih2w44DS1UbU+8icPQovqqGxYz8YxUqpIE
         fZbQMfNCcDcNWY7JwoxnZch68RAPbGBwJKyvXV4YPTPlYXPEj1Rspc3PYQSVt9gsXN
         2dC/zXFL+N6Ksq6Ok2Zyp+8fDi921kQJMH1QGkyjzK+Vl70S0pe2SMv8P0v2DhtZzV
         rk22+7nPERR0A==
Received: from localhost.localdomain ([184.64.102.149])
        by cmsmtp with ESMTP
        id Pr4pplygVHFsOPr4ppAV7P; Wed, 08 Feb 2023 20:29:59 +0000
X-Authority-Analysis: v=2.4 cv=XZqaca15 c=1 sm=1 tr=0 ts=63e40647
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=r77TgQKjGQsHNAKrUKIA:9 a=d4E1t-a-ZZb6D74aQDUA:9 a=QEXdDO2ut3YA:10
 a=iqSyOaP4YS47XGSMiOkA:9 a=B2y7HmGcmWMA:10
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH v2 02/11] man2/spu_run.2: fix example comment status code or-ed value
Date:   Wed,  8 Feb 2023 13:27:24 -0700
Message-Id: <fde9ec8187bbb7d2b30b0cf5b5cd0d67190fcc2b.1675830945.git.Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------2.39.0"
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfC0smcsnEDib0rXCw2ktnfS0LNPb3+brbE2+DKlFhbY9zi/3I8NRsvHYvc+JJhCwOTanAN7kPPTJlQXI2OSfJBgPc02i9W8fB0OF/dfs67F1PyvfsYrD
 4M3+SLzwp/SHWxIfjew53v2VqqzhWPJ07zzL0gmxnOY5YMAXYWGizkLxzhJ0O2xEgkbEpUr1YZ5MdJuAAxbStLCoEI68y/7iWzK7hXQRjpZTfqB1Im2JGYAu
 rE17FGfSpaS587ujJWpyPnH+C2hPMcqFs+DLwiig44W8ChtQjNKScwKWN1JCZB41
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
 man2/spu_run.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)


--------------2.39.0
Content-Type: text/x-patch; name="v2-0002-man2-spu_run.2-fix-example-comment-status-code-or.patch"
Content-Transfer-Encoding: 8bit
Content-Disposition: inline; filename="v2-0002-man2-spu_run.2-fix-example-comment-status-code-or.patch"

diff --git a/man2/spu_run.2 b/man2/spu_run.2
index 00d552986052..139f10a97a80 100644
--- a/man2/spu_run.2
+++ b/man2/spu_run.2
@@ -245,7 +245,7 @@ int main(void)
         err(EXIT_FAILURE, "open");
 
     /*
-     * We should see a status code of 0x1234002:
+     * We should see a status code of 0x12340002:
      *   0x00000002 (spu was stopped due to stop\-and\-signal)
      * | 0x12340000 (the stop\-and\-signal code)
      */

--------------2.39.0--


