Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADA6953B406
	for <lists+linux-man@lfdr.de>; Thu,  2 Jun 2022 09:07:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231531AbiFBHH3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Jun 2022 03:07:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231561AbiFBHH2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 2 Jun 2022 03:07:28 -0400
Received: from mail-0301.mail-europe.com (mail-0301.mail-europe.com [188.165.51.139])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A6086832F
        for <linux-man@vger.kernel.org>; Thu,  2 Jun 2022 00:07:26 -0700 (PDT)
Date:   Thu, 02 Jun 2022 07:07:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
        s=protonmail3; t=1654153640; x=1654412840;
        bh=l+k+mhPWagL56sg5zq/0s1Jzy0OOJtz3xOvKXl86/2I=;
        h=Date:To:From:Cc:Reply-To:Subject:Message-ID:Feedback-ID:From:To:
         Cc:Date:Subject:Reply-To:Feedback-ID:Message-ID;
        b=L3pS/wherD4zdyIy3U5YMuUgxUWkPWcUplraLJDtDgyIR7LnxMArweVOBxKvWoEML
         d0xDrk6wF0GZQMWVrbszxEGjpSG2obexqUDCP6sW6jpbE+G5O0E73Iqu70UzpQPuSU
         K7ROHOTLKJc48+GzbRDLpg8bHYJt/c6hQntudM6LMl8qK1sFRcJSsyfSHNMjh9rji3
         C4LreDYvy5aSkCCNcF+RuZc9LJB4rcIhKjFpdOR5c5fW4XIOesPJ3fuYul0b2rsaEA
         ljESXbjgO4thO9j5ARDWmZ6FPULYdYun8NgOJ9d2tUltvOQQAZBGAsZhenuwZqdUQZ
         KT3OW52C0KUGw==
To:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
From:   Aswin C <realc@protonmail.com>
Cc:     "alx.manpages@gmail.com" <alx.manpages@gmail.com>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
Reply-To: Aswin C <realc@protonmail.com>
Subject: [patch] netlink.7: tfix
Message-ID: <qEqafaXK8G2yiM_fV30PRia0b4c3xTBI_8OxyNnH2jvKzUUUqfOqR88UcxUT4mjOFikCuPmQfDGiJTPFHFrlEp_k7ePwNNkMY7J4-ql5MH8=@protonmail.com>
Feedback-ID: 1798334:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Fix the spelling of the word 'appended'

Signed-off-by: Aswin C <realc@protonmail.com>
---
 man7/netlink.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/netlink.7 b/man7/netlink.7
index 6b04fead9..2991ec7ed 100644
--- a/man7/netlink.7
+++ b/man7/netlink.7
@@ -191,7 +191,7 @@ structure,
 .B NLMSG_DONE
 message terminates a multipart message.
 Error messages get the
-original request appened, unless the user requests to cap the
+original request appended, unless the user requests to cap the
 error message, and get extra error data if requested.
 .PP
 .in +4n
--
2.36.1
