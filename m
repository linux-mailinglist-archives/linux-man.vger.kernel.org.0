Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 916B468F8CC
	for <lists+linux-man@lfdr.de>; Wed,  8 Feb 2023 21:28:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229745AbjBHU2x (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Feb 2023 15:28:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229479AbjBHU2w (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Feb 2023 15:28:52 -0500
Received: from omta002.cacentral1.a.cloudfilter.net (omta002.cacentral1.a.cloudfilter.net [3.97.99.33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B60621E9DD
        for <linux-man@vger.kernel.org>; Wed,  8 Feb 2023 12:28:51 -0800 (PST)
Received: from shw-obgw-4004a.ext.cloudfilter.net ([10.228.9.227])
        by cmsmtp with ESMTP
        id PkmxpyFpll2xSPr3ipbkZW; Wed, 08 Feb 2023 20:28:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675888130; bh=0agDfFdaP5l0+V8lmIk3/kYnnEcpibbyKdfc7yCbnkg=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=mE2eUmvMeQfEoqlUb+9nNpcK7SW02bUIx0RCIfRbYJfKZgX3RUY2g+ZQJAOaXKX8b
         23j4fKshziuZ0/X88CFDs3l0I063uwOp5EwWWJ+EOABQ+eltpRHrq1i9LrncwLWQN6
         oRhYtXWIzhg0umxsNUhizhIUHPKv+cscI1X3KJJYJfoG9f5dONNueB6P6xeyU/iKQS
         n/LQ2IChJLTYl8lWDjfxJkGJTwaYSQqKzVh8z4ALhxwdX3n7f0WtMIoJdrJNX4k/U6
         5KC/d69Y0mu3tZQvLRbrhF3e7mT14Get3ybbUeU/7XwgpF+sIKlJcpzsWn7uAI5uC2
         an+BYefL7LbDg==
Received: from localhost.localdomain ([184.64.102.149])
        by cmsmtp with ESMTP
        id Pr3ipw0qE3fOSPr3ipLTwz; Wed, 08 Feb 2023 20:28:50 +0000
X-Authority-Analysis: v=2.4 cv=J8G5USrS c=1 sm=1 tr=0 ts=63e40602
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=r77TgQKjGQsHNAKrUKIA:9 a=NdrvaUklb98dmj5pptwA:9 a=QEXdDO2ut3YA:10
 a=JjFQb_LDtpKBWWSn7NYA:9 a=B2y7HmGcmWMA:10
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH v2 01/11] man2/shmget.2: fix limit units prefix symbol from SI to IEC
Date:   Wed,  8 Feb 2023 13:27:23 -0700
Message-Id: <4f2f18f59261d9da0d7e1c530ad6e63b6b367a2d.1675830945.git.Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------2.39.0"
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfOvGHVg5JBLir1nvU/8Niez541hjaVnjhfLHC5ccSCDn0awlh8vOujEEoUAfei8Du0MA4ulvf1Z+IRE6SQCGigYQG1IT3jjEzUPnoiG7vSx+bZav0/Q3
 Keh5/tdLvYb3TT9+76NMvDwPAtF+U6JGh0EwduJJs0jaStyRF225k5KSNntBEw9mExuXsoYAhTjMzRA+bmw0EkVddvjzXwUDSx6qKyWkrkk+CbUDRJmrmHqY
 1iS2b6eSuH/16i1nPt+yjuMN2mCHA+hgesqtzozDKO/A1XbTntDnfZ+VzUDybtOz
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
 man2/shmget.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)


--------------2.39.0
Content-Type: text/x-patch; name="v2-0001-man2-shmget.2-fix-limit-units-suffix-from-SI-to-I.patch"
Content-Transfer-Encoding: 8bit
Content-Disposition: inline; filename="v2-0001-man2-shmget.2-fix-limit-units-suffix-from-SI-to-I.patch"

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


