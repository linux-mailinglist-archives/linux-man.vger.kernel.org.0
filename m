Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D798229C7DF
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 19:58:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S371273AbgJ0S4o (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 14:56:44 -0400
Received: from mx2.suse.de ([195.135.220.15]:47940 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S371274AbgJ0S4n (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 27 Oct 2020 14:56:43 -0400
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
        by mx2.suse.de (Postfix) with ESMTP id 38B39AC8B;
        Tue, 27 Oct 2020 18:56:42 +0000 (UTC)
Subject: Re: [PATCH] proc.5: Document inaccurate RSS due to SPLIT_RSS_COUNTING
To:     Michal Hocko <mhocko@suse.com>, Jann Horn <jannh@google.com>
Cc:     Michael Kerrisk-manpages <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        Linux-MM <linux-mm@kvack.org>,
        Mark Mossberg <mark.mossberg@gmail.com>
References: <20201012114940.1317510-1-jannh@google.com>
 <20201012150738.GF29725@dhcp22.suse.cz>
 <CAG48ez271-LALwrM3dDr_vvHr8XaoowcQLQGYAnxe1WLECse9A@mail.gmail.com>
 <20201012153313.GI29725@dhcp22.suse.cz>
From:   Vlastimil Babka <vbabka@suse.cz>
Message-ID: <bbe5b8f8-d636-377b-0172-ca5d634b7d61@suse.cz>
Date:   Tue, 27 Oct 2020 19:56:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.3
MIME-Version: 1.0
In-Reply-To: <20201012153313.GI29725@dhcp22.suse.cz>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/12/20 5:33 PM, Michal Hocko wrote:
> On Mon 12-10-20 17:20:08, Jann Horn wrote:
>> On Mon, Oct 12, 2020 at 5:07 PM Michal Hocko <mhocko@suse.com> wrote:
>> > On Mon 12-10-20 13:49:40, Jann Horn wrote:
>> > > Since 34e55232e59f7b19050267a05ff1226e5cd122a5 (introduced back in
>> > > v2.6.34), Linux uses per-thread RSS counters to reduce cache contention on
>> > > the per-mm counters. With a 4K page size, that means that you can end up
>> > > with the counters off by up to 252KiB per thread.
>> >
>> > Do we actually have any strong case to keep this exception to the
>> > accounting?
>> 
>> I have no clue. The concept of "concurrently modified cache lines are
>> bad" seemed vaguely reasonable to me... but I have no idea how much
>> impact this actually has on massively multithreaded processes.
> 
> I do remember some discussion when imprecision turned out to be a real
> problem (Android?).
> 
> Anyway, I have to say that 34e55232e59f ("mm: avoid false sharing of
> mm_counter") sounds quite dubious to me and it begs for re-evaluation.

Agreed.
- false sharing? no, false sharing is when unrelated things share a cache line, 
this is a real sharing of a counter, AFAICS. If the problem is really 
exacerbated by false sharing of the counter with something else, then the fix is 
to move the counter or something else to a different cache line.
- the evaluation showing of 4.5 cache misses per fault reduced to 4, I think 0.5 
cache miss is negligible compared to a page fault
- "Anyway, the most contended object is mmap_sem if the number of threads 
grows." - and surprise surprise, 10 years later this is still true :)


> Btw. thanks for trying to document this weird behavior. This is
> certainly useful but I am suspecting that dropping it might be even
> better.
> 

