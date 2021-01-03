Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 47B472E8C14
	for <lists+linux-man@lfdr.de>; Sun,  3 Jan 2021 13:12:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726864AbhACMML (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 3 Jan 2021 07:12:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725986AbhACMMK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 3 Jan 2021 07:12:10 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03E4DC061573
        for <linux-man@vger.kernel.org>; Sun,  3 Jan 2021 04:11:30 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id q18so28175824wrn.1
        for <linux-man@vger.kernel.org>; Sun, 03 Jan 2021 04:11:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=7fraklIlADOCJaHuopk4faJgBLlGCNnrqOHY8FZWVtQ=;
        b=kS+s3afXZa8Pzj7fxfu4KxhlNzZ232IMu4bDMmVGmeLqoYnOt7kF4JlmeGh6cI09Pd
         XGByMP87VwNZ/wSlmQwM3xI3juWEE8G5K+ntRsVKUO1MzP0YII/jkO6ROe7a+O1Vxz6q
         7npuzuhv4W6dtA+EjvrgkpiPirx8L5/5kN3XljQoySU9FHkiI7NwCqOfgpauBC05JGRs
         6obsCK1PBHMzOGO33r1+Qy1fdiBNOLP/WfWJn/1W1P/MR7t4CJH9fcduKQyFAgZWivpu
         ekf4r8b/f36DwIjWpRAP8CoJ2ZtumaZF0FNTY4U/YxzzqWb/5Tn7ozIMw+bUuxl1mEy8
         bGtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7fraklIlADOCJaHuopk4faJgBLlGCNnrqOHY8FZWVtQ=;
        b=ZQXWAkGO8siWnqzJsWOaS8pSHfdeuNKTA2DJ2XUz5cHP1vfsQ6dBSeWixQ4gV/j6xC
         5V3askxoTld0TRb3nVP3uVaHqjoWAKgWguOuk3lTDvPcxJmnUHQ0qqCwXwQNMQ5dRkk/
         oqSjHnpteM9WX5lBi3MKdxkRdBvSBblaTPu47ZbMpmYdlJAmfYmA1iSzuPpuUVSsPMtA
         hD/Xnlj7A+Pn1v7cdSKcje1iLaiqiu5J/qys+hirdrGqfavPWdNz+R63GeTVdPgC8g2b
         NobreT3b9Ui7SK7wmQQUW8RSZIJcADF/SESxmK77ZkpyvoKZHaCojN0CRXr8i0lYtszM
         t0XQ==
X-Gm-Message-State: AOAM532J3z30S/vAUX3jPGtWD4UXMTUCYXRchxUThrwhX3OWJStkdiys
        yVbTvEPz4l5vPbAy7etehlzplzAHQRA=
X-Google-Smtp-Source: ABdhPJxdEbdG5nDqw/acvP+akpyFQ0wlus6MmoJ3QGmWnpwEIc1hEPmrkveGXjrK3afgdbe25ySbpA==
X-Received: by 2002:adf:e9d2:: with SMTP id l18mr73626207wrn.179.1609675888428;
        Sun, 03 Jan 2021 04:11:28 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id j2sm84228071wrt.35.2021.01.03.04.11.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Jan 2021 04:11:27 -0800 (PST)
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
 <8c66c28d-2ff1-b629-33f9-df057998f80e@gmail.com>
 <40f1140a-496b-5b2b-c1de-4522b1ea5043@gmail.com>
 <CAKgNAkiUZoV1aE10=6ehkqCKwpzrmbYt_fTjGGBEGi9=HZh7Gg@mail.gmail.com>
 <31e06e88-808c-2212-9853-f8e7bd9262a8@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d2fca8e4-3677-faba-cab3-e1b50f1880c5@gmail.com>
Date:   Sun, 3 Jan 2021 13:11:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <31e06e88-808c-2212-9853-f8e7bd9262a8@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 1/2/21 10:40 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> I read everything this time ;)
>

:-)

[...]

>>>>> Still I didn't read past that :)
>>>
>>> Later I'll have a look past there :)
>>
>> That would be great!
> 
> adjtimex.2: compact

I decided against. It feels too crowded.

> getpeername.2: 78-col

It *is* with 78-col?

> kexec_load.2: compact?

Done.

> msgop.2: compact

It feels a bit too crowded.

> rt_sigqueueinfo.2: Join + compact

Done

> sgetmask.2: compact

Done

> subpage_prot.2: Join

Done

> vm86.2: compact

Done

> circleq.3, list.3, slist.3, tailq.3, stailq.3: group?

I've taken a shot at that. You may have improvements to
suggest, or even reorderings to suggest (as patches).

> des_crypt.3: group

Done

> drand48_r.3: Join

Done

> error.3: group

Done

> ether_aton.3: group

Done

> exec.3: consistency with commas; execvpe can be joined
Done; done

> fseeko.3: compact
> 
> resolver.3: group?

Done

> rewinddir.3: compact headers

Done.

> rpc: 78-col
> 	CLGET_SERVER_ADDR  struct sockaddr_in  // get server's addre
> 	ss

Fixed.

> rtnetlink.3: group or compact; 78-col

Group. But I don't see the 78-col problem?

> scandir.3:
> 	scandir(): move 'filter' and 'compar' 1 char to the right
> 	  so that parentheses are not aligned and confuse.
> 	  It still fits 1 char to the right but not to for a 78-col.
> 	group?
> 	scandirat(): ffix!!: namelist can be joined

Doine; done; done

> setaliasent.3: move more to the right

Done

> shm_open.3: compact

Done

> sigpause.3: compact

I prefer not. The APIs have the same name. A bit of space emphasizes that
they are different, I think.

> sigset.3: group

Done

> strstr.3: compact #define & #include

Done

> termios.3: group even more?

Done

> timegm.3: compact

Done

> unlocked_stdio.3: Join fread_unlocked(3)? Or not?

I think not.

But I did *add* a few blank lines here.

> xdr.3: wsfix: g/) (/s//)(/
> 	(See if there are any other pages with this
> 	 that I may haven't seen.)

Done.

Plus: error.3, ftw.3, glob.3, pthread_create.3, rpc.3


> man.7: group or compact

group

> rtnetlink.7: 78-col

78-col looks okay already?

> sigevent.7: s/) (/)(/

Done.

> 	If you move the comments a few chars to the right (3<=x<=6),
> 	  you will compact one line

I prefer to leave as is.

> Also, curiously execveat(2), which is the one that started all this,
> didn't look bad :p

True.

> So we'll have to grep for .nf/.fi too after this.

Well, I just fixed most of them. The following perhaps need further
consideration:

man1/iconv.1
man1/localedef.1
man1/time.1
man2/select_tut.2
man3/string.3
man4/sk98lin.4
man4/smartpqi.4
man7/man.7
man7/man-pages.7
man8/iconvconfig.8
man8/ldconfig.8
man8/ld.so.8
man8/zdump.8
man8/zic.8

The last two are imported pages, so should probably be ignored.
Perhaps none of the remainder really matter.

> Things to note for other patches:
> 
> isw*.3: Rewrite into one page similar to isalpha.3?
> 	Does it really need so many pages?

There sure is a lot of repetition across those pages...

> recno.3: Review: no APIs

It's a strange page, but I'm not sure that anything needs fixing.

> string.3: What is the criterion for functions to be there?
> 	Also, there are functions which are already documented
> 	  in their own pages (see strcpy(3))
> 	Some others don't appear there (see memcpy(3)
> 	  eventhough they are in string.h.

See also bstring(3)

bstring(3) and string(3) are ancient pages. I'm not entirely
convinced of their value. I suppose thay are useful in the sense
that you get a list of related functions. It is of course
anomalous that string(3) and brief function descriptions
while bstring(3) does not.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
