Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D6F165B99A
	for <lists+linux-man@lfdr.de>; Tue,  3 Jan 2023 04:14:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230368AbjACDOA convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Mon, 2 Jan 2023 22:14:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230071AbjACDN7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Jan 2023 22:13:59 -0500
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDF777672;
        Mon,  2 Jan 2023 19:13:57 -0800 (PST)
Received: by mail-io1-f48.google.com with SMTP id d123so16079277iof.6;
        Mon, 02 Jan 2023 19:13:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vOg91VcfaFTW+CSrd+jO5VrMROcNCvwc4P+42jgro8A=;
        b=jqm5euGSc8uH/S/R1znX+5HQ1oKrh8W5llnTDg2J1R6Ieg46zB3orymSi/N3SZ2VAw
         ZhKYgqRRgeJIG3rUwHjGGqdcDxntpF3mISce80wsovc+eAtfMwY2rlQ5z39uAupWcbA0
         pn3rGyiP56JlhnUio6tirT0OU4UFeU17mhUtj9BYDZQKfE1briJAqmwyT3OQ7jVrSz5l
         c5rDoaZuY1iSHeSfk3Yee95nJXn4nEm0wy2ZpyW3wmQhMqTSdJF2CjAIDyWtaIXSOhXa
         1PCovQgx4ub9WlTsOknmsFd0IRNQUWzTggF4TncZR4QLu64gaGISM1Ey+j8Sv0qsYGBU
         Qufw==
X-Gm-Message-State: AFqh2kp8EpU1fqBw2KdEc78uxwJ/uodaVns9HPZNqjJFpxlD/6AMN+a/
        GdUeQ3sQ9p4GMQDxesdsD22zT7/AxQzCFl/ukazG90M9rSk=
X-Google-Smtp-Source: AMrXdXtjuVItx9BtDHzW8SdCM6Clo4Dyg6Rha1rWUD374sCM9PQACkYcPevnQ3h0Bj6LsQA7+h/W5S9eZ/T8jypbvr0=
X-Received: by 2002:a6b:4a04:0:b0:6ed:1e9c:f64 with SMTP id
 w4-20020a6b4a04000000b006ed1e9c0f64mr3093571iob.11.1672715637123; Mon, 02 Jan
 2023 19:13:57 -0800 (PST)
MIME-Version: 1.0
References: <20221228021651.1027725-1-namhyung@kernel.org> <55416c53-1633-2c9c-e51c-cc96e27b4b11@gmail.com>
In-Reply-To: <55416c53-1633-2c9c-e51c-cc96e27b4b11@gmail.com>
From:   Namhyung Kim <namhyung@kernel.org>
Date:   Mon, 2 Jan 2023 19:13:45 -0800
Message-ID: <CAM9d7ci1wwqcBtu0RxeoiNqmDMAnaUnzEv9jTbFNjw+VnGinBA@mail.gmail.com>
Subject: Re: [PATCH] perf_event_open.2: Update recent changes
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
        Peter Zijlstra <peterz@infradead.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Jiri Olsa <jolsa@kernel.org>,
        Alexei Starovoitov <ast@kernel.org>,
        Marco Elver <elver@google.com>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Kan Liang <kan.liang@linux.intel.com>,
        Stephane Eranian <eranian@google.com>,
        linux-perf-users@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

Happy new year!

On Wed, Dec 28, 2022 at 12:18 PM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Hi Namhyung,
>
> On 12/28/22 03:16, Namhyung Kim wrote:
> > Add missing perf_event_attr fields, new event codes and sample type.
> > Also add descriptions for PERF_FORMAT_LOST.
> >
> > Signed-off-by: Namhyung Kim <namhyung@kernel.org>
>
> Please see a few comments below.  You can check that some of them trigger new
> warnings.  See the CONTRIBUTING file, section 'Description::Lint' to learn more
> how to run these linters.

Thanks for your review, I'll check the linters.

>
> Alex
>
> > ---
> >   man2/perf_event_open.2 | 196 ++++++++++++++++++++++++++++++++++++++---
> >   1 file changed, 185 insertions(+), 11 deletions(-)
> >
> > diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
> > index 8e94fb4ac..6bddf6857 100644
> > --- a/man2/perf_event_open.2
> > +++ b/man2/perf_event_open.2
> > @@ -245,8 +245,12 @@ struct perf_event_attr {
> >                                      instead of events */
> >             cgroup         :  1,  /* include cgroup events */
> >             text_poke      :  1,  /* include text poke events */
> > +          build_id       :  1,  /* use build id in mmap2 events */
> > +          inherit_thread :  1,  /* children only inherit if cloned with CLONE_THREAD */
> > +          remove_on_exec :  1,  /* event is removed from task on exec */
> > +          sigtrap        :  1,  /* send synchronous SIGTRAP on event */
>
> The 3 lines above run past the 80 column.  Please break the comment into several
> lines.

Ok, will do.

>
> >
> > -          __reserved_1   : 30;
> > +          __reserved_1   : 26;
> >
> >       union {
> >           __u32 wakeup_events;    /* wakeup every n events */
> > @@ -277,6 +281,9 @@ struct perf_event_attr {
> >       __u32 aux_watermark;        /* aux bytes before wakeup */
> >       __u16 sample_max_stack;     /* max frames in callchain */
> >       __u16 __reserved_2;         /* align to u64 */
> > +    __u32 aux_sample_size;      /* max aux sample size */
> > +    __u32 __reserved_3;         /* align to u64 */
> > +    __u64 sig_data;             /* user data for sigtrap */
> >
> >   };
> >   .EE
> > @@ -538,6 +545,19 @@ Informational sample record types such as mmap or comm
> >   must be associated with an active event.
> >   This dummy event allows gathering such records without requiring
> >   a counting event.
> > +.TP
> > +.BR PERF_COUNT_SW_BPF_OUTPUT " (since Linux 4.4)"
> > +.\" commit a43eec304259a6c637f4014a6d4767159b6a3aa3
> > +This is used to generate raw sample data from BPF.
> > +BPF programs can write to this event using
> > +.B bpf_perf_event_output
> > +helper.
> > +.TP
> > +.BR PERF_COUNT_SW_CGROUP_SWITCHES " (since Linux 5.13)"
> > +.\" commit d0d1dd628527c77db2391ce0293c1ed344b2365f
> > +This counts context switches to a task in a different cgroup.
> > +In other words, if the next task is in the same cgroup, it won't
>
> Please use semantic newlines.  See man-pages(7):

Got it, thanks.

>
>     Use semantic newlines
>         In  the source of a manual page, new sentences should be started on new
>         lines, long sentences should be split into lines at clause breaks (com‐
>         mas, semicolons, colons, and so on), and long clauses should  be  split
>         at  phrase  boundaries.   This convention, sometimes known as "semantic
>         newlines", makes it easier to see the effect of  patches,  which  often
>         operate at the level of individual sentences, clauses, or phrases.
>
>
> > +count the switch.
> >   .RE
> >   .PP
> >   .RS
> > @@ -879,7 +899,42 @@ This corresponds to the
> >   field in the
> >   .B PERF_RECORD_CGROUP
> >   event.
> > -.RE
> > +.TP
> > +.BR PERF_SAMPLE_DATA_PAGE_SIZE " (since Linux 5.11)"
> > +.\" commit 8d97e71811aaafe4abf611dc24822fd6e73df1a1
> > +Records page size of data like in
> > +.BR PERF_SAMPLE_ADDR .
> > +.TP
> > +.BR PERF_SAMPLE_CODE_PAGE_SIZE " (since Linux 5.11)"
> > +.\" commit 995f088efebe1eba0282a6ffa12411b37f8990c2
> > +Records page size of ip like in
> > +.BR PERF_SAMPLE_IP .
> > +.TP
> > +.BR PERF_SAMPLE_WEIGHT_STRUCT " (since Linux 5.12)"
> > +.\" commit 2a6c6b7d7ad346f0679d0963cb19b3f0ea7ef32c
> > +Records hardware provided weight values like in
> > +.BR PERF_SAMPLE_WEIGHT ,
> > +but it can represent multiple values in a struct.
> > +This shares the same space as the
> > +.BR PERF_SAMPLE_WEIGHT ,
> > +so users can apply either of those, not the both.
> > +When used, it would have the following format and
> > +the meaning of each fields is dependent to the
> > +hardware implementation.
> > +.PP
> > +.in +4n
> > +.EX
> > +union perf_sample_weight {
> > +    u64    full;         /* PERF_SAMPLE_WEIGHT */
> > +    struct {
> > +        u32    var1_dw;  /* PERF_SAMPLE_WEIGHT_STRUCT */
> > +        u16    var2_w;
> > +        u16    var3_w;
> > +    };
> > +};
> > +.EE
> > +.in
> > +.PP
>
> This .PP is meaningless just before another paragraphing macro (.TP).  It can be
> removed.

Ah, ok.

>
> >   .TP
> >   .I read_format
> >   This field specifies the format of the data returned by
> > @@ -908,6 +963,15 @@ Adds a 64-bit unique value that corresponds to the event group.
> >   .TP
> >   .B PERF_FORMAT_GROUP
> >   Allows all counter values in an event group to be read with one read.
> > +.TP
> > +.B PERF_FORMAT_LOST " (since Linux 6.0)"
> > +.\" commit 119a784c81270eb88e573174ed2209225d646656
> > +Adds a 64-bit value that is the number of lost samples for this event.
> > +This would be only meaningful when
> > +.I sample_period
> > +or
> > +.I sample_freq
> > +is set.
> >   .RE
> >   .TP
> >   .I disabled
> > @@ -1243,7 +1307,7 @@ This enables the generation of
> >   .B PERF_RECORD_BPF_EVENT
> >   records when an eBPF program is loaded or unloaded.
> >   .TP
> > -.IR auxevent " (since Linux 5.4)"
> > +.IR aux_output " (since Linux 5.4)"
> >   .\" commit ab43762ef010967e4ccd53627f70a2eecbeafefb
> >   This allows normal (non-AUX) events to generate data for AUX events
> >   if the hardware supports it.
> > @@ -1261,6 +1325,31 @@ This enables the generation of
> >   records when there's a change to the kernel text
> >   (i.e., self-modifying code).
> >   .TP
> > +.IR build_id " (since Linux 5.12)"
> > +.\" commit 88a16a1309333e43d328621ece3e9fa37027e8eb
> > +This changes the contents in the
> > +.B PERF_RECORD_MMAP2
> > +to have a build-id instead of device and inode numbers.
> > +.TP
> > +.IR inherit_thread " (since Linux 5.13)"
> > +.\" commit 2b26f0aa004995f49f7b6f4100dd0e4c39a9ed5f
> > +This disables the inheritance of the event to a child process.
> > +Only new threads in the same process (which is cloned with
> > +.B CLONE_THREAD
>
> This would add a space before the ')'.  You need to place it in the same source
> line:
>
> .BR CLONE_THREAD )

Will update.

>
> > +) will inherit the event.
> > +.TP
> > +.IR remove_on_exec " (since Linux 5.13)"
> > +.\" commit 2e498d0a74e5b88a6689ae1b811f247f91ff188e
> > +This closes the event when it starts a new process image by
> > +.BR execve (2)
> > +system call.
> > +.TP
> > +.IR sigtrap " (since Linux 5.13)"
> > +.\" commit 97ba62b278674293762c3d91f724f1bb922f04e0
> > +This enables synchronous signal delivery of
> > +.B SIGTRAP
> > +on event overflow.
> > +.TP
> >   .IR wakeup_events ", " wakeup_watermark
> >   This union sets how many samples
> >   .RI ( wakeup_events )
> > @@ -1471,6 +1560,19 @@ includes
> >   .BR PERF_SAMPLE_CALLCHAIN ,
> >   this field specifies how many stack frames to report when
> >   generating the callchain.
> > +.TP
> > +.IR aux_sample_size " (since Linux 5.5)"
> > +.\" commit a4faf00d994c40e64f656805ac375c65e324eefb
> > +When
> > +.B PERF_SAMPLE_AUX
> > +flag is set, specify the desired size of AUX data.
> > +Note that it can get smaller data than the specified size.
> > +.TP
> > +.IR sig_data " (since Linux 5.13)"
> > +.\" commit 97ba62b278674293762c3d91f724f1bb922f04e0
> > +This data will be copied to user's signal handler (through
> > +.I si_perf
> > +in the siginfo_t) to disambiguate which event triggered the signal.
>
> Types should be in italics:
>
> .IR siginfo_t )

Ok.

>
> >   .SS Reading results
> >   Once a
> >   .BR perf_event_open ()
> > @@ -1502,6 +1604,7 @@ struct read_format {
> >       struct {
> >           u64 value;     /* The value of the event */
> >           u64 id;        /* if PERF_FORMAT_ID */
> > +        u64 lost;      /* if PERF_FORMAT_LOST */
> >       } values[nr];
> >   };
> >   .EE
> > @@ -1520,6 +1623,7 @@ struct read_format {
> >       u64 time_enabled;  /* if PERF_FORMAT_TOTAL_TIME_ENABLED */
> >       u64 time_running;  /* if PERF_FORMAT_TOTAL_TIME_RUNNING */
> >       u64 id;            /* if PERF_FORMAT_ID */
> > +    u64 lost;          /* if PERF_FORMAT_LOST */
> >   };
> >   .EE
> >   .in
> > @@ -1551,6 +1655,12 @@ A globally unique value for this particular event; only present if
> >   .B PERF_FORMAT_ID
> >   was specified in
> >   .IR read_format .
> > +.TP
> > +.I lost
> > +The number of lost samples of this event; only present if
> > +.B PERF_FORMAT_LOST
> > +was specified in
> > +.IR read_format .
> >   .SS MMAP layout
> >   When using
> >   .BR perf_event_open ()
> > @@ -2002,6 +2112,22 @@ to the actual instruction that triggered the event.
> >   See also
> >   .IR perf_event_attr.precise_ip .
> >   .TP
> > +.BR PERF_RECORD_MISC_SWITCH_OUT_PREEMPT " (since Linux 4.17)"
> > +.\" commit 101592b4904ecf6b8ed2a4784d41d180319d95a1
> > +When a
> > +.B PERF_RECORD_SWITCH
> > +or
> > +.B PERF_RECORD_SWITCH_CPU_WIDE
> > +record is generated, this indicates the context switch
> > +was a preemption.
> > +.TP
> > +.BR PERF_RECORD_MISC_MMAP_BUILD_ID " (since Linux 5.12)"
> > +.\" commit 88a16a1309333e43d328621ece3e9fa37027e8eb
> > +This indicates that the content of
> > +.B PERF_SAMPLE_MMAP2
> > +contains build-ID data instead of device major and minor numbers
> > +as well as the inode number.
> > +.TP
> >   .BR PERF_RECORD_MISC_EXT_RESERVED " (since Linux 2.6.35)"
> >   .\" commit 1676b8a077c352085d52578fb4f29350b58b6e74
> >   This indicates there is extended data available (currently not used).
> > @@ -2201,7 +2327,8 @@ struct {
> >       char   data[size];  /* if PERF_SAMPLE_STACK_USER */
> >       u64    dyn_size;    /* if PERF_SAMPLE_STACK_USER &&
> >                              size != 0 */
> > -    u64    weight;      /* if PERF_SAMPLE_WEIGHT */
> > +    union perf_sample_weight;
> > +                        /* if PERF_SAMPLE_WEIGHT || PERF_SAMPLE_WEIGHT_STRUCT */
>
> The line above runs past 80 column.

Right, will break.

>
> >       u64    data_src;    /* if PERF_SAMPLE_DATA_SRC */
> >       u64    transaction; /* if PERF_SAMPLE_TRANSACTION */
> >       u64    abi;         /* if PERF_SAMPLE_REGS_INTR */
> > @@ -2209,6 +2336,12 @@ struct {
> >                           /* if PERF_SAMPLE_REGS_INTR */
> >       u64    phys_addr;   /* if PERF_SAMPLE_PHYS_ADDR */
> >       u64    cgroup;      /* if PERF_SAMPLE_CGROUP */
> > +    u64    data_page_size;
> > +                        /* if PERF_SAMPLE_DATA_PAGE_SIZE */
>
> The line above runs past 80 column.
>
> > +    u64    code_page_size;
> > +                        /* if PERF_SAMPLE_CODE_PAGE_SIZE */
>
> The line above runs past 80 column.
>

Hmm.. they don't run past 80 column by themselves.
Will they get merged somehow?

Thanks,
Namhyung
