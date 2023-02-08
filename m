Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2DD5068F90B
	for <lists+linux-man@lfdr.de>; Wed,  8 Feb 2023 21:49:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232283AbjBHUty (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Feb 2023 15:49:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232314AbjBHUtv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Feb 2023 15:49:51 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A10C02B0A7
        for <linux-man@vger.kernel.org>; Wed,  8 Feb 2023 12:49:50 -0800 (PST)
Received: from shw-obgw-4001a.ext.cloudfilter.net ([10.228.9.142])
        by cmsmtp with ESMTP
        id PlzipsA6ac9C4PrO1pcRzF; Wed, 08 Feb 2023 20:49:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675889389; bh=Lzde7OT+ujRcD68u0EcMEjePeMbX3+VnOKrlzZHH5S0=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=D+WiV25H1S1q497gRYmWNfnIa1deVah/uWYO0pV/AL7KHlZt17oUqiewEBsid7Z3N
         Tzl6BOrtUShksLq5l7RwHdlhwZD/ohmR9ZLt+8LprMofwX1MpdFBQg+BEKTT9ETNCt
         nQLN/9RSIGdKE6twBYra55Xj3I5t574jE2OdYQYJ+oV5m8p3pHYdYqEDnfzTkMYI8+
         CjUDL+gjj/0drQOWt4TmXuY2XOwmiWpOXxO72iCdGplb2jI/v+BwzlzF3Firm9OVfV
         OREvoF5faBd/9IEcH8c8IGTsKbfX25wLX4QUEGZF6rqY/NayP3sS78YCr0iK+MZ3js
         hWZLlzDMtpdYw==
Received: from localhost.localdomain ([184.64.102.149])
        by cmsmtp with ESMTP
        id PrO0pm5U3HFsOPrO1pAZ4a; Wed, 08 Feb 2023 20:49:49 +0000
X-Authority-Analysis: v=2.4 cv=XZqaca15 c=1 sm=1 tr=0 ts=63e40aed
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=r77TgQKjGQsHNAKrUKIA:9 a=G80oAnSK7v4uroVoX6gA:9 a=QEXdDO2ut3YA:10
 a=29SEg3U9A5LDG8xS1H8A:9 a=1X--RXN9LygA:10 a=B2y7HmGcmWMA:10
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH v2 10/11] man2/futex.2: change limit to use ISO multiple symbol
Date:   Wed,  8 Feb 2023 13:27:32 -0700
Message-Id: <dbcc41d977d4eeac999a0381ff9a411453b838fe.1675830945.git.Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------2.39.0"
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfOJsxpZ3qipd5kA8+dZRilJ63n3yRpfI8PJ4Gd4jjxPl7UTERRMs68bMLT3KoCTL+fhzKtqtPZnrI+AaHHmKLFX2vNw1e7FVpGrUu7JgecdCa8I7XKOa
 spGgj7XHDiv9h9llXlbD02/QS2RRLmOHhAcSNhqFalLlS0WxTpTQkCDVzrnVXRK9Da7eCfpk+7uvWlXy5gudNxHT5cTuojg9okoJVGdaw4B6WO/neqRImaN1
 V9VChx1v0wbH1JZGD2Rv9TVI/srSQemMoGEwmEp7kgU2jNsggGv0LDYPQY54UYU/
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
 man2/futex.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)


--------------2.39.0
Content-Type: text/x-patch; name="v2-0010-man2-futex.2-change-limit-to-use-ISO-suffix.patch"
Content-Transfer-Encoding: 8bit
Content-Disposition: inline; filename="v2-0010-man2-futex.2-change-limit-to-use-ISO-suffix.patch"

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


