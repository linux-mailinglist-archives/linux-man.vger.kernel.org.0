Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 07964426BA7
	for <lists+linux-man@lfdr.de>; Fri,  8 Oct 2021 15:28:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241539AbhJHNad (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Oct 2021 09:30:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230282AbhJHNac (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Oct 2021 09:30:32 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 598B4C061570
        for <linux-man@vger.kernel.org>; Fri,  8 Oct 2021 06:28:37 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id k7so29743037wrd.13
        for <linux-man@vger.kernel.org>; Fri, 08 Oct 2021 06:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=blGlVBLXF8OLQyZkecCrblsOzgxXrDVOPz+KeF1fcgg=;
        b=ldFsBDpbvmmpXNcawB4rT5i9u5g+aXB9/Smv7DHBS49bl9KXBNOV6Pfc/4e+UhU4Ie
         RZOClXwGEf/Z8mUmc5l4hNKAOlsQcM5aydswSBlAmDWwyry1S1LbWb3MLpuubIi0Uiac
         MAvDZNb2wsuhci/qhZCtJvF+SFZxwJIdtrPORhyMFazJhYIiPrCrHNxZqUtFliv24L8T
         sMPSxt4qyj0FV4DlACWqtJmRp32Fp48oGpMuu7rHC8NRDz5CsmrWDLUZ6pnVXxyrl/18
         BXjdm0SRRyj1Dffz4voX5eI6v3Wkt/16XdvNPZgRrF3D+Ykgv2yBygAy97EJgKaV2MVd
         sDxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=blGlVBLXF8OLQyZkecCrblsOzgxXrDVOPz+KeF1fcgg=;
        b=v93HCzmYvfFFHi5rYQoO1zYYdNWI0UcoFRvMiLjfND8wpjyXJKrOnyG7z1CR7zw0ux
         RWzNK4FK0jAgzq6zj9kaznfeb260KjUKsWz75TbuJQ82yjEQxv7icO3K2tyZ+xJ5P2K8
         DaaqzFoB8IHLUvJ2TM/QwGXw6n4fvpyBlElHTcEv/QPB6K1sPU1RQepCQjawheHcE8RJ
         RoU32yd23LmIwVli93tamOlsy5ff9YFQqstYgWYYfdrpLp1N7l5Uhr348YuonSO5kgHo
         RQM7/5JyJJZX/e5FXe+jbOAHO26zAQgftSUjc1i7rT1CdOPnBcAH2GwLAlifoKvxyzxc
         P5UQ==
X-Gm-Message-State: AOAM531LOSbNI12Clu3GupbeVoHprqlbgZEs5xZOQ28HjULydgMTkPYZ
        wGSvYX6+td149y1AN4UzRQbav1uRrPINzA==
X-Google-Smtp-Source: ABdhPJwPDLGxUeW6/KbmPkXejPRsaW26BKmD6cCH4HXlWL0O2Nz1Y8wdJUluOnnWDG9eNPIQQ/+Oig==
X-Received: by 2002:a5d:6c6a:: with SMTP id r10mr4082308wrz.389.1633699715978;
        Fri, 08 Oct 2021 06:28:35 -0700 (PDT)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id b19sm10055384wmb.1.2021.10.08.06.28.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Oct 2021 06:28:35 -0700 (PDT)
Subject: Re: should free() refer to posix_memalign?
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <177c3be6-6bab-7e55-6fa5-fc0fc33ff3b2@jguk.org>
 <3c8ceb24-dc7d-4f57-e532-f2abbb20da2d@gmail.com>
From:   Jonny Grant <jg@jguk.org>
Message-ID: <bdd56782-05d4-d4b9-a9a7-81f8ee8749d9@jguk.org>
Date:   Fri, 8 Oct 2021 14:28:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <3c8ceb24-dc7d-4f57-e532-f2abbb20da2d@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 08/10/2021 13:30, Alejandro Colomar (man-pages) wrote:
> Hi Jonny,
> 
> On 10/8/21 1:19 PM, Jonny Grant wrote:
>> Hello
>>
>> https://man7.org/linux/man-pages/man3/malloc.3.html
>>
>> "The free() function frees the memory space pointed to by ptr,
>>   which must have been returned by a previous call to malloc(),
>>   calloc(), or realloc().  "
>>
> 
> Agree that this is somewhat wrong.
> 
>>
>> Could this list refer to the other ways memory can be allocated too? free() accepts other memory.
>> posix_memalign
>> aligned_alloc
>> memalign
>> valloc
>> pvalloc
>> reallocarray
>>
>> That would be changing it to say :-
>>
>> "The free() function frees the memory space pointed to by ptr,
>>   which must have been returned by a previous call to malloc(),
>>   calloc(), realloc(), posix_memalign(), aligned_alloc(), memalign(), valloc(), reallocarray() or pvalloc()"
> 
> I don't like that list.  It is incomplete (the first one that comes to my mind is asprintf(3)).  Either we provide a _complete_ list of functions that can be free(3)d, which I think will be difficult to keep up to date, or we use the same wording as POSIX, and say that it deallocates memory allocated as if by malloc(3).
> 
> 
> What are your thoughts?

That sounds reasonable.

"deallocates" sounds better than "frees"

Kind regards
Jonny

