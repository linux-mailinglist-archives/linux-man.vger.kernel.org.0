Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 50176245532
	for <lists+linux-man@lfdr.de>; Sun, 16 Aug 2020 03:43:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728706AbgHPBna (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Aug 2020 21:43:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728111AbgHPBn3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Aug 2020 21:43:29 -0400
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com [IPv6:2a00:1450:4864:20::242])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1506C061786
        for <linux-man@vger.kernel.org>; Sat, 15 Aug 2020 18:43:28 -0700 (PDT)
Received: by mail-lj1-x242.google.com with SMTP id h19so13744725ljg.13
        for <linux-man@vger.kernel.org>; Sat, 15 Aug 2020 18:43:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Bq4OvIdUwJpvYSOGzcS+78yeINRY4Kp3Rheq3HGXWqA=;
        b=RGJPE4Vt9YCW6xMiFm6gOV/bpmeJj1OTOb3RWIIa/uoStX7cdU2zvwR+F8W1W2Mapj
         PGU0b/7unQXLaJIOsdd7078nTUQmAoAP3BsQQEO7rza76S3TkrPaWumXMHldka7FYVOV
         +PjpXtJcaiT/r/4sadt4O/2YE2jZR00WJ0dys=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Bq4OvIdUwJpvYSOGzcS+78yeINRY4Kp3Rheq3HGXWqA=;
        b=tKPgFmTh14XCFQ2o1DuXaqCD1+ONpuLdNGfk6G32kLCVAqPah4p8JL6v3f5vPQAKeS
         MxqdD0AEKao62Hnwla3f46cGNv6JpspZoK3mLtwDojWRGwWZEUCZhDPMQsgjj3x+uMnJ
         Fm9u6zSiZzf5ZrXI1BAZxBHYnDoav3hCwvlrRXSKo/CElljrNMqsQp+6dWzpuy85GMnv
         AQG5WMMDBFN3mWUgOQM+lS4E/DBSp6cSwxZ4d/6q4Xk30i0bladcpckSRd1ZQIcQ2FWw
         SbgLNFAbLRs1QuvJ7wXjxe4UUTzjHysje1zg9Ng+nXhIeDI14Xehn1qLQBYcXYVE+Mqb
         kDQg==
X-Gm-Message-State: AOAM530cU5BuK5ZmNTSxt9jUfpHTyc7EazZYuQOtzjhkT+9gtZG1XUXm
        z/myN6Y6eRE3oRTkLfd2kLNt0ZJG2iVv/A==
X-Google-Smtp-Source: ABdhPJzFM/Qp8G56RpBI6dTNBaTdv20uNv/CrRbd22dVqvvvh7BzgevdMM+ysxE7yEtRAf3ROUQbmA==
X-Received: by 2002:a2e:5c5:: with SMTP id 188mr4193654ljf.466.1597542206724;
        Sat, 15 Aug 2020 18:43:26 -0700 (PDT)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com. [209.85.167.47])
        by smtp.gmail.com with ESMTPSA id t20sm2956503ljd.12.2020.08.15.18.43.24
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Aug 2020 18:43:25 -0700 (PDT)
Received: by mail-lf1-f47.google.com with SMTP id b30so6625290lfj.12
        for <linux-man@vger.kernel.org>; Sat, 15 Aug 2020 18:43:24 -0700 (PDT)
X-Received: by 2002:a19:408d:: with SMTP id n135mr4357315lfa.192.1597542204274;
 Sat, 15 Aug 2020 18:43:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200814172939.55d6d80b6e21e4241f1ee1f3@linux-foundation.org>
 <20200815003102.dzZiwVm-K%akpm@linux-foundation.org> <CAHk-=wgZ6ZgRWRm0rGgLkYR-_XwKeuWxwbkBWxmCOzt7dGxWpg@mail.gmail.com>
 <20200815045900.GA2936603@google.com> <CAHk-=whZCVE_dtkjuCeJnDQxVAvUKASyP9xS16YqQNOm_yz3Sg@mail.gmail.com>
 <20200815183456.GB2936603@google.com>
In-Reply-To: <20200815183456.GB2936603@google.com>
From:   Linus Torvalds <torvalds@linux-foundation.org>
Date:   Sat, 15 Aug 2020 18:43:08 -0700
X-Gmail-Original-Message-ID: <CAHk-=wja2pDFa1cqwOW8R5bMVNmNMUv+AAdYuyn7ZOniq+eu6w@mail.gmail.com>
Message-ID: <CAHk-=wja2pDFa1cqwOW8R5bMVNmNMUv+AAdYuyn7ZOniq+eu6w@mail.gmail.com>
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

On Sat, Aug 15, 2020 at 11:35 AM Minchan Kim <minchan@kernel.org> wrote:
>
> > Now, it might be worth it to have some kind of "this mm is dying,
> > don't bother" thing. We _kind_ of have things like that already in the
> > form of the MMF_OOM_VICTIM flag (and TIF_MEMDIE is the per-thread
> > image of it).
>
> Maybe, we could use mm_struct's mm_users to check caller is exclusive
> owner so that rest of all are existing.

Hmm. Checking mm_users sounds sane. But I think the /proc reference by
any get_task_mm() site will also count as a mm_user, so it's not quite
as useful as it could be.

In an optimal world, all the temporary "grab a reference to the mm"
would use mmgrab/mmdrop() that increments the mm_count, and "mm_users"
would mean the number of actual threads that are actively using it.

But that's not how it ends up working. mmgrab/mmdrop only keeps the
"struct mm_struct" around - it doesn't keep the vma's or the page
tables. So all the /proc users really do want to increase mm_users.

I don't see any obvious thing to check for that would be about "this
mm no longer makes sense to madvise on, because nobody cares any
more".

> Please tell me if you found something weird in this patchset series
> so that in next cycle we could go smooth.

No, the only other thing that worried me was just possible locking,
but it looked like we already have all the "access page tables from
other processes" situations and it didn't seem to introduce anything
new in that respect.

                     Linus
