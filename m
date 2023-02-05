Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 148D068B249
	for <lists+linux-man@lfdr.de>; Sun,  5 Feb 2023 23:59:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229550AbjBEW7l (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Feb 2023 17:59:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229517AbjBEW7k (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Feb 2023 17:59:40 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D2EE17CEE
        for <linux-man@vger.kernel.org>; Sun,  5 Feb 2023 14:59:40 -0800 (PST)
Received: from shw-obgw-4001a.ext.cloudfilter.net ([10.228.9.142])
        by cmsmtp with ESMTP
        id OjrMpmWXWc9C4Onz1pRkN3; Sun, 05 Feb 2023 22:59:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675637979; bh=bdoDbc+0CUpGcdZB3Bi1j6uv3RaZrH+xCeFEYEZRzJ8=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=Yr2TDWq+orFQCkJGIRQhGbdCQhKeMscmWJ1ls5BfaL2jKr8iU2fGtCex3R42m5wOw
         SbhrUevUXEOvpssoc689MFEc4bNKZ/hQlAYnb1z/Y3+wvG44QKoOnv2eu9ZcUTlJ6d
         KHdx49KobyXULNroqp0tKvPbFpG3Dy2ZWSJoQTFukacscGFDmb++8HWcYhAZRJGr4M
         WcJjKgMuL85nQpBMQiEoY8XA0EtvxpWwpcF+ovGTrGHWA+uUfUse1PCIBO4yP6+5G+
         C6DuyRfQfiopxAcoEX+f1L7v0O9O/055kdQRYVHsjVJmmUCnilpp7hw9CZwkImwj1d
         H0Ym2/Qbmk1vg==
Received: from localhost.localdomain ([184.64.124.72])
        by cmsmtp with ESMTP
        id OnyzpUKfwHFsOOnz0p3JL4; Sun, 05 Feb 2023 22:59:39 +0000
X-Authority-Analysis: v=2.4 cv=XZqaca15 c=1 sm=1 tr=0 ts=63e034db
 a=oHm12aVswOWz6TMtn9zYKg==:117 a=oHm12aVswOWz6TMtn9zYKg==:17
 a=r77TgQKjGQsHNAKrUKIA:9 a=NdrvaUklb98dmj5pptwA:9 a=QEXdDO2ut3YA:10
 a=JjFQb_LDtpKBWWSn7NYA:9 a=B2y7HmGcmWMA:10
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 01/11] man2/shmget.2: fix limit units suffix from SI to IEC
Date:   Sun,  5 Feb 2023 15:59:14 -0700
Message-Id: <20230205225924.63300-2-Brian.Inglis@Shaw.ca>
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
 man2/shmget.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)


--------------2.39.0
Content-Type: text/x-patch; name="0001-man2-shmget.2-fix-limit-units-suffix-from-SI-to-IEC.patch"
Content-Transfer-Encoding: 8bit
Content-Disposition: attachment; filename="0001-man2-shmget.2-fix-limit-units-suffix-from-SI-to-IEC.patch"

diff --git a/man2/shmget.2 b/man2/shmget.2
index cdb2d3bee4b5..4bc18bedf3a9 100644
--- a/man2/shmget.2
+++ b/man2/shmget.2
@@ -354,7 +354,7 @@ for a discussion of why this default value (rather than
 is used.
 .IP
 From Linux 2.2 up to Linux 3.15, the default value of
-this limit was 0x2000000 (32\ MB).
+this limit was 0x2000000 (32\ MiB).
 .IP
 Because it is not possible to map just part of a shared memory segment,
 the amount of virtual memory places another limit on the maximum size of a

--------------2.39.0--


