Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE6503DCB73
	for <lists+linux-man@lfdr.de>; Sun,  1 Aug 2021 13:50:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231546AbhHALuW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Aug 2021 07:50:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231461AbhHALuV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Aug 2021 07:50:21 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68E3BC06175F
        for <linux-man@vger.kernel.org>; Sun,  1 Aug 2021 04:50:12 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id b7so17947579wri.8
        for <linux-man@vger.kernel.org>; Sun, 01 Aug 2021 04:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=EVt+oDUJuAVueXA1/RaQGvlX3BeDShzQzYKPUCeaWMQ=;
        b=d8kkUu/I17UrfhpWiFWnkqzAKEyAsF4eD8S2zSPTaPe4kwRCPnDfMEgrLoAvc3jk8e
         D+tcBcneG4pzztAk4HE81OUIojagBw6nVr6bdbVPLKgImnZxs4geSyjHl7dinzsQnOw0
         uNv0xqyDVPnlioDGUcGyl6/ifsVQuS9OnZt6QvSOA261kXyTi5cbJOZjCvgXvL+HJpSC
         8/ZR0GVBKOyA9xVgVDlaA5o/uKdEg/7YnX5MZsa6VmFZELHlVsiXJPXUOWad1HqSEycA
         fVd2CbB/o6eZQ9kBx/TzvORaQqBA33vS/CkaYIRuUaF9JGxA+HQhfAv9ssHPRJGb11g7
         6p7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=EVt+oDUJuAVueXA1/RaQGvlX3BeDShzQzYKPUCeaWMQ=;
        b=PBcF3n7ttNRU+mxONxI+SdpzRaNvk2IJY8agRSymWRU0lSlnIgKXDkHQcFlPIyeBQc
         fqbq14Jf+BSbpF5b0mwQ55oltIF9Oig93DpVMX0PIaydVopKoR8t5I4fQwnsTg3yqtAl
         C9+EOnH5nb85mDVd6o1cLr2+y6+OpYj9730LLRKDlUm7i6KBcy1XuBTQle0jv3wr5UER
         IUhaxhKwxpKH9OENhr0G4PibmO4f7S85iu/4uUlSJOhv6x0uXoh48bTGTIMj2ivILbwD
         QQzRNZ8uP6b2ioSvDczHmkm9NzHyLOFaBQRgj+U3MGZ3LsEE6concW1oZhkKT0Jpo1Ad
         Z4/w==
X-Gm-Message-State: AOAM530rFWY6vUlqZLdh5z38WUimmP8ssCDBchL/0+9PfvU8xa2IrJoF
        fGfL3TB3yYAoEqGwE+LaGqNbuHKvNb8=
X-Google-Smtp-Source: ABdhPJztHiaxkt+4A+T6vylGbwkNCQWJ5trZ1Y1TfTyTwcTYDNniVHnMkWZU3bgGq5uK/aliZj6BpQ==
X-Received: by 2002:a5d:6908:: with SMTP id t8mr12631871wru.421.1627818610962;
        Sun, 01 Aug 2021 04:50:10 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id l9sm7656585wro.92.2021.08.01.04.50.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Aug 2021 04:50:10 -0700 (PDT)
Subject: Re: [PATCH v2] mount_setattr.2: New manual page documenting the
 mount_setattr() system call
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20210730094121.3252024-1-brauner@kernel.org>
 <9ba8d98e-dee9-1d8d-0777-bb5496103e24@gmail.com>
 <20210731094311.twnwu553i7hzr5md@wittgenstein>
 <1ca74dab-bda4-5105-6e18-3764ee607761@gmail.com>
 <20210801105151.qtjjc7wly7ck6kme@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <5cc3f1c1-19de-6f1e-2e3b-ebf7f968a7a4@gmail.com>
Date:   Sun, 1 Aug 2021 13:50:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210801105151.qtjjc7wly7ck6kme@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

On 8/1/21 12:51 PM, G. Branden Robinson wrote:
> [CC list brutally trimmed as usual]
> 
> Hi Alex!
> 
> At 2021-07-31T14:30:49+0200, Alejandro Colomar (man-pages) wrote:
>> On 7/31/21 11:43 AM, Christian Brauner wrote:
>>> While I'm respectfully ranting, I'd like to say that in an ideal
>>> world we would end up writing rst in the not too distant future just
>>> as we do for the kernel documentation.
> [...]
>>> This is no comment on your work at all! But groff is a __giant__
>>> __giant__ pain imho.
>>
>> Agree. :)
>>
>> Especially since it's something that you don't usually use, except
>> when writing manual pages, which is not something that you do everyday
>> (unless you're maintainer of the man pages, that is).
> 
> I get frustrated by groff and the man(7) macros, too, though much less
> often than I used to, because I've learned enough that the design
> principles have become clearer to me, and because when I find actual
> bugs, often I can fix them.
> 
> I've ended up as a groff/roff/man(7) advocate not because I think
> they're perfect but because having watched the development of Unix/Linux
> documentation since 1996 I can attest to the truth of the following
> stone tablet.
> 
> https://xkcd.com/927/

Agree.  That's why I doubt very much that we'll ever change to RST (or 
any other language).  But I'll have to try and make the current 
man-pages consistent enough so that people see it easy writing them...

> 
>> BTW, I started using groff_man(7) to write other documents of mine
>> replacing LibreOffice (legal documents, for example), and it's really
>> nice, once you truly understand the language.
> 
> Wow!  I wouldn't do that and I've revised nearly every line of groff's
> man(7) macro package.  I mean, I _could_ if ordered to, but there's a
> superior alternative right next door, called ms(7).  It's what most of
> the classic Bell Labs Unix white papers were written (before 1980 or so,
> when the Labs started to adopt mm(7)).

I think I tried groff_ms(7), or maybe it was groff_mm(7); I don't 
remember.  But I didn't like having to learn a new dialect, more so when 
there are macros that act differently with the same name.

Since I already know man(7) very well, it's simpler for me to use it 
everywhere.  But maybe if you send me that document you might convince 
me (but I doubt it).

It's something like when I program.
I know C by heart, so I program everything in C.
I never understood that thing of
"use the language appropriate for the job".
With some exceptions,
I don't think there are languages that
are more appropriate to one job than another
(well, of course groff is more appropriate for writing documents than C,
but I mean programming languages,
so let's discard non-programming languages).
There are only languages that you know and
languages that you don't know.
As a person, if I have to speak with many different people,
I use a single language: English;
I don't use the best language for each one (i.e., their mother tongue),
because I wouldn't know how to express myself so well,
and English is the speaking version of C;
there's almost nothing that you can't express in English,
it's simple, and most people know it (at least to a minimum).
So when programming,
I'll also use C for _everything_
as I can express mostly _everything_ with it,
and is probably the simplest and most well-known language out there
(all of its complexity is deferred to the standard library,
other libraries, system calls, compiler extensions, ...,
but the language itself is sooo simple).

I think most languages out there are perfect examples of 
<https://xkcd.com/927/>.



BTW, I'm curious, and never knew this:  what's the difference between 
groff_man(7) and man(7)?  They are each a page about groff_man, written 
by different authors/projects, right?



> 
> Since attaching PDFs to emails destined for linux-man meets with an
> ill-fate, hit me up if you're interested in a 22-page document called
> ms.ms.  It's Larry Kollar's "Using _groff_ with the _ms_ Package".  He
> originally wrote it in about 2001; he took it out of mothballs at my
> request because the groff team decided it would be a good idea to
> document the macro package using itself (much as groff_man_style(7)
> tries to).  (We'd had it documented in the groff Texinfo manual instead,
> which some distributors won't ship because it uses some obnoxious
> features of the GNU FDL that are not DFSG-free.)
> 
> For the past several months I've been revising every section of it to
> bring it up to date (and, as it happens, research the history of ms in
> ways that were much harder to do 20 years ago, in the days before TUHS).
> I've gotten some good feedback on it so far, and I aim to put my name on
> it as co-author once I've finished revising every section.
> 
> A _lot_ of what you know will port from man(7) to ms(7).  An exception
> I'm sorry to point out is the font styling macros, which share some of
> the same names but have different semantics with respect to positional
> arguments.

That's what I don't like

> You'll also see some features, like keeps, and may wonder,
> as I do, why we don't have them in man(7).
> 
> Anyway, hit me up if you want this document and I'll shoot it your way.
> Or if you have Groff Git HEAD checked out, you'll find it you can build
> it yourself.  :)

Yup, please send it.  :)

> 
>>> I genuinely like writing documentation because it gives me time to
>>> think about the semantics I put into code.  But I hate writing
>>> manpages or rather dread writing them because I know I'm going to be
>>> losing hours or a day not on content but on formatting.  And then
>>> rounds of reviews with subtle differences between .I and .IR and
>>> whatnot. As a developer and maintainer I can't usually afford losing
>>> that much time which means I postpone writing manpages especially
>>> complex ones such as this.

This was written by Christian, but you removed him from the CC list :)


> 
> Font styling bedevils nearly everyone to some extent.  If it's
> excessively frustrating, I would use only the .B and .I macros on a
> first pass, and let the formatter insert extra spaces initially.
> 
> Let's take the instant case for an example.  You knew you wanted roman
> parentheses and "struct mount_attr" in italics.  So type exactly that,
> hitting return every time the font needs to change.  It also harms
> nothing to put all the arguments to a single-font macro in one set of
> double-quotes, making one argument to the macro; this is similar to the
> shell.
> 
> (
> .I "struct mount_attr"
> )
> 
> Later, when the page is nearing completion and it's time to boil off
> those pesky extra spaces, you can return to this trio of lines, and
> think:
> 
> "Okay, I need <R>oman first, then <I>talics, followed by roman again.
> 
> Roman, then Italics.
> =           =
> 
> That means you want the "RI" font alternation macro.
> 
> .RI ( "struct mount_attr" )
> 
> This condenses it into one line, with a roman left parenthesis, the data
> type in italics, and then a roman right parenthesis.  No extra space.
> 
> man(7) only gives you three font styles to work with, so there are six
> font style alternation macros.
> 
> .BI
> .BR
> .IB
> .IR
> .RB
> .RI
> 
> They all work precisely analogously.
> 
> Does this help?
> 
> In revising the groff man pages over the past four years I've learned to
> my shock that even there, some page authors seem not to know that all
> six of those macros exist.  They tie themselves in knots trying to get
> what they want with a subset, and the result is usually ugly at least in
> source form--sometimes in formatted output, too.

Yup, I know all of them by heart :)

> 
>>> I already tried to make sure to use semantic newlines. I'll try to
>>> go over this once more now but I'm reluctant to send a v3 just
>>> because of that in case I should miss any. Especially since I've
>>> just recently seen manpages get an ack where that requirement wasn't
>>> fulfilled.  An automatic formatter for this scenario would be
>>> appreciated.
>>
>> Okay,  I don't know how to write such an automatic formatter (and also
>> don't have the time to write such a complex thing), but maybe Branden
>> knows if such a thing exists.
> 
> I've heard good things about pandoc but have not tried it myself, let
> alone carefully evaluated the quality of its man(7) output.
> 
> Frankly, the quality of much auto-generated man(7) output is abysmal and
> no doubt contributed to the macro language's poor reputation.  People
> view the source of a man page produced by docbook-to-man, for example,
> and rightly recoil in horror.  Unfortunately they don't understand that
> they're looking at the *roff equivalent of Obfuscated C.

I guess.  I don't like autogenerated code in any language.  I never 
tried checkpatch.pl's auto fix for the same reasons.

> 
> Just today I was working on the "Notes" section of groff_man_style(7),
> and came across a generator I'd never heard of called "Ronn"[1].  It's
> been defunct for many years, but the lousy man(7) markup in produced in
> pages like texdoc(1) has persisted long after it.
> 
> But it's better than docbook-to-man.  What wouldn't be?
> 
> Regards,
> Branden
> 
> [1] https://github.com/rtomayko/ronn
> 

Regards,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
