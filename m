Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 08E7B267F90
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 14:53:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725931AbgIMMxx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 08:53:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725919AbgIMMxr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 08:53:47 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F55EC061573
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 05:53:45 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id z9so8669484wmk.1
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 05:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=HE0CK+4xg3GjZBbCoxXmxE4NGJGlGCcKNNPQjGQMSUU=;
        b=IUtXr2OV1XI1dfQujFn37zj5/otuORludZIR8+mI3d2aFJNCGlVHYp+Cbyl4xmKyY9
         oCKFT/9PdwNJy0i/bfmDWHYvO5481vew9NA9IuvxhAIrsVpYjJ76UT7FXgD7iIh+l4uu
         MiXOgfcUca5334QrFyS8XuAivR39bHcK8DL/Tlcz4YKgf38tI6KiexpcWenpH6gA+DFI
         BID7mfsVn42/fKzeFLWhlNlaeSBDihWhVpiWd4EycAUPraZe+/rrW+Nb84FtdZ+vFuAd
         mXGmPBH3VYpDsAYsAPnclZAwtHv5NKAJsX5LSmWYaGaWWkC7swf/0Zx+HQnl7UImYKsv
         K1Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=HE0CK+4xg3GjZBbCoxXmxE4NGJGlGCcKNNPQjGQMSUU=;
        b=l9+yvQ5cGKX5tnBBnS2M+yTlypf0ZBT5PxcY/CLzYRRCWFdNhTKIrAMvOXWcMZgPsL
         EPLnrzHHcBU3wL/zYQG6FH3OjMd5a1jzyNI4dA0k2sPNCtEnDofe9aXXZSnBQi7+inO6
         qnzRNR5o9IjKMkjI99uGECZfBAyEzUmG2naVU/CQz1uDSOFxl+dTAaFEjmEv1b+N2fSH
         WGZ3oHcM7fw7iC0OASMnhMQp4ZSepUD+Y17jDYLBg2z46Vl9Fq1e2ACG3nseD7d1PxwW
         ccRRpG7prtaQCbglQmRqPzOFNO2fBMGM/EJlDzXLcC3nOGw/EwsbRxg6aXAauxanatP0
         qXsA==
X-Gm-Message-State: AOAM530DzvDJBUpOolZK3FR+SD0bVOzFcLHcU5eLYuP9YOof0mmUv82Q
        AN9xYdeXaM4xhOJ0fRRLDZw=
X-Google-Smtp-Source: ABdhPJx7GW/WIGxk0tOOIOgBXxsC73KrlaGytiAa2pAetGfckqrIj8G3Oi0Er3cCmjq3Efras4AyMQ==
X-Received: by 2002:a1c:e1d6:: with SMTP id y205mr10664580wmg.92.1600001623789;
        Sun, 13 Sep 2020 05:53:43 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id k8sm15246430wrl.42.2020.09.13.05.53.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Sep 2020 05:53:43 -0700 (PDT)
Subject: Re: [IDEA] New pages for types: structs and typedfefs
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>,
        Florian Weimer <fweimer@redhat.com>,
        libbsd@lists.freedesktop.org
References: <fb6463f6-49d7-e473-d5e1-1cdf8375e498@gmail.com>
 <6c5b89f8-4281-4434-cbee-28f88d07920c@gmail.com>
 <4ea99048-4bfd-9cba-44cd-9c37fdad8fce@gmail.com>
 <CAKgNAkjys+LYn1qaSXhM2gJfkv_UOnpeNPyh3QCqNLcMNBKB+g@mail.gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <d093c1a5-b31a-1200-3cd6-6b5d2cf28ad3@gmail.com>
Date:   Sun, 13 Sep 2020 14:53:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkjys+LYn1qaSXhM2gJfkv_UOnpeNPyh3QCqNLcMNBKB+g@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 9/13/20 2:01 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
>
> On Sat, 12 Sep 2020 at 10:59, Alejandro Colomar
<colomar.6.4.3@gmail.com> wrote:
>>
>> Hi Michael,
>>
>> On 2020-09-12 08:33, Michael Kerrisk (man-pages) wrote:
>>  > Your not the first to suggest this. Most recently, if I recall
>>  > correctly, Florian also suggested it.
>>  >
>>  > The idea seems reasonable, but I wonder about the best way of
doing it.
>>
>> libbsd already provides a few pages on types.  Maybe we could have a
>> look at them.  At least I've seen 'man timespec' (which redirects to
>> timeval.3bsd):
>>
>>
https://gitlab.freedesktop.org/libbsd/libbsd/-/blob/master/man/timeval.3bsd
>>
>>  >
>>  > I propose the desired information for each type would be
>>  >
>>  > * Type name
>>  > * Short explanation of the type (often this mcould be just a
>>  >    few words, I think)
>>  > * Whether the type is specified in POSIX; POSIX requirements on
>>  >    the type.
>>  > * Header file that defines the type (in some cases, there
>>  >    may be more than one. This info can be discovered in the
>>  >    POSIX spec. (Alex, do you have a PDF of the POSIX spec?)
>>  > * Cross references to manual pages of relevant APIs that use the type.
>>
>> I think that would be reasonable.
>>
>> No, I don't have a PDF.  I usually search here:
>>
>> https://pubs.opengroup.org/onlinepubs/9699919799/
>
> You can get a PDF by registering as a member of The Open Group. I
> think the necessary info is here:
> https://www.opengroup.org/austin/lists.html
> (I find having everything in a single PDF is useful for searching.)

Thanks.

>
>>  > There are some weird corner cases. For example, clock_t:
>>  >
>>  > * times(2): clock_t == clock ticks (sysconf(_SC_CLK_TCK))
>>  > * clock(3): clock_t measures in CLOCKS_PER_SEC
>>
>> That would just be 1 or 2 more lines in the explanation, I guess.
>
> Yes, I guess.
>
>> That's also similar to the typical (mis?)use of size_t as a ptrdiff_t.
>>
>>  > Then, do we do one page per type? At first glance, that seems
>>  > unwieldy to me. (I could be wrong.) And it seems to me that
>>  > there might be benefits in having all of the information in
>>  > one place rather than spread across multiple pages. (For example
>>  > cantralizing the info would make it easier for the reader to
>>  > get an overview.)
>>
>> I agree in that everything should be centralized, at least in the
>> beginning.  That would make it much easier to maintain and find the
>> information.  If the future requires the information to be spread
>> across many pages, let the future solve that problem :)
>>
>>  >
>>  > Alternatively, we could have one big page that is a list of the
>>  > types with the above information. Say "system_data_types(7)".
>>  > That page might be an alphabetically ordered hanging list of
>>  > entries that look like this:
>>  >
>>  >      timer_t     <time.h> or <sys/types.h>
>>  >          POSIX timer ID.
>>  >
>>  >          Conforming to: POSIX.1-2008.
>>  >
>>  >          See: timer_create(2), timer_delete(2), timer_getoverrun(2),
>>  >          timer_settime(2)
>>
>> I'd say here is missing the POSIX requirements on the type.
>
> As far as I can tell, in the case of timer_t, I think there are no
> requirements in POSIX.
>
>> Is it a 32-bit or 64-bit or may vary? Is it signed or unsigned?
>
> POSIX doesn't specify, I think.>
> One other thing the page should show of course is definition of the
> structure types.

Yes.


    timer_t     <time.h> or <sys/types.h>
        POSIX timer ID.

        typedef void *timer_t;

        Conforming to: POSIX.1-2008.

        See: timer_create(2), timer_delete(2), timer_getoverrun(2),
        timer_settime(2)

Like this?  Should I specify somehow if the type definition
is so for Linux only, or for all POSIX, ...?

sources:
x86_64-linux-gnu/bits/types/timer_t.h:7:typedef __timer_t timer_t;
x86_64-linux-gnu/bits/types.h:171:__STD_TYPE __TIMER_T_TYPE __timer_t;
x86_64-linux-gnu/bits/types.h:126:# define __STD_TYPE		typedef
x86_64-linux-gnu/bits/typesizes.h:70:#define __TIMER_T_TYPE		void *

This is so for my Debian x86-64.

However, I don't know if this is the definition for all architectures.

I'll start with what I can do, and if you see any type that you know
has a different definition in other systems, I'll let that to you :)

>
>>  > Then of course, we'd need to have links to that page, so that
>>  > people could just type 'man timer_t'. What section should the links
>>  > be in? The reasonable candidates would be section 3 or 7. I'm not
>>  > yet sure which is better. But the point is that we'd have files
>>  > such as timer_t.3 (or timer_t.7) that are link pages containing the
>>  > line:
>>  >
>>  >      .so man7/system_data_types.7
>>
>> Sure.  And for the structs, I'd allow:
>>
>> 'man struct timespec'   (For simplicity)
>> 'man struct-timespec'   (Similar to the git man pages)
>> 'man timespec'          (For compatibility with libbsd)
>
> Mainly, I'm interested in the last case. That's the one I think that
> people would most likely use. In a follow-up mail, you expressed
> concern with conflicts with libbsd pages. I'm not too worried about
> that. There are already *many* conflicts between libbsd and man-pages.

I wasn't concerned about conflict with libbsd; that's the form libbsd
uses, and a good point for having that form would be for compatibility
(people will probably like having to write 'man timespec' in any
system and work).

I was instead concerned that some struct tag may have the same name as
some function, which I don't know for sure:

Let's say there exist a function 'int foo(void)', and a 'struct foo'.
If that is the case, which I ignore, you would need to either have
'foo.3' and 'foo.3t' or have 'foo.3' and 'struct-foo.3'.

Your thoughts?

>
>>  > For the moment at least, I'd favor the "one big page plus
>>  > links" approach.
>>
>> Yes.
>
> Would you like to take a shot at this? I'd suggest just a simple page
> covering just two or three types to start with. Maybe time_t and
> timer_t, or otherwise some types that seem good choices to you?

Yes, I'd like to.  It'll be my first page from scratch, though, so
don't expect it to be soon :-}

Maybe 'timer_t', 'time_t' and 'struct timespec' would be a good start.

Do you think there's any page that has a similar format to what we want
to base on it?

>
> Thanks,
>
> Michael
>
>

Thanks,

Alex
