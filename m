Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7CA812452E8
	for <lists+linux-man@lfdr.de>; Sat, 15 Aug 2020 23:56:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728071AbgHOV4V (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Aug 2020 17:56:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729017AbgHOVwO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Aug 2020 17:52:14 -0400
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com [IPv6:2607:f8b0:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79517C004590;
        Sat, 15 Aug 2020 11:35:01 -0700 (PDT)
Received: by mail-pl1-x644.google.com with SMTP id g15so1669207plj.6;
        Sat, 15 Aug 2020 11:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=hPqHDO0S+XL6QqHpVaCwL+AGobW4RXl16iXYcSuPMZA=;
        b=lBsEOG3/f7tuGUD7xW/y+tmQ0/ZBbY0YFIQvx5AJA5LiyQPpKwn18wXBDOPdoCf4Xp
         XnWDEb9eJgEvTtLnMVx4st1PEC6vRws3PS5r3lXROtGPiavrFLRpwqgNJn56H7IfENdT
         S5AKMkiCEc52rz01kZs06hT51RAgXI/dO6zbjtLeN3Or0ly/H9+IaMhr7Anu+dTRE9ZD
         0nGYatNerJsj/zUUB/0Y0f8ZHDaVf5ZWWU1xZEkcJ28gd2W2csQGlh51oKcwc5Y9l3Fe
         bJ8vkhykMMUxoPsoptBzeSzXUa/jDn7Urct9OzRZiJJFrVwIw5yR4xpaXz2j/6NOT3Dj
         zm/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=hPqHDO0S+XL6QqHpVaCwL+AGobW4RXl16iXYcSuPMZA=;
        b=UF7wTOfAyS0fPduJ2LSb1EDrYbT7ZvNrZ0hlofB99qjWq4rClzGpAC0vIQxYrBX0yx
         fMmw8RBv2g5LWrIUzTgDeG6yY9xokw1FHhjDvZfrnI1vxH7IxCumUZwaihDwvYa3XAvM
         CNI6z0qj/mzu49OIQ/OgQhkaL+BJtqvg0CmzuG2+KeQSYaCwi3U6wjpS8MJC5lUDGxEP
         TZZR92e9i0+PEsQyF/cKkS4nBqZ6/uRmGH/mEgh4LT8Od0up3ExojY1VZHjIsB9ylSw3
         UllKNB6h978EtXy1ooeBSJt5uTyPcqSKSNnbvbtrz1iuNym2D/1C3TW+jQuoQElXViTh
         S+5g==
X-Gm-Message-State: AOAM530gQEDbI2hcxmQ9ttjuXXMoo2ggi7C74t/HC9Aj5SGZWdJPCBje
        dbuW+eeBRNw32VBJ+TBRiOcG2P15sx0=
X-Google-Smtp-Source: ABdhPJyTvx50xSuwYoesmqNHShDKrniwc8fdH/zMI9I2zMQ5dvQi+rLeIfIPD7TGqElWHUz9PBsOuA==
X-Received: by 2002:a17:902:ff16:: with SMTP id f22mr5993896plj.269.1597516500701;
        Sat, 15 Aug 2020 11:35:00 -0700 (PDT)
Received: from google.com ([2620:15c:211:1:7220:84ff:fe09:5e58])
        by smtp.gmail.com with ESMTPSA id t33sm11723192pga.72.2020.08.15.11.34.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Aug 2020 11:34:58 -0700 (PDT)
Date:   Sat, 15 Aug 2020 11:34:56 -0700
From:   Minchan Kim <minchan@kernel.org>
To:     Linus Torvalds <torvalds@linux-foundation.org>
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
Subject: Re: [patch 18/39] mm/madvise: check fatal signal pending of target
 process
Message-ID: <20200815183456.GB2936603@google.com>
References: <20200814172939.55d6d80b6e21e4241f1ee1f3@linux-foundation.org>
 <20200815003102.dzZiwVm-K%akpm@linux-foundation.org>
 <CAHk-=wgZ6ZgRWRm0rGgLkYR-_XwKeuWxwbkBWxmCOzt7dGxWpg@mail.gmail.com>
 <20200815045900.GA2936603@google.com>
 <CAHk-=whZCVE_dtkjuCeJnDQxVAvUKASyP9xS16YqQNOm_yz3Sg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHk-=whZCVE_dtkjuCeJnDQxVAvUKASyP9xS16YqQNOm_yz3Sg@mail.gmail.com>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, Aug 15, 2020 at 07:57:15AM -0700, Linus Torvalds wrote:
> On Fri, Aug 14, 2020 at 9:59 PM Minchan Kim <minchan@kernel.org> wrote:
> >
> > Currently, madvise(MADV_COLD|PAGEOUT) already have done it. I just wanted
> > to sync with it with process_madvise. Ting was process_madvise couldn't
> > get target task while madvise could get it easily.
> 
> The thing is, for "current" it makes sense.
> 
> It makes sense because "current" is also the one doing the action, so
> when current is dying, stopping the action is sane too.

True.

> 
> But when you target somebody else, the signal handling simply doesn't
> make any sense at all.
> 
> It doesn't make sense because the error code doesn't make sense (EINTR
> really is about the _actor_ getting interrupted, not the target), but
> it also doesn't make sense simply because there is no 1:1 relationship
> between the target mm and the target thread.
> 
> The pid that was the target may be dying, but that does *not* mean
> that the mm itself is dying. So stopping the operation arbitrarily
> somewhere in the middle is a fundamentally insane operation.  You've
> done something partial to a mm that may well still be active.
> 
> So I think it's simply conceptually wrong to look at some "target
> thread signal state" in ways that it isn't to look at "current signal
> state".

Agreed.

> 
> Now, it might be worth it to have some kind of "this mm is dying,
> don't bother" thing. We _kind_ of have things like that already in the
> form of the MMF_OOM_VICTIM flag (and TIF_MEMDIE is the per-thread
> image of it).
> 
> It might be reasonable to have a MMF_DYING flag, but I'm not even sure
> how to implement it, exactly because of that "this thread group may be
> dying, but the MM might still be attached to other tasks" issue.
> 
> For example, if you do "vfork()" and the child is killed, the mm is
> still active and attached to the vfork() parent.

Maybe, we could use mm_struct's mm_users to check caller is exclusive
owner so that rest of all are existing.

> 
> Similarly, on a trivial level, a particular thread might be killed
> without the rest of the threads being necessarily killed.
> 
> Again, for regular "madvise()" it makes sense to look at whether the
> _current_ thread is being killed - because that fundamentally
> interrupts the operator. But for somebody else, operating on the mm of
> a thread, I really think it's wrong to look at the target thread state
> and leave the MM operation in some half-way state.

I agreed. I will drop this single patch with revising previous patch
not to make passing task_struct since the idea.
We could revist if someting real trouble happens.

Please tell me if you found something weird in this patchset series
so that in next cycle we could go smooth.

Thanks for the review, Linus.
