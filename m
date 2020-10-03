Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 222FE28224A
	for <lists+linux-man@lfdr.de>; Sat,  3 Oct 2020 10:00:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725681AbgJCIAz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Oct 2020 04:00:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725648AbgJCIAy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Oct 2020 04:00:54 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7045CC0613D0;
        Sat,  3 Oct 2020 01:00:54 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id q9so3756818wmj.2;
        Sat, 03 Oct 2020 01:00:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=njseqJXIcI30av125uhYvHP+dcKNR8+e9hbv52PGsjI=;
        b=deqnKau823ThrRo2CTlK+fOLRx8+zpw6iBpTcHGiE3WcwS7XkbBXhrVNRIZNeTWFwJ
         Ws3DLFEG+kvGnZIIeq5uNXqLbOpxisas39RCjONbV7AUmENbe3KHxQZzWfb4mkdNXJyf
         y5qG/TbfiUkMffvL8xl4J0B1nYuZogl7Di6vpmBJlUbezn2nZOmlEGWSnw4jaW8zvNG7
         sbKc88OxgxA2WM+vKfBgAijfFZM3gJRoTYXBoJ9XS6flurzl2fqJYfjMVC2nxmlbCkNM
         c8wC7iFbKsa6MYUAHyjFvh2Zv+7wFV18fgj4D+csxM+2ZAykDBpi/fOELIyjOgyN0I7B
         8KFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=njseqJXIcI30av125uhYvHP+dcKNR8+e9hbv52PGsjI=;
        b=rTWsm/5WEnEgcVgxj+gUZ4v/EjzNXvQh7pKl3tDEmTLLArAYxnZILZnRAb21PUWE4/
         4LqJUmXuAxj1q/DGht5vj0juyb/6uuYBfUu8+Q7P6ATMiYRCtHqTspbU4ThIRZ8Prmig
         dV8uzN2Cloz4g7Vp4ChTs2073Pe4m48NRmcPa3Lb8eokIvzk1aHCB+laJdEG/ai2WwDh
         kcc1wV6d+VwyNpGbLSROWhZmL0cj5WhRcfVGIjOAjzzD/xrmRIxfaZWBdcKQUA2sNcG+
         W4AdmZIAdZ00gI/uc1BQUOEZs6Zdajzkdsx99jlqa5P/H1t0ZByHWgr4NgWweB22yO8Z
         cnWQ==
X-Gm-Message-State: AOAM530bF3ZjlpPHjc38exJ73/h5H8gRYbDwEppclW2aZclZ9yysRqYz
        10VvR7WZNbGrsR4WCAOSw6c=
X-Google-Smtp-Source: ABdhPJyHxB81alQ+ytN4ja3TrIIS6t4j6+9c888GiewfeZuxh3pTkwF/Jbi8KSosx8JLZHKoSl27jQ==
X-Received: by 2002:a05:600c:2118:: with SMTP id u24mr6583728wml.59.1601712052919;
        Sat, 03 Oct 2020 01:00:52 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id u15sm4161418wml.21.2020.10.03.01.00.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Oct 2020 01:00:52 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Paul Eggert <eggert@cs.ucla.edu>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>,
        Paul Eggert <eggert@cs.ucla.edu>, David.Laight@ACULAB.COM
Subject: Navigational corrections (was: Re: [PATCH v2 1/2]
 system_data_types.7: Add 'void *')
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        Jonathan Wakely <jwakely.gcc@gmail.com>
References: <41affebd-3354-9420-0048-bffd14535e95@gmail.com>
 <20201001154946.104626-2-colomar.6.4.3@gmail.com>
 <538b683f-01d2-6148-4f1d-1b293eb5cd6b@cs.ucla.edu>
 <4b86f6e9-0d8a-f14a-73ce-ebbdc9d9edba@gmail.com>
 <CAH6eHdSLbaqTyXaPnBxnR4n+WVHJCBDF=C9RXa6To1rSuv0D4w@mail.gmail.com>
 <CAKgNAkiHbK4RU_a_165yg3O6W0-GZMNLQoBNbut6ME=bW7pvCw@mail.gmail.com>
 <CAH6eHdQrmsHxZbk3+JxRVZ5qH1fhFzLxyigs+DtEzSg2cet+kw@mail.gmail.com>
 <63826e82-7a19-0ecc-f73c-56aa560a842f@gmail.com>
 <CAH6eHdTpzNk4+Rg-+kUCRDZPLHe7MBBf2PK5i1WqD4VeEs60oQ@mail.gmail.com>
 <4422e4bc-f54c-02cf-9b47-808d07ce8ba5@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <297e304a-758e-f703-d1e2-6708be3ffca8@gmail.com>
Date:   Sat, 3 Oct 2020 10:00:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <4422e4bc-f54c-02cf-9b47-808d07ce8ba5@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex, et al.
On 10/2/20 3:51 PM, Alejandro Colomar wrote:
> 
> Hi Jonathan,
> 
> On 2020-10-02 15:27, Jonathan Wakely wrote:
>> On Fri, 2 Oct 2020 at 14:20, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>>>
>>>
>>>
>>> On 2020-10-02 15:06, Jonathan Wakely wrote:
>>>   > On Fri, 2 Oct 2020 at 12:31, Michael Kerrisk (man-pages)
>>>   > <mtk.manpages@gmail.com> wrote:
>>>   >>
>>>   >> On Fri, 2 Oct 2020 at 12:49, Jonathan Wakely <jwakely.gcc@gmail.com>
>>> wrote:
>>>   >>>
>>>   >>> On Fri, 2 Oct 2020 at 09:28, Alejandro Colomar via Gcc
>>> <gcc@gcc.gnu.org> wrote:
>>>   >>>> However, it might be good that someone starts a page called
>>>   >>>> 'type_qualifiers(7)' or something like that.
>>>   >>>
>>>   >>> Who is this for? Who is trying to learn C from man pages? Should
>>>   >>> somebody stop them?
>>>   >>
>>>   >> Yes, I think so. To add context, Alex has been doing a lot of work to
>>>   >> build up the new system_data_types(7) page [1], which I think is
>>>   >> especially useful for the POSIX system data types that are used with
>>>   >> various APIs.
>>>   >
>>>   > It's definitely useful for types like struct siginfo_t and struct
>>>   > timeval, which aren't in C.
>>>
>>> Hi Jonathan,
>>>
>>> But then the line is a bit diffuse.
>>> Would you document 'ssize_t' and not 'size_t'?
>>
>> Yes. My documentation for ssize_t would mention size_t, refer to the C
>> standard, and not define it.
>>
>>> Would you not document intN_t types?
>>> Would you document stdint types, including 'intptr_t', and not 'void *'?
>>
>> I would document neither.
>>
>> I can see some small value in documenting size_t and the stdint types,
>> as they are technically defined by the libc headers. But documenting
>> void* seems very silly. It's one of the most fundamental built-in
>> parts of the C language, not an interface provided by the system.
>>
>>> I guess the basic types (int, long, ...) can be left out for now,
>>
>> I should hope so!
>>
>>> and apart from 'int' those rarely are the most appropriate types
>>> for most uses.
>>> But other than that, I would document all of the types.
>>> And even... when all of the other types are documented,
>>> it will be only a little extra effort to document those,
>>> so in the future I might consider that.
>>
>> [insert Jurassic Park meme "Your scientists were so preoccupied with
>> whether or not they could, they didn't stop to think if they should."
>> ]
>>
>> I don't see value in bloating the man-pages with information nobody
>> will ever use, and which doesn't (IMHO) belong there anyway. We seem
>> to fundamentally disagree about what the man pages are for. I don't
>> think they are supposed to teach C programming from scratch.
> 
> Agree in part.
> I'll try to think about it again.
> 
> In the meantime, I trust Michael to tell me when something is way off :)
> 
> Thanks, really!
> 
> Alex

So, I think a navigational correction is needed.

My vision was that system_data_types(7) would most usefully document 
the POSIX types, but by now there's too much of C creeping in. I have
been a little slow to react to that, and I apologize for that.
But I think we should not go in that direction

I think it is worth having types like ssize_t and size_t in 
the page, simply because they turn up with so many of the POSIX
APIs, and people often don't understand some details of these
types (such as the necessary prinf() specifiers). So, as long as
we're going to have a page about these types, it's fine by
me to include size_t and ssize_t.

Types like [u]intN_t are definitely on the borderline for me. But,
they do appear in various APIs in the Linux interface (either
explicitly, or as the similar __u32 ___64, etc.). And again
many people don't understand some basic details, such as
the PRI and SCN constants, so I think it is useful to have them
briefly summarized in one place, and as long as they are already
in the page, then let's keep them.

I think __int128 etc definitely doesn't belong in this page.

And I'd like to back pedal a bit. I think we really shouldn't have
[u]int_fastN_t
[u]int_leastN_t
in the page. They are C details that have nothing to with POSIX, 
the kernel, or libc. Could you send me a patch to remove these
from the page? And again, my apologies for not being focused 
enough on the big picture sooner.

I don't think 'void' belongs in this page. Nor basic types
such as int, long, etc.

The question of 'void *' is an interesting one. It is something
like a fundamental C type, and not something that comes from POSIX.
But, it does appear in POSIX APIs and often details of using
the type are not well understood. So, as a matter of practicality,
and again since you've done the work, I am inclined to include
this type in the page, just so it can be handily referred to
along with all of the other types.

Looking ahead (and I hope none of the above disheartens you,
since you've done a lot of great work for this page), it would
be good if you could provide a bit of an advance roadmap about
the types that you'd like to add to the page.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
