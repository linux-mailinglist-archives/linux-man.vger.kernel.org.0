Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3CC672E85D0
	for <lists+linux-man@lfdr.de>; Fri,  1 Jan 2021 23:29:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727216AbhAAW3t (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 1 Jan 2021 17:29:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727147AbhAAW3t (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 1 Jan 2021 17:29:49 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D60B8C061573
        for <linux-man@vger.kernel.org>; Fri,  1 Jan 2021 14:29:08 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id r7so23162717wrc.5
        for <linux-man@vger.kernel.org>; Fri, 01 Jan 2021 14:29:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=40zU9w/cKLo6R3aduVp+Q0oai8qklncsMjRAClz3vAI=;
        b=GbzH0hXZizUxaAIVLaLLCBOsBnOeIExuk5j2d5dLx0S0R8D7EyBoaQ/oI6z9ZleyBP
         7NpsAHr+ns902+B8x/rV8tlnHHzxMvZasjpKtriiPufYg8PV8UuFT91qmqwAFYIytkUG
         cieTg5UI4txXL/fqYjkFvh7gPN0xsw9BwPn2n4QQFTxrE1+M3CgX/FkUlGfHnSliUxGe
         k4WV8joUEy0Iif6ey3ymIjkFtC6zXVnIorRYy9mEIN8RzbmIq9l+YduE7d8B9ivWXQSr
         Rg0u9CTWUUmvyrzhB+U8csELwMrZRgyMISuMCDTte7TiVExP4BIG1sLXaD8Lw3wdvsH/
         mvZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=40zU9w/cKLo6R3aduVp+Q0oai8qklncsMjRAClz3vAI=;
        b=BDZ2gWO4li5v4XaFCwmo8so9O5ZXhV7JgfzIvdey1Yyzn6BGpwbpTi18d2g4lsP9H8
         Q8K88pLHlSUqwO2Uv/xsXDtxkU2GXH+xFGrmrJpFwn8UGdylL47MOLP/VoI7U6y2wAeS
         j5L6QgkCjWIeOkQfxdjiC5tctChcZ5PbYGR6eMrZbwJKDAgz8z96gUrLVb9X3ggrAplN
         9upstzVRq2vudECmzWN6SmQaFqSownP1dL+fuzwW89j9pQTQJI8LF8O61oqbK6w80CYS
         K+3UByvPd+3Ss5iJUDbhjAo3Y/9+UErLwiA/RLdmlHtbxc/WY57V6bSiStQogWwEV20S
         bAlA==
X-Gm-Message-State: AOAM531M9NXLdc7oct0M2SZqD5hHwnJFjHvMjsEtkbACHi959w9WLDUp
        /6cY4jT5DA2t8xrKJi97I6uuNL3Ibos=
X-Google-Smtp-Source: ABdhPJyB4kUu4Fx/Uykl3tbBiwZ9sC376UXg2L3+aci/40ObgbkzmwVoeSl+Wqxf0suVdCCOtR7j9g==
X-Received: by 2002:adf:80ae:: with SMTP id 43mr70474861wrl.50.1609540147282;
        Fri, 01 Jan 2021 14:29:07 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id s20sm18166325wmj.46.2021.01.01.14.29.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Jan 2021 14:29:06 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] execveat.2: srcfix
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20201230214147.874671-1-alx.manpages@gmail.com>
 <CAKgNAkjf8gS5Av2pzYqt_JHjjnCw-FrjqQicjhr20+MzgsK3Xg@mail.gmail.com>
 <bdda57ff-acdd-9109-5720-ba0db8138d41@gmail.com>
 <993e801d-4126-4e11-5a06-4b92879a7eb7@gmail.com>
 <2f321c87-7e12-2c41-6cd6-ac55024caf0a@gmail.com>
 <6c9c593c-1e89-ce75-c1d0-41e61c98bad7@gmail.com>
 <a6391e7c-6036-33ad-0512-88663307abde@gmail.com>
 <952d3e06-d5fb-db69-f8e0-ee97d5ad2159@gmail.com>
 <4611ff34-2322-1e66-7b14-dc61200404f9@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8c66c28d-2ff1-b629-33f9-df057998f80e@gmail.com>
Date:   Fri, 1 Jan 2021 23:29:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <4611ff34-2322-1e66-7b14-dc61200404f9@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 1/1/21 2:49 PM, Alejandro Colomar (man-pages) wrote:
> 
> 
> On 1/1/21 12:41 PM, Michael Kerrisk (man-pages) wrote:
>> On 12/31/20 7:55 PM, Alejandro Colomar (man-pages) wrote:
>>> Hi Michael,
>>>
>>> I'm not sure about some cases, but have a look at this:
>>>
>>> a64l.3: compact
> 
> Oops, I meant s/compact/ffix!!/
> 
> That one made it into the page, so ffix!!

Done.

> 
>>> atan.3: wsfix
> 
> still wsfix: s/( long/(long/

Done.

>>> backtrace.3: compact

Group.

>> bstring.3: compact? (and maybe align names?)
>>
>> Not sure about this one. Nothing done yet.

Still not sure on this one.

>>> catopen.3: compact

Done.

>>> envz_add.3: compact?

Compact is too much, and there's no obvious good grouping.

>>> fseeko.3: compact

I grouped. It's enough, I think.

>>> fts.3: compact (and maybe align?)
>>
>> Not sure about this one. Nothing done yet.

Compact feels too much, and there's no obvious good grouping.

>>> getaddrinfo_a.3: fix alignment (and maybe compact?)
>>
>> Not sure about this one. Nothing done yet.

Group.

> see also getaddrinfo.3

Compact feels too much, and there's no obvious grouping.

>>
>>> getdirentries.3: ffix!
> 
> Fit into 78-col terminal

Done.

>>> getmntent.3: compact
>>
>> Not sure about this one. Nothing done yet.

Compact feels too much, and there's no obvious grouping.

>>> getspnam.3: compact or group
>>
>> Grouped.
> 
> Fix alignment too (*_r functions)

Done.

>>> gsignal.3: group
>>
>> Not sure about that. I'll leave this for now.

Compact feels wrong.

>>> key_setsecret.3: compact
>>
>> Group.

Already okay, I think.

>>> login.3: group
> 
> ffix!!

Done.

> The following may help:
> 
> $ for p in $(git grep -l '.SH SYN' man?); do \
> 	echo "===================== $p"; \
> 	man -l $p  2> /dev/null \
> 	|sed -n '/^SYNOP/,/DESCR/p' \
> 	|sed '/Feat/,$d'; \
>   done \
>   |grep '); *[a-zA-Z_]' \
>   |grep -v -e 'Note:' -e NOTES;
>        int brk(void *addr); void *sbrk(intptr_t increment);
>        set);  ssize_t  pwrite(int  fd,  const  void *buf, size_t
>        long a64l(const char *str64); char *l64a(long value);
>        double fmax(double x, double  y);  float  fmaxf(float  x,
>        float  y);  long  double fmaxl(long double x, long double
>        void  login(const struct utmp *ut); int logout(const char
>               place the result(s); inproc is used to encode  the
>               dress  of  where to place the result(s); inproc is
>               ter(s); procname should return a  pointer  to  its
>               static result(s); inproc is used to decode the pa‐
>               RPC socket(s); rdfds is the  resultant  read  file
>        int wordexp(const char *s, wordexp_t *p, int flags); void
>               sp,MAXUN.UNSIGNED ); where MAXUN.UNSIGNED  is  the
>                                     (SIGEV_THREAD_ID); Linux-specific */

Thanks. I fixed a few things.

>>> malloc_hook.3: compact
>>
>> That feels too busy. No change (yet).

Compact feels wrong, and even grouping feels wrong. The signatures are
already hard to read.

>>> mq_getattr.3: compact and fix alignment
> 
> Fix alignment

Done.

>>> random[_r].3: group or compact
>>
>> Group.
> 
> see random_r.3 too

Grouped.

>>> recno.3: There are no APIs? Why not?

It's a weird page. Probably something should be fixed. But
it's outside scope of this patch.

>>> regex.3: compact?
>>
>> Not sure about this one. Nothing done yet.

Actually, I did group, and I think it's enough.

>>
>>> I didn't read past that.
> 
> Still I didn't read past that :)

;-)

>> Well thanks! What you did read was helpful!
> 
> Thanks!
> 
> I removed from the reply those already fixed,
> so what you see in this email is still pending
> (minus a few that I may have forgotten to remove).

Thanks again, Alex. I've pushed the fixed I made.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
