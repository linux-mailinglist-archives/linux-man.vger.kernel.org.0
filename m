Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B57F968B24B
	for <lists+linux-man@lfdr.de>; Sun,  5 Feb 2023 23:59:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229468AbjBEW7m (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Feb 2023 17:59:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229533AbjBEW7l (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Feb 2023 17:59:41 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C99CD17CF0
        for <linux-man@vger.kernel.org>; Sun,  5 Feb 2023 14:59:40 -0800 (PST)
Received: from shw-obgw-4001a.ext.cloudfilter.net ([10.228.9.142])
        by cmsmtp with ESMTP
        id OjrMpmWXcc9C4Onz1pRkN8; Sun, 05 Feb 2023 22:59:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675637979; bh=uIrMtS4N4oicaJpI7ihX+ml0TmAUGRXZJpaHFCFhjq4=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=j4BNS8Ee21PIXbEvj17H9EprKxpdoAyuowBRDTZQ7sRczTZosH8gdtkOorxHXA3MM
         NpS5WM2HOCP+ZNzrjOny2rehBuDAJMTM3S8aM0OKHp4bUtay3Naqf3B4W7OCucx9jL
         JfIcGs1xXN5r2772pOmBV5eFh/4ElxnQuPV7+MSkbO+LlRa5A+DDkE4mv6gLHzyvDy
         FKNiwoWBzKq+wkCc8QdYVJMi+E6Vu921hL8YU40VYbKbKKwfk7GO0rIug4UOyeLGaI
         DDpY/x2RFJug3S07l4nwRDvRKKkdAatikF3/8Gz2mE87PPkIcBI2ucOp5IDZFI4iXb
         fqfRaR5qi/UxQ==
Received: from localhost.localdomain ([184.64.124.72])
        by cmsmtp with ESMTP
        id OnyzpUKfwHFsOOnz1p3JLA; Sun, 05 Feb 2023 22:59:39 +0000
X-Authority-Analysis: v=2.4 cv=XZqaca15 c=1 sm=1 tr=0 ts=63e034db
 a=oHm12aVswOWz6TMtn9zYKg==:117 a=oHm12aVswOWz6TMtn9zYKg==:17
 a=r77TgQKjGQsHNAKrUKIA:9 a=d4E1t-a-ZZb6D74aQDUA:9 a=QEXdDO2ut3YA:10
 a=iqSyOaP4YS47XGSMiOkA:9 a=B2y7HmGcmWMA:10
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 02/11] man2/spu_run.2: fix example comment status code or-ed value
Date:   Sun,  5 Feb 2023 15:59:15 -0700
Message-Id: <20230205225924.63300-3-Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230205225924.63300-1-Brian.Inglis@Shaw.ca>
References: <20230205225924.63300-1-Brian.Inglis@Shaw.ca>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------2.39.0"
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfEIm9dm+oMUUIg6lpNnFdPMZECYH27jaxKKMjNjCvI5fo8h311/sezG1nowYWdReznC5yFoTXa4PTrAHM3aMq8DnPL/gh6hGn/e1YpTeUojTl3HIjAti
 bSRaSs7CA6mgOn78YumQjx8kZQ5G83/Lp0v/HaqdwCqS3+ZWGiiT2r6oSY2ue6mgfuqsgR+qGKIYQ6HeM3dZKrIOSpDi4C587EHWBK+Mw3KaDPmhxZapSqUR
 vvxjcvkBCWzcLbkiMYiHsGfZ/xYSISUBGmTMh0b3EdBv6UR1pv8e23o1M4fM1yJ2
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
 man2/spu_run.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)


--------------2.39.0
Content-Type: text/x-patch; name="0002-man2-spu_run.2-fix-example-comment-status-code-or-ed.patch"
Content-Transfer-Encoding: 8bit
Content-Disposition: attachment; filename="0002-man2-spu_run.2-fix-example-comment-status-code-or-ed.patch"

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


