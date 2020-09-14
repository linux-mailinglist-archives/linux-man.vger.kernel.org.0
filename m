Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A89DD268961
	for <lists+linux-man@lfdr.de>; Mon, 14 Sep 2020 12:39:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726428AbgINKis (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Sep 2020 06:38:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726383AbgINKiD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Sep 2020 06:38:03 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34A62C06174A
        for <linux-man@vger.kernel.org>; Mon, 14 Sep 2020 03:38:02 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id l9so10711599wme.3
        for <linux-man@vger.kernel.org>; Mon, 14 Sep 2020 03:38:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ygCj+pSfgx0RZXw421A0XasjykZKBJwT/rCkpGppjnc=;
        b=nkCpy2Q97LNXIC1ZbGCdBSbA6DeMm9yF04c3jyEeGPBHdZj+Wmf//Et38nfiSyi1C5
         PqeUEIRHGwk/KQ0A28roL1UWfHFYH/ArDAs8IcXjkEM93VVCEK13/PexG5rP7D56+0pJ
         Ae66qReWzSkcZv4PIfzD2iDkTYvaQQFQBbeEwOIkx8j+sbtN5d7S7kLz2qWIkiGRedOm
         m4vFaODB7Q35iYsUf5qvNw01d2r6KdV7jrJdvNMukLWSSltkkD4BkwnZ64JeIJBE5foK
         bd9LwSk9nsHSlLsRzmkutc7soT2IatZFTElComju6MysGV4oHcpjHbQxxFvF/Hw5Mkn5
         hmVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ygCj+pSfgx0RZXw421A0XasjykZKBJwT/rCkpGppjnc=;
        b=bS8zmPwPoXWgEiaHzRiMknIm7wKUiYZ/8mW0x/A5sBvDDyhXokJNch5yD5+r/GxzFM
         bgnlbd3zk31U0idHlmWyEIucnWgtUHWjezcjX4dW6Pzxcmcgmrh0JslFjeOh4U1H5i8D
         z0attR60R1Qj521NPpZvob2Gy2FtTatesz0ArcEm7z8qjzAS+ntJ9lSvIhvWPLFIV4ZR
         u//Rpn+JTPMJfOUd5h5Yhc+auKp78smLJNxKYE2C/MN762T7cktKZrQdc9pVzAu47xkX
         i4Q7hVRDnTAbGqQ5tSF5Vz4R5uIOGg9PoTkn6an6fTOQo7Dnf0agFRmO8mMEH9UXXIWK
         6S/g==
X-Gm-Message-State: AOAM533A1OSSEYTcnA+VwVPBIpyYDsYbrDq4IyiOOwQLGyNGoRKh/XmN
        KQlf6d+98PddkLWY31Vo7PM=
X-Google-Smtp-Source: ABdhPJxzsFXv0HB7lXCJoQV7bvnEDOv4JQVvOaMYSTX7wQoID2Gk/eo+Wsq6o84P3UlbevqTe3UC0Q==
X-Received: by 2002:a7b:c4d9:: with SMTP id g25mr14241022wmk.15.1600079880741;
        Mon, 14 Sep 2020 03:38:00 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id h186sm19317472wmf.24.2020.09.14.03.37.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 03:38:00 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>,
        Florian Weimer <fweimer@redhat.com>,
        libbsd@lists.freedesktop.org
Subject: Re: [RFC v1] system_data_types.7: Draft (and links to it: <type>.3)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <fb6463f6-49d7-e473-d5e1-1cdf8375e498@gmail.com>
 <6c5b89f8-4281-4434-cbee-28f88d07920c@gmail.com>
 <4ea99048-4bfd-9cba-44cd-9c37fdad8fce@gmail.com>
 <CAKgNAkjys+LYn1qaSXhM2gJfkv_UOnpeNPyh3QCqNLcMNBKB+g@mail.gmail.com>
 <d093c1a5-b31a-1200-3cd6-6b5d2cf28ad3@gmail.com>
 <3a56a8af-6371-89f3-cac2-31dd64791c99@gmail.com>
 <65e2bdf5-425b-9381-b1ac-3f101113c70f@gmail.com>
 <af73c477-c8a6-c03f-c6db-ab613b8d6d2f@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <23bfb4c9-9cab-8d1f-46a2-00932501b5b8@gmail.com>
Date:   Mon, 14 Sep 2020 12:37:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <af73c477-c8a6-c03f-c6db-ab613b8d6d2f@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/14/20 2:20 AM, Alejandro Colomar wrote:
>>From ffd8ea312527935cd86cc7ed1133a08d4e642b06 Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Mon, 14 Sep 2020 02:07:50 +0200
> Subject: [RFC] First draft for system_data_types.7 (and links to it:
>  <type>.3)
> 
> Hi Michael,
> 
> This is my first draft.
> 
> There are still TODO things:
> - Add types (obviously)
> - Write specific "Conforming to" versions
>   For now I just wrote POSIX, but I'll write the specific versions.

Good. I think that we can get away with just mentioning one each of
POSIX.1-200x and Cxx, with the latter starting at C99. I think C89 is
far enough back in time that we don't need to clutter the page with
it. Something like:

Conforming to: C99 and later; POSIX.1-2001 and later.


>   Should I write the latest one, the oldest one, or how?

See above.

>   For C versions I did the following:
> 	If the type has been there since C89, I wrote C89, C99.
> 	If the type is >= C99, I wrote C99.
> 	If the type is >= C11, I wrote C11.
> - Correctly highlight function names and similar (see timer_t)
>   For this first draft, I just want to show you the idea.  I'll add
>   italics and all that stuff later on.
> - Review "See also" (right now: all results of 'grep -rl <type>')
>   I put everything that came up with grep in the See also section.
>   Is it too much?  Any other references I should add?

I am ambivalent on the question of "is it too much?". Some of those
lists seem rather long. But the question of whether it is valuable to
mention *all* of the APIs is open: maybe it is; maybe it is not. Then
again, trying to be exhaustive, makes the lists fragile (new API
appears, but we forgot to add it to the list). And then if we
do not include all of the APIs, what are the criteria for
inclusion/exclusion?

I'm going to hold my finger in the wind, and say: lets restrict the
list to what seem like the most relevant APIs, where obviously that is
a somewhat subjective choice. You could include all the other APIs in
.\" comments, so we can see what's excluded, and this may trigger some
tweaking. So, for 'struct timespec' the list might be as simple as:

clock_gettime(2), clock_nanosleep(2), nanosleep(2)
timerfd_gettime(2), timer_gettime(2)

Note by the way, that that list is not a subset of your list.
Instead, I looked inside the pages that you listed to see which APIs
seemed "relevant".

I cannot think of other references that you should add.

You better include suseconds_t in the next draft :-).

I think it would be better not to split the types into separate lists.
Instead (and note the formatting) order by type name:

.TP
.BI "union " sigval
...
.TP
.I time_t
...
.TP
.I timer_t
...
.TP
.BI "struct " timespec
...
.TP
.BI "struct " timeval
...

Having seen how it looks with the header files, I'm going to suggest a
differnt approach. Let's put them on a separate line, something like:

Obtained by including: <abc.h> or <xyz.h>

> ---
>  man3/sigval.3            |   1 +
>  man3/time_t.3            |   1 +
>  man3/timer_t.3           |   1 +
>  man3/timespec.3          |   1 +
>  man3/timeval.3           |   1 +

It's an open question whether the links should be in section 3 or 
section 7. Do you have any thoughts on what's better?

Don't get wrapped up in including too many more types in the
yet, while we try to iron out the format.

Also, I'd like to see the types added incrementally (one or a few
at a time), so that it's easy to comment on each type, when needed.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
