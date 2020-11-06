Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A24F02A8E70
	for <lists+linux-man@lfdr.de>; Fri,  6 Nov 2020 05:40:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725616AbgKFEkf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Nov 2020 23:40:35 -0500
Received: from mail-wr1-f66.google.com ([209.85.221.66]:46506 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726107AbgKFEkf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Nov 2020 23:40:35 -0500
Received: by mail-wr1-f66.google.com with SMTP id a3so3982772wrx.13;
        Thu, 05 Nov 2020 20:40:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BxG4waHR1+iuHwsmcybPrshfQnIgHnbkn3MhBDhbhVg=;
        b=tY8CdrEZbgZDpY2Q7JW/GXTXOOus/Qrjw/hZJAafZVEWEAH1mBYvJKx59yw7RTM5ai
         D81AVitcABA+hKDECmJP6ziQ17htsa8DDt7gwyDTmWgOrFWefdVKXOSw0NK/wBI9yX0t
         CqrictHULolZNMQVd7y4p8N4FgNveDmrr0R4HTTjepBgEv7+PZcq7EO57l+kZTVc6VQ/
         p1r+CDZucR1j3US9NgyUcfJt8hby1ehJ25OShg4FVECUe1HIBvBVpGAIy/3SGrB4hW2W
         wHXqzHB38ZnmfRypFTH01P53baazsAHOYyIqj41cpwemmSNGVLhvYorLEK1ucoZiUMAv
         8Fbg==
X-Gm-Message-State: AOAM530PCNhNIYE0WcFDpwgA9yyPPtNXBuIHZ+9+I6FuOf+FF88kO+y5
        AStIlK8JHsRBZYb+y39c/xFW7BMkczBLrV24/KI=
X-Google-Smtp-Source: ABdhPJx031S+TXuhxAweix5JE3+6gKbXkCPNTBLXYDDpNhnyRhDYhsjHzLcSFWdOK7+12pwKe020dHMFyEnYb5hWmts=
X-Received: by 2002:adf:ea91:: with SMTP id s17mr393565wrm.349.1604637632082;
 Thu, 05 Nov 2020 20:40:32 -0800 (PST)
MIME-Version: 1.0
References: <20201105082837.271636-1-namhyung@kernel.org> <20201105153009.36415-1-colomar.6.4.3@gmail.com>
In-Reply-To: <20201105153009.36415-1-colomar.6.4.3@gmail.com>
From:   Namhyung Kim <namhyung@kernel.org>
Date:   Fri, 6 Nov 2020 13:40:21 +0900
Message-ID: <CAM9d7cgO78XbErZU8VVSOHyf8_L+O1FVXcwD=H4z-9AptyPEJg@mail.gmail.com>
Subject: Re: [PATCH v2] perf_event_open.2: Update man page with recent changes
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     Michael Kerrisk-manpages <mtk.manpages@gmail.com>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Andi Kleen <ak@linux.intel.com>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Stephane Eranian <eranian@google.com>,
        Ian Rogers <irogers@google.com>, Jiri Olsa <jolsa@redhat.com>,
        Kan Liang <kan.liang@linux.intel.com>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        linux-man@vger.kernel.org,
        linux-perf-users <linux-perf-users@vger.kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Ingo Molnar <mingo@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>,
        Song Liu <songliubraving@fb.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello,

On Fri, Nov 6, 2020 at 12:31 AM Alejandro Colomar
<colomar.6.4.3@gmail.com> wrote:
>
> From: Namhyung Kim <namhyung@gmail.com>
>
> There are lots of changes as usual.  I've tried to fill some missing
> bits in the man page but it'd be nice if you could take a look and put
> more info there.
>
> Signed-off-by: Namhyung Kim <namhyung@gmail.com>
> [colomar.6.4.3@gmail.com: ffix + tfix]
> Co-developed-by : Alejandro Colomar <colomar.6.4.3@gmail.com>
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>
> I wrapped a few lines, and did some formatting fixes to the patch.
> However, there are some parts where
> I found the text to be a bit unclear to me.
> Maybe you could rephrase them:
> - The paragraph right under 'write_backward'.
> - Text right under 'text_poke': "there's a changes"

Yeah, thank you for checking.  I'll update them.

>
> I would cheange
> [[
>     struct { u64 dev, inode } [nr_namespaces];
> ]]
> to
> [[
>     struct {
>         u64 dev;
>         u64 inode;
>     } [nr_namespaces];
> ]]
> Woudln't you?

Yep, will change.

Thanks,
Namhyung

>
>  man2/perf_event_open.2 | 265 ++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 263 insertions(+), 2 deletions(-)
>
> diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
> index 72afafb50..4adeccdde 100644
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
> @@ -854,6 +863,20 @@ is set higher than zero then the register
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
>  .IR "read_format"
> @@ -1189,6 +1212,47 @@ information even with strict
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
> +.IR auxevent " (since Linux 5.4)"
> +.\" commit ab43762ef010967e4ccd53627f70a2eecbeafefb
> +This allows normal (non-AUX) events to generate data for AUX events
> +if the hardware supports it.
> +.IR cgroup " (since Linux 5.7)"
> +.\" commit 96aaab686505c449e24d76e76507290dcc30e008
> +This enables the generation of
> +.B PERF_RECORD_CGROUP
> +records when a new cgroup is created (and activated).
> +.TR
> +.IR text_poke " (since Linux 5.8)"
> +.\" commit e17d43b93e544f5016c0251d2074c15568d5d963
> +This enables the generation of
> +.B PERF_RECORD_TEXT_POKE
> +records when there's a changes to the kernel text
> +(i.e. self-modifying code).
> +.TP
>  .IR "wakeup_events" ", " "wakeup_watermark"
>  This union sets how many samples
>  .RI ( wakeup_events )
> @@ -2101,7 +2165,7 @@ struct {
>      u64    nr;          /* if PERF_SAMPLE_CALLCHAIN */
>      u64    ips[nr];     /* if PERF_SAMPLE_CALLCHAIN */
>      u32    size;        /* if PERF_SAMPLE_RAW */
> -    char  data[size];   /* if PERF_SAMPLE_RAW */
> +    char   data[size];  /* if PERF_SAMPLE_RAW */
>      u64    bnr;         /* if PERF_SAMPLE_BRANCH_STACK */
>      struct perf_branch_entry lbr[bnr];
>                          /* if PERF_SAMPLE_BRANCH_STACK */
> @@ -2118,6 +2182,8 @@ struct {
>      u64    abi;         /* if PERF_SAMPLE_REGS_INTR */
>      u64    regs[weight(mask)];
>                          /* if PERF_SAMPLE_REGS_INTR */
> +    u64    phys_addr;   /* if PERF_SAMPLE_PHYS_ADDR */
> +    u64    cgroup;      /* if PERF_SAMPLE_CGROUP */
>  };
>  .EE
>  .in
> @@ -2744,6 +2810,201 @@ or next (if switching out) process on the CPU.
>  The thread ID of the previous (if switching in)
>  or next (if switching out) thread on the CPU.
>  .RE
> +.TP
> +.BR PERF_RECORD_NAMESPACES " (since Linux 4.11)"
> +.\" commit e422267322cd319e2695a535e47c5b1feeac45eb
> +This record includes various namespace information of a process.
> +.RS
> +.PP
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
> +.TP
> +.I pid
> +is the process ID
> +.TP
> +.I tid
> +is the thread ID
> +.TP
> +.I nr_namespace
> +is the number of namespaces in this record
> +.PP
> +Each namespace has
> +.I dev
> +and
> +.I inode
> +fields and is recorded in the
> +fixed position like below:
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
> +.PP
> +.RE
> +.TP
> +.BR PERF_RECORD_KSYMBOL " (since Linux 5.0)"
> +.\" commit 76193a94522f1d4edf2447a536f3f796ce56343b
> +This record indicates kernel symbol register/unregister events.
> +.RS
> +.PP
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
> +.RS
> +.PP
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
> +.RS
> +.PP
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
> +.RS
> +.PP
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
> --
> 2.28.0
>
