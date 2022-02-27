Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2AA994C5DA5
	for <lists+linux-man@lfdr.de>; Sun, 27 Feb 2022 18:09:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230094AbiB0RKc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 27 Feb 2022 12:10:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229512AbiB0RKb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 27 Feb 2022 12:10:31 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B8725D1B5
        for <linux-man@vger.kernel.org>; Sun, 27 Feb 2022 09:09:54 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id j22so11927135wrb.13
        for <linux-man@vger.kernel.org>; Sun, 27 Feb 2022 09:09:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=tXDen+Ay1vifx0vPfZfhkCRPZSf3MljfjiyJdu06wgo=;
        b=e+YvIpEdWSRuSiLWX16wyrEE9yD9+JP3ybkNceZLy/zkEqQDjplAZgcmSLQ2FAwhAD
         Nj6+QCIYyic6pmhryhynykB9+3ZHpLCCB2I2wcB1v8c0hpZs7Rh9IYiSJQKNEHPHP+9Y
         20NsiiN85QGvOHI3AilzCLC/Eqj/iyMd9YRee3MFBv7ywMvis899K3U+Z8ven9XkcRn5
         c4YBsm2RWPYomSpBFJQg8Att9N3p35m1wSGZhMyfuv/Y2SWu7UM6/E1BgxnYtq15tFT0
         qw+xjBZqh1tBYhsRj0hxD3FKQc7xiG2TlB5diXnXzxK2RoWGcaeW/mIKA07kTuAY6FfF
         qF1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=tXDen+Ay1vifx0vPfZfhkCRPZSf3MljfjiyJdu06wgo=;
        b=INllQJ/a69o1J8VtcQoY/U9Rajt42WnA+1SKXcRJ/VCcOl/qy85PM1jK+SjrpovGMd
         tv3nWVgnXrzWBGN6EEfJpmkU48Cd5ZT4Z9Eq6v0zBsM7r+wkNRLqqn75EXWuR5LrG2Dk
         HkkkPOyAQibdw1nJOLZTWY2+wlYU0oQUNFrr0DLiDvsoReFBlvwBARMQ0kxTNlqNAe5V
         0P0VhpeTKoaDtxpKoFdn3ny3lY2GxSdMJv4EPjQ3msj9nzzg/2D16BFaG5n0aFsmNofv
         sA/T7N+pW4nfn6OCLxw1E66qYP1YJztwJyZRBp8B6Nmt9Byq3FnkO2BEBjIr6NtK1Nt3
         ZMHQ==
X-Gm-Message-State: AOAM530V7JF7s7cRcXdsnFJAG9+NE5AxHJbLbAvEwPE5NzW3G4M/ORSW
        4AuKKcgte9lIf9FwUpqZBf0=
X-Google-Smtp-Source: ABdhPJyivGI8rkHNLe8JXK0S8WU0TA0fu0VDxDii26bnpMhq6GzJ+M7NNOeKGxEk2PAXT/6on8fPxA==
X-Received: by 2002:adf:d1c9:0:b0:1ea:8b11:98a4 with SMTP id b9-20020adfd1c9000000b001ea8b1198a4mr13172188wrd.220.1645981793134;
        Sun, 27 Feb 2022 09:09:53 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l15-20020a05600c4f0f00b0037d62a899b1sm9156560wmq.6.2022.02.27.09.09.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Feb 2022 09:09:52 -0800 (PST)
Message-ID: <75bc59ef-6a3e-1539-dcc3-6c6a2a411e85@gmail.com>
Date:   Sun, 27 Feb 2022 18:09:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH] mmap.2: ffix
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20211112103938.3888-1-jwilk@jwilk.net>
From:   Alejandro Colomar <alx.mailinglists@gmail.com>
In-Reply-To: <20211112103938.3888-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Jakub and Branden!

On 11/12/21 11:39, Jakub Wilk wrote:
> '" type of behavior:' was incorrectly formatted in bold.

Thanks for the report!

> 
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> ---
>  man2/mmap.2 | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/man2/mmap.2 b/man2/mmap.2
> index 96b7444b0..f6e406ed5 100644
> --- a/man2/mmap.2
> +++ b/man2/mmap.2
> @@ -289,8 +289,7 @@ Note that older kernels which do not recognize the
>  .BR MAP_FIXED_NOREPLACE
>  flag will typically (upon detecting a collision with a preexisting mapping)
>  fall back to a "non-\c
> -.B MAP_FIXED\c
> -" type of behavior:

Branden, why is that?  Is a leading '"' special here?

> +.BR MAP_FIXED "\(dq type of behavior:"

I'll apply a slightly simpler patch (removing \c):

diff --git a/man2/mmap.2 b/man2/mmap.2
index 30756f078..d0291be8e 100644
--- a/man2/mmap.2
+++ b/man2/mmap.2
@@ -271,9 +271,9 @@ one thread will succeed; all others will report failure.
 Note that older kernels which do not recognize the
 .BR MAP_FIXED_NOREPLACE
 flag will typically (upon detecting a collision with a preexisting mapping)
-fall back to a "non-\c
-.B MAP_FIXED\c
-" type of behavior:
+fall back to a
+.RB \(dqnon- MAP_FIXED \(dq
+type of behavior:
 they will return an address that is different from the requested address.
 Therefore, backward-compatible software
 should check the returned address against the requested address.



>  they will return an address that is different from the requested address.
>  Therefore, backward-compatible software
>  should check the returned address against the requested address.

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
