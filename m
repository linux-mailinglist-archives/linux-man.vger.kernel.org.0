Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7290D2AAAFC
	for <lists+linux-man@lfdr.de>; Sun,  8 Nov 2020 13:23:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726607AbgKHMXE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Nov 2020 07:23:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726210AbgKHMXE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Nov 2020 07:23:04 -0500
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com [IPv6:2607:f8b0:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE49DC0613CF
        for <linux-man@vger.kernel.org>; Sun,  8 Nov 2020 04:23:03 -0800 (PST)
Received: by mail-oi1-x231.google.com with SMTP id d9so6966421oib.3
        for <linux-man@vger.kernel.org>; Sun, 08 Nov 2020 04:23:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=ZJQ3YXxs526MlR+ne+nuYCbi7sAG2sJQDjkzGtqYKLU=;
        b=a8n2Fax/K+OBeNVrORu0ZL2BGq3e4BobjrzsBSlGGGxZ78j1GZaJ+mknQMoweIDbJq
         w0LXlGRlc6G3Up49bxpVGJsBfWQKJVnyhgmcxiD82XPNBllVAcWwsBcY0D4Z8niyXdSM
         9G5OMuN0wJoeyXSeLHJPgLi0HpzIYuue0CxvqX5SS9SKME0q7trx7v54uKqCTcTOkatx
         +e29ljuEqPT/jTrQIMb4B0DOSS+QgZvHZci1AqI5YavlnHqPwpWQV5oRbBeFD3LUYDpN
         8ZdFiw+XwOL77Uel6LHE8UY1m8AwFwYs8eMEjy2DTv7JAPRMKl7ctwep6/EXOILw9dPH
         yAog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=ZJQ3YXxs526MlR+ne+nuYCbi7sAG2sJQDjkzGtqYKLU=;
        b=W3yNVymvganJUBtFRHN4yW60T6dte0amxC+2SD3opoPnitWD63anxvePdCyU+pKFpJ
         I+/2z8hhEmZuPozFEq0R1griliOK3WWXgqddEqzV5Ty8fpU7HjvdSusNzUFk9M5dGJl6
         yKNb5MY8K/dKHm+SSQZSkFFeYy/ct4azmeC+v2uyD1mur0cJYmdQ0zhqD8c+iF0eOzRA
         GtCMMkhSOzHWgK07knYu65gGna3iGu1/rzfsFor9M4dNigYJcLy1svR5awJtmpzbUrZY
         OFdRovNZraw2WTchQmBkz9y/8zwbbQb04bxtAxjb6HdmykLPMBMvdsJIHvXqMureBxJJ
         ku2g==
X-Gm-Message-State: AOAM530EGMbHFWNjX9F07jcQ4ddN1BabwXvpElMy8XFAMytIQG90MJ2o
        yRTmt7fWuT7VgSRP71JOjd+QJAuF5IZaITAgI2HgTGribShJog==
X-Google-Smtp-Source: ABdhPJyGKyrDD3BDZSlQ3O0FQZT60Tuxw8lqakSRl3KJ9CWp4lHv5K0qZUTgEDan16wPfDdzYDbpTXomeYVM/Hc7igA=
X-Received: by 2002:aca:1803:: with SMTP id h3mr6173014oih.148.1604838182888;
 Sun, 08 Nov 2020 04:23:02 -0800 (PST)
MIME-Version: 1.0
References: <f10acb37-f929-c1fd-9827-c33aaf2955a1@gmail.com>
 <20201106093845.12897-1-colomar.6.4.3@gmail.com> <3f041e44-c5c7-f17a-9e99-125eeb6ccb0c@gmail.com>
 <387259c5-3051-8058-e99c-b17873fe7187@gmail.com>
In-Reply-To: <387259c5-3051-8058-e99c-b17873fe7187@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sun, 8 Nov 2020 13:22:51 +0100
Message-ID: <CAKgNAkjsnu9+rxdLgZ5VzYxjFf_c1Ed0JUQ8=KHkK6Qw9X4B-Q@mail.gmail.com>
Subject: Re: Format inline code
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Fri, 6 Nov 2020 at 17:36, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>
> Hi M,
>
> On 2020-11-06 17:00, Michael Kerrisk (man-pages) wrote:
>  > Hi Alex,
>  >
>  > On 11/6/20 10:38 AM, Alejandro Colomar wrote:
>  >> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>  >> ---
>  >>
>  >> Hi Michael,
>  >>
>  >> This is not a patch.
>  >> But I sent you a full page to better see what we're talking about.
>  >
>  > Thanks. The "patch" was helpful.
> :P
>
> BTW, the thing I tried in the "patch"
> of passing a length argument to .IP
> is not possible, right?

Right.

> It would simplify some things.
>
>  >
>  >> Here are, as subsections of EXAMPLES,
>  >> A (.RS/.RE after first .TP paragraph) and
>  >> B (.RS/.RE Always)
>  >> from last email.
>  >>
>  >> As for using .RS/.RE for single paragraphs,
>  >> we could do as in C:
>  >> {} for multi-line ifs/loops -> .RS/.RE for multiple paragraphs.
>  >
>  > With the important caveat that {} plus indentation is a lot more
>  > visually comprehensible than a .RS/.RE pair.
> Agree.  I dislike most if not all markup languages
> for being not very easy to read.
> Maybe .rst is the only one I kind of like in that sense :/

Yeah, I've wondered about a conversion to .rst, but so far I'm not
sure, and also I presume it will take a lot of work.

>  >> just indent for single-line ifs/loops -> .IP for single paragraphs.
>  >
>  > So., I think the choice is really down to something like
>  > this:
>  >
>  > * For .TP with single paragraph, no extra markup
>  > * For .TP with multiple paragraphs/examples, I would probably prefer:
>  >
>  >          .TP
>  >          .RS
>  >          [paragraphs started by .PP]
>  >          .RE
>  >
>  > rather than:
>  >
>  >          .TP
>  >          [first para]
>  >          .RS
>  >          [paragraphs started by .PP]
>  >          .RE
>  >
>
> I'd reword it as:
>
>            .TP
>            .RS
>            [first para]
>            [paragraphs started by .PP]
>            .RE

(Yes.)

> i.e., the first paragraph should not start by .PP.
> But I agree on including the first one in the .RS/.RE group
> for logic and consistency reasons.
>
>
>  > But I still wonder, do we want to do this? The advantages:
>  >
>  > * Consistent use of .PP everywhere.
>  >
>  > The disadvantages:
>  > * A bit more mark-up required.
>
> Agree on that one.
>
>  > * Perhaps the source is also a little harder to understand.
>
> I would argue the other way:
>
> .IP Does too many things: It indents, and it also adds a new paragraph.
> It is like .RS+.PP/.RE grouped into one macro.

Yes, I guess one could argue that point too :-).

> With the separation into .RS/.RE and .PP,
> each macro does one job, and does it well.
> So when you see .RS, you know you're moving +1 tab,
> when you see .RE, you're moving -1 tab.
> and when you see .PP, you're leaving a blank line.
>
> It will be more code (the previous disadvantage),
> but conceptually, I think it will be simpler.

Yeah, I can see the argument.

>  > * What to do with existing pages? Do we convert them? Scripting
>  >    will probably help, but still there's probably a decent
>  >    amount of work required.
>
> Well, we can change them slowly.
>
> Scripting will probably be difficult,
> and maybe it doesn't even fix 50% of the cases,
> so it will probably need to be mostly handmade.
>
> But there's no hurry.
> It works as it is now, so we can change one page at a time,
> and some day all will be fixed.
> We had pages with very old markup (queue.3; is there any other?),
> until very recently...

queue.3 was the only one that still used 'mdoc' mark-up.

> For example, when we add new code to a page, we can fix that page.
> perf_event_open.2 could be a start;
> it also has some other obvious srcfixes,
> which could be fixed on the same patch.

So, I am a little bit hesitant about "fix-as-we-go". Possibly, this
means some pages will never be changed. If we were to make the change,
my preference would be to do all pages at once. But I am not fixed on
that idea. Some grepping[1] suggests that the number of pages that
would need to be changed is around 100. Perhaps fix-as-we-go would be
feasible...

I'm still thinking about this one.

Cheers,

Michael

[1] grep -l '\.IP$' $(grep -l '\.RS' $(git grep -l '\.TP' man?)) | wc
-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
