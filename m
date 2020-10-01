Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ABB4927FE33
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 13:15:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731647AbgJALPN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 07:15:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726992AbgJALPN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 07:15:13 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56217C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 04:15:13 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id t17so2583964wmi.4
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 04:15:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=P+13ygnNCiBfKy7fguaozyNdZJnIoolmv9b8k84pLFg=;
        b=eV67PVbl34PZSNafvXyAsv7g1h/EBWz+CRQvZRamcv7zzX3tB90tDjdGd22EsmE6XR
         Ox19EfZ/lzSPTlzmdn4YfR9rL+85JjUtKphy6VPbFwPEzZTq9uLkr4uh+/6MEt/+dfa3
         VX5N6x+d1fpJ2uVnMzzEBUV2eqT6j8Tl80CU++c8XnZuxVqhWckFpPSnHbr7Te2zUrYb
         Kk3c/NZNjfr9n+aJRtjXEZ85leLyQR5BVZxWchAyYRWg/epe3AOSzfkuwaJ5kB4kQS4/
         hfKrmIZGC5D3JJi/hi5LPci9SCO5F9gk+egVXwy4IuZqRfOoAO7wXKcZqyRmMBFI0iBj
         7ulg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=P+13ygnNCiBfKy7fguaozyNdZJnIoolmv9b8k84pLFg=;
        b=Ok1mAqNQnuj9bMCeSa3dnPAEtNa3rBpNJjf+n0S3pFeI6cuCIaL9WvhEVamkxediw+
         Xs7FIVEDz4TDnFVrickPzSerwO0M8KvFKwP5NYiEK0lL7p9FggaPjGujnPRBHx1mZHmh
         ZJpmKRdF53eSNmWrxXajhhDXzL7PTrR2iL/19Yx4knB1kDGWtzbFFwfGRnd9KuL3viJp
         EClFeA0wsXhwJFYQ3WlAyTaRnSnKcwhVsKh1L5WrgKVXa1V8HlR+g6Rx1KODt6rMKw1k
         +DLhUwWB/cVin9MMbxkfHhP6Se5PK3ltlrIQRUS1OSo4byYaAbXvMr6tsdnz54/2BaFM
         rgJA==
X-Gm-Message-State: AOAM532k2kGzWjLd9LCNe2sVZkn6FKRtOcBAlBd62QJ+HneRgfxFliRD
        2NobFCwD7mEY6BfGpYlEBlmPw/YLfGEsXg==
X-Google-Smtp-Source: ABdhPJywd1MiS6mrX3ghW06xRpJWay7p7UzpBg6YvoMzPKDqyx/S4w8Hyv56eeoaNvvAqEBS3r2AXg==
X-Received: by 2002:a7b:cb81:: with SMTP id m1mr8446381wmi.140.1601550912009;
        Thu, 01 Oct 2020 04:15:12 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id i14sm9294361wro.96.2020.10.01.04.15.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 04:15:11 -0700 (PDT)
Subject: Re: [PATCH 05/16] system_data_types.7: Add int_fastN_t family of
 types
To:     Jonathan Wakely <jwakely.gcc@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>,
        "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>
References: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
 <20201001101559.77163-6-colomar.6.4.3@gmail.com>
 <CAH6eHdQPvsfHcsWXNKXZsZcvWkmH6JOvcAivVFjq+HJEctG62w@mail.gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <8dc9e60d-f838-87d5-2fc6-c34a84118916@gmail.com>
Date:   Thu, 1 Oct 2020 13:15:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAH6eHdQPvsfHcsWXNKXZsZcvWkmH6JOvcAivVFjq+HJEctG62w@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-10-01 13:07, Jonathan Wakely wrote:
[...]
>> +Notes:
>> +Some of these types may be optimized for size
>> +instead of raw performance.
> 
> I'm not sure what this tells me as a programmer. What does "raw
> performance" means exactly? The text above says it's "the fastest",
> but then it says "may be optimized for size". I don't know how to
> interpret this. Is it fast or is it small, or something else? Is it
> optimized for small size? Natural word size? Cacheline size?
> 
> I prefer the phrasing of the caveats in the C and POSIX standards
> which just say it might not be fastest for all purposes.
> 
> How about "Where there is no single type that is fastest for all
> purposes, the implementation may choose any type with the required
> signedness and at least the minimum width."
> 
> I don't see anything in this man page saying that the <stdint.h> types
> are all typedefs, rather than new types that are distinct from the
> standard integer types. That seems like useful information.
> 

Hi Jonathan,

I wasn't sure about how to word it.

In theory, they should be the fastest types; just that.
But then, for some reason, GCC decided that
int_fast8_t should be int8_t instead of int64_t,
because when using arrays of int_fast8_t,
it will create smaller arrays, which will be faster (less cache, etc.).

(I remember having read that a long time ago, but I don't remember the 
source, or if it's the actual reason).

How would you word that?

Thanks,

Alex
