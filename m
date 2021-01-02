Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2ED672E87FF
	for <lists+linux-man@lfdr.de>; Sat,  2 Jan 2021 17:04:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726598AbhABQEm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 2 Jan 2021 11:04:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726561AbhABQEm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 2 Jan 2021 11:04:42 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2929C061573
        for <linux-man@vger.kernel.org>; Sat,  2 Jan 2021 08:04:01 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id q75so13823662wme.2
        for <linux-man@vger.kernel.org>; Sat, 02 Jan 2021 08:04:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=hrUmzHOWqqA8OLcWCRVTgEKynhIabTZudFUXixYEbdk=;
        b=pXojpDVNKGCZMVdnE8eBAq+bVGRO9jhakd90rEOfubKD4zFoZRnbwCc/W/0U+LGcOh
         CCElsZrnkYpvPL8uPtkTK+dcvRbuUzI6PeRax34GlI9VMADi3JK0DKX2vHeqQixNGbH9
         RZylc0Cor+mugL0rndlUw2WLBYBwnq4AUbges7QLwuIIrwJt0QVpX+D8uWgClHhBIihd
         KGW4FrIAvhSVzZmUsL7ZCOFlaljPkdOVEC45SBU0KEuLCfp3Gm6rKaObW1q55zMl4uk7
         51adn0e6LPdCYM4LIHCl23GoizhWb55Uu5Vsj4uS51wUOba7cvjDJYTzQjpWl2z2ohfR
         C+4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=hrUmzHOWqqA8OLcWCRVTgEKynhIabTZudFUXixYEbdk=;
        b=gMY42MypvKX7AkiirMtIU8KOMda27+5GcJHKmeUXVnOCSXbVdFbekbaL7m4V72+Rhm
         zO7J1oBWDc4laBHQbZ4Mys92DUVP2d4ELZc2Z1Axb95zdxyk05z4PvqENy4JRzB+5NLc
         lnULlQvsQ8oXebOfba+0MqtyTzUo06oKxOoDLYC6UsJkhQsMnaJhzSZNIuaBkZd3zLR4
         iChFWyzThCysyFSresWBRf1LpDNGEzJjCbXbn/THbonB+hahUa/nTAKOGjBKcEUaNXYO
         HNVSZKVOGUeC0Ujr/7chq+FU2QeDqlYOKb83uOBggpWMuLXoTl2fIU0jcY23r6UnWRYA
         x2rw==
X-Gm-Message-State: AOAM531xq4ir4Ypt8alkOKooU544VGOsXFhGI8XESOn0KY1BjiOkN1pV
        P+Kgb6qJkqZY2GkXhrf0hNl509QwD70=
X-Google-Smtp-Source: ABdhPJyGL+AHPCpeAeL5PyHBqh3yiOA1kPLYXOxHwUhH20Ff1V9+q1zzjchSqhMv8BadJMf7/hrDKg==
X-Received: by 2002:a1c:5447:: with SMTP id p7mr19816506wmi.116.1609603440358;
        Sat, 02 Jan 2021 08:04:00 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id o8sm79377039wrm.17.2021.01.02.08.03.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Jan 2021 08:03:59 -0800 (PST)
Subject: Re: [PATCH] execveat.2: srcfix
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <20201230214147.874671-1-alx.manpages@gmail.com>
 <CAKgNAkjf8gS5Av2pzYqt_JHjjnCw-FrjqQicjhr20+MzgsK3Xg@mail.gmail.com>
 <bdda57ff-acdd-9109-5720-ba0db8138d41@gmail.com>
 <993e801d-4126-4e11-5a06-4b92879a7eb7@gmail.com>
 <2f321c87-7e12-2c41-6cd6-ac55024caf0a@gmail.com>
 <6c9c593c-1e89-ce75-c1d0-41e61c98bad7@gmail.com>
 <a6391e7c-6036-33ad-0512-88663307abde@gmail.com>
 <952d3e06-d5fb-db69-f8e0-ee97d5ad2159@gmail.com>
 <4611ff34-2322-1e66-7b14-dc61200404f9@gmail.com>
 <8c66c28d-2ff1-b629-33f9-df057998f80e@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <40f1140a-496b-5b2b-c1de-4522b1ea5043@gmail.com>
Date:   Sat, 2 Jan 2021 17:03:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <8c66c28d-2ff1-b629-33f9-df057998f80e@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 1/1/21 11:29 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
[...]>>>> login.3: group
>>
>> ffix!!
> 
> Done.
> 
>> The following may help:
>>
>> $ for p in $(git grep -l '.SH SYN' man?); do \
>> 	echo "===================== $p"; \
>> 	man -l $p  2> /dev/null \
>> 	|sed -n '/^SYNOP/,/DESCR/p' \
>> 	|sed '/Feat/,$d'; \
>>   done \
>>   |grep '); *[a-zA-Z_]' \
>>   |grep -v -e 'Note:' -e NOTES;
>>        int brk(void *addr); void *sbrk(intptr_t increment);
>>        set);  ssize_t  pwrite(int  fd,  const  void *buf, size_t
>>        long a64l(const char *str64); char *l64a(long value);
>>        double fmax(double x, double  y);  float  fmaxf(float  x,
>>        float  y);  long  double fmaxl(long double x, long double
>>        void  login(const struct utmp *ut); int logout(const char
>>               place the result(s); inproc is used to encode  the
>>               dress  of  where to place the result(s); inproc is
>>               ter(s); procname should return a  pointer  to  its
>>               static result(s); inproc is used to decode the pa‐
>>               RPC socket(s); rdfds is the  resultant  read  file
>>        int wordexp(const char *s, wordexp_t *p, int flags); void
>>               sp,MAXUN.UNSIGNED ); where MAXUN.UNSIGNED  is  the
>>                                     (SIGEV_THREAD_ID); Linux-specific */
> 
> Thanks. I fixed a few things.
> 

wordexp.3 is still broken.

>>>
>>>> I didn't read past that.
>>
>> Still I didn't read past that :)

Later I'll have a look past there :)
Cheers,

Alex

> 
> ;-)
> 
>>> Well thanks! What you did read was helpful!
>>
>> Thanks!
>>
>> I removed from the reply those already fixed,
>> so what you see in this email is still pending
>> (minus a few that I may have forgotten to remove).
> 
> Thanks again, Alex. I've pushed the fixed I made.
> 
> Cheers,
> 
> Michael
> 
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
