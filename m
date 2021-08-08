Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 43B6A3E37CD
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 03:24:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229974AbhHHBYl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 21:24:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229865AbhHHBYk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 21:24:40 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F514C061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 18:24:21 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id e25-20020a05600c4b99b0290253418ba0fbso8848391wmp.1
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 18:24:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=IIZcawMN5Nb1+miokeybPbihYJ1+g2wipNmQURHZ+Vs=;
        b=AW7sDi0+7Un1w/LnQvB16b8jz7Y7zIl6n9M3HYNw0G9IKaieXryGt9xAkYjIcryv7p
         zNc52KOmKYAE50MwugSUdiosG24nCKyM1kqgYTY1bjHuw2ZKkK80FdBisnUPqrArf0p/
         bExX+9lmvcOilBX+kaNT7pL/T1i257EIyi7W1OdxF62nN48Nsb+luyU6GCRpzGouepOv
         m7f1IBjY5o97xIKlgq00WOjLkSuvYdhBJlWZZx3mqElfhTWqs2Reoap/GLNbtEdoihBX
         7lqzVvjb1lQpEU08uDCpJvagsCt/uk6TEV0Wmmr8u3VXwI6vQj7C465EnqogSoNFrZee
         Qyvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=IIZcawMN5Nb1+miokeybPbihYJ1+g2wipNmQURHZ+Vs=;
        b=gUZCS4Rpzri4cVCXYRacj+1ed6yOpiUw7MNqDNwYgf5SaUFkJZOLDWmKas67jQh+X3
         MoEuYPB+2l8kqbu3/2IJmBOxmIIBaCuMP4k8N63oYLhZCuzkIvDQOtl4VyotvWGWAxRF
         N/RJk1ZK+cIBl2+hD2Tj2MeX9Qof7febBMY3BrKSO3UE157Ma4UZUg+vflNjBjpAndeK
         yy7o/YTebvwaqx5eg3gxNkYbzbxs5wIOJRKLNEIX+xssOYNwavcegMzrJTolh/7bxTh4
         uQGV3Ab59mORuxvegsMWLGSYo5OfKj5thVlZgLEJtu7FrtqqEyUS9bBJXamzhqXv8cLp
         FfLg==
X-Gm-Message-State: AOAM530KNgy6dGhb+bzy5Ac89gktpBsVCglnCdqDr3GdBTvSAP6VQBjy
        GweKefCtvCXgftPUvRcgjSCzwKAn+24=
X-Google-Smtp-Source: ABdhPJwwWjn1r8l6zWEyL70g9KLa5vllg3g7+F318dSi4KSnweOpm7QkspYETYcDsG6vT38SEugSuQ==
X-Received: by 2002:a05:600c:1c13:: with SMTP id j19mr9763229wms.164.1628385859823;
        Sat, 07 Aug 2021 18:24:19 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id 129sm12992052wmz.26.2021.08.07.18.24.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 18:24:19 -0700 (PDT)
Subject: Re: [PATCH 30/32] strlen.3, wcslen.3: Add recommendations for safer
 variants
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jonny Grant <jg@jguk.org>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-31-alx.manpages@gmail.com>
 <0b8006d4-82d3-3896-5ee9-c1efe04a8583@gmail.com>
 <cd053311-f9f3-d7d2-2f2f-400bc8048f0a@gmail.com>
 <dae44ff3-1f4a-ddfe-819b-d1be9d2cc2e7@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <16dc1629-f2f7-68c2-8e20-66c2598b7f39@gmail.com>
Date:   Sun, 8 Aug 2021 03:24:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <dae44ff3-1f4a-ddfe-819b-d1be9d2cc2e7@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 8/8/21 3:20 AM, Michael Kerrisk (man-pages) wrote:
>> I have some doubts about this patch, but in a completely different sense:
>>
>> I don't know if I'm being a bit paranoid in treating user input.  I've
>> always been taught that I should program deffensively, but as time
>> passes by, I realize myself that I was programming too much
>> deffensively, and even introducing bugs in the error handling code.  And
>> in many cases, strings will always be NUL-terminated, so maybe I'm just
>> passing around a wrong recommendation.
>>
>> What do you think about this?
> 
> How about a sentence something like:
> 
> [[
> In cases where the input buffer may not contain a terminating null byte,
> .BR strnlen (3)
> should be used instead.
> ]]
> 
> What do you think?

Yes, that's much better.  Thanks!

Alex

> 
> Thanks,
> 
> Michael
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
