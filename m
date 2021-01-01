Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC88D2E83DE
	for <lists+linux-man@lfdr.de>; Fri,  1 Jan 2021 14:50:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726779AbhAANt5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 1 Jan 2021 08:49:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726747AbhAANt4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 1 Jan 2021 08:49:56 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29F85C061573
        for <linux-man@vger.kernel.org>; Fri,  1 Jan 2021 05:49:16 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id q18so22067612wrn.1
        for <linux-man@vger.kernel.org>; Fri, 01 Jan 2021 05:49:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=nmvuS0E23uf7ZbeFHLMunyIJYPXeIAJy10wTDA2L9Cw=;
        b=t5VkqG0jG+pySWUO0InvXITbC8uRWtK0sID6tAv1qwg/HIO1wP8ja6Rbsct65EC4Cg
         BHDFBW4f/6AeIeB1Ajd0FFx1ONoXqfrlHtTjxFJb6x+6uxTsbzvs66Hmkt+I9SXiuhVC
         Oq620QaeXxqsYEx7AE3uQu9DcnyanyHs28UyCe1eKXAkyqmxrZpl1TGH6V+cv+BJ53rO
         LI7qPsj5GUhyF4HFDlXo/qk4oDrFbrb295HiTeHfejG0UfChseNGDsSxrpxPqRFcUOkE
         BJlsnNF3UhQwexwoISMeeZw7ZrqHpsGZ7KZ8Eavqfn3/60/ued2zulkw1wkFERn5pouo
         +LJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=nmvuS0E23uf7ZbeFHLMunyIJYPXeIAJy10wTDA2L9Cw=;
        b=Jn9ELWUA83zD68AQRtkA9CSJWBt/K6qiRfzYgY5FliudNLuoB/4t9BFXp3m3lS/LC+
         6ZabV7eYy3m5HDyiJsrZXOBqGIamEQtJBqenYZ/Y0SbGypoZYqJKcyWCrcMWp5WvoexC
         FW8LUlYjP0oXi+mHWYQsIi96ABP4vdjKMpAFkBnOWm3PlUJKIH1es8BAIUsCBl0PB3mS
         1EDersjXefIQ8AerAQmWTQDUK7LabRbumRXA1NslwKSpHLF02ynu6jICXUxDbbQm/FPI
         2HDDVfWfOWcmvDjcLgTrzfL03b7ukSDrNrgQJdnppET34oZJNA8Xp6jTRrpGcD/q7RHp
         x9AA==
X-Gm-Message-State: AOAM530jeSqyzq1HnCiVqYTo298VW/3ATFc8e3RsZEEoO/wA2+FxXXoz
        +1tnGoslaro1TH+4VvhX1at9YtDs+kk=
X-Google-Smtp-Source: ABdhPJwK4gqBMyl+2TxvUAYWvLROwIoXvuMcngaoed3eZ0UwjOkthiP1sjK0+/yjhEoTlXAOMBWMsQ==
X-Received: by 2002:a5d:4dcd:: with SMTP id f13mr1280345wru.10.1609508954837;
        Fri, 01 Jan 2021 05:49:14 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id s6sm81260285wro.79.2021.01.01.05.49.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Jan 2021 05:49:14 -0800 (PST)
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
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <4611ff34-2322-1e66-7b14-dc61200404f9@gmail.com>
Date:   Fri, 1 Jan 2021 14:49:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <952d3e06-d5fb-db69-f8e0-ee97d5ad2159@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 1/1/21 12:41 PM, Michael Kerrisk (man-pages) wrote:
> On 12/31/20 7:55 PM, Alejandro Colomar (man-pages) wrote:
>> Hi Michael,
>>
>> I'm not sure about some cases, but have a look at this:
>>
>> a64l.3: compact

Oops, I meant s/compact/ffix!!/

That one made it into the page, so ffix!!

>> atan.3: wsfix

still wsfix: s/( long/(long/

>> backtrace.3: compact>> bstring.3: compact? (and maybe align names?)
> 
> Not sure about this one. Nothing done yet.
> 
>> catopen.3: compact
>> envz_add.3: compact?
>> fseeko.3: compact
>> fts.3: compact (and maybe align?)
> 
> Not sure about this one. Nothing done yet.
> 
>> getaddrinfo_a.3: fix alignment (and maybe compact?)
> 
> Not sure about this one. Nothing done yet.

see also getaddrinfo.3

> 
>> getdirentries.3: ffix!

Fit into 78-col terminal
>> getmntent.3: compact
> 
> Not sure about this one. Nothing done yet.
> 
>> getspnam.3: compact or group
> 
> Grouped.

Fix alignment too (*_r functions)
>> gsignal.3: group
> 
> Not sure about that. I'll leave this for now.
> 
>> key_setsecret.3: compact
> 
> Group.
> 
>> login.3: group

ffix!!

The following may help:

$ for p in $(git grep -l '.SH SYN' man?); do \
	echo "===================== $p"; \
	man -l $p  2> /dev/null \
	|sed -n '/^SYNOP/,/DESCR/p' \
	|sed '/Feat/,$d'; \
  done \
  |grep '); *[a-zA-Z_]' \
  |grep -v -e 'Note:' -e NOTES;
       int brk(void *addr); void *sbrk(intptr_t increment);
       set);  ssize_t  pwrite(int  fd,  const  void *buf, size_t
       long a64l(const char *str64); char *l64a(long value);
       double fmax(double x, double  y);  float  fmaxf(float  x,
       float  y);  long  double fmaxl(long double x, long double
       void  login(const struct utmp *ut); int logout(const char
              place the result(s); inproc is used to encode  the
              dress  of  where to place the result(s); inproc is
              ter(s); procname should return a  pointer  to  its
              static result(s); inproc is used to decode the pa‐
              RPC socket(s); rdfds is the  resultant  read  file
       int wordexp(const char *s, wordexp_t *p, int flags); void
              sp,MAXUN.UNSIGNED ); where MAXUN.UNSIGNED  is  the
                                    (SIGEV_THREAD_ID); Linux-specific */


>> malloc_hook.3: compact
> 
> That feels too busy. No change (yet).
> 
>> mq_getattr.3: compact and fix alignment

Fix alignment
>> random[_r].3: group or compact
> 
> Group.

see random_r.3 too

>> recno.3: There are no APIs? Why not?
>> regex.3: compact?
> 
> Not sure about this one. Nothing done yet.
> 
>> I didn't read past that.

Still I didn't read past that :)

> 
> Well thanks! What you did read was helpful!

Thanks!

I removed from the reply those already fixed,
so what you see in this email is still pending
(minus a few that I may have forgotten to remove).

Cheers,

Alex

> Thanks,
> 
> Michael
> 
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
