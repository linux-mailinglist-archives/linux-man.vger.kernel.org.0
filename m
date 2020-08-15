Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E4B19245354
	for <lists+linux-man@lfdr.de>; Sun, 16 Aug 2020 00:00:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729188AbgHOWA1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Aug 2020 18:00:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728838AbgHOVvf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Aug 2020 17:51:35 -0400
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com [IPv6:2a00:1450:4864:20::242])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D11EFC09B041
        for <linux-man@vger.kernel.org>; Sat, 15 Aug 2020 08:05:17 -0700 (PDT)
Received: by mail-lj1-x242.google.com with SMTP id g6so12850029ljn.11
        for <linux-man@vger.kernel.org>; Sat, 15 Aug 2020 08:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3XlBZ6/uS++fkskLWFm8hL4f2NZ/FD4ZhqhfsdhmxAA=;
        b=RYCK8ewEScLRlrt+evxmgkhxFJOtwVQUtJeT7zY0r8OPXIcAaP0URnYs26SgWiukwg
         3xvMTroCRD16NUz4HcgP1nfS2KTxzngiSJc/ZSLB5Hh1+ysGUSSdS/YqxYHpZ8w8iNMZ
         bJrZwR1AH2gre3kG7OfuOl4xzQcyqsVm19Gr0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3XlBZ6/uS++fkskLWFm8hL4f2NZ/FD4ZhqhfsdhmxAA=;
        b=qvWnIZopPzI4jJfH0iFpGXMCqAf2nsSlSru7ZiCGf206sr1TEhlJp84kAUwXVszIjq
         nZ8OEm+6GmNklspGHVERowPhyONplNrARV+R44WdIsWnm9e2LrFgeU3lnKfn8snPpniL
         RCRfFB8u+QpeBeoARfb+327vdcFUAdPic6C+LTTb8GWJfdzCqUDsqmGgKUCjJ3rl6aL8
         VvcNwLDikIlMu+wi7Re/cJN7mbh6V+sx+qoAKiPuQafzPP61O2uQ2VPog2UEzYwR9X95
         0UBW2i/5Q/10gwS5PLzfx/KPms+7K9Ij9IOsXNegF2BAHCD+Bhwkxnmiud7n4oxZp0JA
         RrPg==
X-Gm-Message-State: AOAM533fTl8wnbLnSJtN8qX79+JHAk8uqbkK3oC3Ctj/ZbIJxpnNWfei
        6Ni3DTM87KI6d/VOpHFPl9xhxNoziPjoEw==
X-Google-Smtp-Source: ABdhPJwFufxXA3OedbUBmkZj8qPG4a6qXXmFnc63rSd4T7nSVGhjuQsu9DuoDddqrtMMHjEK284XwQ==
X-Received: by 2002:a2e:9a15:: with SMTP id o21mr3602354lji.419.1597503916033;
        Sat, 15 Aug 2020 08:05:16 -0700 (PDT)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com. [209.85.167.49])
        by smtp.gmail.com with ESMTPSA id y16sm2459448ljg.21.2020.08.15.08.05.15
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Aug 2020 08:05:15 -0700 (PDT)
Received: by mail-lf1-f49.google.com with SMTP id c15so6253681lfi.3
        for <linux-man@vger.kernel.org>; Sat, 15 Aug 2020 08:05:15 -0700 (PDT)
X-Received: by 2002:a05:6512:241:: with SMTP id b1mr3563049lfo.125.1597503451806;
 Sat, 15 Aug 2020 07:57:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200814172939.55d6d80b6e21e4241f1ee1f3@linux-foundation.org>
 <20200815003102.dzZiwVm-K%akpm@linux-foundation.org> <CAHk-=wgZ6ZgRWRm0rGgLkYR-_XwKeuWxwbkBWxmCOzt7dGxWpg@mail.gmail.com>
 <20200815045900.GA2936603@google.com>
In-Reply-To: <20200815045900.GA2936603@google.com>
From:   Linus Torvalds <torvalds@linux-foundation.org>
Date:   Sat, 15 Aug 2020 07:57:15 -0700
X-Gmail-Original-Message-ID: <CAHk-=whZCVE_dtkjuCeJnDQxVAvUKASyP9xS16YqQNOm_yz3Sg@mail.gmail.com>
Message-ID: <CAHk-=whZCVE_dtkjuCeJnDQxVAvUKASyP9xS16YqQNOm_yz3Sg@mail.gmail.com>
Subject: Re: [patch 18/39] mm/madvise: check fatal signal pending of target process
To:     Minchan Kim <minchan@kernel.org>
Cc:     Andrew Morton <akpm@linux-foundation.org>,
        Alexander Duyck <alexander.h.duyck@linux.intel.com>,
        Jens Axboe <axboe@kernel.dk>,
        Brian Geffon <bgeffon@google.com>,
        Christian Brauner <christian.brauner@ubuntu.com>,
        Christian Brauner <christian@brauner.io>,
        Daniel Colascione <dancol@google.com>,
        Johannes Weiner <hannes@cmpxchg.org>,
        Jann Horn <jannh@google.com>, John Dias <joaodias@google.com>,
        Joel Fernandes <joel@joelfernandes.org>,
        Kirill Tkhai <ktkhai@virtuozzo.com>,
        linux-man <linux-man@vger.kernel.org>,
        Linux-MM <linux-mm@kvack.org>, Michal Hocko <mhocko@suse.com>,
        mm-commits@vger.kernel.org,
        Oleksandr Natalenko <oleksandr@redhat.com>,
        David Rientjes <rientjes@google.com>,
        Shakeel Butt <shakeelb@google.com>, sj38.park@gmail.com,
        sjpark@amazon.de, Sonny Rao <sonnyrao@google.com>,
        Sandeep Patil <sspatil@google.com>,
        Suren Baghdasaryan <surenb@google.com>,
        Tim Murray <timmurray@google.com>,
        Vlastimil Babka <vbabka@suse.cz>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Aug 14, 2020 at 9:59 PM Minchan Kim <minchan@kernel.org> wrote:
>
> Currently, madvise(MADV_COLD|PAGEOUT) already have done it. I just wanted
> to sync with it with process_madvise. Ting was process_madvise couldn't
> get target task while madvise could get it easily.

The thing is, for "current" it makes sense.

It makes sense because "current" is also the one doing the action, so
when current is dying, stopping the action is sane too.

But when you target somebody else, the signal handling simply doesn't
make any sense at all.

It doesn't make sense because the error code doesn't make sense (EINTR
really is about the _actor_ getting interrupted, not the target), but
it also doesn't make sense simply because there is no 1:1 relationship
between the target mm and the target thread.

The pid that was the target may be dying, but that does *not* mean
that the mm itself is dying. So stopping the operation arbitrarily
somewhere in the middle is a fundamentally insane operation.  You've
done something partial to a mm that may well still be active.

So I think it's simply conceptually wrong to look at some "target
thread signal state" in ways that it isn't to look at "current signal
state".

Now, it might be worth it to have some kind of "this mm is dying,
don't bother" thing. We _kind_ of have things like that already in the
form of the MMF_OOM_VICTIM flag (and TIF_MEMDIE is the per-thread
image of it).

It might be reasonable to have a MMF_DYING flag, but I'm not even sure
how to implement it, exactly because of that "this thread group may be
dying, but the MM might still be attached to other tasks" issue.

For example, if you do "vfork()" and the child is killed, the mm is
still active and attached to the vfork() parent.

Similarly, on a trivial level, a particular thread might be killed
without the rest of the threads being necessarily killed.

Again, for regular "madvise()" it makes sense to look at whether the
_current_ thread is being killed - because that fundamentally
interrupts the operator. But for somebody else, operating on the mm of
a thread, I really think it's wrong to look at the target thread state
and leave the MM operation in some half-way state.

                         Linus
