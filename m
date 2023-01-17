Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD6B766D77B
	for <lists+linux-man@lfdr.de>; Tue, 17 Jan 2023 09:05:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233018AbjAQIFs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Jan 2023 03:05:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235927AbjAQIFq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Jan 2023 03:05:46 -0500
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E37C265A8;
        Tue, 17 Jan 2023 00:05:45 -0800 (PST)
Received: by mail-yb1-f179.google.com with SMTP id 20so13954133ybl.0;
        Tue, 17 Jan 2023 00:05:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VwqywEpqq5Wuk4mpUe19rgA3pGWov02RQsLMYSpB86s=;
        b=6tE35DIfT9aaRhASc9eC+XkZzvLOhNznGmXnSlNjx4ZxG0LK/ZLDi9oNTCJv6T8aya
         zMQVtJdqmhryURyXTVNRd1+JdVr7gDIPGTPU+7vaA6i/9/TIcP4QCfo4yu/DRvft7X2m
         VH2shUnJ370OM2uU8vD5Q0HyPAtryR7iWnwEBXtiQpMsq6TwqgpZSLuSKgwm//mIF/8c
         UoDRx9ApXrp/GgAXClrSbGZ5I6ayRe6Ge/A0QYKYlekD8xl65CTKXnXt0Ao2XLHsMyTh
         21IwuKwXson9OBtwxIDchzEtN6vpoXnavl7jwZvlXAS2tECJtZgMd+nPB7A6MPhCgjTH
         LgKg==
X-Gm-Message-State: AFqh2kqzdQuTv1SN0/Q73zQ7BEW3RT11Oh216B5OTDrWOAeVRVU4+ND+
        B9RE/PfC3T4Bc3X228B3dm7GJEfH0cMMGlPMzSs=
X-Google-Smtp-Source: AMrXdXulkVwQ72ePef34imUrJfWxWOL4J+2K0Ur4x0sZ7HLBzVDOS9aiVdouRYpfuF2hXvcOjTeu+NyV05KjQNx64g4=
X-Received: by 2002:a25:3296:0:b0:7eb:94c:3d23 with SMTP id
 y144-20020a253296000000b007eb094c3d23mr288191yby.146.1673942744200; Tue, 17
 Jan 2023 00:05:44 -0800 (PST)
MIME-Version: 1.0
References: <20230104061715.1412340-1-namhyung@kernel.org> <aee81286-b870-ac69-5e5d-d53a9ce2d040@gmail.com>
In-Reply-To: <aee81286-b870-ac69-5e5d-d53a9ce2d040@gmail.com>
From:   Namhyung Kim <namhyung@kernel.org>
Date:   Tue, 17 Jan 2023 00:05:32 -0800
Message-ID: <CAM9d7cge6kDX=yhGudCvGyNBavpn8LsOqyV4bw1q_rirt5Ss0w@mail.gmail.com>
Subject: Re: [PATCH v2] perf_event_open.2: Update recent changes
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

On Sat, Jan 7, 2023 at 2:53 PM Alejandro Colomar <alx.manpages@gmail.com> wrote:
>
> Hi Namhyung,
>
> On 1/4/23 07:17, Namhyung Kim wrote:
> > Add missing perf_event_attr fields, new event codes and sample type.
> > Also add descriptions for PERF_FORMAT_LOST.
> >
> > Signed-off-by: Namhyung Kim <namhyung@kernel.org>
>
> Thanks for the revised patch!  Please see some minor comments below.

Sorry for the late reply and thanks for your review!

>
> > ---

[SNIP]
> > @@ -2201,7 +2332,9 @@ struct {
> >       char   data[size];  /* if PERF_SAMPLE_STACK_USER */
> >       u64    dyn_size;    /* if PERF_SAMPLE_STACK_USER &&
> >                              size != 0 */
> > -    u64    weight;      /* if PERF_SAMPLE_WEIGHT */
> > +    union perf_sample_weight;
> > +                        /* if PERF_SAMPLE_WEIGHT */
> > +                        /* || PERF_SAMPLE_WEIGHT_STRUCT */
> >       u64    data_src;    /* if PERF_SAMPLE_DATA_SRC */
> >       u64    transaction; /* if PERF_SAMPLE_TRANSACTION */
> >       u64    abi;         /* if PERF_SAMPLE_REGS_INTR */
> > @@ -2209,6 +2342,12 @@ struct {
> >                           /* if PERF_SAMPLE_REGS_INTR */
> >       u64    phys_addr;   /* if PERF_SAMPLE_PHYS_ADDR */
> >       u64    cgroup;      /* if PERF_SAMPLE_CGROUP */
> > +    u64    data_page_size;
> > +                      /* if PERF_SAMPLE_DATA_PAGE_SIZE */
> > +    u64    code_page_size;
> > +                      /* if PERF_SAMPLE_CODE_PAGE_SIZE */
> > +    u64    size;        /* if PERF_SAMPLE_AUX */
> > +    char   data[size];  /* if PERF_SAMPLE_AUX */
> >   };
> >   .EE
> >   .in
> > @@ -2410,7 +2549,7 @@ is 0.
> >   .TP
> >   .I weight
> >   If
> > -.B PERF_SAMPLE_WEIGHT
> > +.B PERF_SAMPLE_WEIGHT "or" PERF_SAMPLE_WEIGHT_STRUCT
>
> These should go in separate lines (otherwise, whitespaces are missing):
>
> .B FOO
> or
> .B BAR

Sure, will change.

>
> >   is enabled, then a 64-bit value provided by the hardware
> >   is recorded that indicates how costly the event was.
> >   This allows expensive events to stand out more clearly
> > @@ -2643,7 +2782,28 @@ If the
> >   flag is set,
> >   then the 64-bit cgroup ID (for the perf_event subsystem) is recorded.
> >   To get the pathname of the cgroup, the ID should match to one in a
> > -.B PERF_RECORD_CGROUP .
> > +.BR PERF_RECORD_CGROUP .
> > +.TP
> > +.I data_page_size
> > +If the
> > +.B PERF_SAMPLE_DATA_PAGE_SIZE
> > +flag is set,
> > +then the 64-bit page size value of the
> > +.B data
> > +address is recorded.
> > +.TP
> > +.I code_page_size
> > +If the
> > +.B PERF_SAMPLE_CODE_PAGE_SIZE
> > +flag is set,
> > +then the 64-bit page size value of the
> > +.B ip
> > +address is recorded.
> > +.TP
> > +.IR size ", " data[size]
>
> I prefer having them in separate lines (I know the current page already has that
> ugly stuff, but I'd rather write new stuff properly):
>
> .TP
> .I size
> .TQ
> .IR data [ size ]
>
> TQ is a continuation tag for TP.

Ok, good to know.

>
> > +If
> > +.B PERF_SAMPLE_AUX
> > +is enabled, then a snapshot of the aux buffer is recorded.
> >   .RE
> >   .TP
> >   .B PERF_RECORD_MMAP2
> > @@ -2653,7 +2813,9 @@ calls returning executable mappings.
> >   The format is similar to that of the
> >   .B PERF_RECORD_MMAP
> >   record, but includes extra values that allow uniquely identifying
> > -shared mappings.
> > +shared mappings.  Depending on the
>
> Please _always_ break lines after a period (and usually also after a comma; and
> before an opening parenthesis, or after a closing one).  But for periods it's a
> rather hard rule.

I see.  Will change.

Thanks,
Namhyung


>
> > +.B PERF_RECORD_MISC_MMAP_BUILD_ID
> > +bit in the header, the extra values have different layout and meanings.
> >   .IP
> >   .in +4n
> >   .EX
> > @@ -2664,10 +2826,20 @@ struct {
> >       u64    addr;
> >       u64    len;
> >       u64    pgoff;
> > -    u32    maj;
> > -    u32    min;
> > -    u64    ino;
> > -    u64    ino_generation;
> > +    union {
> > +        struct {
> > +            u32    maj;
> > +            u32    min;
> > +            u64    ino;
> > +            u64    ino_generation;
> > +        };
> > +        struct {   /* if PERF_RECORD_MISC_MMAP_BUILD_ID */
> > +            u8     build_id_size;
> > +            u8     __reserved_1;
> > +            u16    __reserved_2;
> > +            u8     build_id[20];
> > +        };
> > +    };
> >       u32    prot;
> >       u32    flags;
> >       char   filename[];
> > @@ -2704,6 +2876,14 @@ is the inode number.
> >   .I ino_generation
> >   is the inode generation.
> >   .TP
> > +.I build_id_size
> > +is the actual size of
> > +.I build_id
> > +field (up to 20).
> > +.TP
> > +.I build_id
> > +is a raw data to identify a binary.
> > +.TP
> >   .I prot
> >   is the protection information.
> >   .TP
>
> --
> <http://www.alejandro-colomar.es/>
