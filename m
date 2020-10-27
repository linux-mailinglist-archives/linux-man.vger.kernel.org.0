Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B42AF29ABC2
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 13:18:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1751011AbgJ0MSY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 08:18:24 -0400
Received: from mx2.suse.de ([195.135.220.15]:37112 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1751008AbgJ0MSW (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 27 Oct 2020 08:18:22 -0400
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
        t=1603801101;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=WBz49ARXMK8IVJOaRbIheZJKq8IypKGIjPcbI7hB3Ag=;
        b=aD5eGlPSmiGuFB3k68ZBviaiz0YEQ2zXE06VKj0H9o5C5z1gXFXy8VIWITYSovvU3RAqZT
        BYITjE7DRiHtNDdwOnPN2ek5hJsHKl5saEC5UwpnW1rorWDbeFxlKbn1pehJBFetoeTh4L
        MXHSUDCf4uyYmhawa8ZnXf66MFBQoNQ=
Received: from relay2.suse.de (unknown [195.135.221.27])
        by mx2.suse.de (Postfix) with ESMTP id 45E78B30B;
        Tue, 27 Oct 2020 12:18:20 +0000 (UTC)
Date:   Tue, 27 Oct 2020 13:18:16 +0100
From:   Michal Hocko <mhocko@suse.com>
To:     Jann Horn <jannh@google.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        Linux-MM <linux-mm@kvack.org>,
        Mark Mossberg <mark.mossberg@gmail.com>
Subject: Re: [PATCH] proc.5: Document inaccurate RSS due to SPLIT_RSS_COUNTING
Message-ID: <20201027121816.GS20500@dhcp22.suse.cz>
References: <20201012114940.1317510-1-jannh@google.com>
 <CAG48ez17=x9eHLGR-Uyx3xsVJv3W=4WsTs3HG5Fam5UP=CWXbQ@mail.gmail.com>
 <0a090c14-6b70-4284-bb2d-4fbfd1146aaf@gmail.com>
 <CAG48ez2gigjfi3_nmbyhDnb2bsi9K0Yc24y7HdSNDvtumWGbiw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAG48ez2gigjfi3_nmbyhDnb2bsi9K0Yc24y7HdSNDvtumWGbiw@mail.gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue 27-10-20 11:35:35, Jann Horn wrote:
> On Tue, Oct 27, 2020 at 8:05 AM Michael Kerrisk (man-pages)
> <mtk.manpages@gmail.com> wrote:
> > On 10/12/20 4:52 PM, Jann Horn wrote:
> > > On Mon, Oct 12, 2020 at 1:49 PM Jann Horn <jannh@google.com> wrote:
> > >> Since 34e55232e59f7b19050267a05ff1226e5cd122a5 (introduced back in
> > >> v2.6.34), Linux uses per-thread RSS counters to reduce cache contention on
> > >> the per-mm counters. With a 4K page size, that means that you can end up
> > >> with the counters off by up to 252KiB per thread.
> > >
> > > Actually, as Mark Mossberg pointed out to me off-thread, the counters
> > > can actually be off by many times more...
> >
> > So, does your patch to proc.5 need tweaking, or can I just apply as is?
> 
> The "(up to 63 pages per thread)" would have to go, the rest should be correct.
> 
> But as Michal said, if someone volunteers to get rid of this
> optimization, maybe we don't need the documentation after all? But
> that would probably require actually doing some careful
> heavily-multithreaded benchmarking on a big machine with a few dozen
> cores, or something like that, so that we know whether this
> optimization actually is unimportant enough that we can just get rid
> of it...

Well, the original micro optimization didn't really come with some solid
numbers based on real workloads. Artificial workloads are likely not
very representative for this case because any potential counters overhead
normally gets dispersed.

I think this is the case where the benefit is so unclear that I would
simply revert the whole thing and try to tune up for a real life
workloads that actually sees a regression.

-- 
Michal Hocko
SUSE Labs
