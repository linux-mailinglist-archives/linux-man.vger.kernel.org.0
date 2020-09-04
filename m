Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E5A325DDE6
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 17:38:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726111AbgIDPiA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 11:38:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726032AbgIDPiA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 11:38:00 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2D4AC061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 08:37:57 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id t10so7224511wrv.1
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 08:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=H+Cb1ZUD59VXXW/nLry+Xs8YOafoLjF6agvlk3g6jFc=;
        b=jgC34q/u3YpZrSdx8+SmlH9ESFUIxYIUB/8WnxQDAm38o+TGDYb/brMQSzI596TMF6
         4lzBzNZtYLIEzWzj/ZM5asBrH42LTsbucNithEjfkpEzwLXtgnxNTSuDOxmayVstzBZh
         dUn5hSDAaL+9dIr+DNSmqyVDqlmFXnaUkRF5JffzR/oqI9D9RzwBt0Cw8KbC1BJH3yJ9
         K4f3hqWOVA7utQppUqycl/Zg/3d+50nM8D0gf2jQvH8B8/gJz+R85IPR5OnNpu96QNDU
         kPyimz0SLaT1tfSzENILyahmL5meFcmF+4iNc+RfYeG4LACFsJvQcf8Ke9WINAQVqI0q
         v4yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=H+Cb1ZUD59VXXW/nLry+Xs8YOafoLjF6agvlk3g6jFc=;
        b=b/bD2n/ZFqLWPj/BJN05dH9yEsKLOBmHezJTXseRYNN8pgrVpZAednNWKJfWXvYHUs
         gD/NQniWK/dCqp5ZM7ycVqi6TnT2Lvyp/sZhjcDY+IaHB9fY8E1/Eg0peFxpHsA0Rgii
         /iEdO3FEFtjD/5+QOrrLiM2WJ4c8d2p+/FRXBOSvxSIK0ETbllj1aEhNeHaK87iUgAny
         e6IByVtnT6raK5iZY2xwr25T8Md4DtiGJgMSqiv/KjtCKUzqxTveyFNPr35ETqmcQ0FE
         GOq2tcW2g4l/1H6U7mHvFCn9TBb+bijMO0MVxIqGZQL12NEBO2rRbTSHngUICSTu9PHA
         vI8Q==
X-Gm-Message-State: AOAM5326dv6sHAuEQzO28xTBthqxF0uhFwYJUpHx7VltqHX/L6x/2E4e
        sOc9qbsZwI8AQDE7+fLEqFA=
X-Google-Smtp-Source: ABdhPJxXWlNWG26FQQyHVYArD6BksTXWDIVqjAFzUw12gh5MTdVaFf9446M3IyD9KHS5FNV9MRR2aA==
X-Received: by 2002:a5d:5273:: with SMTP id l19mr8638592wrc.64.1599233876490;
        Fri, 04 Sep 2020 08:37:56 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id l10sm11476513wru.59.2020.09.04.08.37.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 08:37:54 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 28/34] strptime.3: Use sizeof consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <da654939-dcc2-e1f8-65d9-a873325d4609@gmail.com>
 <aec8bb20-6693-f876-0e2e-5574bd3b7af6@gmail.com>
 <8458b842-7d4b-f19b-c596-7f529dd48ba6@gmail.com>
 <497bc4f4-31f5-91a5-8bc4-469e22b26502@gmail.com>
 <8160510c-4d9e-7f30-e810-648b0b58a986@gmail.com>
 <d7db8e23-8e86-10ee-f221-30d7e3bd657e@gmail.com>
 <87d5b09a-a3c8-622c-d731-5d42644a5f24@gmail.com>
 <61d2f2f9-08d0-9f1a-9642-ae56b3f4b61d@gmail.com>
 <4bb9e639-83ee-ede0-f6ad-dfc16787d358@gmail.com>
 <3c25bbda-bc90-1364-77cd-2c637f09d611@gmail.com>
 <af5bf8ce-8bb8-3819-a8e4-1454be92097f@gmail.com>
 <4f0ff40c-2a63-736d-698f-0efc436c3678@gmail.com>
 <5343bbd1-b03f-29bf-2def-c27ba3a3616e@gmail.com>
 <4eba3ee9-bb6a-810f-55ae-7f0d76d446a7@gmail.com>
 <82aa16c3-60fe-68b3-103f-6d438563f3c2@gmail.com>
 <6e6d6796-32e0-9cc1-1e6c-4abb0b702499@gmail.com>
 <718db444-6679-224e-c649-6dd219b9db3c@gmail.com>
 <36a9ef8e-6fd9-e074-2a19-d8529f425501@gmail.com>
 <4dd8f9a4-8cb2-0a50-f186-5b493655abf3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7b7e5610-183f-e23f-0504-924a87821927@gmail.com>
Date:   Fri, 4 Sep 2020 17:37:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <4dd8f9a4-8cb2-0a50-f186-5b493655abf3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/4/20 4:57 PM, Alejandro Colomar wrote:
>>From f000e36d106a22d68f26e9cebe84758854739a42 Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 21:56:21 +0200
> Subject: [PATCH 28/34] strptime.3: Use sizeof consistently
> 
> Use ``sizeof`` consistently through all the examples in the following
> way:
> 
> - Use the name of the variable instead of its type as argument for
>   ``sizeof``.
> 
> 	Rationale:
> 	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Patch applied.

Thanks,

Michael


> ---
>  man3/strptime.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/strptime.3 b/man3/strptime.3
> index d12f298ff..ab7d76f9a 100644
> --- a/man3/strptime.3
> +++ b/man3/strptime.3
> @@ -429,7 +429,7 @@ main(void)
>      struct tm tm;
>      char buf[255];
> 
> -    memset(&tm, 0, sizeof(struct tm));
> +    memset(&tm, 0, sizeof(tm));
>      strptime("2001\-11\-12 18:31:01", "%Y\-%m\-%d %H:%M:%S", &tm);
>      strftime(buf, sizeof(buf), "%d %b %Y %H:%M", &tm);
>      puts(buf);
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
