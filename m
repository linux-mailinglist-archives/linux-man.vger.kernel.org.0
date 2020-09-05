Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F209D25E867
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 16:39:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727875AbgIEOjI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 10:39:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726302AbgIEOjH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 10:39:07 -0400
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com [IPv6:2607:f8b0:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6991C061244
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 07:39:05 -0700 (PDT)
Received: by mail-ot1-x343.google.com with SMTP id m12so5574091otr.0
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 07:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=5VFq6/r+H7/WDB42CNDw+HO92+TIUZTlrMkiFrO3nr4=;
        b=k4BnQ0yvy7x7vosNWGa2zQkzf+FqHU2SFX+wIRyRSodpsyCLXF3qw6YdmsYFIS4/aI
         HMPzPGMncAyqKdPulnh4p9WuNwkU/ysfcKHU+L9jYfE+O77Ycd4gzVvnOu4+cWaD08xy
         6FJOcOJFt71LEBMZPAvj/AXAuGfza6MHAcbiCrR+IyRCNqQ8EnK9eoyOYAwrIf9qFDEC
         ogfgesAssXHYTgTITXWoXVMQra5dA2UM61i0bs0+qjei+6NXEP0t55m2+QTZmB1PJyqP
         1b3Xx0pnJs2B7MO4VIaMzNQb+f5uH0kF9IHYrByUtBo/4uv1OLYrOPTPjvZWF6ld5gjR
         7r8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=5VFq6/r+H7/WDB42CNDw+HO92+TIUZTlrMkiFrO3nr4=;
        b=bhsmXR+POgF5yWiPoI/tvCPjpmw5JkLBA1Wi2XDcLbktzdM+7FSwbe+WwEa5dbHigK
         l9wmkl7YdU0l90mjqUMEcR2lqYPthldIjtEAKkzW+vtmgYB2G86jpo8d58GlC0y7rq8p
         oao33jYq4z6d6HZ+131WsRuPw29X22Ikh3Rp8gnQ0DNnbtYQtOmN2DlJ4Qn/KDI94tJn
         Yzb6aLtyDL+qDOuxMvTu0lpjj3EjLXNYNQ2KLi45WV4dhzW6dtyFWnsQLzABXSf8KiWv
         oJtLAjHeDiHYPVZmODkSmqtV84808Kd0havzW0o4TOOmkJnzIYhsXRQ4STGahiV3tcWL
         nXEA==
X-Gm-Message-State: AOAM531TU+j+u5SCVLMLxz/VPFOVbJJuNy5cVl/bK8E+XnoxkOEsazi3
        XeeWjeGHjHn8jcdKx34OBrp2rqzBse/PmN9CHmrO3FScCW0=
X-Google-Smtp-Source: ABdhPJzqGTV4Ecg2Fy3K2keawbCJh8j7XCEXVIsnF4D/ewaq9uJYlpP7o4fV/y+5ndqbCqya33BdZ3Firk3wpevrN8c=
X-Received: by 2002:a9d:a2b:: with SMTP id 40mr9431205otg.308.1599316738186;
 Sat, 05 Sep 2020 07:38:58 -0700 (PDT)
MIME-Version: 1.0
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <8458b842-7d4b-f19b-c596-7f529dd48ba6@gmail.com> <497bc4f4-31f5-91a5-8bc4-469e22b26502@gmail.com>
 <8160510c-4d9e-7f30-e810-648b0b58a986@gmail.com> <d7db8e23-8e86-10ee-f221-30d7e3bd657e@gmail.com>
 <87d5b09a-a3c8-622c-d731-5d42644a5f24@gmail.com> <61d2f2f9-08d0-9f1a-9642-ae56b3f4b61d@gmail.com>
 <4bb9e639-83ee-ede0-f6ad-dfc16787d358@gmail.com> <3c25bbda-bc90-1364-77cd-2c637f09d611@gmail.com>
 <af5bf8ce-8bb8-3819-a8e4-1454be92097f@gmail.com> <4f0ff40c-2a63-736d-698f-0efc436c3678@gmail.com>
 <5343bbd1-b03f-29bf-2def-c27ba3a3616e@gmail.com> <4eba3ee9-bb6a-810f-55ae-7f0d76d446a7@gmail.com>
 <82aa16c3-60fe-68b3-103f-6d438563f3c2@gmail.com> <6e6d6796-32e0-9cc1-1e6c-4abb0b702499@gmail.com>
 <718db444-6679-224e-c649-6dd219b9db3c@gmail.com> <36a9ef8e-6fd9-e074-2a19-d8529f425501@gmail.com>
 <70efd632-15b4-0d18-8c05-7a4ea7fe2353@gmail.com> <fa6e973f-0a09-a9d2-a6c6-e6359d84df9e@gmail.com>
 <eb934301-27b4-245e-da89-28bde26c2bf1@gmail.com> <3777a325-ef49-27df-d21b-375900e34fed@gmail.com>
In-Reply-To: <3777a325-ef49-27df-d21b-375900e34fed@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sat, 5 Sep 2020 16:38:47 +0200
Message-ID: <CAKgNAkiEsM-itdZ-cJAribFuAGoaLT4Nd4HDSSNOYm2MpOCCrg@mail.gmail.com>
Subject: Re: [PATCH (2) 34/34] unix.7: Use sizeof consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>, Jakub Wilk <jwilk@jwilk.net>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On Sat, 5 Sep 2020 at 11:37, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>
> Hi Michael,
>
> On 9/5/20 10:27 AM, Michael Kerrisk (man-pages) wrote:
[...]
> So, I've still not processed patches 21, 22, and 29. And in review,
> > I see that I am wondering about whether I should maintain 1, 5, 17,
> > 18, and 19. These all involve the use of malloc() or similar.
> >
> > The existing pattern was something like:
> >
> >     struct mytype *x;   // Or some simple type such as 'int'
> >     ...
> >     x = malloc(n * sizeof(struct mytpe));
>
> Not to forget `malloc(sizeof(struct mytpe) * n);`

<Cough> yes <cough>...

> > and your patches change it to:
> >
> >     struct mytype *x;
> >     ...
> >     x = malloc(n * sizeof(*x));>
> > I'm not sure that always helps readability.
> >
> > Part of the problem is the use of C90 in the code.
> >
> > Do you both agree with me that both of the following c99
> > forms are better than the original:
> >
> >     struct mytype *x = malloc(n * sizeof(struct mytpe));
> >     struct mytype *x = malloc(n * sizeof(*x));
> >
> > ?
>
> Yes, I would say both of these are an improvement.
> >
> > I *think* I mildly prefer the first form, but I'm open to
> > arguments that the latter form is preferable. Of course, the
> > fact that there might be more than one point where an 'alloc'
> > is done and assigned to 'x' may influence the argument. Thus
> >
> >
> >     struct mytype *x = malloc(n * sizeof(struct mytpe));
> >     ...
> >     x = malloc(p * sizeof(struct mytype));
> >
> > vs
> >
> >     struct mytype *x = malloc(n * sizeof(*x));
> >     ...
> >     x = malloc(p * sizeof(*x));
>
> In case there are 2 or more allocs, in general, I prefer the name of the
> variable.

Yes, by the time I'd written the two allocs examples, I'd started to
lean that way too, but didn't say so because I wanted to hear your
independent perspective .

> In case there is only 1 alloc in the same line as the declaration, I
> still prefer the name of the variable: for consistency, and because some
> day you may add another alloc, and then separate the original
> declaration+alloc in two lines, and forget to fix sizeof to use the name
> of the variable.

Yes.

> The cases where I see the type much better are cases where it is
> impossible for the type to change (and if it ever changed it would be an
> accident and cause a deserved bug) such as in those cases where you
> really need an (u)int64_t because of the API.

Yes.

> There's also cases where in real code I would prefer the name of the
> variable (to avoid future bugs because of type change), but in the man
> pages it is clearer if you write the type to be more explicit and
> consistent.  Example: queue.3 (PATCH 24/34): It's clearer if you
> consistently use the type across all the code (and it may be therefore
> better to use it in the man-pages), because the name of the variable
> looks like it's different from one alloc to the next, but I can imagine
> some real code implementing a TAILQ and later deciding to use a CIRCLEQ,
> and if any of the types in the allocation are not updated accordingly,
> there will appear bugs, while if the name of the node is used for
> allocating the memory, the transition will be really simple.

Agreed.

I've applied patches 21, 22, and 29. And then in line with our
discussion above, I moved some pages to the style discussed above:

struct mytype *x = malloc(sizeof(*x));

See commit 48d05103071830b6708a3ecabeddcdef5f3daa44.

Thanks for your input Alex, it's been really helpful!

Cheers,

Michael

--
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
