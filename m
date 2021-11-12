Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 13CFF44DECB
	for <lists+linux-man@lfdr.de>; Fri, 12 Nov 2021 01:01:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234467AbhKLAEp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Nov 2021 19:04:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234146AbhKLAEp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Nov 2021 19:04:45 -0500
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0840CC061766
        for <linux-man@vger.kernel.org>; Thu, 11 Nov 2021 16:01:55 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id 1so15139342ljv.2
        for <linux-man@vger.kernel.org>; Thu, 11 Nov 2021 16:01:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ocJcdvC0yK2iJFmRoxI8hpz56z/bncq9spuvnzJsnOE=;
        b=cHoUyy5DLdRwd0xVT/tG2DzWCq0iJbv9vQhFz6SnD193Qcqbxd6VecYMzpUPq/YwBk
         jigdJEYoGPiavUaTuJ/boID6/BQHjb4aZFYHeuB8uD45/8JgVRtLF4TJEbAkAs+ovLmX
         DFbEBtjvYNGrndvrGZLiY2LjxSUzZ+aeZct8K3nRE9AJY0Kifb5zhPaUEWggGdm+2cb9
         yOGej1CR6XQR7WaOAuKjqoF0ALLdtjKPxKZE5VN2kfi6uJrc26Yao/PmYX8SB71gkBpy
         4vuUnV/nRSxYfLfGyz3Cw2BxqyT0O42dano24obzORrQOYbLkaefbKgR1aAkQn7LP+lG
         N+nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ocJcdvC0yK2iJFmRoxI8hpz56z/bncq9spuvnzJsnOE=;
        b=a2+z3WDE9R+dD4HguYaJrgN5jMg9PIDfJLMjpBTbwEA5v88vEKcpLYyYoOJZM4SCym
         YuA19vB83HdAf8Q6MdS8zskZMZUNdy3wafEfeVPtKUaVHCl4xDy30zhpE1N2BblV3KXZ
         bM0LfMqCiJrIfgJjokDJ/yxJyPFD0O1EDkXuQFcQwN1i8reYzyEiCNSavpG5hd4tszrQ
         rrWUzacson2Rn9HbI80qwBHGZpWfwcoRMrN8B3C7NuaOAIXaGOEGGQKiMzFyOUThzN8Q
         Y0rUzsQB7YLFoF7LMPGKnwY8OHJc8ZZ3XKw8zv72+vm51Lb7tQq8n84K48LXbIuDrGU8
         nEZw==
X-Gm-Message-State: AOAM532Jq02mdgF/6mg8tcuHAnAidUzEfOX57HEvG+Drtt4EUO3Y3bVM
        KmrevcxTAwxQR170ncatIHNMAtOihadKhcpH8+pZ9en9NU0c6aRA
X-Google-Smtp-Source: ABdhPJwouNx7uRK4jMRXskD8TAxfJAeg0JDUw1s6QTUgY/75kZm3RB++3hEcXXqvc+Dd04k4C1q/8X+BI/R8HYsfl4U=
X-Received: by 2002:a2e:8554:: with SMTP id u20mr11338329ljj.70.1636675313078;
 Thu, 11 Nov 2021 16:01:53 -0800 (PST)
MIME-Version: 1.0
References: <CAJgzZoojiRmTV_5sAXhqQciAKsQ_d+znT1OnxT0Rpa_-N_G5-Q@mail.gmail.com>
 <87imnodbct.fsf@mid.deneb.enyo.de> <CAJgzZoo+oSkwgCZ3CMUdP-t+Y4h4PkvJO-As15kjz0Ad+nx9fA@mail.gmail.com>
 <877e44daom.fsf@mid.deneb.enyo.de> <CAJgzZopuKoGFUq0GrB6ioFpLXzCY1iwGRddRRcAhzsNisjutuQ@mail.gmail.com>
 <87woc4bv9c.fsf@mid.deneb.enyo.de> <CAJgzZorosDN58Zp6TUDJbzY3fmR-rJeWbELtw_H3nzMyaWondg@mail.gmail.com>
 <87imnobufy.fsf@mid.deneb.enyo.de> <CAJgzZorB99W2PzjQ5ZU1nBiYb81Ubm=VvaF50BOm9sTFUHeE4A@mail.gmail.com>
 <87r22c9ve8.fsf@mid.deneb.enyo.de> <CAJgzZopvMb8KGyA5b6afWG83hw-cZgOdvOdPYb28iS+f5wDkmw@mail.gmail.com>
 <87mud09uhr.fsf@mid.deneb.enyo.de> <CAJgzZooj8VaF_P2YaqwEchR5LEKP_mS379r6GLrexkDen2jGtQ@mail.gmail.com>
 <87lf1wjxcu.fsf@mid.deneb.enyo.de>
In-Reply-To: <87lf1wjxcu.fsf@mid.deneb.enyo.de>
From:   enh <enh@google.com>
Date:   Thu, 11 Nov 2021 16:01:41 -0800
Message-ID: <CAJgzZooymW7fHnpCeVmhrAe-uue9zdssdP-QHeRtPN3MkVsnNA@mail.gmail.com>
Subject: Re: [PATCH] pthread_kill.3: Update to match POSIX.
To:     Florian Weimer <fw@deneb.enyo.de>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

that was never the issue though ... well, okay, that's *an* issue, but
not the one i'm most concerned about :-)

the issue i'm trying to fix (and so maybe need to find even clearer
wording for) is basically this:

  * lots of people don't realize that pthread_t != pid_t
  * they think that "the worst that can happen" when passing a
no-longer valid pthread_t to these functions is ESRCH
  * they don't realize that using pthread_kill(3) like this is just a
use-after-free bug

i think one reason this persists is glibc's thread cache makes it
harder to hit there. i don't actually know whether glibc's thread
cache has an eviction policy at all? if it doesn't, that would indeed
turn this use-after-free into "just" a question of whether you have
the right pid_t or not. but assuming glibc's thread cache _does_ have
an eviction policy, glibc's in the same boat as more svelte libcs
(such as bionic and musl, plus the BSDs, and also Apple's anonymous
libc) --- it just needs more threads.

this confusion causes bugs (and crashes) today, and it's only going to
get worse as we get better tools for detecting UAF, such as Arm MTE,
and it's really hard to get people to understand the problem when the
man page is worded as it currently is (with a weak "can, for example"
hidden in the NOTES section).

if it really is the case that glibc has no eviction policy, then my
suggestion will probably be that we come up with wording along the
lines of "libc implementers face a choice here between the memory cost
of never freeing [whatever man7 calls the TCB] or not being able to
detect this temporal error; of all the libcs, only glibc chose the
former".

if nothing else that should at least answer the question "why can't
you just be like glibc?" :-)

the current text kind of sounds like "glibc has a great
implementation, but POSIX doesn't require that, and everyone else
sucks", but that's pretty misleading. (even if the glibc
implementation is safe, which i'm not sure it is. it also seems like
the "that's not a cache, that's a memory leak" implementation would
preclude memory tagging for thread stacks, which would be another
infelicity?)

-*-

this page is a bit weird in general... ESRCH isn't mentioned in
ERRORS, but the sig == 0 case is called out in DESCRIPTION, but you
need to read NOTES to find out that that's basically broken. and
no-where on the page do we try to describe alternatives that _do_
work. (happy to volunteer text along the lines of "you need to stash
your thread's tid at a time when you *know* the pthread_t is valid,
such as when the thread starts, and then you can use that with kill(2)
and sig == 0 to do what you _thought_ pthread_kill(3) with sig == 0
did, which still isn't 100% safe in light of pid wrapping, but is the
best you can get if you refuse to actually keep track of your threads'
lifetimes properly :-P ".)

actually, even this would be quite a good improvement:

        If sig is 0, then no signal is sent, but error checking is still
-       performed.
+       performed. See NOTES for why this can't be used to detect
whether another thread is still running.


On Tue, Nov 9, 2021 at 11:16 PM Florian Weimer <fw@deneb.enyo.de> wrote:
>
> > any comment from either of the maintainers?
> >
> > i think what we currently have on this page is factually incorrect,
> > and this patch better matches reality.
>
> One more data point:
>
> As of glibc 2.34, pthread_kill in glibc cannot fail with ESRCH anymore
> (unless the kernel thread is terminated by a direct system call).  And
> the race that the signal could be sent to the wrong thread is gone.
>
> > On Tue, Nov 12, 2019 at 10:10 PM Florian Weimer <fw@deneb.enyo.de> wrote:
> >>
> >> * enh:
> >>
> >> > On Tue, Nov 12, 2019 at 9:51 PM Florian Weimer <fw@deneb.enyo.de> wrote:
> >> >>
> >> >> * enh:
> >> >>
> >> >> > no, because the C library has two choices when a thread exits:
> >> >> >
> >> >> > 1. unmap the thread.
> >> >> >
> >> >> > 2. keep the thread around for recycling.
> >> >> >
> >> >> > if you choose 1 (optimizing for space, like Android), your dereference
> >> >> > is illegal.
> >> >>
> >> >> This choice is only available for threads in a detached state.  For
> >> >> joinable threads, a conforming implementation cannot immediately
> >> >> deallocate all data structures on thread termination.  Among other
> >> >> things, it has to store the future return value of pthread_join
> >> >> somewhere.
> >> >
> >> > ah, you're trying to say "signal 0 is potentially usable for a
> >> > joinable thread that's waiting to be joined"? that's true, but i'm not
> >> > sure how that's relevant to this patch. that wouldn't be an "invalid
> >> > thread ID" until it's joined.
> >>
> >> Correct.  That's POSIX's argument why ESRCH wouldn't be valid to
> >> return here.  It's still a forceful loss of information, and
> >> particularly annoying since POSIX doesn't specify pthread_tryjoin.
> >>
> >> But I'm glad we've brought our discussion to a conclusion. 8-)
