Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 12F011B053E
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 11:09:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725896AbgDTJJC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 05:09:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725865AbgDTJJC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 05:09:02 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 888FBC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 02:09:00 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id v8so10259674wma.0
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 02:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=isovalent-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=LZyMak/1vY9m03f/f6Hml1dkYSnRB++zRzuVqb4CMVM=;
        b=LKkluS90CTNnp+4poT4Fsj5CW8hDffX2W6RCfh2ofrel6FMKXTxmKAIWEmY6LKTxEE
         qXoPwXkL2CPbXIuybCaAZsDFCOjcDGQ8/am+CELRBFeMuZI0ZTv/5PFnP+hKMi69sXWC
         DGk2Jd1CRu/iCSGF9i0qF7wFzJrq9Ynxcmv064xyPCaA/Lyd2CUL30gWCC6CaOB+kV2+
         cChdSJpjkBJAdU71mTXqrlBh6jPqHDN6BClUiScAVzKk82AQsaYrgI87FDcrdWtrx0h7
         bbRzRfucM+0I655VThlk8C3zi/Fe3XmIGxuxTDPLlRj1OZSVrsrSPV4fAV+RkAlX/Awv
         8ctg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=LZyMak/1vY9m03f/f6Hml1dkYSnRB++zRzuVqb4CMVM=;
        b=rHSV+Yh4xhm3uV/dfGoWKhaRSUdJGDuX1tax6FLvdF0B4K9qGvsk8I8W4hEaCWj9F9
         TRygGkS2pxDZkFOuvkjACmppCcctKGTYSUIuMhugH2UAinkRRpBB1qMtAnN5dqIfBTjb
         Ap7osi71Zwh7U5fZD8dVg6y9dC5BBrUoIGZukhoLKP33GMJfjYwfUjAgdbidhzV1oAYN
         KTHI6GKef8E6A2oetCw3lGmve9gO7qrsl2bqPn1ICuBozHXGOSlRNPW5IyfmNoCy3idM
         2HBwvZwZNL42+E9j/6PuLKI99sGgmvh3kutIY4SQYb30gL5IWVW7/M4kdPqLAdI/54A0
         trAg==
X-Gm-Message-State: AGi0PuaHnz1AmTBJ7wJ31sTcyTHOYdm61TK+f7DWIrJBMzgevOH4OXzJ
        UtcZyBXcLj2Ztcka4jHzmKebSD6z334=
X-Google-Smtp-Source: APiQypKOfSOrztId/38uDLlYaD3HRO6gioPqfjMgbO4O0i5jsaoTVZe32GEcWapxJmG6s/5mYc1Rvg==
X-Received: by 2002:a1c:2705:: with SMTP id n5mr16155257wmn.94.1587373739055;
        Mon, 20 Apr 2020 02:08:59 -0700 (PDT)
Received: from [192.168.1.10] ([194.35.116.120])
        by smtp.gmail.com with ESMTPSA id s6sm500495wmh.17.2020.04.20.02.08.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 02:08:58 -0700 (PDT)
Subject: Re: [PATCH] bpf.2: Change note on unprivileged access
To:     mtk.manpages@gmail.com, rpalethorpe@suse.de
Cc:     Richard Palethorpe <rpalethorpe@suse.com>,
        linux-man <linux-man@vger.kernel.org>,
        David Miller <davem@davemloft.net>,
        Alexei Starovoitov <ast@kernel.org>,
        Daniel Borkmann <daniel@iogearbox.net>,
        Alexei Starovoitov <alexei.starovoitov@gmail.com>
References: <20190729125843.6319-1-rpalethorpe@suse.com>
 <7f9476e0-a05a-c9ec-1135-87c641b93e32@gmail.com>
 <87h7xii6n3.fsf@our.domain.is.not.set>
 <CAKgNAkidUjC2=XzRVqfsjrtZQA8gN36onSFX=jJMr2DjM-CvYQ@mail.gmail.com>
 <CAKgNAkiOkyFwwiMS1xLHmiJm4AK8UGD1tWVkOsE=s3D1CjQ=fA@mail.gmail.com>
From:   Quentin Monnet <quentin@isovalent.com>
Message-ID: <c26cf932-f324-e9e3-a328-d14f8b891fb2@isovalent.com>
Date:   Mon, 20 Apr 2020 10:08:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkiOkyFwwiMS1xLHmiJm4AK8UGD1tWVkOsE=s3D1CjQ=fA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael, Richard,

Thank you Michael for the Cc :). Answers inline.

2020-04-18 09:36 UTC+0200 ~ Michael Kerrisk (man-pages)
<mtk.manpages@gmail.com>
> [Adding in correct address for Quentin, since his address has changed]
> 
> On Sat, 18 Apr 2020 at 09:34, Michael Kerrisk (man-pages)
> <mtk.manpages@gmail.com> wrote:
>>
>> [CC += Quentin]
>>
>> Hello Richard (and Quentin, Daniel, Alexei),
>>
>> On Fri, 17 Apr 2020 at 15:28, Richard Palethorpe <rpalethorpe@suse.de> wrote:
>>>
>>> Hello Michael,
>>>
>>> Michael Kerrisk (man-pages) <mtk.manpages@gmail.com> writes:
>>>
>>>> Hello Richard,
>>>>
>>>> On 7/29/19 2:58 PM, Richard Palethorpe wrote:
>>>>> This notes that the kernel now allows calls to bpf() without CAP_SYS_ADMIN
>>>>> under some circumstances.
>>>>
>>>> Thanks. I have (at last) applied this patch.
>>>
>>> :-)
>>>
>>>>
>>>> In Linux 4.4, the allowed BPF helper functions that could
>>>> be called was, I think, governed by a check in sk_filter_func_proto().
>>>> Nowadays (Linux 5.6), it is, I think, governed by the check in
>>>> sk_filter_func_proto(). If that is the case, then probably there
>>>
>>> It looks like bpf_base_func_proto() and sk_filter_func_proto(). Possibly
>>> also cg_skb_func_proto() because it seems normal users can also attach a
>>> cgroup skb filter program type (looking at bpf_prog_load() in syscall.c
>>> for 5.7).
>>
>> Thanks for the pointer to bpf_prog_load(). But, I must admit I'm
>> having trouble to follow the code. Can you say some more about how you
>> deduce the involvement of sk_filter_func_proto() and
>> cg_skb_func_proto()?

sk_filter_func_proto() and cg_skb_func_proto() are used by the verifier
(as env->ops->get_func_proto) to check that the helper functions used
with the given program types (BPF_PROG_TYPE_SOCKET_FILTER and
BPF_PROG_TYPE_CGROUP_SKB, respectively) are acceptable.

Those functions are associated to the relevant types by macro
BPF_PROG_TYPE() defined in include/linux/bpf.h and called in
include/linux/bpf_types.h.

The aforementioned program types are indeed the two that may be
available to unprivileged users, as can be seen in bpf_prog_load() [0].

[0]
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/kernel/bpf/syscall.c?h=v5.6#n2039

>>
>>>> are one or two more helper functions to be added to the list
>>>> (e.g., get_numa_node_id, map_push_elem, map_pop_elem).
>>>> Do you agree with my analysis?
>>>
>>> Yes, at least those. IMO this is such a fast moving target it might be
>>> best to direct users towards <linux/bpf.h>.
>>
>> Are you aware of bpf-helpers(7) [1], which is generated [2] from that
>> file? It seems like this would be the place to document which helpers
>> can be used by unprivileged processes.
>>
>> Quentin, Daniel, Alexei, do you have any thoughts here?

Right, it's moving fast and it is a bit tricky to keep lists like this
up-to-date. My first proposal for bpf-helpers(7) would include the list
of program types compatible with each helper, but we decided that it
would be too hard to maintain and I removed it (bcc tries to keep a
list, though [1], but does not mention unprivileged usage). We do
require contributors creating new helpers to document their function
(the documentation is even parsed for producing a header for libbpf, so
it's a strict requirement) but having people scan all the documentation
to find the lists they should update is another story.

I feel the same here: the list of helpers available to unprivileged has
grown quite a bit since 4.4, and we will struggle to present updated
information to readers. Especially when we see how outdated bpf(2) is at
the moment. My suggestion would be to stick to a generic comment,
something like “However [unprivileged users] may not store kernel
pointers within the maps and are presently only a subset of the helper
functions compatible with those program types”.

Then the bpf-helpers(7) has the following note: “net/core/filter.c
contains the definition of most network-related helper functions, and
the list of program types from which they can be used.” It is not ideal,
but at least it indicates how to get accurate information. We could
maybe add another note in that page saying that unprivileged users get
access to functions listed in sk_filter_func_proto() and
cg_skb_func_proto(), plus bpf_base_func_proto() before the check on
CAP_SYS_ADMIN.

Let me know if you wanted me to send a patch with such a note, I plan to
submit fixes for helpers doc this week anyway.

Thanks,
Quentin


[1] https://github.com/iovisor/bcc/blob/master/docs/kernel-versions.md
