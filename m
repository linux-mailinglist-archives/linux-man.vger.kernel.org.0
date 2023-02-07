Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8CEFD68E219
	for <lists+linux-man@lfdr.de>; Tue,  7 Feb 2023 21:45:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229632AbjBGUpK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Feb 2023 15:45:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229574AbjBGUpJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Feb 2023 15:45:09 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3039B6E98
        for <linux-man@vger.kernel.org>; Tue,  7 Feb 2023 12:45:08 -0800 (PST)
Received: from shw-obgw-4004a.ext.cloudfilter.net ([10.228.9.227])
        by cmsmtp with ESMTP
        id POtYpq3f8c9C4PUpvpYXBZ; Tue, 07 Feb 2023 20:45:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675802707; bh=6ZxJp9F1huItBYuq2UcqzOG0Dx11SY/DCAl+u5lkMoE=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=uHDOT1VpUT/0P8gIW2plLII1GKI9fDnyzbgJSEpZqEWhY+C9OZQFl5XEWoCnBX9ty
         gQhlq+28w0Bb5vwCueNjzhIb8wPE4hWqhyaV1vaDjrRS3+xA2q4M0E1pXS9kkuO7tE
         uR/+HAULnVBBKSy4f58SrU8a2whQ9V3Jg85ryQm5+0+sDrRJQIWJQECIYdo1MAkFIZ
         5aHhwprZFafaZ8gufhaa8ultLzBJMyHtwbCna+bAsDbeVuQsdLg6Xqlq91gAOgOHqu
         rqgecOb4AHmec9yMIRyseiwIGa7agu2Z6WrHoRvFLs49WfSoeRF5TIy7vTzqOYBCQI
         s69rILA8jODow==
Received: from localhost.localdomain ([184.64.102.149])
        by cmsmtp with ESMTP
        id PUpupprh93fOSPUpupIwIT; Tue, 07 Feb 2023 20:45:07 +0000
X-Authority-Analysis: v=2.4 cv=J8G5USrS c=1 sm=1 tr=0 ts=63e2b853
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=r77TgQKjGQsHNAKrUKIA:9 a=fXi9tmOXr48sxnaAg-8A:9 a=QEXdDO2ut3YA:10
 a=zvtHh1bzAPjQFlfCYOsA:9 a=B2y7HmGcmWMA:10
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 05/11] man2/reboot.2: show BCD dates in hex not decimal
Date:   Tue,  7 Feb 2023 13:32:54 -0700
Message-Id: <20230207203300.49894-6-Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230207203300.49894-1-Brian.Inglis@Shaw.ca>
References: <20230207203300.49894-1-Brian.Inglis@Shaw.ca>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------2.39.0"
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfIN0HRDh/u16LdheOEXdDv0n0O/9vKblwB/cmlrNjD2bsNhkv2eGvMbiXgAXH3VD3bQTOoFKK8ZVW4dUjixYTQvd8UQ4GgdxOteIkQyBUfjUCrg/BpgM
 jlcqwwlM4SKiY3om9EdHx6r3BKqp8sAkrWOw1pqtLAT4QvcfHy1wEwIQjZGPvLfJgXhJNhuey1Wdf6ibbizWAu0/jWllgKMoWUSc/+GNGkMLundJXdX9drwy
 s2AEgjR2GUtWQW9Zb48bvOg1svMQPvm21lLAbhxfqxlbTcmbIKu7SD0HFRZkVIvD
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
Content-Type: text/x-patch; name="0005-man2-reboot.2-show-BCD-dates-in-hex-not-decimal.patch"
Content-Transfer-Encoding: 8bit
Content-Disposition: attachment; filename="0005-man2-reboot.2-show-BCD-dates-in-hex-not-decimal.patch"

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


