Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F0C121B450B
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2020 14:26:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726138AbgDVM0G (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Apr 2020 08:26:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725912AbgDVM0E (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Apr 2020 08:26:04 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81CB2C03C1A8
        for <linux-man@vger.kernel.org>; Wed, 22 Apr 2020 05:26:04 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id f13so2120299wrm.13
        for <linux-man@vger.kernel.org>; Wed, 22 Apr 2020 05:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=BuEh/JHYM/L8KCkQjYm1MOvRcjsE/9QOib3oP6rapjo=;
        b=I+WP08MzMX7EQgzuQqcA79tNNR+KA9Bj71csHPFC59RHe1GLKQEItj5kRn1NI/a9Ym
         oazX/AXcA0lK3A0fsk+uvYdeodiO6pII0WyP1CU7Ok/7aq9Q+Csq79c1P9Oos38c3avR
         7Y9O7AtmdYEHdvIMQDhIu4zcknQGrEAipMrwrEyu/q9EDKPQSIgFWWqaUqeN+cdkueAu
         vb7KP8gPjt3pNb4LQQsTS8LsrZSMpUUx2bxXkoOp7PY1Cf2W9HeA03i8RFI83Mmb+Aa4
         8EohDfDztewlCVh1mQpfXMrmy1kQBO73nQIgSf0IDkIGgAlvU40/SMFmZAogKhtGSlPc
         RYCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=BuEh/JHYM/L8KCkQjYm1MOvRcjsE/9QOib3oP6rapjo=;
        b=JwhAkFIo87UC0EtcCE7SNl0PnrmQKHdTPr8csehhznHaNq5q0ugiPjnMoN0QHEzfvj
         ldtZRyT2xOFkqBrBmUPlo9nKOb3fetslbqJ4PpQ0oYNgQdGZLyQ12WiUR+3XdH5A0tfA
         tKuGiIn8ZixAWY4yce8e8KF0cmAdPeyNbuNd8CpiY1WK8sT5J4pYr63ZD6o7/1j8CHPQ
         fvI9mP4pvh8V6xBFVO01UGD3CAWj93eStx+UXS5wuojvEIooOvzb1Q2NM2BG6g6BowyQ
         pwLU+1tUTdAwaRZeeLKpC6MK75sgr8qk6kXWZX1T2N3j6VRWsrzMOk2odp4KquK1GfSa
         /kwA==
X-Gm-Message-State: AGi0PuYiPi+QY1e+jy//E+DldL6Pl8HxLw3UXDZVy6eWpuFyq01khk8s
        alkUgH5iLMgwtPAlk+JXyODQpB61
X-Google-Smtp-Source: APiQypLY2a+jDzlOZ+fRhUpl0c2PUwyX3xilhGpqzzdOQqhPf5JpOi4EUMXnZCCpYxvGaEKWGEVkKQ==
X-Received: by 2002:a5d:4443:: with SMTP id x3mr28759144wrr.162.1587558363191;
        Wed, 22 Apr 2020 05:26:03 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id y63sm7944706wmg.21.2020.04.22.05.26.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Apr 2020 05:26:02 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Richard Palethorpe <rpalethorpe@suse.com>,
        linux-man <linux-man@vger.kernel.org>,
        David Miller <davem@davemloft.net>,
        Alexei Starovoitov <ast@kernel.org>,
        Daniel Borkmann <daniel@iogearbox.net>,
        Alexei Starovoitov <alexei.starovoitov@gmail.com>
Subject: Re: [PATCH] bpf.2: Change note on unprivileged access
To:     Quentin Monnet <quentin@isovalent.com>, rpalethorpe@suse.de
References: <20190729125843.6319-1-rpalethorpe@suse.com>
 <7f9476e0-a05a-c9ec-1135-87c641b93e32@gmail.com>
 <87h7xii6n3.fsf@our.domain.is.not.set>
 <CAKgNAkidUjC2=XzRVqfsjrtZQA8gN36onSFX=jJMr2DjM-CvYQ@mail.gmail.com>
 <CAKgNAkiOkyFwwiMS1xLHmiJm4AK8UGD1tWVkOsE=s3D1CjQ=fA@mail.gmail.com>
 <c26cf932-f324-e9e3-a328-d14f8b891fb2@isovalent.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7f2a994c-28e4-a7ff-ea81-b9e725c865d2@gmail.com>
Date:   Wed, 22 Apr 2020 14:26:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <c26cf932-f324-e9e3-a328-d14f8b891fb2@isovalent.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Quentin

Thank you for replying!

On 4/20/20 11:08 AM, Quentin Monnet wrote:
> Hi Michael, Richard,
> 
> Thank you Michael for the Cc :). Answers inline.
> 
> 2020-04-18 09:36 UTC+0200 ~ Michael Kerrisk (man-pages)
> <mtk.manpages@gmail.com>
>> [Adding in correct address for Quentin, since his address has changed]
>>
>> On Sat, 18 Apr 2020 at 09:34, Michael Kerrisk (man-pages)
>> <mtk.manpages@gmail.com> wrote:
>>>
>>> [CC += Quentin]
>>>
>>> Hello Richard (and Quentin, Daniel, Alexei),
>>>
>>> On Fri, 17 Apr 2020 at 15:28, Richard Palethorpe <rpalethorpe@suse.de> wrote:
>>>>
>>>> Hello Michael,
>>>>
>>>> Michael Kerrisk (man-pages) <mtk.manpages@gmail.com> writes:
>>>>
>>>>> Hello Richard,
>>>>>
>>>>> On 7/29/19 2:58 PM, Richard Palethorpe wrote:
>>>>>> This notes that the kernel now allows calls to bpf() without CAP_SYS_ADMIN
>>>>>> under some circumstances.
>>>>>
>>>>> Thanks. I have (at last) applied this patch.
>>>>
>>>> :-)
>>>>
>>>>>
>>>>> In Linux 4.4, the allowed BPF helper functions that could
>>>>> be called was, I think, governed by a check in sk_filter_func_proto().
>>>>> Nowadays (Linux 5.6), it is, I think, governed by the check in
>>>>> sk_filter_func_proto(). If that is the case, then probably there
>>>>
>>>> It looks like bpf_base_func_proto() and sk_filter_func_proto(). Possibly
>>>> also cg_skb_func_proto() because it seems normal users can also attach a
>>>> cgroup skb filter program type (looking at bpf_prog_load() in syscall.c
>>>> for 5.7).
>>>
>>> Thanks for the pointer to bpf_prog_load(). But, I must admit I'm
>>> having trouble to follow the code. Can you say some more about how you
>>> deduce the involvement of sk_filter_func_proto() and
>>> cg_skb_func_proto()?
> 
> sk_filter_func_proto() and cg_skb_func_proto() are used by the verifier
> (as env->ops->get_func_proto) to check that the helper functions used
> with the given program types (BPF_PROG_TYPE_SOCKET_FILTER and
> BPF_PROG_TYPE_CGROUP_SKB, respectively) are acceptable.
> 
> Those functions are associated to the relevant types by macro
> BPF_PROG_TYPE() defined in include/linux/bpf.h and called in
> include/linux/bpf_types.h.
> 
> The aforementioned program types are indeed the two that may be
> available to unprivileged users, as can be seen in bpf_prog_load() [0].
> 
> [0]
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/kernel/bpf/syscall.c?h=v5.6#n2039
> 
>>>
>>>>> are one or two more helper functions to be added to the list
>>>>> (e.g., get_numa_node_id, map_push_elem, map_pop_elem).
>>>>> Do you agree with my analysis?
>>>>
>>>> Yes, at least those. IMO this is such a fast moving target it might be
>>>> best to direct users towards <linux/bpf.h>.
>>>
>>> Are you aware of bpf-helpers(7) [1], which is generated [2] from that
>>> file? It seems like this would be the place to document which helpers
>>> can be used by unprivileged processes.
>>>
>>> Quentin, Daniel, Alexei, do you have any thoughts here?
> 
> Right, it's moving fast and it is a bit tricky to keep lists like this
> up-to-date. My first proposal for bpf-helpers(7) would include the list
> of program types compatible with each helper, but we decided that it
> would be too hard to maintain and I removed it (bcc tries to keep a
> list, though [1], but does not mention unprivileged usage). We do
> require contributors creating new helpers to document their function
> (the documentation is even parsed for producing a header for libbpf, so
> it's a strict requirement) but having people scan all the documentation
> to find the lists they should update is another story.
> 
> I feel the same here: the list of helpers available to unprivileged has
> grown quite a bit since 4.4, and we will struggle to present updated
> information to readers. Especially when we see how outdated bpf(2) is at
> the moment. My suggestion would be to stick to a generic comment,
> something like “However [unprivileged users] may not store kernel
> pointers within the maps and are presently only a subset of the helper
> functions compatible with those program types”.
> 
> Then the bpf-helpers(7) has the following note: “net/core/filter.c
> contains the definition of most network-related helper functions, and
> the list of program types from which they can be used.” It is not ideal,
> but at least it indicates how to get accurate information. We could
> maybe add another note in that page saying that unprivileged users get
> access to functions listed in sk_filter_func_proto() and
> cg_skb_func_proto(), plus bpf_base_func_proto() before the check on
> CAP_SYS_ADMIN.

So, just to confirm my understanding, the current set of helpers
permitted to unprivileged callers is:

    From sk_filter_func_proto():
        bpf_skb_load_bytes_proto
        bpf_skb_load_bytes_relative_proto
        bpf_get_socket_cookie_proto
        bpf_get_socket_uid_proto
        bpf_skb_event_output_proto
    From cg_skb_func_proto():
        bpf_get_local_storage_proto
        bpf_sk_fullsock_proto
        bpf_sk_storage_get_proto
        bpf_sk_storage_delete_proto
        bpf_skb_event_output_proto
        bpf_skb_cgroup_id_proto
        bpf_tcp_sock_proto
        bpf_get_listener_sock_proto
        bpf_skb_ecn_set_ce_proto
    From bpf_base_func_proto():
        bpf_map_lookup_elem_proto
        bpf_map_update_elem_proto
        bpf_map_delete_elem_proto
        bpf_map_push_elem_proto
        bpf_map_pop_elem_proto
        bpf_map_peek_elem_proto
        bpf_get_prandom_u32_proto
        bpf_get_raw_smp_processor_id_proto
        bpf_get_numa_node_id_proto
        bpf_tail_call_proto
        bpf_ktime_get_ns_proto

I think that man-pages patches along the lines you mention
would be a good start (although the references to kernel sources
may be a bit fragile), so if you would be willing to write those,
it would be great.

Just by the way, is it not possible to add notes to the text
of each helper to say that it is usable by an unprivileged caller?
I know this is also fragile, in the case of subsequent additions
and changes, but it would make the user-space programmer's life
a little easier (since they would not always be forced to look
at the kernel source).

> Let me know if you wanted me to send a patch with such a note, I plan to
> submit fixes for helpers doc this week anyway.

Yes please!

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
