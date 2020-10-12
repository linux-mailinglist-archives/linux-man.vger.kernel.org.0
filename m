Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4E28F28BBF4
	for <lists+linux-man@lfdr.de>; Mon, 12 Oct 2020 17:33:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389555AbgJLPdP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Oct 2020 11:33:15 -0400
Received: from mx2.suse.de ([195.135.220.15]:50206 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2388710AbgJLPdP (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 12 Oct 2020 11:33:15 -0400
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
        t=1602516794;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=73+tM+9Er9hS+F+0/np/PTsoE8sF/xgeY/6dskx2sFA=;
        b=HPI3zdzCnSq0+ZUYdu8bQMt0Cr0SV9GmvyKA6GeeVczVQyasbY9ALUuN0Yel6mQkrXgrFC
        ZjnzLr4wJ4IFtg7OwB6j8pKsnO0yR7XYFiQSwqgm0WAmlVc6uI+fDfsKZ47NR+4yuuu68V
        kr13dMrRtjIo4iW618m6+1GDloNgEqg=
Received: from relay2.suse.de (unknown [195.135.221.27])
        by mx2.suse.de (Postfix) with ESMTP id 4633CB2FA;
        Mon, 12 Oct 2020 15:33:14 +0000 (UTC)
Date:   Mon, 12 Oct 2020 17:33:13 +0200
From:   Michal Hocko <mhocko@suse.com>
To:     Jann Horn <jannh@google.com>
Cc:     Michael Kerrisk-manpages <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        Linux-MM <linux-mm@kvack.org>,
        Mark Mossberg <mark.mossberg@gmail.com>
Subject: Re: [PATCH] proc.5: Document inaccurate RSS due to SPLIT_RSS_COUNTING
Message-ID: <20201012153313.GI29725@dhcp22.suse.cz>
References: <20201012114940.1317510-1-jannh@google.com>
 <20201012150738.GF29725@dhcp22.suse.cz>
 <CAG48ez271-LALwrM3dDr_vvHr8XaoowcQLQGYAnxe1WLECse9A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAG48ez271-LALwrM3dDr_vvHr8XaoowcQLQGYAnxe1WLECse9A@mail.gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon 12-10-20 17:20:08, Jann Horn wrote:
> On Mon, Oct 12, 2020 at 5:07 PM Michal Hocko <mhocko@suse.com> wrote:
> > On Mon 12-10-20 13:49:40, Jann Horn wrote:
> > > Since 34e55232e59f7b19050267a05ff1226e5cd122a5 (introduced back in
> > > v2.6.34), Linux uses per-thread RSS counters to reduce cache contention on
> > > the per-mm counters. With a 4K page size, that means that you can end up
> > > with the counters off by up to 252KiB per thread.
> >
> > Do we actually have any strong case to keep this exception to the
> > accounting?
> 
> I have no clue. The concept of "concurrently modified cache lines are
> bad" seemed vaguely reasonable to me... but I have no idea how much
> impact this actually has on massively multithreaded processes.

I do remember some discussion when imprecision turned out to be a real
problem (Android?).

Anyway, I have to say that 34e55232e59f ("mm: avoid false sharing of
mm_counter") sounds quite dubious to me and it begs for re-evaluation.

Btw. thanks for trying to document this weird behavior. This is
certainly useful but I am suspecting that dropping it might be even
better.

-- 
Michal Hocko
SUSE Labs
