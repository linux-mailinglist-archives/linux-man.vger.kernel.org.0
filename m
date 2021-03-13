Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 81ABB339D9C
	for <lists+linux-man@lfdr.de>; Sat, 13 Mar 2021 11:42:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233752AbhCMKmF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Mar 2021 05:42:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230380AbhCMKlx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Mar 2021 05:41:53 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A077C061574
        for <linux-man@vger.kernel.org>; Sat, 13 Mar 2021 02:41:52 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id e18so3133073wrt.6
        for <linux-man@vger.kernel.org>; Sat, 13 Mar 2021 02:41:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6EzNBiXnJhCx39P7asO3fbhik3iOVfC7kbjIThlhAdM=;
        b=id9vqwkBvPZ0M6KzN30lOanf2BHTJHpoeIzv9Hwi0L/kRblfslJ5A74J2EEHOEy2SH
         wFMyPA7bD5ST+WwOE67DgveoFQ7azwhcYtShq29Wj5WPWxj1WMP/xoA2XOX1KfyhlMRd
         ECJLs0gsROQeJttD5K1nqL7emJwjgwjw04CEwb5r+gB+K7AfSHpFF9voR4CcijZ4TAHJ
         l9y/uez3Nerz+TmH1iULLqWyb6ieGStKidtOlaRUkWbDpxXa/FqwdY9xknQlt5lF/uD8
         Rd6emAeNDaW0ZYSZ2HT3wUjbmw/5u4WsmerpPzBJYj5jOy3FNK2g0ycFlxsLDkAnoTGl
         Ey6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6EzNBiXnJhCx39P7asO3fbhik3iOVfC7kbjIThlhAdM=;
        b=o51X0P6zbBxYw5g0foThZU+4hgNkRCCiVdyIfkQVatsl9zZMIMulCFBxNrJEzw5P6r
         uMCFqiMgZ9V0iYXUlmppNDhtJOU9QlRQPME8tDJqTzqVIWANSVjQRX60pwKBlEVONz5l
         bggI2SXnTn3UfMMdEZkNI4SrnWUcJcC77v2QcMgU6/4cZPMjx7mQhS1f54HRUN+fDGYt
         7MjUtfdzCSxA/0fj+IJaCns4vyfeVwodL4mpomIKRyAnnH7iKxyEX5DqqcNKmmitAAZY
         lBbfMetx7yDHpHgufyFxrh6ImuTio9QK8LlTsapusHmpq8Iu9nO9b6RwgNQnd978fRNf
         OZ+A==
X-Gm-Message-State: AOAM530R5gegDA64U2LyBXdpglWUULtbBTYMyGYxTY9MoWuvkkYrkmoA
        IVdgJoZAFYkONRAsS6k/SOU=
X-Google-Smtp-Source: ABdhPJz5BEZ7aztzRV5ei2u+kKuQ0GmaPakSLcozB3nR4SAFaC02SXgtWa2YTzn3ZWbBVfVnqpA2JA==
X-Received: by 2002:adf:9261:: with SMTP id 88mr17994008wrj.270.1615632111234;
        Sat, 13 Mar 2021 02:41:51 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id l5sm2930236wmh.0.2021.03.13.02.41.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Mar 2021 02:41:50 -0800 (PST)
Subject: Re: [PATCH 00/17] man3: SYNOPSIS: Use 'restrict' in prototypes
To:     Jonathan Nieder <jrnieder@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, Heinrich Schuchardt <xypron.glpk@gmx.de>
References: <20210311223330.722437-1-alx.manpages@gmail.com>
 <YEw7i0CCDyvm/KAu@google.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <f7284c58-993e-4dac-82af-7a2383a13dd7@gmail.com>
Date:   Sat, 13 Mar 2021 11:41:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <YEw7i0CCDyvm/KAu@google.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jonathan,

On 3/13/21 5:11 AM, Jonathan Nieder wrote:
> Hi,
> 
> Alejandro Colomar wrote:
> 
>> This fixes the remaining pages. With this, all pages have been fixed to use
>> 'restrict'.
> 
> Probably the context for this came earlier, but I didn't see it in the
> commit message, I figure I should ask:

The origin is here:
<https://lore.kernel.org/linux-man/5a8997be-479b-d813-ce7a-558a8e6633e9@gmx.de/T/>

And a later (short) discussion about it is here:
<https://lore.kernel.org/linux-man/20210203194354.158439-1-alx.manpages@gmail.com/T/>

> 
> What is the benefit of getting this right for a human reader?  Does
> knowing which pointer arguments can't alias help them in tracking down
> some bugs, for example?  Or is it going to help them in some other
> way?

Yes, I think it will help fixing bugs, or more likely preventing them.
Think for example the case of memcpy(3) (by that time 'restrict' didn't 
exist), where people would incorrectly use it as if it were memmove(3) 
ignoring that it could be dangerous (see the NOTES section in memcpy(3)).


Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
