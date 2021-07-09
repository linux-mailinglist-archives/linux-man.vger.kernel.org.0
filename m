Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A4A53C227E
	for <lists+linux-man@lfdr.de>; Fri,  9 Jul 2021 12:50:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229641AbhGIKxD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Jul 2021 06:53:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229877AbhGIKxB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 9 Jul 2021 06:53:01 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1918C0613DD
        for <linux-man@vger.kernel.org>; Fri,  9 Jul 2021 03:50:17 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id r11so6302485wro.9
        for <linux-man@vger.kernel.org>; Fri, 09 Jul 2021 03:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=eqgQdkF8yXkSbv+wzOKraZJDuoAP8vqba4Ib0cHSvPo=;
        b=BqdZHLMgUwJsreNgMcN2Mu01fkRY2Qt+v18kyTatR5O6VCWguBwnJzCzMbuPffyAE6
         XlAPpi2hCMYBat6JTRnLxbbbXkaPQnVsgqJdprA1XscUFTYgpj3ZJBwbn6X6RKbrQKZY
         /72L7z9pVNPDPgsp3JjFcEkwahNqKNNG1rsHZv1Gce5xnwz8QjlcCkhmM6BxfP4wNxyc
         n7QhulJDERm1BmECq4UdaJFGFaBkCmJp/Xc/SqamOguK/eJyQMoGZIHnNGuCyc1amF5Z
         a8OYNv8EYez52pYRxHcyicOJwWR5Cz3SIr32FjIKqshcxqz53q4q2XwYr827qtPwAOS1
         ZQUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=eqgQdkF8yXkSbv+wzOKraZJDuoAP8vqba4Ib0cHSvPo=;
        b=nHhM4YMREFah25T4Pg8YuUnoncm2yp7/MxaXNXebfs0fJTB4rGNl/vXux2LZ/ZtU5w
         vMBhN2km0zjbwjyuZudjPPjZxjCzPoEYf7Gv4Xn1d1oWtevTyM/HfhGbFgIxYO8fY6JT
         xQli+xXdiEEz4GJolEkYJDmlsNp31pyubwFRikwDRWIO13kLeZiEpD2yTa5ERoVjuEQr
         w2Q9A3syxsHnvEUE9NXZguLK0KgpsZprvDuoXkJAorXmdocVCX3rPQrl5GMcFvqo1dNM
         ohVG3gL5BS4umM5lyE+y/fc190GqEI/iYgs7aEoJoXS3TEs/uK3fu6FNH6oxy2oKMdyM
         hNOw==
X-Gm-Message-State: AOAM531cQ3xurpmycBHw+t0tJlbS4PXwL35xVfmUkzm61y+KqYNWHLLe
        JVJ1d4wc5yhFEHX5V9xFLFAXvw==
X-Google-Smtp-Source: ABdhPJxm0jD1Et2L0VSy0jhHakaMbC0RPxyohtNPpMDR1aYIMJyMqMA1Pw0Bae+xJzPHt6gEwarzqA==
X-Received: by 2002:a05:6000:1ac6:: with SMTP id i6mr36122112wry.327.1625827816418;
        Fri, 09 Jul 2021 03:50:16 -0700 (PDT)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id f7sm2166989wml.35.2021.07.09.03.50.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jul 2021 03:50:15 -0700 (PDT)
Subject: Re: strlen
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Florian Weimer <fw@deneb.enyo.de>, gcc-help@gcc.gnu.org
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
 <5566b180-1333-d73b-22ee-6c6d32053921@jguk.org>
 <feb6c15d-b242-83fc-c58d-2ebfbcd4f2bd@gmail.com>
From:   Jonny Grant <jg@jguk.org>
Message-ID: <9d1681ef-1d97-2d08-9abe-dc63d817ca8a@jguk.org>
Date:   Fri, 9 Jul 2021 11:50:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <feb6c15d-b242-83fc-c58d-2ebfbcd4f2bd@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 08/07/2021 12:06, Alejandro Colomar (man-pages) wrote:
> On 7/8/21 12:07 PM, Jonny Grant wrote:
>> Thank you for your reply.
>>
>> We can't guarantee safestrlen() won't be called with NULL. So because strlen() itself doesn't check for NULL in C standard we'd need to call the wrapper so that NULL can be checked for.
>>
>> I'd like to avoid the compiler removing certain execution paths.
>> I'd rather keep all code paths, even if they are not taken, just in case a NULL pointer creeps in due to an external device that is connected to an embedded system.
>>
>>
>> Probably this would work:
>>
>> size_t __attribute__((optimize("O0"))) safestrlen(const char * s)
>> {
>>      if (NULL == s) return 0;
>>      else return strlen(s);
>> }
> 
> I don't think you don't need that.  Unless there's a bug in GCC, it shouldn't optimize that path unless it is 100% sure that it will never be called.

That is good, so the code will always be kept! As compiler will never find all calls to strlen() and be sure those calls are never NULL.

> Moreover, I recommend you to optimize as much as possible.
> Even though NULL is possible in your code, I guess it's unlikely.
> 
> Also, calling a function safe is too generic.
> I'd call it with the suffix null, as it act different on null.
> 
> Also, I recommend avoiding 'size_t' (and any other unsigned types, BTW).
> See <https://google.github.io/styleguide/cppguide.html#Integer_Types>.
> Use the POSIX type 'ssize_t'.
> That also allows differentiating a length of 0 (i.e., "") from an invalid string (i.e., NULL), by returning -1 for NULL.
> 

https://man7.org/linux/man-pages/man3/strlen.3.html
size_t strlen(const char *s);

I'd rather not change the return type from POSIX size_t in any wrapper of strlen. Unless it is part of C11 Annex K style standards improvement.

Cheers, Jonny
