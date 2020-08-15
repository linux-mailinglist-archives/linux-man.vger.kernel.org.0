Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DCB6B2453B4
	for <lists+linux-man@lfdr.de>; Sun, 16 Aug 2020 00:04:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729012AbgHOWE0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Aug 2020 18:04:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728557AbgHOVvC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Aug 2020 17:51:02 -0400
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com [IPv6:2607:f8b0:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97F39C0612FD;
        Fri, 14 Aug 2020 21:59:05 -0700 (PDT)
Received: by mail-pl1-x641.google.com with SMTP id f10so5073399plj.8;
        Fri, 14 Aug 2020 21:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=6AOrBOC1WvyrFxHGLfDmzX0lZDL/sVmOmui5rhLJhgI=;
        b=Ki7bYhLA3EVQxpyn7XxeYbZCnwxb3zyhmQ+/SgoEQV60184OODJ6izkUTagCqCDQiH
         87BS+SBKQu6Y3UfIV0TRqsgwFyxWC9I2tR3xhl+ye+OE7+ErkE8kVN7uzT2QDB5xJMMG
         +briLzuyNjr78Zm0uASYkr3EZzK+14teAAMD4e6+uiwcIH48cnyfUPyWBkfoH7SQF9He
         zMUr1f+MjjKC65ui9yDs7Zhl2+0AiNcbZfVCnDpI14M8tiS1S4D/tr6x3Jn+8BwOSnlG
         DMSzga2oRzET3JDUJCrLr0ZZ2hK69jXW+fAgHeSIw615tJ3688un4yjSC8xrGR9XTfdS
         01gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=6AOrBOC1WvyrFxHGLfDmzX0lZDL/sVmOmui5rhLJhgI=;
        b=kiSu8Pc/t8POiKm3sTXihF5SKEMh+SD3hodm2HIU8ncTCjWv+ztmyzV2og8qpsut+c
         c2Er1Mpm1pEmbXSLoVEfHB9KVV2nvd9ISGYXWSmDrjOgt3eCHcOXhqnOZPTB9ii0G4ls
         xL0jJqkLuA2+3tKpbSjdYN9wBc7ZcHKOEDeeIJimX6rZXFnNJgu5y/8UrRvFFIOoiCTT
         MsnNVwf4vgg/63r8h2bPWxxifiyMvlnDYIIiNrfnxIfBdCdjeuvATh2M9HnLZRPntuTF
         XwMvKT1HIGGyRaG1Gb1+r4M7uESzKNpfqO8dcAPtiQM0TMmKNXM0/YLdzs7KV04w0bht
         2D2g==
X-Gm-Message-State: AOAM5317cgw2UpG78/eTPsjVfRwD3C/l5Xsh5KBWAP2TrhHigV+HXBWC
        GbDnXpZYJEn/85A6BmH7TWc=
X-Google-Smtp-Source: ABdhPJxlftWBCf4a2RWrSk4z2YRnmCdxTLoZTWMTLq8PrDtMi25qbydctRYAz1JTVkR8uhRvCmGa3g==
X-Received: by 2002:a17:90b:4b81:: with SMTP id lr1mr1257333pjb.71.1597467544645;
        Fri, 14 Aug 2020 21:59:04 -0700 (PDT)
Received: from google.com ([2620:15c:211:1:7220:84ff:fe09:5e58])
        by smtp.gmail.com with ESMTPSA id 2sm9865080pjg.32.2020.08.14.21.59.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Aug 2020 21:59:03 -0700 (PDT)
Date:   Fri, 14 Aug 2020 21:59:00 -0700
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
Message-ID: <20200815045900.GA2936603@google.com>
References: <20200814172939.55d6d80b6e21e4241f1ee1f3@linux-foundation.org>
 <20200815003102.dzZiwVm-K%akpm@linux-foundation.org>
 <CAHk-=wgZ6ZgRWRm0rGgLkYR-_XwKeuWxwbkBWxmCOzt7dGxWpg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHk-=wgZ6ZgRWRm0rGgLkYR-_XwKeuWxwbkBWxmCOzt7dGxWpg@mail.gmail.com>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Aug 14, 2020 at 07:53:09PM -0700, Linus Torvalds wrote:
> On Fri, Aug 14, 2020 at 5:31 PM Andrew Morton <akpm@linux-foundation.org> wrote:
> >
> > From: Minchan Kim <minchan@kernel.org>
> > Subject: mm/madvise: check fatal signal pending of target process
> >
> > Bail out to prevent unnecessary CPU overhead if target process has pending
> > fatal signal during (MADV_COLD|MADV_PAGEOUT) operation.
> 
> This seems bogus.
> 
> Returning -EINTR when *SOMEBODY ELSE* has a signal is crazy talk.

It doesn't propagate -EINTR to the user but just aiming for canceling
the entire operation.

> 
> It also seems to be the reason for the previous patches inexplicably
> passing in the task pointer.
> 
> Finally, it has absolutely no explanations for why this would matter,
> and why it's magically and suddenly an issue for process_madvise(),
> when in the history of the *real* madvise() this hasn't been an issue
> for "current".

Currently, madvise(MADV_COLD|PAGEOUT) already have done it. I just wanted
to sync with it with process_madvise. Ting was process_madvise couldn't
get target task while madvise could get it easily.

> 
> I'm dropping the madvise() series.
> 
> If the issue is that you can generate a long series or areas with that
> iovec, maybe the code should re-consider. Or maybe the signal pending
> case should be done there, not passing down an odd task pointer to the
> low-level madvise code.

Do you mean you want to drop target signal check madvise as well as
process_madvise?
