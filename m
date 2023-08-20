Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6D59A782039
	for <lists+linux-man@lfdr.de>; Sun, 20 Aug 2023 23:51:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230015AbjHTVvK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Aug 2023 17:51:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231927AbjHTVvJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Aug 2023 17:51:09 -0400
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E0ED9D
        for <linux-man@vger.kernel.org>; Sun, 20 Aug 2023 14:51:06 -0700 (PDT)
Received: from shw-obgw-4002a.ext.cloudfilter.net ([10.228.9.250])
        by cmsmtp with ESMTP
        id Xei9q9jzgLAoIXqK9qrBBO; Sun, 20 Aug 2023 21:51:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1692568265; bh=SRTrrocz6KOseDTHu1BvQjzYKUNkyJIOF2eFPvYQ0HQ=;
        h=Date:To:Cc:References:Subject:Reply-To:From:In-Reply-To;
        b=s4QgqM4R4INnhy2dSDc5DWDo0uaXRR3FLb8XxoAyEvSRAVG7eSxvCZ0kUK637bYbb
         AxIEYn7F8HEynGNwWyistAaF7oZ1fzoocL6rKyLttIOqHGHjhsfRTmnBUL+8l7H0Hr
         pcuric4Yv5vJG/VW0ShpBJuHRmEe89fWde/zvKqQTX9owJXDMqCFaY7TOqUjH0pDKU
         UoQgAq8dKV50hA6rpzwLjS+CBDEUmdoVPypq0d/fik4nY/BBQa9eFmpJ0h6O/77VLt
         z0ERdHdDzqIVUB6iMDWGj6KIYklF7PUJtVUiMyzWNdz3QVV5H81mqyjeg/lnaY1lWq
         mwrv0gdSVtrCg==
Received: from [10.0.0.5] ([184.64.102.149])
        by cmsmtp with ESMTP
        id XqK8qtlPSyAOeXqK8q72Nk; Sun, 20 Aug 2023 21:51:05 +0000
X-Authority-Analysis: v=2.4 cv=e5oV9Il/ c=1 sm=1 tr=0 ts=64e28ac9
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=IkcTkHD0fZMA:10 a=7392p9bmP1SmsWvOWsUA:9 a=QEXdDO2ut3YA:10
Message-ID: <8204da79-bca6-02b7-a883-6fd77b4f97a5@Shaw.ca>
Date:   Sun, 20 Aug 2023 15:51:04 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
To:     linux-man@vger.kernel.org, groff@gnu.org
Cc:     g.branden.robinson@gmail.com, alx@kernel.org
References: <4e1081d0-1d77-0a00-78bf-5dc40522f428@kernel.org>
Subject: Re: '-' vs '\-' in TH (man(7))
Reply-To: Brian.Inglis@Shaw.ca
Content-Language: en-CA
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
Organization: Inglis
In-Reply-To: <4e1081d0-1d77-0a00-78bf-5dc40522f428@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfAsxWcEfkcmq5f97AsKhxqKWy18d4pKxWeKSCSQSmI0gSpbb5DCujsOWc2U64220h+ZYm58MBNjd7TtE2lAw6LU2YMQpHmIh58YUFpJtYJUCFTZo0Sgj
 4brMmhL+qIMpHb480hS0AfHmjt5tVkTJiO1zzplcloPjVCCtSILeTF6WZkkQu7By6SbtE/yDAJrAUUfP2LXwYyGDRbmIQ9M/UMkwZXnlKuHZdu5ibfKtnxx4
 070WsptC4flb+LD97polajpqfRrb6gJ2ZDaEMoQFtHdbcQnb0axRQwuVxmkMHFbW
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, 20 Aug 2023 21:10:52 +0200, Alejandro Colomar wrote:
> Hi Branden,
> I just noticed that the Linux man-pages use '-' in TH.  That's
> surprising to me, as Michael was careful to use '\-' correctly.
> In the documentation, I couldn't find anything that says TH
> should be different than anywhere else, and so I'd expect he
> would have used it there.
> $ grep -rn '^\.TH [^ ]*-' man* | wc -l
> 30q
> $ grep -rn '^\.TH [^ ]*\\-' man* | wc -l
> 0
> Was it just an oversight, or are there any obscure reasons to do
> that?

Those are just normal *hyphens* *within* the page title command/function/... 
name; perhaps you are thinking of '\-' used as a *dash*(/minus) after the page 
title command/function/... name following .SH NAME in all 1111 files?

See groff_char(7):

"For best results in roff systems, use the “−” character in input outside an 
escape sequence only to mean a hyphen, as in the phrase “long-term”. For a minus 
sign in running text or a Unix command-line option dash, use \− (or \[−] in 
groff if you find it helps the clarity of the source document)."...

-- 
Take care. Thanks, Brian Inglis              Calgary, Alberta, Canada

La perfection est atteinte                   Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter  not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer     but when there is no more to cut
                                 -- Antoine de Saint-Exupéry
