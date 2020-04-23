Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB68D1B58A6
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2020 11:56:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726928AbgDWJ41 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Apr 2020 05:56:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726364AbgDWJ40 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 23 Apr 2020 05:56:26 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EACFC03C1AF
        for <linux-man@vger.kernel.org>; Thu, 23 Apr 2020 02:56:26 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id x4so5756903wmj.1
        for <linux-man@vger.kernel.org>; Thu, 23 Apr 2020 02:56:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=isovalent-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ulm3MVuUmTr9EQufgg/7i2OtVfPzgKRDM/Q6x6hFSqI=;
        b=i77wU4JQwN5gjqIKSao0mhWD0XWput0jHNlJmrZacrne9NKB7jr/Xt7EmhRTGXWuA6
         1Gdk5OWDvfOZlotyQxQJzyUu9vwsEKENNqoooEIMrUydGp75MdwlaeayFtPUW02ASgca
         LThUjAcWm006OsxK3Abv+9k8OgHDfxf3x7oYU5VKdkaq4XDsWrJ6QtSMKPHtkGxbyBmi
         mXlrIvHdeFQ6uCfdoLOr0KNbHoFTeLZmiLFHIAJ4rmAaokxRdq8B5GxiwmqlVDU7y3C0
         2cB8rOYVKIKtWgMwiYyKix2W8wL4lXkX+RQpLidbW8oL1q+ZbtyrQgNhQWvECOsPnItn
         UDOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ulm3MVuUmTr9EQufgg/7i2OtVfPzgKRDM/Q6x6hFSqI=;
        b=rEn1eTjVehoQNsXHpe0Nez6SUYZ1zNDUt6mKfarshI3FoMKfwE0WtE+7hD8G1BMpTo
         wdFo6ueOj+LRMJD61HGveGJApPlhGDhvZp2cVH+8HjVClvTxNdMfWYLHtm8VYZBM9G4h
         4LBBGEzsQhDkXQDDpEBNEwrHGPiozCzUwCmsTIfqCgaI/WIquSyL1moq2hunpS8M4nee
         FSteMTOIIDIuyqLnro2Z++A2JIia6NG+U/21YXru0aQJrA6GkRN8Mep7dYfSh2ilQ4k9
         cjGFb5lSvZMFLHArd0Uugkk+IxxMKsrvIZlNSyM+cMZixYZ7nsaHu60jnK/pqrzPdK0H
         q9SA==
X-Gm-Message-State: AGi0Pua8KVvAzYvXoF2jS6h6DA1wgR41ZgpfYU0uUw7EuX/6YiyMZyph
        TNjv0pSjwl7joJjOsY9M/vnuPQ==
X-Google-Smtp-Source: APiQypLTuBDzBBQWunwOW4aqarw61PY4ztgP7E5WL6auYzMRDldKkDcTy/5QqU1bTtiJGW/rSXCevg==
X-Received: by 2002:a05:600c:21d6:: with SMTP id x22mr3373589wmj.95.1587635785109;
        Thu, 23 Apr 2020 02:56:25 -0700 (PDT)
Received: from [192.168.1.10] ([194.53.185.104])
        by smtp.gmail.com with ESMTPSA id j4sm2870578wrm.85.2020.04.23.02.56.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Apr 2020 02:56:24 -0700 (PDT)
Subject: Re: [PATCH] bpf.2: Change note on unprivileged access
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        rpalethorpe@suse.de
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
 <c26cf932-f324-e9e3-a328-d14f8b891fb2@isovalent.com>
 <7f2a994c-28e4-a7ff-ea81-b9e725c865d2@gmail.com>
From:   Quentin Monnet <quentin@isovalent.com>
Message-ID: <6b00451e-29ad-45cc-34f0-a8e27d89e083@isovalent.com>
Date:   Thu, 23 Apr 2020 10:56:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <7f2a994c-28e4-a7ff-ea81-b9e725c865d2@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

2020-04-22 14:26 UTC+0200 ~ Michael Kerrisk (man-pages)
<mtk.manpages@gmail.com>

[...]

> So, just to confirm my understanding, the current set of helpers
> permitted to unprivileged callers is:
> 
>     From sk_filter_func_proto():
>         bpf_skb_load_bytes_proto
>         bpf_skb_load_bytes_relative_proto
>         bpf_get_socket_cookie_proto
>         bpf_get_socket_uid_proto
>         bpf_skb_event_output_proto
>     From cg_skb_func_proto():
>         bpf_get_local_storage_proto
>         bpf_sk_fullsock_proto
>         bpf_sk_storage_get_proto
>         bpf_sk_storage_delete_proto
>         bpf_skb_event_output_proto
>         bpf_skb_cgroup_id_proto
>         bpf_tcp_sock_proto
>         bpf_get_listener_sock_proto
>         bpf_skb_ecn_set_ce_proto
>     From bpf_base_func_proto():
>         bpf_map_lookup_elem_proto
>         bpf_map_update_elem_proto
>         bpf_map_delete_elem_proto
>         bpf_map_push_elem_proto
>         bpf_map_pop_elem_proto
>         bpf_map_peek_elem_proto
>         bpf_get_prandom_u32_proto
>         bpf_get_raw_smp_processor_id_proto
>         bpf_get_numa_node_id_proto
>         bpf_tail_call_proto
>         bpf_ktime_get_ns_proto

Hi Michael,
Yes, this looks accurate at this time.

> I think that man-pages patches along the lines you mention
> would be a good start (although the references to kernel sources
> may be a bit fragile), so if you would be willing to write those,
> it would be great.
> 
> Just by the way, is it not possible to add notes to the text
> of each helper to say that it is usable by an unprivileged caller?
> I know this is also fragile, in the case of subsequent additions
> and changes, but it would make the user-space programmer's life
> a little easier (since they would not always be forced to look
> at the kernel source).

It would be possible of course, but I am convinced it would add to the
maintenance load and grow quickly out of sync. New helpers will be
added, some existing ones could be opened to unprivileged, and so on. I
would prefer to avoid that.

I agree that the note about kernel structs to check is fragile too, on a
second thought I will not send it for now.

What we could do instead is rely on bpftool. It is a utility for
introspection, management etc. of BPF objects (see
tools/bpf/bpftool/Documentation in kernel repo for more info). It is
able to probe and dump the list of supported BPF prog/map types and BPF
helper functions on the system, with "bpftool feature probe". This
feature probing is currently reserved for root, but simply because it
was easier to implement that way, and could probably be extended to
unprivileged.

So I would suggest we work to have bpftool dump the list of helpers for
non-root - I can add that to my to-do list -, and then add a note to the
manual page to mention it. Actually I can add the note already, since
admins may be interested in probing a given helper for availability.

What do you think?
Quentin
