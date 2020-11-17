Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A7EB2B7289
	for <lists+linux-man@lfdr.de>; Wed, 18 Nov 2020 00:38:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728802AbgKQXin (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Nov 2020 18:38:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725943AbgKQXim (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Nov 2020 18:38:42 -0500
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AE5CC0613CF;
        Tue, 17 Nov 2020 15:38:42 -0800 (PST)
Received: by mail-wr1-x443.google.com with SMTP id m6so8207896wrg.7;
        Tue, 17 Nov 2020 15:38:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=eYsGvnGfok9nqyvmTsx0B3hd1/UTNIvaTUnOR7h8Y6o=;
        b=ps4LSafsCdKko1gl0ct8VPBYtOFOGwu37k3ewAfiuhGyIxoCA7Cy/Ok/8+jqLxA3X8
         N8uhNGUaxOBBLQdHx4wmNLQICRxZTjryP30Z+Leb9TIGUar6pN+A+X5+4EbWlKktee8T
         1K4+kRlC2klXzb7ZW5khpN2zogAF6JLhgAQ3XZNWjeXSAti9UP0/d/J/ofsYejW/tqBC
         o8w8LchvOMwKJ/zxcdrdnr1+BsNdX/+b0XDZwSjfWPPwoXI/VvFDxJB8w03YYseYBAFE
         7wGmo4ILQWkR7OgyBWPZP8/lXefJSti4wn+RBmpsaeHrA3wA3XF6LzdZFE+jxu4WD9c6
         xrbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=eYsGvnGfok9nqyvmTsx0B3hd1/UTNIvaTUnOR7h8Y6o=;
        b=UdRnkFXXfPEqq4hKZs1fYTlEwI87ASlKpRy9Ta1Pq+gnKlVQJaTVgIYKNUyW5InTHB
         aKurdY0pbpOiuYIiv+bZ8WU0b+mJsvcqZTW9rbi0L0nJBS1YfCLRUboYs2f8NpV4Rn8S
         ztUtL5Tt0Cbz2RNQ5W8jX+G+Ks8/A/Bt4L9guLUjUfrkkJWSCBdIp2vTUesWJ5TU1OS1
         Hcv4Cw0jJ8lDLOCYoWBH7gt7ovmIPslVNH5U3hqypB1ANLvIyxUl+Swu4b2vQhvhfuq1
         ap29r75j6gqptcWmcNqEqBBqAChSVydTpW+69J82wuJEDwdGZuGXzhmpVXWBN6A6+XgG
         mxIA==
X-Gm-Message-State: AOAM53118m/hE8HUy5NKCE49GI2Yt2E+qEDAIBfNkQ1L2trLReaDr15m
        f+HpKiO57Y5JKJIWkTM1l9k=
X-Google-Smtp-Source: ABdhPJyI0M8tK8vH48FSZwne0ewKND1kRXGQaJagXTez4XWx5mh2bwAMVf+EWrcx+IZjcTYPa4BcIQ==
X-Received: by 2002:adf:fed1:: with SMTP id q17mr1814391wrs.393.1605656321166;
        Tue, 17 Nov 2020 15:38:41 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id e3sm13576139wro.90.2020.11.17.15.38.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2020 15:38:40 -0800 (PST)
Subject: Re: [PATCH v5] perf_event_open.2: Update man page with recent changes
To:     Namhyung Kim <namhyung@kernel.org>, mtk.manpages@gmail.com
Cc:     Arnaldo Carvalho de Melo <acme@kernel.org>,
        Jiri Olsa <jolsa@redhat.com>, Ingo Molnar <mingo@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        LKML <linux-kernel@vger.kernel.org>,
        Stephane Eranian <eranian@google.com>,
        Ian Rogers <irogers@google.com>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Song Liu <songliubraving@fb.com>,
        Kan Liang <kan.liang@linux.intel.com>,
        Andi Kleen <ak@linux.intel.com>,
        Vince Weaver <vincent.weaver@maine.edu>,
        linux-perf-users@vger.kernel.org, linux-man@vger.kernel.org,
        Namhyung Kim <namhyung@gmail.com>
References: <20201117073758.346744-1-namhyung@kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <eea51ae5-d7d1-7dbc-04c1-8ae72b2c0754@gmail.com>
Date:   Wed, 18 Nov 2020 00:38:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201117073758.346744-1-namhyung@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 11/17/20 8:37 AM, Namhyung Kim wrote:
> From: Namhyung Kim <namhyung@gmail.com>
> 
> There are lots of changes as usual.  I've tried to fill some missing
> bits in the man page but it'd be nice if you could take a look and put
> more info there.
> 
> Signed-off-by: Namhyung Kim <namhyung@gmail.com>
> [alx: ffix + tfix]
> Cowritten-by : Alejandro Colomar <alx.manpages@gmail.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---

Hi Namhyung,

Patch applied!

Thanks,

Alex

>  man2/perf_event_open.2 | 280 ++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 278 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
> index e7b0aa132..62731bbac 100644
> --- a/man2/perf_event_open.2
> +++ b/man2/perf_event_open.2
> @@ -247,8 +247,17 @@ struct perf_event_attr {
>                                     due to exec */
>            use_clockid    :  1,  /* use clockid for time fields */
>            context_switch :  1,  /* context switch data */
> +          write_backward :  1,  /* Write ring buffer from end
> +                                   to beginning */
> +          namespaces     :  1,  /* include namespaces data */
> +          ksymbol        :  1,  /* include ksymbol events */
> +          bpf_event      :  1,  /* include bpf events */
> +          aux_output     :  1,  /* generate AUX records
> +                                   instead of events */
> +          cgroup         :  1,  /* include cgroup events */
> +          text_poke      :  1,  /* include text poke events */
>  
> -          __reserved_1   : 37;
> +          __reserved_1   : 30;
>  
>      union {
>          __u32 wakeup_events;    /* wakeup every n events */
> @@ -867,6 +876,20 @@ is set higher than zero then the register
>  values returned are those captured by
>  hardware at the time of the sampled
>  instruction's retirement.
> +.TP
> +.BR PERF_SAMPLE_PHYS_ADDR " (since Linux 4.13)"
> +.\" commit fc7ce9c74c3ad232b084d80148654f926d01ece7
> +Records physical address of data like in
> +.B PERF_SAMPLE_ADDR .
> +.TP
> +.BR PERF_SAMPLE_CGROUP " (since Linux 5.7)"
> +.\" commit 96aaab686505c449e24d76e76507290dcc30e008
> +Records (perf_event) cgroup id of the process.
> +This corresponds to the
> +.I id
> +field in the
> +.B PERF_RECORD_CGROUP
> +event.
>  .RE
>  .TP
>  .I read_format
> @@ -1202,6 +1225,49 @@ information even with strict
>  .I perf_event_paranoid
>  settings.
>  .TP
> +.IR write_backward " (since Linux 4.6)"
> +.\" commit 9ecda41acb971ebd07c8fb35faf24005c0baea12
> +This makes the ring buffer is written from end to beginning.
> +This is to support reading from overwritable ring buffer.
> +.TP
> +.IR namespaces " (since Linux 4.11)"
> +.\" commit e422267322cd319e2695a535e47c5b1feeac45eb
> +This enables the generation of
> +.B PERF_RECORD_NAMESPACES
> +records when a task is entering to a new namespace.
> +Each namespace has a combination of device and inode numbers.
> +.TP
> +.IR ksymbol " (since Linux 5.0)"
> +.\" commit 76193a94522f1d4edf2447a536f3f796ce56343b
> +This enables the generation of
> +.B PERF_RECORD_KSYMBOL
> +records when a new kernel symbols are registered or unregistered.
> +This is analyzing dynamic kernel functions like eBPF.
> +.TP
> +.IR bpf_event " (since Linux 5.0)"
> +.\" commit 6ee52e2a3fe4ea35520720736e6791df1fb67106
> +This enables the generation of
> +.B PERF_RECORD_BPF_EVENT
> +records when a eBPF program is loaded or unloaded.
> +.TP
> +.IR auxevent " (since Linux 5.4)"
> +.\" commit ab43762ef010967e4ccd53627f70a2eecbeafefb
> +This allows normal (non-AUX) events to generate data for AUX events
> +if the hardware supports it.
> +.TP
> +.IR cgroup " (since Linux 5.7)"
> +.\" commit 96aaab686505c449e24d76e76507290dcc30e008
> +This enables the generation of
> +.B PERF_RECORD_CGROUP
> +records when a new cgroup is created (and activated).
> +.TP
> +.IR text_poke " (since Linux 5.8)"
> +.\" commit e17d43b93e544f5016c0251d2074c15568d5d963
> +This enables the generation of
> +.B PERF_RECORD_TEXT_POKE
> +records when there's a changes to the kernel text
> +(i.e. self-modifying code).
> +.TP
>  .IR wakeup_events ", " wakeup_watermark
>  This union sets how many samples
>  .RI ( wakeup_events )
> @@ -2131,7 +2197,7 @@ struct {
>      u64    nr;          /* if PERF_SAMPLE_CALLCHAIN */
>      u64    ips[nr];     /* if PERF_SAMPLE_CALLCHAIN */
>      u32    size;        /* if PERF_SAMPLE_RAW */
> -    char  data[size];   /* if PERF_SAMPLE_RAW */
> +    char   data[size];  /* if PERF_SAMPLE_RAW */
>      u64    bnr;         /* if PERF_SAMPLE_BRANCH_STACK */
>      struct perf_branch_entry lbr[bnr];
>                          /* if PERF_SAMPLE_BRANCH_STACK */
> @@ -2148,6 +2214,8 @@ struct {
>      u64    abi;         /* if PERF_SAMPLE_REGS_INTR */
>      u64    regs[weight(mask)];
>                          /* if PERF_SAMPLE_REGS_INTR */
> +    u64    phys_addr;   /* if PERF_SAMPLE_PHYS_ADDR */
> +    u64    cgroup;      /* if PERF_SAMPLE_CGROUP */
>  };
>  .EE
>  .in
> @@ -2570,6 +2638,18 @@ attr field.
>  The number of values is the number of bits set in the
>  .I sample_regs_intr
>  bit mask.
> +.TP
> +.I phys_addr
> +If the
> +.B PERF_SAMPLE_PHYS_ADDR
> +flag is set, then 64-bit physical address is recorded.
> +.TP
> +.I cgroup
> +If the
> +.B PERF_SAMPLE_CGROUP
> +flag is set, then 64-bit cgroup id (for the perf_event subsystem) is recorded.
> +To get the pathname of the cgroup, the id should match to one in a
> +.B PERF_RECORD_CGROUP .
>  .RE
>  .TP
>  .B PERF_RECORD_MMAP2
> @@ -2776,6 +2856,202 @@ or next (if switching out) process on the CPU.
>  The thread ID of the previous (if switching in)
>  or next (if switching out) thread on the CPU.
>  .RE
> +.TP
> +.BR PERF_RECORD_NAMESPACES " (since Linux 4.11)"
> +.\" commit e422267322cd319e2695a535e47c5b1feeac45eb
> +This record includes various namespace information of a process.
> +.IP
> +.in +4n
> +.EX
> +struct {
> +    struct perf_event_header header;
> +    u32 pid;
> +    u32 tid;
> +    u64 nr_namespaces;
> +    struct { u64 dev, inode } [nr_namespaces];
> +    struct sample_id sample_id;
> +};
> +.EE
> +.in
> +.RS
> +.TP
> +.I pid
> +is the process ID
> +.TP
> +.I tid
> +is the thread ID
> +.TP
> +.I nr_namespace
> +is the number of namespaces in this record
> +.RE
> +.IP
> +Each namespace has
> +.I dev
> +and
> +.I inode
> +fields and is recorded in the
> +fixed position like below:
> +.RS
> +.TP
> +.BR NET_NS_INDEX = 0
> +Network namespace
> +.TP
> +.BR UTS_NS_INDEX = 1
> +UTS namespace
> +.TP
> +.BR IPC_NS_INDEX = 2
> +IPC namespace
> +.TP
> +.BR PID_NS_INDEX = 3
> +PID namespace
> +.TP
> +.BR USER_NS_INDEX = 4
> +User namespace
> +.TP
> +.BR MNT_NS_INDEX = 5
> +Mount namespace
> +.TP
> +.BR CGROUP_NS_INDEX = 6
> +Cgroup namespace
> +.RE
> +.TP
> +.BR PERF_RECORD_KSYMBOL " (since Linux 5.0)"
> +.\" commit 76193a94522f1d4edf2447a536f3f796ce56343b
> +This record indicates kernel symbol register/unregister events.
> +.IP
> +.in +4n
> +.EX
> +struct {
> +    struct perf_event_header header;
> +    u64 addr;
> +    u32 len;
> +    u16 ksym_type;
> +    u16 flags;
> +    char name[];
> +    struct sample_id sample_id;
> +};
> +.EE
> +.in
> +.RS
> +.TP
> +.I addr
> +is the address of the kernel symbol
> +.TP
> +.I len
> +is the length of the kernel symbol
> +.TP
> +.I ksym_type
> +is the type of the kernel symbol.
> +Currently following types are available:
> +.RS
> +.TP
> +.B PERF_RECORD_KSYMBOL_TYPE_BPF
> +The kernel symbols is a BPF function.
> +.RE
> +.TP
> +.I flags
> +If the
> +.B PERF_RECORD_KSYMBOL_FLAGS_UNREGISTER
> +is set, then this event is for unregistering the kernel symbol.
> +.RE
> +.TP
> +.BR PERF_RECORD_BPF_EVENT " (since Linux 5.0)"
> +.\" commit 6ee52e2a3fe4ea35520720736e6791df1fb67106
> +This record indicates BPF program is loaded or unloaded.
> +.IP
> +.in +4n
> +.EX
> +struct {
> +    struct perf_event_header header;
> +    u16 type;
> +    u16 flags;
> +    u32 id;
> +    u8 tag[BPF_TAG_SIZE];
> +    struct sample_id sample_id;
> +};
> +.EE
> +.in
> +.RS
> +.TP
> +.I type
> +is one of the following values:
> +.RS
> +.TP
> +.B PERF_BPF_EVENT_PROG_LOAD
> +A BPF program is loaded
> +.TP
> +.B PERF_BPF_EVENT_PROG_UNLOAD
> +A BPF program is unloaded
> +.RE
> +.TP
> +.I id
> +is the id of the BPF program.
> +.TP
> +.I tag
> +is the tag of the BPF program.
> +Currently,
> +.B BPF_TAG_SIZE
> +is defined as 8.
> +.RE
> +.TP
> +.BR PERF_RECORD_CGROUP " (since Linux 5.7)"
> +.\" commit 96aaab686505c449e24d76e76507290dcc30e008
> +This record indicates a new cgroup is created and activated.
> +.IP
> +.in +4n
> +.EX
> +struct {
> +    struct perf_event_header header;
> +    u64 id;
> +    char path[];
> +    struct sample_id sample_id;
> +};
> +.EE
> +.in
> +.RS
> +.TP
> +.I id
> +is the cgroup identifier.
> +This can be also retreived by
> +.BR name_to_handle_at (2)
> +on the cgroup path (as a file handle).
> +.TP
> +.I path
> +is the path of the cgroup from the root.
> +.RE
> +.TP
> +.BR PERF_RECORD_TEXT_POKE " (since Linux 5.8)"
> +.\" commit e17d43b93e544f5016c0251d2074c15568d5d963
> +This record indicates a change in the kernel text.
> +This includes addition and removal of the text
> +and the corresponding length is zero in this case.
> +.IP
> +.in +4n
> +.EX
> +struct {
> +    struct perf_event_header header;
> +    u64 addr;
> +    u16 old_len;
> +    u16 new_len;
> +    u8 bytes[];
> +    struct sample_id sample_id;
> +};
> +.EE
> +.in
> +.RS
> +.TP
> +.I addr
> +is the address of the change
> +.TP
> +.I old_len
> +is the old length
> +.TP
> +.I new_len
> +is the new length
> +.TP
> +.I bytes
> +contains old bytes immediately followed by new bytes.
> +.RE
>  .RE
>  .SS Overflow handling
>  Events can be set to notify when a threshold is crossed,
> 
