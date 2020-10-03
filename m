Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AAB5B2822F7
	for <lists+linux-man@lfdr.de>; Sat,  3 Oct 2020 11:16:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725796AbgJCJQE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Oct 2020 05:16:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725782AbgJCJQE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Oct 2020 05:16:04 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC2A2C0613D0;
        Sat,  3 Oct 2020 02:16:03 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id 13so3880033wmf.0;
        Sat, 03 Oct 2020 02:16:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=m0P8JkMZXhc03/pq5EHu9mWfz137xFeG46x+2gxsGT4=;
        b=kxVK72B7aFhEAJB/ADqCtwB1ENn06h3P3cJL5ERGap8aM8Avaq9Okbih9wZ/E/7qul
         gOTHC70NcwOy8xspzGEQZhbQ118hkF3p1H/ZrRKnTB2cm1wiedcQgYlytp87JRQjQCx4
         yJUQ650b6jXqhmwhL8BtIduVJbGEJH/QLAya/dilzwQuw22gOQXelCmb/wxfeJ9VSWAj
         ZGBgds49cl0H4+OhJQ2+WFydHXCJVBR7uoq6Mi+3+Fbp22ERTe3mP++R2Wzz9UCCInZj
         Bz3zMnlVm4/oX/cEeNMvOl7uVztpVS+z0CUsM2tG5j/wJH07eiZpyQctp/WJXgSc33i7
         37sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=m0P8JkMZXhc03/pq5EHu9mWfz137xFeG46x+2gxsGT4=;
        b=TT9zh/pX3YmU1OvjG8sVaB9LqAf2xqnB1ReGs1mMaLUiOaQjD5jMIFn+tc5rX1oa06
         uY1pcincbA/bSXwU1AhDdoaGbdMw4DjTPFVIwGv5Hg/tMmBSXryy6FuyjTcLcFlcIYrI
         K4f93NjxuMtyvCIQsTIXCuQeg28bNLj0fiNih1DwAaxW2jw7gHm2M8lUIgqC5iE/8P7t
         aM7dTRiq+iheZNM1S5h8b7g+cAxMlqUDMP7oLrslLWjO67B2uCrWwzYN1coS7WSmVtql
         PkiVGYIWYtt5NWxuldPTlFmk0VeZv2rnSGRfOZiNiYDh3UdMEXJzQlK0gP5Ww0pZM1DV
         I5tQ==
X-Gm-Message-State: AOAM530v+wr1xbPp/Gh+osXT6/GiV/hdqlStpnhuz/oeDVzhQT2oAMco
        HjEBAONKZh/tbTEzlm/N+8M=
X-Google-Smtp-Source: ABdhPJx+s2SS8QodEzxxBylMUpDD9/5IlU3315eFLlqpHFSdHJzXsO4Z08heLzl7FeQNIOL9gdbWaQ==
X-Received: by 2002:a05:600c:22c5:: with SMTP id 5mr6964074wmg.34.1601716562305;
        Sat, 03 Oct 2020 02:16:02 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id v9sm5096803wrv.35.2020.10.03.02.16.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Oct 2020 02:16:01 -0700 (PDT)
Subject: Re: Navigational corrections
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Jonathan Wakely <jwakely.gcc@gmail.com>,
        Paul Eggert <eggert@cs.ucla.edu>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>, David.Laight@ACULAB.COM
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
 <297e304a-758e-f703-d1e2-6708be3ffca8@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <9c8f90c5-0f34-609f-8001-a61f90e05849@gmail.com>
Date:   Sat, 3 Oct 2020 11:16:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <297e304a-758e-f703-d1e2-6708be3ffca8@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 2020-10-03 10:00, Michael Kerrisk (man-pages) wrote:
 > Hi Alex, et al.
 > On 10/2/20 3:51 PM, Alejandro Colomar wrote:
 >>
 >> Hi Jonathan,
 >>
 >> On 2020-10-02 15:27, Jonathan Wakely wrote:
 >>> On Fri, 2 Oct 2020 at 14:20, Alejandro Colomar 
<colomar.6.4.3@gmail.com> wrote:
 >>>>
 >>>>
 >>>>
 >>>> On 2020-10-02 15:06, Jonathan Wakely wrote:
 >>>>    > On Fri, 2 Oct 2020 at 12:31, Michael Kerrisk (man-pages)
 >>>>    > <mtk.manpages@gmail.com> wrote:
 >>>>    >>
 >>>>    >> On Fri, 2 Oct 2020 at 12:49, Jonathan Wakely 
<jwakely.gcc@gmail.com>
 >>>> wrote:
 >>>>    >>>
 >>>>    >>> On Fri, 2 Oct 2020 at 09:28, Alejandro Colomar via Gcc
 >>>> <gcc@gcc.gnu.org> wrote:
 >>>>    >>>> However, it might be good that someone starts a page called
 >>>>    >>>> 'type_qualifiers(7)' or something like that.
 >>>>    >>>
 >>>>    >>> Who is this for? Who is trying to learn C from man pages? 
Should
 >>>>    >>> somebody stop them?
 >>>>    >>
 >>>>    >> Yes, I think so. To add context, Alex has been doing a lot 
of work to
 >>>>    >> build up the new system_data_types(7) page [1], which I think is
 >>>>    >> especially useful for the POSIX system data types that are 
used with
 >>>>    >> various APIs.
 >>>>    >
 >>>>    > It's definitely useful for types like struct siginfo_t and struct
 >>>>    > timeval, which aren't in C.
 >>>>
 >>>> Hi Jonathan,
 >>>>
 >>>> But then the line is a bit diffuse.
 >>>> Would you document 'ssize_t' and not 'size_t'?
 >>>
 >>> Yes. My documentation for ssize_t would mention size_t, refer to the C
 >>> standard, and not define it.
 >>>
 >>>> Would you not document intN_t types?
 >>>> Would you document stdint types, including 'intptr_t', and not 
'void *'?
 >>>
 >>> I would document neither.
 >>>
 >>> I can see some small value in documenting size_t and the stdint types,
 >>> as they are technically defined by the libc headers. But documenting
 >>> void* seems very silly. It's one of the most fundamental built-in
 >>> parts of the C language, not an interface provided by the system.
 >>>
 >>>> I guess the basic types (int, long, ...) can be left out for now,
 >>>
 >>> I should hope so!
 >>>
 >>>> and apart from 'int' those rarely are the most appropriate types
 >>>> for most uses.
 >>>> But other than that, I would document all of the types.
 >>>> And even... when all of the other types are documented,
 >>>> it will be only a little extra effort to document those,
 >>>> so in the future I might consider that.
 >>>
 >>> [insert Jurassic Park meme "Your scientists were so preoccupied with
 >>> whether or not they could, they didn't stop to think if they should."
 >>> ]
 >>>
 >>> I don't see value in bloating the man-pages with information nobody
 >>> will ever use, and which doesn't (IMHO) belong there anyway. We seem
 >>> to fundamentally disagree about what the man pages are for. I don't
 >>> think they are supposed to teach C programming from scratch.
 >>
 >> Agree in part.
 >> I'll try to think about it again.
 >>
 >> In the meantime, I trust Michael to tell me when something is way off :)
 >>
 >> Thanks, really!
 >>
 >> Alex
 >
 > So, I think a navigational correction is needed.
 >
 > My vision was that system_data_types(7) would most usefully document
 > the POSIX types, but by now there's too much of C creeping in. I have
 > been a little slow to react to that, and I apologize for that.
 > But I think we should not go in that direction
 >
 > I think it is worth having types like ssize_t and size_t in
 > the page, simply because they turn up with so many of the POSIX
 > APIs, and people often don't understand some details of these
 > types (such as the necessary prinf() specifiers). So, as long as
 > we're going to have a page about these types, it's fine by
 > me to include size_t and ssize_t.
 >
 > Types like [u]intN_t are definitely on the borderline for me. But,
 > they do appear in various APIs in the Linux interface (either
 > explicitly, or as the similar __u32 ___64, etc.). And again
 > many people don't understand some basic details, such as
 > the PRI and SCN constants, so I think it is useful to have them
 > briefly summarized in one place, and as long as they are already
 > in the page, then let's keep them.
 >
 > I think __int128 etc definitely doesn't belong in this page.
 >
 > And I'd like to back pedal a bit. I think we really shouldn't have
 > [u]int_fastN_t
 > [u]int_leastN_t
 > in the page. They are C details that have nothing to with POSIX,
 > the kernel, or libc. Could you send me a patch to remove these
 > from the page? And again, my apologies for not being focused
 > enough on the big picture sooner.

I'm fine with removing them.
I only added them because while I was adding [u]intN_t,
they were in the same page, and I just took them too.
No problem with removing them.

To be clear, I should remove [u]int_*astN_t, right?

 >
 > I don't think 'void' belongs in this page. Nor basic types
 > such as int, long, etc.
Fine.


 >
 > The question of 'void *' is an interesting one. It is something
 > like a fundamental C type, and not something that comes from POSIX.
 > But, it does appear in POSIX APIs and often details of using
 > the type are not well understood. So, as a matter of practicality,
 > and again since you've done the work, I am inclined to include
 > this type in the page, just so it can be handily referred to
 > along with all of the other types.
 >
 > Looking ahead (and I hope none of the above disheartens you,
 > since you've done a lot of great work for this page),

Actually, not.
Its good to have you tell me what is good for the man and what's not.
Otherwise, I wouldn't know.
I keep a branch with all of the rejected patches,
just to have an idea of what I should not send you :-)

 > it would
 > be good if you could provide a bit of an advance roadmap about
 > the types that you'd like to add to the page.

Well, I didn't have a clear roadmap.
I had some types which I clearly wanted to document,
and they were ptrdiff_t, and ssize_t,
which I documented in the first patches,
and then I was finding related types,
and also tended to document about types which I knew very well too,
to have something useful to add to the description.

I may now start writing about off_t and related types,
which were the ones that made me want this page.

 >
 > Thanks,
 >
 > Michael
 >
 >
 >

Thanks,

Alex

