Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4544C2688C0
	for <lists+linux-man@lfdr.de>; Mon, 14 Sep 2020 11:49:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726381AbgINJtI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Sep 2020 05:49:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726275AbgINJtF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Sep 2020 05:49:05 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77FD1C061788
        for <linux-man@vger.kernel.org>; Mon, 14 Sep 2020 02:49:03 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id a9so10576253wmm.2
        for <linux-man@vger.kernel.org>; Mon, 14 Sep 2020 02:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=WUVoSgWa/G/V37YzuwMiG88pKhDqa4z8qfurj43jeMQ=;
        b=LwT007stAX7JDS7TfSmg8oWylzYYMnMohsPbw1GlDzg0kdJv7ScJ6UYcXqkTYHwu8J
         Kh5QiSAcl+yzqeQO+0/yc6y0yZ3smucEgPvRjS6CQ3G0B/46gkbmCzSL+hU3RMUGudm6
         J0LZyts7PvEo1V9vnCxYy1gBGr3/eY9C9Oj631TdPrmCI3dqBFGeMns86HRajxXQnn7/
         pJ8CO2MTox4RPoEir5gov9MNN8qd/OZq3fU71I5lhA2l7rlLe4N9i6fbQSbe6rrlDh5G
         JcW8bvX3DKZO+FdMXqfJCHo8s7Ft3HLLVYWQE8dW8O8gUcVTsWAp43FaioNniJiIPQKB
         z40w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=WUVoSgWa/G/V37YzuwMiG88pKhDqa4z8qfurj43jeMQ=;
        b=LWuHrhV36soeMf0ed0dAlJZchwLIBgQDkLcClhsMrNn3kdN+DGYc/QOKn4pXSsEYrP
         RdpWVeBFFU8aePeJQ6TAKb/NVgkVVlKhwusRb7LxUF2gcC/ZZ+kpFddr23sH6/3RkuWC
         UomqSlNsWD2vll84VUw3Y4D9PQF1or68ZOVh4kpshOcF/hSaVhiOJ3+WND9qlEozUUsj
         grUiy3zpWb5rTDFe/ZJ8Oyt/yzsP046uLn4MkAsh+auRQyoUzB5kuMVKs9D5sT1hxmDM
         b7UnyMsKAsxcymi03OLnBiSVtfKxtzaSypBGDS1iMxA0rKhdEnGm4gHF/qypO3JNMBKF
         Q1Kg==
X-Gm-Message-State: AOAM530YSFGSKjuMDfc5AHv36rsg9BPJqhiZzsrQiRVhfr85dHO+F0vu
        Q4uTGml++aKDvGmPm2WLESyTJW/L6nM=
X-Google-Smtp-Source: ABdhPJx6LeB+49pvxPop/vsTRiOcXuvSh2nw0iidlu4VG5s9SDvxvOJICx3ncVmMPgwf33eW7g+PCg==
X-Received: by 2002:a1c:8f:: with SMTP id 137mr14077041wma.158.1600076941352;
        Mon, 14 Sep 2020 02:49:01 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id q84sm6870807wme.23.2020.09.14.02.49.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 02:49:00 -0700 (PDT)
Subject: Re: [IDEA] New pages for types: structs and typedfefs
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <fb6463f6-49d7-e473-d5e1-1cdf8375e498@gmail.com>
 <6c5b89f8-4281-4434-cbee-28f88d07920c@gmail.com>
 <4ea99048-4bfd-9cba-44cd-9c37fdad8fce@gmail.com>
 <CAKgNAkjys+LYn1qaSXhM2gJfkv_UOnpeNPyh3QCqNLcMNBKB+g@mail.gmail.com>
 <20200914091954.mjqcki6kz45hczs5@jwilk.net>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <eba5debe-f18f-86d4-52f0-1938b3337202@gmail.com>
Date:   Mon, 14 Sep 2020 11:49:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200914091954.mjqcki6kz45hczs5@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 9/14/20 11:19 AM, Jakub Wilk wrote:
> * Michael Kerrisk <mtk.manpages@gmail.com>, 2020-09-13, 14:01:
>>> No, I don't have a PDF.  I usually search here:
>>>
>>> https://pubs.opengroup.org/onlinepubs/9699919799/
>>
>> You can get a PDF by registering as a member of The Open Group.
> 
> Alternatively, you could download HTML versions of the standards:
> 
> https://pubs.opengroup.org/onlinepubs/007908799/download/susv2.tar.bz2
> https://pubs.opengroup.org/onlinepubs/007904975/download/susv3.tar.bz2
> https://pubs.opengroup.org/onlinepubs/9699919799/download/susv4-2018.tar.bz2
> 
> 
> These should be even more greppable than the PDFs. (But I admit I've
> never seen the PDFs. I found the The Open Group registration form too
> intimidating.)
> 


Great!

Thanks,

Alex
