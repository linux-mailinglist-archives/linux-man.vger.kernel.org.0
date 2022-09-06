Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C795C5AE72D
	for <lists+linux-man@lfdr.de>; Tue,  6 Sep 2022 14:05:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232625AbiIFMFm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Sep 2022 08:05:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231562AbiIFMFl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Sep 2022 08:05:41 -0400
X-Greylist: delayed 441 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 06 Sep 2022 05:05:37 PDT
Received: from a7-11.smtp-out.eu-west-1.amazonses.com (a7-11.smtp-out.eu-west-1.amazonses.com [54.240.7.11])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66DB56BCEE
        for <linux-man@vger.kernel.org>; Tue,  6 Sep 2022 05:05:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
        s=ehv72hrdm63prfxoar2vn7kuxcadjmfr; d=pxeger.com; t=1662465494;
        h=Message-ID:Date:MIME-Version:Subject:To:References:From:In-Reply-To:Content-Type:Content-Transfer-Encoding;
        bh=2VTgH3j6XZTE+d1rNBYJWuVynSVh+RLzZPzxB9ItrS8=;
        b=F4ddoAGShoxY3BkJL956dk7vAwn29uGS8UdxvHM18JRSsJ30/buYHl3ZebVJnY1r
        nFZDgEGIVkJnjwXTaQ3S8Zka45RwSUgRCOHPdqJeITcsL/PfuZLNu0xFetD31bU9vd5
        e/f7uB1nlfDgcjdkHTeDroU5vOpYjcti/6tpeu1I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
        s=ihchhvubuqgjsxyuhssfvqohv7z3u4hn; d=amazonses.com; t=1662465494;
        h=Message-ID:Date:MIME-Version:Subject:To:References:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Feedback-ID;
        bh=2VTgH3j6XZTE+d1rNBYJWuVynSVh+RLzZPzxB9ItrS8=;
        b=n4UV6VziIQ0gzshBAxCVoxsKNyiWe0E3mS6QiXSMWkcOZHPDSyZJyJyjp4MbTBF+
        cRAVEi5FUQSX4RjBGFqohWyMpheeg4GaxE8ZrjWbEaQv4PhG9PNXtYMijyz//Nx/h0b
        RKn2Tbs357LgkGONZu6aM4JAZ28v+GzEihBUvCbo=
Message-ID: <0102018312aa4b17-59210806-b085-41ce-b346-2d30f99effe7-000000@eu-west-1.amazonses.com>
Date:   Tue, 6 Sep 2022 11:58:14 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [patch] unshare.2: Add note about potential capabilities
 confusion
Content-Language: en-US
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
References: <0102018312086c29-13598a55-2c20-47eb-a288-a5bbe6f1caff-000000@eu-west-1.amazonses.com>
 <294ebefd-48a7-e53d-7569-2efa1c717bf7@gmail.com>
From:   Patrick Reader <_@pxeger.com>
In-Reply-To: <294ebefd-48a7-e53d-7569-2efa1c717bf7@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Feedback-ID: 1.eu-west-1.O8fLL1RnZ8YOldtp6Bf8+xGGBJTnUb+xpx8eQnH6GAs=:AmazonSES
X-SES-Outgoing: 2022.09.06-54.240.7.11
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_MUA_MOZILLA,
        HEADER_FROM_DIFFERENT_DOMAINS,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 06/09/2022 12:50, Alejandro Colomar wrote:
> Would you mind fixing those small issues and send an v2?

Voilà!

 From a63c099d31c8fd27af6428c4d9191df698b2c0e7 Mon Sep 17 00:00:00 2001
From: Patrick Reader <_@pxeger.com>
Date: Tue, 6 Sep 2022 12:56:12 +0100
Subject: [PATCH 2/2] fix formatting

---
  man/man2/unshare.2 | 7 ++++---
  1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/man/man2/unshare.2 b/man/man2/unshare.2
index 851129022..79a960728 100644
--- a/man/man2/unshare.2
+++ b/man/man2/unshare.2
@@ -464,9 +464,10 @@ Such functionality may be added in the future, if 
required.
  .PP
  Creating all kinds of namespace, except user namespaces, requires the
  .B CAP_SYS_ADMIN
-capability. However, since creating a user namespace automatically 
confers a
-full set of capabilities, creating both a user namespace and any other type
-of namespace in the same
+capability.
+However, since creating a user namespace automatically confers a full 
set of
+capabilities,
+creating both a user namespace and any other type of namespace in the same
  .BR unshare ()
  call does not require the
  .B CAP_SYS_ADMIN
-- 
2.37.3

