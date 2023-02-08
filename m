Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E11C468F8F1
	for <lists+linux-man@lfdr.de>; Wed,  8 Feb 2023 21:40:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232133AbjBHUkA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Feb 2023 15:40:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232102AbjBHUj7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Feb 2023 15:39:59 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2436111E8F
        for <linux-man@vger.kernel.org>; Wed,  8 Feb 2023 12:39:59 -0800 (PST)
Received: from shw-obgw-4002a.ext.cloudfilter.net ([10.228.9.250])
        by cmsmtp with ESMTP
        id Pi7yprrzhc9C4PrEUpcPTV; Wed, 08 Feb 2023 20:39:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675888798; bh=ErDhcvZzuWGuP2QKk49CDYWNdcfjX8hhu4vcvRuWHT0=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=ZyCu1GgL2W86La7c7P0jLdJLRJmgWgQTsiLD+I/wX5UyQozFAqOzfyBhtMomKSE33
         f0d5F2LliwHGthV1xmwyQfNdQaHh6JxMLzJnjPjqFUAQKpWwXj5vLhiekbiqE62wCY
         Z4QtXQRqReO3pHgZCf/ldJ1xNSOtaQb/nUxfjzWVWVicHZOyG6L3U9/CM6GnCGKYeW
         Po461Xr3xjw8T7o6xn4ANMbTSRDdDQFkfyBQw0vqRAWlQ3UzUWzdlGxSagQJv6r5VQ
         hRKu8v4YhUzCWaSSZhcAWlNcO9IbvMjEpwCGsiYetD+mX8ktHiqlOJaShJ6gsIFInb
         zhSgAIcNtHKsw==
Received: from localhost.localdomain ([184.64.102.149])
        by cmsmtp with ESMTP
        id PrETpEFIIyAOePrETpK0vO; Wed, 08 Feb 2023 20:39:58 +0000
X-Authority-Analysis: v=2.4 cv=e5oV9Il/ c=1 sm=1 tr=0 ts=63e4089e
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=r77TgQKjGQsHNAKrUKIA:9 a=fXi9tmOXr48sxnaAg-8A:9 a=QEXdDO2ut3YA:10
 a=zvtHh1bzAPjQFlfCYOsA:9 a=B2y7HmGcmWMA:10
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH v2 05/11] man2/reboot.2: show BCD dates in hex not decimal
Date:   Wed,  8 Feb 2023 13:27:27 -0700
Message-Id: <08e4941481849760a959720e07fb09630af1f8e5.1675830945.git.Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------2.39.0"
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfNT0Mxxk+swCM2ZLPfVn05ZXaQ8d8NEWmZKY2FWx1tHv1OqHCstRxJTAt9/x4hqofN7oiJciU2ynu4/+ly5cY+1I7EdBLyyuEP6WdibVGVYXyr27LsUo
 IORBGk13VULFybHG3KVjPQt2bUtWwcOMwodRoeKh2b7KvM1MmBjaLwDmsE3KV9Zet6TocTI8eYYKEEdo0IS9u5Qhhm5SFGAFxC6g8cSqFRFI+VThm529W2TE
 c7nRcELT/XQ5/pDOZpKNqrBqPMAm0LI7zUwM4jh8NgPxwcdXGLWqzrvAb5XYId0p
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
 man2/reboot.2 | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)


--------------2.39.0
Content-Type: text/x-patch; name="v2-0005-man2-reboot.2-show-BCD-dates-in-hex-not-decimal.patch"
Content-Transfer-Encoding: 8bit
Content-Disposition: inline; filename="v2-0005-man2-reboot.2-show-BCD-dates-in-hex-not-decimal.patch"

diff --git a/man2/reboot.2 b/man2/reboot.2
index fcdc56a93e38..d20fdf31a451 100644
--- a/man2/reboot.2
+++ b/man2/reboot.2
@@ -51,16 +51,16 @@ equals
 .I magic2
 equals
 .B LINUX_REBOOT_MAGIC2
-(that is, 672274793).
+(that is, 0x28121969).
 However, since Linux 2.1.17 also
 .B LINUX_REBOOT_MAGIC2A
-(that is, 85072278)
+(that is, 0x05121996)
 and since Linux 2.1.97 also
 .B LINUX_REBOOT_MAGIC2B
-(that is, 369367448)
+(that is, 0x16041998)
 and since Linux 2.5.71 also
 .B LINUX_REBOOT_MAGIC2C
-(that is, 537993216)
+(that is, 0x20112000)
 are permitted as values for
 .IR magic2 .
 (The hexadecimal values of these constants are meaningful.)

--------------2.39.0--


