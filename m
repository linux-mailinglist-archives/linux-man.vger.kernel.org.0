Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5181A24562E
	for <lists+linux-man@lfdr.de>; Sun, 16 Aug 2020 07:58:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729292AbgHPF6r (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 16 Aug 2020 01:58:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728715AbgHPF6q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 16 Aug 2020 01:58:46 -0400
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com [IPv6:2607:f8b0:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FE89C061786;
        Sat, 15 Aug 2020 22:58:46 -0700 (PDT)
Received: by mail-pf1-x444.google.com with SMTP id d22so6558834pfn.5;
        Sat, 15 Aug 2020 22:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=xfDUny3k7daRnnu+JmgS0reVwLpN25X4sfvcLKXBtAY=;
        b=ppr1dL0afMTfeBMU26Ry6HP9oZgglRKtNXSzJ7/C2unWRWOjOfrudYAY98QPyjnB+8
         KIkp0LJfbgdfUOFPsq749IFMhQXRyB23vjAH6e8290xQ9AJMYN5AGhvbVUmAafOQ3OGu
         FVINmTGVIZQRG5XMcuqQdSYeZPcU237+rA6dOJ9V0TWX2J1keaOgRunsNmsJdzKnSNPm
         UthjvBaJEsXtk8v82DDswyO7J1uNftajGvJscJ4sxfAOjiPX4on2zqVlE4oEcUfm/KVS
         oMtwYYila44C6wvcsml0MiBEkBwUqMpzv6Scx7GTF/LrU8XRcvpyS3YwBPWthvCPq9OC
         mHsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=xfDUny3k7daRnnu+JmgS0reVwLpN25X4sfvcLKXBtAY=;
        b=s7IWZnWiQYyEcBUwZhEj1YiP+3qMt5cQkSXeyiOrX/CbRH09D5YFy/2cKwwFp46dVw
         DUk33IonvrhPz0Ne9pe2I2tEbIkQrBacdBnjj4sD2BG9wmD2cCQnYnNO+PzFRVdA10lc
         zX30I3kHIfDJg1tes41/GsGV3Y5uaYErpfc2WgPVymYu98Zd988A1ZEmZdWDjuNRokuV
         VPlDwuYH9b0LiRroIPzYuAx4XZV/x3cxLJQbGu3T0hoBrLPR1yjYs56jEvsfJodNmgf4
         w0Y7mrFXlFE2wT8n24Tq9CiEApwvSAbMtnRM0BE+M1Rbpm/oLG7ZGoTmVxCYlyTyHDm3
         On4w==
X-Gm-Message-State: AOAM53018dygzrmlt0S29H4e5sxmVVFfntBqBKwMr/PN+wFiHS/vGD/I
        S7IsHvDZl9HjQXlT+x5/X+b5b8HDlQM=
X-Google-Smtp-Source: ABdhPJxgN2Swg5sZvzFSSyw6l9VUX6BEV7hl0Vqn3E5mwWLJ7Jk5lpNsmVi6MdmVjWmcddXQ4R662g==
X-Received: by 2002:a63:cd56:: with SMTP id a22mr6204061pgj.259.1597557525701;
        Sat, 15 Aug 2020 22:58:45 -0700 (PDT)
Received: from google.com ([2620:15c:211:1:7220:84ff:fe09:5e58])
        by smtp.gmail.com with ESMTPSA id 74sm13319854pfv.191.2020.08.15.22.58.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Aug 2020 22:58:44 -0700 (PDT)
Date:   Sat, 15 Aug 2020 22:58:42 -0700
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
Message-ID: <20200816055842.GC2936603@google.com>
References: <20200814172939.55d6d80b6e21e4241f1ee1f3@linux-foundation.org>
 <20200815003102.dzZiwVm-K%akpm@linux-foundation.org>
 <CAHk-=wgZ6ZgRWRm0rGgLkYR-_XwKeuWxwbkBWxmCOzt7dGxWpg@mail.gmail.com>
 <20200815045900.GA2936603@google.com>
 <CAHk-=whZCVE_dtkjuCeJnDQxVAvUKASyP9xS16YqQNOm_yz3Sg@mail.gmail.com>
 <20200815183456.GB2936603@google.com>
 <CAHk-=wja2pDFa1cqwOW8R5bMVNmNMUv+AAdYuyn7ZOniq+eu6w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHk-=wja2pDFa1cqwOW8R5bMVNmNMUv+AAdYuyn7ZOniq+eu6w@mail.gmail.com>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, Aug 15, 2020 at 06:43:08PM -0700, Linus Torvalds wrote:
> On Sat, Aug 15, 2020 at 11:35 AM Minchan Kim <minchan@kernel.org> wrote:
> >
> > > Now, it might be worth it to have some kind of "this mm is dying,
> > > don't bother" thing. We _kind_ of have things like that already in the
> > > form of the MMF_OOM_VICTIM flag (and TIF_MEMDIE is the per-thread
> > > image of it).
> >
> > Maybe, we could use mm_struct's mm_users to check caller is exclusive
> > owner so that rest of all are existing.
> 
> Hmm. Checking mm_users sounds sane. But I think the /proc reference by
> any get_task_mm() site will also count as a mm_user, so it's not quite
> as useful as it could be.
> 
> In an optimal world, all the temporary "grab a reference to the mm"
> would use mmgrab/mmdrop() that increments the mm_count, and "mm_users"
> would mean the number of actual threads that are actively using it.
> 
> But that's not how it ends up working. mmgrab/mmdrop only keeps the
> "struct mm_struct" around - it doesn't keep the vma's or the page
> tables. So all the /proc users really do want to increase mm_users.
> 
> I don't see any obvious thing to check for that would be about "this
> mm no longer makes sense to madvise on, because nobody cares any
> more".

Yeah, there are bunch of places where makes false negaive potentially
as well as proc but I expected it would be rather rare and even though
it happens, finally, we can catch it up if they are temporally holding
the refcount but our operation runs long.
At worst case, it could make the operation void so we just wastes but
when I consider the logic as optimization, it wouldn't be harmful to
start with such *simple check* rather than adding more complication.

If you still don't like the idea, at this point, I will drop the single
patch as I mentioned because I don't think I have strong justification
to add more complication here.

> 
> > Please tell me if you found something weird in this patchset series
> > so that in next cycle we could go smooth.
> 
> No, the only other thing that worried me was just possible locking,
> but it looked like we already have all the "access page tables from
> other processes" situations and it didn't seem to introduce anything
> new in that respect.

Thanks for the review, Linus.
