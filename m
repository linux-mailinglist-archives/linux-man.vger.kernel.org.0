Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7EFCD3C253D
	for <lists+linux-man@lfdr.de>; Fri,  9 Jul 2021 15:48:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231696AbhGINvf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Jul 2021 09:51:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231682AbhGINvf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 9 Jul 2021 09:51:35 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F35CC0613DD
        for <linux-man@vger.kernel.org>; Fri,  9 Jul 2021 06:48:51 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id l7so11311281wrv.7
        for <linux-man@vger.kernel.org>; Fri, 09 Jul 2021 06:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=5vaPvtRuz1i+9Y8kzn3AqBDNDKnQfNKAEDQmR9AJpFM=;
        b=mfn2HeuBX6mlUD6531bEzYY6xoe/Hi5bV/2wf0wm3JVoiEWV7bB3fcT0jzyEzaQVen
         KkJl6P6n/QL5h7PlZH1bcVNRBemHD8W+xYhQvsA4dIOTSOmDhjBWwbGptePwuuVaNG6q
         ZCvuDKf2XTkRSX5RUr8qh6h7zzZlGZTHzlipzCcvdzR+4sCuVOtgzC8/PofLX06Xr9GQ
         E9iXm/HUrHGrL1AhEtsBk1nH0smkghJDG+/Bw4RTvBwahWz2ef5gxqeQHBuL4rmbnTej
         OP1aVvaEOY/G8iXxEIkjsGlzMsW0d64dU20Q2+v6C6LQCf3WNgAqbKtLELL7lDbShcRw
         R6ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=5vaPvtRuz1i+9Y8kzn3AqBDNDKnQfNKAEDQmR9AJpFM=;
        b=pFosuN4wqTT58PNXeYTmhZB8SzfYyFBfaLgBHsw5+m4c367fwhnGOv1q3Jy3Q/hhtQ
         21Lbs2CuTjAD0AOIEnvHD2WoA1k32KnTAzfmrpdvOMXB5EFw67XGe7L0Rb7h/Zc2eVB6
         cBdWCMn6QqycJgHVskBvXw64IJ9JaCnG7kDiNyHtnf1oVEKbWyW+WZWZYl0TrX/ZTEbY
         9wRwlf1ZKxCSYzjrc2Do/Z03oLmNzbrlRI0NhCUrw5bz0CzWIAdmUuwXbl+sKfuU/FEe
         ZeHb8BvERZ0UMjyIHKczTwtbFiUZ46njEhCBD1if+ff6388dfWkA4TvM5cGflC/1lUqX
         Ks/g==
X-Gm-Message-State: AOAM532sBuMS4tc0adfbBAnhrWAd6VPwEsTRfVABycgw+gVIq2eUEtuV
        ErSOIdRfDunQhDFK+q6aG4kaMQ==
X-Google-Smtp-Source: ABdhPJwapZTV4AxzQrYQv1oqHoMXL4So+d9k5eHkoUEf6rxAqF1wBMn8ZlwCFcSgM9URnvR0pO3Amg==
X-Received: by 2002:a5d:6302:: with SMTP id i2mr4546904wru.366.1625838529809;
        Fri, 09 Jul 2021 06:48:49 -0700 (PDT)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id b9sm6341272wrh.81.2021.07.09.06.48.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jul 2021 06:48:49 -0700 (PDT)
From:   Jonny Grant <jg@jguk.org>
Subject: Re: strlen
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Florian Weimer <fw@deneb.enyo.de>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Libc-alpha <libc-alpha@sourceware.org>
References: <0bf239e9-cfc7-8889-ca00-b1d1566bd174@jguk.org>
 <87lfhpgxf8.fsf@mid.deneb.enyo.de>
 <017a5a66-ba66-7cc8-c607-f851c2e54fc4@jguk.org>
 <87363whf2z.fsf@mid.deneb.enyo.de>
 <48e874cb-2b95-2783-ddfc-ae12d9aaf8f5@jguk.org>
 <87bl7fozxi.fsf@mid.deneb.enyo.de>
 <23679a28-5986-0af2-4d98-7de68ed0deec@jguk.org>
 <53b3666b-d200-ef97-b050-cc38669c61cd@gmail.com>
 <b6fccca1-6e2b-fb20-d9d6-9df94cd3f05f@gmail.com>
 <564825ed-1e1f-b344-da35-1b83c551ed5f@jguk.org>
 <b71170df-7c6b-4582-c3d1-84b811fe5259@gmail.com>
 <84867122-ec74-b87b-a459-3e7178ffc6d2@gmail.com>
 <8b0914da-0413-e161-3835-c43ed6d0042c@gmail.com>
Message-ID: <ed11d358-d1f0-a551-33eb-e2f9ad9bd83e@jguk.org>
Date:   Fri, 9 Jul 2021 14:48:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <8b0914da-0413-e161-3835-c43ed6d0042c@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 07/07/2021 18:33, Alejandro Colomar (man-pages) wrote:
> On 7/7/21 7:23 PM, Alejandro Colomar (man-pages) wrote:
>> How do you think this should be handled?
>> Adding a line in NOTES for every such function?  Adding [[gnu::nonnull]] to every such prototype in SYNOPSIS (this might be too noisy)?  Else?
> 
> As an example of how man pages could look like with the addition of [[gnu::nonnull]], you can have a look at this manual page of mine:
> 
> [[
> ...
> SYNOPSIS
>        #include <alx/base/stdlib.h>
> 
>        [[gnu::nonnull]] [[gnu::warn_unused_result]]
>        int alx_callocs(type **ptr, ptrdiff_t nmemb);
> 
>        [[gnu::malloc]] [[gnu::warn_unused_result]]
>        void *alx_mallocarray(ptrdiff_t nmemb, ssize_t size);
> 
>        [[gnu::nonnull]] [[gnu::warn_unused_result]]
>        int alx_mallocarrays(type **ptr, ptrdiff_t nmemb);
> 
>        [[gnu::nonnull]] [[gnu::warn_unused_result]]
>        int alx_mallocs(type **ptr, ssize_t nmemb);
> 
>        [[gnu::warn_unused_result]]
>        void *alx_reallocarrayf(void *ptr, ptrdiff_t nmemb, ssize_t nmemb);
> 
>        [[gnu::nonnull]] [[gnu::warn_unused_result]]
>        int alx_reallocarrayfs(type **ptr, ptrdiff_t nmemb);
> 
>        [[gnu::nonnull]] [[gnu::warn_unused_result]]
>        int alx_reallocfs(type **ptr, ssize_t nmemb);
> 
>        [[gnu::nonnull]] [[gnu::warn_unused_result]]
>        int alx_reallocs(type **ptr, ssize_t nmemb);
> 
>        [[gnu::nonnull]]
>        int alx_frees(type **ptr);
> ...
> ]]
> 
> Source: <https://github.com/alejandro-colomar/libalx/tree/main/share/man/base/man3>.


May I ask, could a note be added to the NOTES section as well?
