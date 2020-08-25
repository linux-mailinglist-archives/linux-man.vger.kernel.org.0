Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 26E962517F4
	for <lists+linux-man@lfdr.de>; Tue, 25 Aug 2020 13:41:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728993AbgHYLls (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 25 Aug 2020 07:41:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730020AbgHYLlc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 25 Aug 2020 07:41:32 -0400
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com [IPv6:2607:f8b0:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05E9EC061574
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 04:41:32 -0700 (PDT)
Received: by mail-ot1-x344.google.com with SMTP id o8so7353591otp.9
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 04:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=MwGfhROLWwRTn9qEJPkoTNHXFvVGAO46aSFzsWHLP5g=;
        b=jYOyre+/3qGUXB/zlnYVKTuBM+EmEbZSEcEWpcN6kYdkvd0NUa49fAPtqLkasNgR9C
         q9h5ownzphnDnM4p9laFKRr7wsM9GQNrGLWn/KKa53Rz4WyIDFqvDDBRkRzPCzc0HJ0L
         wKivDwJ3pwyVvTfZ0rXD/Zrq+63yLtOr3uSHRWTXppiACR+ctuRDa9gp1ST6g7YNiypH
         Ni0KkRM6QDYJP+buNAlK3x84eSGy67yVTWpMuDRRO4weksB9BCoTSpoCht/EnUFjnk8N
         gC33Cy3UliF/KT2shEVLC93sAmb0DZGcQvwsk4S+LU9xgJ1FCnmPnqdQEBuwz0Sr1PcP
         BUvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=MwGfhROLWwRTn9qEJPkoTNHXFvVGAO46aSFzsWHLP5g=;
        b=LPOUnKIWNhHHUp6vTyjBDZ2zNlAjEmS31Q1L1f3YSfZ5d0iCx4c4vzxe26G1bnb6OL
         WXI2VewBbBYDYdb1FJol9KkgPcaHyjwhsH0VDTWP9yi/nen/6ghwIpbHNGCbIBCwHmx7
         hisdt8e8F0XUS/zeO1xEimAMls2aF66iF3dZGjd80rX7QLgMWoY+RZ+XwYSf54I7Be/b
         vpbGeyibohQLD5EBPkdnw+eycSzwj9x1tSXa6xpv+NL2aY+evVcW80J+g4b8U472T9Xv
         72EfKSR4Xa/IibkV/mGlzP+hO2CRaqrLNVUz5rCZMNT7je/UjvO6lICS6BByMwEHmPis
         k/lg==
X-Gm-Message-State: AOAM533fXjUgSI0+uDbJXETtrc0/KGLXUr9oes+sjbJxQGw+Lw92OoXU
        GamC/PGgSBYZI1/FBnzzy/Wx0OkNQw6qWFRkqZ0=
X-Google-Smtp-Source: ABdhPJxXonEe/xI/07WIkYKYNpoTKmkL2jQ2058JzXQX+iDfdU7rRNSMyGyq5ovgoHKtGM+VIQLL5lPHF2azcSmeoXg=
X-Received: by 2002:a05:6830:149a:: with SMTP id s26mr6465825otq.114.1598355691273;
 Tue, 25 Aug 2020 04:41:31 -0700 (PDT)
MIME-Version: 1.0
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <e1b424c2-77c1-e995-a866-67a122d7bb07@gmail.com> <20200825111924.gwf3ck4bdq42lrzr@jwilk.net>
 <d084b7eb-a691-52e8-4996-5080af0175de@gmail.com>
In-Reply-To: <d084b7eb-a691-52e8-4996-5080af0175de@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 25 Aug 2020 13:41:20 +0200
Message-ID: <CAKgNAki_wyf7dCShjpAaRLUeuL=+EFZYeVp0fY-EKHyOBW2hRw@mail.gmail.com>
Subject: Re: [patch] memusage.1, bind.2, eventfd.2, futex.2,
 open_by_handle_at.2, perf_event_open.2, poll.2, signalfd.2, sysctl.2,
 timerfd_create.2, bsearch.3, cmsg.3, getaddrinfo.3, getaddrinfo_a.3
 getgrouplist.3, insque.3, malloc_info.3, mbsinit.3, mbstowcs.3,
 pthread_create.3, pthread_setaffinity_np.3, queue.3, rtnetlink.3, shm_open.3,
 strptime.3, tsearch.3, aio.7, fanotify.7, inotify.7, unix.7: Use sizeof consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On Tue, 25 Aug 2020 at 13:34, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>
> Hello Michael & Jakub,
>
> On 8/25/20 12:29 PM, Michael Kerrisk (man-pages) wrote:
> > I would really have preferred three patches here, since:
>
> I can do that.
>
> >
> >> - Never use a space after ``sizeof``, and always use parentheses
> >>   instead.
> >>
> >>      Rationale:
> >>
> >>      https://www.kernel.org/doc/html/v5.8/process/coding-style.html#spaces
> >
> > (1) This is completely unproblematic from my point of view.
>
> Actually there was only one appearance of that (and another one that
> used a space before the parentheses).  It's unproblematic, but it's so
> minor that it can be fixed easily.
>
> >> - Use the name of the variable instead of the type as argument
> >>   for ``sizeof``, wherever possible.
> >>
> >>      Rationale:
> >>
> >>
> https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory
> >
> > (2) This one is up for debate. In many cases it makes sense to do
> > this. However, there are cases where I think that using the struct
> > name can actually help readability. And when I grep through the kernel
> > source, of around 139k lines that use "sizeof", some 37k take a
> 'struct type'
> > as an argument. SI, I think this kind of change may need to be
> considered on
> > a case by case basis, rather than as a blanket change.
>
> Ok. I can send a set of patches with a patch for each page.

Okay. Don't do them all at once, since we may change strategy while
discussing the first few patches.

> >> - When the result of ``sizeof`` is multiplied (or otherwise modified),
> >>   write ``sizeof`` in the first place.
> >>
> >>      Rationale:
> >>
> >>      ``(sizeof(x) * INT_MAX * 2)`` doesn't overflow.
> >>
> >>      ``(INT_MAX * 2 * sizeof(x))`` overflows, giving incorrect
> >>      results.
> >
> > (3) Is this true? "gcc -Wall" does not complain about this. And, I
> > thought that in both cases, all operands in the expression
> > would be promoted to the largest type. And, on my x86-64 system,
> >
> > sizeof((sizeof(x) * INT_MAX * 2)) == 8
> > sizeof(INT_MAX * 2 * sizeof(x)) == 8
> >
> > But, I will say tht I'm not a language lawyer, and C still
> > sometimes has surprises for me. At the least, I'd like to know
> > more about this point.
>
> Well, when I said the first one doesn't overflow, I meant it's much
> less likely.
>
> In C, successive multiplications are evaluated left to right (*), and
> therefore here is what happens:
>
> ``(sizeof(x) * INT_MAX * 2)``:
>
> 1) sizeof(x) * INT_MAX  (the type is the largest of both, which is
>                          size_t (unsigned long; uint64_t)).
> 2) ANS * 2              (the type is again the largest: size_t)
>
> ``(INT_MAX * 2 * sizeof(x))``:
>
> 1) INT_MAX * 2          (the type is the largest of both, which is
>                          int as both are int (int; int32_t), so the
>                          result is already truncated as it doesn't fit
>                          an int; at this point, the intermediate result
>                          will be 2^32 - 2 (``INT_MAX - 1``) (if I did
>                          the math right)).
> 2) ANS * 2              (the type is again the largest of both: size_t;
>                          however, ANS was already incorrect, so the
>                          result will be an incorrect size_t value)
>
> > sizeof((sizeof(x) * INT_MAX * 2)) == 8
>
> Here you were overflowing a uint64_t (if x were a char, it would not
> overflow, and the result would be close to UINT64_MAX).
>
> > sizeof(INT_MAX * 2 * sizeof(x)) == 8
>
> Here you were overflowing int32_t, and it would overflow regardless of
> sizeof(x).

Thanks for the lesson in C basics. I clearly did need a refresher :-}.

You and Jakub are of course correct.

If you send the patches in the order (as I numbered in my previous reply):

(1)
(3)
(2) as multiple pieces

that would be best, since the first two patches should obviously be
applied, and then we can discuss the last patch(es) case by case.

Thanks,

Michael
