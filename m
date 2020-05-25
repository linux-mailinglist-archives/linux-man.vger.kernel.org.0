Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B91E61E09B9
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2020 11:08:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389095AbgEYJI1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 May 2020 05:08:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388693AbgEYJI1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 May 2020 05:08:27 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CD1EC061A0E
        for <linux-man@vger.kernel.org>; Mon, 25 May 2020 02:08:27 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id x1so19742236ejd.8
        for <linux-man@vger.kernel.org>; Mon, 25 May 2020 02:08:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=s4GG6lfn5jM4UOWfcu5BaFaxWFNXJoZ2EEIKQBrzsVU=;
        b=oaQaswWGg9md0yOALOybsQdL0fBZiBxzCNeEm42SxwANIV5nGMojbJM/n7YuJgHzev
         1n8FzxPEOSvn8SJZVxbzjAbCQnoRcU7g3rRPaGfRaVMDbmM+uAVk8GciIYBTyeqeXN8J
         bWmTCMPbuDpTah3uameIwVzGL14tcwJe7A5m/SzA5Tnp8Ir/YsSYJ5frY/RH5ymHDfhL
         7oHta+YjBApnNMacjymy7tgTPVK5EYiHs3jDPqUE+af9GLbyqVnmDmvxVw/v1ug4hOmc
         fU1OsKkW6Sg/hHt/9JsIG3x0LGfLPmQToYgilR8tfItYTQ5OuEyTMmWBrJusKJZEitmB
         XO+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=s4GG6lfn5jM4UOWfcu5BaFaxWFNXJoZ2EEIKQBrzsVU=;
        b=s3S11gVIRFATZVddixlDPIi+tdEkxtVe+v8b6ODM8769C5yoP7M0Nw2afvOaTEOjAj
         8DdwhNh5blAscW5ylI/hoO5LSzk42uPiNMOOClsumegV8td6AQMLrNFlE5IcgGLhpuwX
         JogN/PA2A1UuduM5+9xHibiI5Ds69Zthg0fJcD0gQv5u//MrnaynK8D52sv/jo7yKqTP
         pks3VjgDt5zlhrw5rD4eRbC2ncgjbtLpXlj8yMrkQsK1CT/w20oag4+RaVQZnSYp0xUs
         wAI33BGVEC5wFk/0eeYOfZiNENa+GLapWf0oCi/LauHHLjSXqDpieYiMxcveN1tkZyNc
         ocNQ==
X-Gm-Message-State: AOAM530ZEpZVIY6NWOmHiD4WkK0GK06OHo1DyCY2LO5Vw6onfTLKU15k
        2woGzFPKGZMbJ1ENVlrizULGLLxM6uGm9oGxv10hkzaDVZs=
X-Google-Smtp-Source: ABdhPJxKxRtIhRDW2pCe7hsOmZrffG9/QMW/IEgtvLCxJSZBkxix/gfLY+2aLHYpwDYlOcfY73SvOPrSL5E960oOWbc=
X-Received: by 2002:a17:906:4049:: with SMTP id y9mr5299318ejj.357.1590397705705;
 Mon, 25 May 2020 02:08:25 -0700 (PDT)
MIME-Version: 1.0
References: <56c4a711-7f41-661a-9ef3-d9c1caef8aea@redhat.com>
In-Reply-To: <56c4a711-7f41-661a-9ef3-d9c1caef8aea@redhat.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 25 May 2020 11:08:14 +0200
Message-ID: <CAKgNAkguMSpjVbPJtNj=5vrwpE_819XhpgZV2WyBK5UMXgqwLg@mail.gmail.com>
Subject: Re: How would we make linux man pages authoritative?
To:     "Carlos O'Donell" <carlos@redhat.com>
Cc:     libc-alpha <libc-alpha@sourceware.org>,
        Florian Weimer <fweimer@redhat.com>,
        Martin Sebor <msebor@redhat.com>,
        Rich Felker <dalias@libc.org>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC += linux-man@ , obviously]

Hello Carlos, et al.

On Fri, 22 May 2020 at 17:34, Carlos O'Donell <carlos@redhat.com> wrote:
>
> Michael,
>
> Could we create a process by which we might incrementally mark linux
> man pages as authoritative for a given C library implementation and
> at the same time encourage more C library community involvement in the
> development and maintenance of the linux man pages?
>
> I'm including Rich Felker the main musl developer, because I think
> this topic applies to musl, and the linux man pages already contain
> some markup for other C libraries.
>
> Let me paint a picture of the future (what else are Fridays for):
>
> * The project manual is a task-oriented document that describes how
>   to use APIs together to achieve certain purposes. We update the
>   manual based on new uses and complex task-oriented requirements
>   e.g. how do you effectively use clone, or vfork, or unshare with
>   all the right APIs to do something useful like starting your own
>   container by hand.
>
> * The linux man pages are the authoritative reference for all the
>   APIs that are derived from ISO C, POSIX, BSD, and other systems.
>   I say "derived" because we do not follow them strictly, but instead
>   derive from them and deviate where appropriate given the underlying
>   kernel.
>
> * A process exists to mark a manual page as authoritative for the C
>   library API it implements e.g. Authoritative for glibc, or musl,
>   or uclibc. Such markup means a developer from that project should
>   review patches to that page in a timely fashion to agree that we
>   haven't crossed any implementation boundary e.g. documented something
>   that is not guaranteed. Such review needs a timeout as part of the
>   agreement.
>
> * The C libraries have as a goal to update the API documentation in
>   the linux man page as the authoritative source of the API reference
>   and make it part of their submission process. Yes, this involves
>   committing across two projects, and some good coordination.
>
> In such a future we have the following assurances:
>
> * More developers familiar with C library implementations working on
>   the linux man pages project, and providing continuity of care for
>   the project.
>
> * The linux man pages project accepts certain authors as needing
>   to review, in a timely fashion, certain changes to certain marked
>   man pages.
>
> * The downstream C library implementations are all incentivized
>   to contribute to the existing linux man pages project and support
>   that effort, thus growing the quality and coverage of the man pages.
>
> * We reduce duplication of efforts in documenting the APIs as they
>   are derived, with differences, from ISO C, POSIX, BSD etc, for Linux.
>
> The glibc project retains a manual as a task-oriented guide which
> can be read by developers to learn how to do certain tasks, but does
> not contain API references (those are delegated to the linux man pages
> project). We incrementally remove the API references in the glibc manual,
> and convert them one-by-one into task-oriented documentation about how to
> use that API well.
>
> I'm trying to think of a beautiful future. If you think this future
> is ugly, please tell me so, and suggest something else :-)

Well I'm glad you had an enjoyable Friday, and I hope you had a good
weekend. And, as always, I appreciate your enthusiastic vision.

Your future is not ugly, and I suppose all that you propose is
technically possible. However, aside from the political discussions to
resolve within the glibc project (and I am sympathetic to Joseph's
perspective), this beautiful future rests on some shaky foundations.

Here's my summary of some things that I think we agree on:

* In many (but not all) areas, Linux man-pages does a better job of
documenting glibc APIs than the glibc manual.

* The glibc manual suffered from a long period of neglect. Things have
gotten a little better in recent times, but (as Florian notes) there
is still much to do. And there's not enough people working on
addressing that, in part for reasons you described in another thread,
and to which I added my perspectives.

* Activity on Linux man-pages has been much higher. [1]

These are the shaky foundations that I see:

1. What would change so that "the downstream C library implementations
are all incentivized to contribute to the existing linux man pages"?
You yourself note the reluctance of many developers to be involved in
the documentation task. Reading your description above, I don't really
see why the contribution activity would change.

2. Much of the difference between the activity levels on the glibc
manual and Linux man-pages is down to a single factor: me [2]. As I've
written various replies into the these discussions, I realize just how
much I'm a bit of a unicorn: I'm a programmer who also really likes
documenting things. And the question then is: what would happen to
your beautiful future if I was not present? I have no immediate plans
to step away, but nor will I be working on man-pages forever. And in
any case, my activity level can be wildly variable depending on my
other commitments and my available energy. Furthermore, while I think
I've been moderately successful in raising the visibility of Linux
man-pages since I took over as maintainer, there are areas where I've
been notably unsuccessful: I've not been so successful at enlisting
reviewers, so that too often I remain the reviewer of last resort; and
after 15 years, there is so far no obvious contributor who might (want
to) take over as maintainer one day.

Really, both points 1 and 2 are about incentivization, and, lacking a
population of unicorns, I think the fundamental problems aren't going
to go away until companies/organizations pay people to work on the
documentation. And I'm not sanguine about that prospect.

With best regards.,

Michael

[1] But a caveat also. It has been highly variable over the 15+ years
that I have been maintainer, ranging from nearly 3000 commits in a
calendar year (2014) to as low as 300 (2011), dependent largely on my
energy and available time. Further caveat: the majority of the commits
in any given release are by me; I think in all of the releases I made
(~180 since 2004), only once was I ever not the majority patch
contributor, and usually it has not even been close.

[2] I don't want to overstate my contribution however. In 2004, I did
inherit a solid foundation from my predecessor, Andries Brouwer. And I
think there are also factors that play into the difference, including
the CLA and also the visibility of the glibc manual and the usability
of "info" as an interface.

--
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
