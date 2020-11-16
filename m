Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B45202B4A9E
	for <lists+linux-man@lfdr.de>; Mon, 16 Nov 2020 17:20:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731826AbgKPQRc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 Nov 2020 11:17:32 -0500
Received: from mail-qk1-f195.google.com ([209.85.222.195]:34262 "EHLO
        mail-qk1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731748AbgKPQRc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 Nov 2020 11:17:32 -0500
Received: by mail-qk1-f195.google.com with SMTP id n132so17293180qke.1;
        Mon, 16 Nov 2020 08:17:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ov7U5yXKhLuhcQC1fGncjWe/UHf+tHHo3yNi1ukGuL8=;
        b=uPISUEqdENxfGMsw6qtdsPYMfny7AdAQC5x3xHB38Apu0HWrUCR3tT9x1aMyHKo1x3
         UsuK2a672kx5haEj2JtiG8zb/9dhOve4AZ5BO4FR7Bc77fMiHja5sibIXnD26ev5AYb0
         +B1cj9nMn5sWcoGOEIctvrbEPIgg/kMVhx7IdjSqbytrAB4stLHzSj6iflXJNwFENK9Y
         3ZQBjKL6P4hoFJ1XCDypmlLMxPsWKh1IIgzSbKr0PkNcof7KzFWn3pIHXj9iAeV0+n57
         XwVw2bAydWFIifW6cOIAkUWfB3cKbkcKH4eyDH7Uv2hxCFD9JKf7PLHhemHBFI2mxsRh
         OvXw==
X-Gm-Message-State: AOAM532ajgZLLsR9xqc5f3WtTjt/xcL3XdR2P8PzR/ERiofEmXW4m7/X
        akDsNbNx1GAU4S9lJLYJ8uWVERGctNk9kHO+/Hg=
X-Google-Smtp-Source: ABdhPJxqPHsmlbpoOEqrSp+djFRcl7Pp/zQsoKDY5QA4oY+mSNgj8qfz5D3xey/XQzSdQ8z29cR847SfVXWTY4tqBks=
X-Received: by 2002:a37:652:: with SMTP id 79mr16003166qkg.144.1605543449349;
 Mon, 16 Nov 2020 08:17:29 -0800 (PST)
MIME-Version: 1.0
References: <20201112103240.18363-1-alx.manpages@gmail.com> <20201113212622.15031-1-alx.manpages@gmail.com>
In-Reply-To: <20201113212622.15031-1-alx.manpages@gmail.com>
From:   Namhyung Kim <namhyung@kernel.org>
Date:   Tue, 17 Nov 2020 01:17:17 +0900
Message-ID: <CAM9d7cjfbF7vR8dOM0EWSESEkO5m+AyawunNg4C3y8kziNNRdg@mail.gmail.com>
Subject: Re: [PATCH v4] perf_event_open.2: Update man page with recent changes
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk-manpages <mtk.manpages@gmail.com>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Alejandro Colomar <colomar.6.4.3@gmail.com>,
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

Hello Alex,

On Sat, Nov 14, 2020 at 6:28 AM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
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
>
> Hi Nahmyung,
>
> I fixed another typo,
> and mainly fixed many formatting changes I introduced
> a few days ago because we were discussing about
> trying to improve the formatting,
> but finally decided to continue with the old way.

Thanks a lot for fixing them!

I also found a broken formatting below and would like
to add more description of PERF_RECORD_SAMPLE.

>
>  man2/perf_event_open.2 | 267 ++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 265 insertions(+), 2 deletions(-)
>
> diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
> index e7b0aa132..e1c7789b9 100644
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
> @@ -1202,6 +1225,48 @@ information even with strict
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

.TP

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
> @@ -2131,7 +2196,7 @@ struct {
>      u64    nr;          /* if PERF_SAMPLE_CALLCHAIN */
>      u64    ips[nr];     /* if PERF_SAMPLE_CALLCHAIN */
>      u32    size;        /* if PERF_SAMPLE_RAW */
> -    char  data[size];   /* if PERF_SAMPLE_RAW */
> +    char   data[size];  /* if PERF_SAMPLE_RAW */
>      u64    bnr;         /* if PERF_SAMPLE_BRANCH_STACK */
>      struct perf_branch_entry lbr[bnr];
>                          /* if PERF_SAMPLE_BRANCH_STACK */
> @@ -2148,6 +2213,8 @@ struct {
>      u64    abi;         /* if PERF_SAMPLE_REGS_INTR */
>      u64    regs[weight(mask)];
>                          /* if PERF_SAMPLE_REGS_INTR */
> +    u64    phys_addr;   /* if PERF_SAMPLE_PHYS_ADDR */
> +    u64    cgroup;      /* if PERF_SAMPLE_CGROUP */

I think I should add description for these fields too:

.TP
.I phys_addr
If the
.B PERF_SAMPLE_PHYS_ADDR
flag is set, then 64-bit physical address is recorded.
.TP
.i cgroup
If the
.B PERF_SAMPLE_CGROUP
flag is set, then 64-bit cgroup id (for the perf_event subsystem) is recorded.
To get the pathname of the cgroup, the id should match to one in a
.B PERF_RECORD_CGROUP .

Thanks,
Namhyung


>  };
>  .EE
>  .in
> @@ -2776,6 +2843,202 @@ or next (if switching out) process on the CPU.
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
> --
> 2.28.0
>
