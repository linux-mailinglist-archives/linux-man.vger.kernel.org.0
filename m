Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D00582E9567
	for <lists+linux-man@lfdr.de>; Mon,  4 Jan 2021 14:00:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725921AbhADM76 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 4 Jan 2021 07:59:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725830AbhADM76 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 4 Jan 2021 07:59:58 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 703FCC061794
        for <linux-man@vger.kernel.org>; Mon,  4 Jan 2021 04:59:17 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id i9so32084910wrc.4
        for <linux-man@vger.kernel.org>; Mon, 04 Jan 2021 04:59:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=TxYEcXHmQIVsDwb5koOMpywZALKLKQpJUeVxRZvpYHA=;
        b=Zmp7Dh2e/9dnK2qI5RteylS5njsouyVs9JqDgeebFXhCdeToRQDC2BhExOTNPwvXdk
         wJsPacE4fO1pJ3adhIW7gNiZiJjgz2/KSp/Bs1bD9RUMIOZc4qn3KoCALg0K+2+mWh7u
         qkSx8lB20niBEBHL2VR4aVwfLYTulBZ0FRwJ13sJkJBsK3GClejw+tDN2zqRrislNx9T
         nWzmSZ1ifkVhIG7hFCzn/KDUiA9XYAFMVgQ1iwEZDsick9AlIdg3kQYgno+RJWsbEpqR
         5KqYht/kSlpTVTFJgt1zGI3p2EaV70QVaJ65VizvQVV+AoZCY9XAvfm3P3GLx1zbJceB
         oQ2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=TxYEcXHmQIVsDwb5koOMpywZALKLKQpJUeVxRZvpYHA=;
        b=iW4NdEzUt0bAJ5E70D1MfYMt7MobLxe1csrK3LVTiqdRWgX1q1VzXIkieaJxtGniY4
         uf1EaaAmXw001pjksiy1CTHi32E5gA2+G2/Qm+p+a5JKE4Xsvs8xY1Av5WQJNCkkm93x
         jiAtcs2416IykcDikRoLJ49ai7FkPN1lJKGckCrDBobX2fJ0Ry5U4svbEwftRu7Oo80G
         6bGFtWFdOtubKNhkojKU0QDseUE0jUqvYnQILcEdL7Q5eX7NaoPBG/qLZj1oZl/z/lKU
         9bxdz6Dnec/Ll9ZVysGZHhY7Pv7aspqnLzVNuKVAXiZfeO73yilLYcEk47faozDSjaD+
         ETCA==
X-Gm-Message-State: AOAM532j3kgATOVG37nO5AHXEQwHB3cK5JCI+6luGoVciklfG3PyVHMg
        Q8sUtacBH3anbCZ1qiZlv7Y35DYchbM=
X-Google-Smtp-Source: ABdhPJxxgsVvKb5PYixhOXBKXxSTNYOmSOUx5HIVOO+e5EVhL51RoMkJ0GLt2bJcMpWDT3sziz66AQ==
X-Received: by 2002:a05:6000:143:: with SMTP id r3mr79984622wrx.331.1609765156199;
        Mon, 04 Jan 2021 04:59:16 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id c4sm99754778wrw.72.2021.01.04.04.59.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jan 2021 04:59:15 -0800 (PST)
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
 <40f1140a-496b-5b2b-c1de-4522b1ea5043@gmail.com>
 <CAKgNAkiUZoV1aE10=6ehkqCKwpzrmbYt_fTjGGBEGi9=HZh7Gg@mail.gmail.com>
 <31e06e88-808c-2212-9853-f8e7bd9262a8@gmail.com>
 <d2fca8e4-3677-faba-cab3-e1b50f1880c5@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <a2fc82ef-1c08-b7bb-bbcc-f95e44472b79@gmail.com>
Date:   Mon, 4 Jan 2021 13:59:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <d2fca8e4-3677-faba-cab3-e1b50f1880c5@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 1/3/21 1:11 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 1/2/21 10:40 PM, Alejandro Colomar (man-pages) wrote:
>> Hi Michael,
>>
>> I read everything this time ;)
>>
> 
> :-)
> 
> [...]
> 
>>>>>> Still I didn't read past that :)
>>>>
>>>> Later I'll have a look past there :)
>>>
>>> That would be great!
>>
>> adjtimex.2: compact
> 
> I decided against. It feels too crowded.

Okay

> 
>> getpeername.2: 78-col
> 
> It *is* with 78-col?

Yes it is. I may have seen a phantom :)

> 
>> msgop.2: compact
> 
> It feels a bit too crowded.

Okay.
> 
>> circleq.3, list.3, slist.3, tailq.3, stailq.3: group?
> 
> I've taken a shot at that. You may have improvements to
> suggest, or even reorderings to suggest (as patches).

I'd group _FIRST, _LAST, _NEXT, _PREV; or at least _FIRST with _LAST.
And I don't know which ordering to use within that group.
Any ideas? FLNP? FNPL? FPNL? FL NP? NP FL?
To be consistent with the ordering you used for _INSERT_,
we could use 'NP FL',
and put those 2 groups after the 2 _INSERT_ groups.

>> exec.3: consistency with commas; execvpe can be joined
> Done; done

wsfix: g/char  */s//char */

> 
>> rtnetlink.3: group or compact; 78-col
> 
> Group. But I don't see the 78-col problem?

Me neither :/

>> sigpause.3: compact
> 
> I prefer not. The APIs have the same name. A bit of space emphasizes that
> they are different, I think.

Yes

>> unlocked_stdio.3: Join fread_unlocked(3)? Or not?
> 
> I think not.>
> But I did *add* a few blank lines here.

Okay

> 
>> xdr.3: wsfix: g/) (/s//)(/
>> 	(See if there are any other pages with this
>> 	 that I may haven't seen.)
> 
> Done.
> 
> Plus: error.3, ftw.3, glob.3, pthread_create.3, rpc.3

A few more:
signal.3 (NOTES)
malloc_hook.3 (EXAMPLES)

>> rtnetlink.7: 78-col
> 
> 78-col looks okay already?

Yes

> 
>> sigevent.7: s/) (/)(/
> 
> Done.
> 
>> 	If you move the comments a few chars to the right (3<=x<=6),
>> 	  you will compact one line
> 
> I prefer to leave as is.

Okay

> 
>> Also, curiously execveat(2), which is the one that started all this,
>> didn't look bad :p
> 
> True.
> 
>> So we'll have to grep for .nf/.fi too after this.
> 
> Well, I just fixed most of them. The following perhaps need further
> consideration:
> 
> man1/iconv.1
> man1/localedef.1
> man1/time.1
> man2/select_tut.2
> man3/string.3
> man4/sk98lin.4
> man4/smartpqi.4
> man7/man.7
> man7/man-pages.7
> man8/iconvconfig.8
> man8/ldconfig.8
> man8/ld.so.8
> man8/zdump.8
> man8/zic.8
> 
> The last two are imported pages, so should probably be ignored.
> Perhaps none of the remainder really matter.
> 
>> Things to note for other patches:
>>
>> isw*.3: Rewrite into one page similar to isalpha.3?
>> 	Does it really need so many pages?
> 
> There sure is a lot of repetition across those pages...

I'll add it to my TODO list.

> 
>> recno.3: Review: no APIs
> 
> It's a strange page, but I'm not sure that anything needs fixing.
> 
>> string.3: What is the criterion for functions to be there?
>> 	Also, there are functions which are already documented
>> 	  in their own pages (see strcpy(3))
>> 	Some others don't appear there (see memcpy(3)
>> 	  eventhough they are in string.h.
> 
> See also bstring(3)
> 
> bstring(3) and string(3) are ancient pages. I'm not entirely
> convinced of their value. I suppose thay are useful in the sense
> that you get a list of related functions. It is of course
> anomalous that string(3) and brief function descriptions
> while bstring(3) does not.
> 
> Cheers,
> 
> Michael
> 
> 


Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
