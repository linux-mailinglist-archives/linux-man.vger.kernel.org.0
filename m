Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D305268125
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 22:20:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725941AbgIMUUG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 16:20:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725940AbgIMUUE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 16:20:04 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C47FC06174A
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 13:20:04 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id k18so9246260wmj.5
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 13:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=JfrNFzftBsAATPihG3URdk7GlZHNm/+D8LG+vpkCuRY=;
        b=IlWsTOqaZ3eTmm8rY0wt0NY0KHk7nrqNjWgGU4ErOFZpkewE4h2St5MwnZ5vL0E/yE
         aWfNtOsJtsjDscplUw9RVqH+7kOTAAf+TRoNEZOdqWftoCx7UGx7hsmqzBhaVbIXSIkq
         NmHXQLbBg6FdpKyal09NTkQ73qQamiwYOvw/qlZDA0iLHD+AQTihCw45sQ0D7gnm3pTM
         WhabWQibYEhP9XxuiI5x1GLbqlV9x069cPHkY4iQcVIC0iFzIKVPTi4x2D0D8M/CAfnv
         r6TXRFSe0doNt4r6Z/sI51JF/tTWPj+CnfqEbpHaXLRO+2xOrSA6zkHuacEAtuzH5Ijf
         R0Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=JfrNFzftBsAATPihG3URdk7GlZHNm/+D8LG+vpkCuRY=;
        b=t5ZCMBrmMXLeCadpy9w4lkYOip3AAztsdc47KHQ82eNZfQ/AJK2YErjqONSG5FsbfE
         cbyAKZy9tEYfPJsGUedXmhLjRR8diwH9tbct2asLFykewNjgErDbNU8ZWtqR1e0w8gn3
         0JgPIlwaajgiWZ2i4CDPo9pLudsKvQCVUfyYUm+Hm2BgZpKORy3DXDVY2sNidRSj66QY
         Sl64qwdfQThQ5bSvvmjSBDK7EDfUgBX7BMsBzdG26iVWrYBEcnuHzzMFje8x49AEeeXx
         E5MD2yHNhixG5+FTLZO4tIPju71dP/VsCKcdpB77xgFrS8/7lV7IoGMphddDkIuwIcvv
         bdVg==
X-Gm-Message-State: AOAM5326sD0D5rNZ3oOgjhbg8IaZs8o24M933JruZQynClBB5AFt465j
        UGNUw6gaVUS0NkqBuDetRPoHbMyinLE=
X-Google-Smtp-Source: ABdhPJwEL+jaxHsJmVuEiEklZBDsC+6XATCR6gFpE68wFuIQcAQZnP5xuTwMMXfgIH74Fio+Ru+msg==
X-Received: by 2002:a7b:cd06:: with SMTP id f6mr12434966wmj.66.1600028402859;
        Sun, 13 Sep 2020 13:20:02 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id m4sm17923898wro.18.2020.09.13.13.20.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Sep 2020 13:20:02 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>,
        Florian Weimer <fweimer@redhat.com>,
        libbsd@lists.freedesktop.org
Subject: Re: [IDEA] New pages for types: structs and typedfefs
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <fb6463f6-49d7-e473-d5e1-1cdf8375e498@gmail.com>
 <6c5b89f8-4281-4434-cbee-28f88d07920c@gmail.com>
 <4ea99048-4bfd-9cba-44cd-9c37fdad8fce@gmail.com>
 <CAKgNAkjys+LYn1qaSXhM2gJfkv_UOnpeNPyh3QCqNLcMNBKB+g@mail.gmail.com>
 <d093c1a5-b31a-1200-3cd6-6b5d2cf28ad3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3a56a8af-6371-89f3-cac2-31dd64791c99@gmail.com>
Date:   Sun, 13 Sep 2020 22:20:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <d093c1a5-b31a-1200-3cd6-6b5d2cf28ad3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/13/20 2:53 PM, Alejandro Colomar wrote:
> Hi Michael,
> 
> On 9/13/20 2:01 PM, Michael Kerrisk (man-pages) wrote:
>> Hi Alex,
>>
>> On Sat, 12 Sep 2020 at 10:59, Alejandro Colomar
> <colomar.6.4.3@gmail.com> wrote:

[...]

>>> Is it a 32-bit or 64-bit or may vary? Is it signed or unsigned?
>>
>> POSIX doesn't specify, I think.>
>> One other thing the page should show of course is definition of the
>> structure types.
> 
> Yes.
> 
> 
>     timer_t     <time.h> or <sys/types.h>
>         POSIX timer ID.
> 
>         typedef void *timer_t;

Here I would *not* show these kinds of typedefs. The point is
that these types should be treated as being somewhat unknown
(e.g., for casts in printf()). Here, I think instead maybe we 
just have a statement that POSIX makes no specific requirements
for the representation of this type.
 
>         Conforming to: POSIX.1-2008.
> 
>         See: timer_create(2), timer_delete(2), timer_getoverrun(2),
>         timer_settime(2)
> 
> Like this?  Should I specify somehow if the type definition
> is so for Linux only, or for all POSIX, ...?

See the above comment.

[...]

>>> Sure.  And for the structs, I'd allow:
>>>
>>> 'man struct timespec'   (For simplicity)
>>> 'man struct-timespec'   (Similar to the git man pages)
>>> 'man timespec'          (For compatibility with libbsd)
>>
>> Mainly, I'm interested in the last case. That's the one I think that
>> people would most likely use. In a follow-up mail, you expressed
>> concern with conflicts with libbsd pages. I'm not too worried about
>> that. There are already *many* conflicts between libbsd and man-pages.
> 
> I wasn't concerned about conflict with libbsd; that's the form libbsd
> uses, and a good point for having that form would be for compatibility
> (people will probably like having to write 'man timespec' in any
> system and work).
> 
> I was instead concerned that some struct tag may have the same name as
> some function, which I don't know for sure:
> 
> Let's say there exist a function 'int foo(void)', and a 'struct foo'.
> If that is the case, which I ignore, you would need to either have
> 'foo.3' and 'foo.3t' or have 'foo.3' and 'struct-foo.3'.
> 
> Your thoughts?

Offhand, I can't think of any such conflicts. Many of the data
types have names suffixed with "_t", and there should be no 
conflicts there.

For other types, such as timeval, timespec, etc, I don't expect
there are many conflicts. One case that I can think of where
there's a function and a struct with the same name is 'sigaction'.
But there's not really a problem there, since, on the one hand,
I don't expect that that is one of the types that should be
documented in system_data_types(7), and on the other hand,
currently "man sigaction" takes you to the page that documents 
both the function and the structure.

>>>  > For the moment at least, I'd favor the "one big page plus
>>>  > links" approach.
>>>
>>> Yes.
>>
>> Would you like to take a shot at this? I'd suggest just a simple page
>> covering just two or three types to start with. Maybe time_t and
>> timer_t, or otherwise some types that seem good choices to you?
> 
> Yes, I'd like to.  It'll be my first page from scratch, though, so
> don't expect it to be soon :-}
> 
> Maybe 'timer_t', 'time_t' and 'struct timespec' would be a good start.

Throw in 'struct timeval' too?
 
> Do you think there's any page that has a similar format to what we want
> to base on it?

I think nothing special is required. See man-pages(7) for general
info on the layout of pages. I expect the types can be placed
as an alphabetically ordered hanging list under DESCRIPTION.

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
