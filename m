Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D62B1683469
	for <lists+linux-man@lfdr.de>; Tue, 31 Jan 2023 18:58:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229891AbjAaR6W (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 31 Jan 2023 12:58:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229504AbjAaR6V (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 31 Jan 2023 12:58:21 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5F0EBBAE;
        Tue, 31 Jan 2023 09:58:19 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id m7so15006036wru.8;
        Tue, 31 Jan 2023 09:58:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=reIAf1p0AEq2JtStfehR8b/OOB16OVLP11HGRW3DLQ0=;
        b=JC/0lmDX/3Wc/m+ij95nFPWc+NO92zVbqThUuixnawIeoB6NdJOwszRZ5J68DsRHBZ
         xi3S0wdI5R1vFXZBM+bCnMTh2dojWYfXFbjKRtwRJtlE0hbHzkFn3aX/B5WoTCG49FKP
         qtddTBGYbDp9Orv6OUDZV+obvHGqPquuefVdfSq+AmFjDBzyrc4MujY4pPYfxvR2EeA7
         ve4l+2Qni7LDLGNk67OBxP/6NgMyx1kYyKQ9Wxg80TdrBjgeTlkRSE6h2T7OuwBMDpZW
         B6M5pQ9xPMxw6YUge1+tOLiSzY/KY//hgcHmgP4otal1hpwFZ2hVL4P3RfDa1iR1EB0I
         AWvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=reIAf1p0AEq2JtStfehR8b/OOB16OVLP11HGRW3DLQ0=;
        b=d8/zx85dOgQ8G51+9zwmjjhfq/0Rk4wrhJK+hkIlVq/jJUu0fFlHPkzhGweVdjekqx
         +u1ktVCzapRQTYmXo+XDDezY5fJgz0JyNbx3Q7dZs3kCu3cVyMJtu95auzr1SwLXFa11
         ql6uFXtviYtzfBB0TF1adi3aD/hjOSIAwedHzBvmXR+8fZcynFKrk3AEWUEFN31DqcDp
         oIFJa8d2Ta6JfpqK9EdqZz/lPwBdBGJWanYMn31N0mJblML8seyJL78i+1ot1l9mzjWd
         VozX4FzKCwbO+W/3t3Kq8yYeXyeDx7ixA9JzLapwQ5hAOqkDncaGAx0S2H07RIVfchNL
         nGZQ==
X-Gm-Message-State: AO0yUKVdqibd17vNR7rAnaTNHgQC3O2jLj4VXfhOxx6c1+cm/yJDc5fK
        gNr7SmP/TlVQt6lOU3F3wlmibTDR/HIkx1+8AKw=
X-Google-Smtp-Source: AK7set9H0VHHUYwYWnqCSqtlPUCcVnYgC688FW/VooZhYeeT4jX1IGu3S8wMufrhjIrT6CIbDS/ka1szyQohlFjbOKQ=
X-Received: by 2002:adf:a219:0:b0:2bf:d6c8:2b60 with SMTP id
 p25-20020adfa219000000b002bfd6c82b60mr898036wra.685.1675187898142; Tue, 31
 Jan 2023 09:58:18 -0800 (PST)
MIME-Version: 1.0
References: <20230117080846.588289-1-namhyung@gmail.com> <fae3dd39-f86d-97d9-ff9f-d03686cf820d@gmail.com>
In-Reply-To: <fae3dd39-f86d-97d9-ff9f-d03686cf820d@gmail.com>
From:   Namhyung Kim <namhyung@gmail.com>
Date:   Tue, 31 Jan 2023 09:58:06 -0800
Message-ID: <CAM9d7cgaTgapo5JGfgesnOt0+SNQ9JMD-j0EHQ202gJMrP_4=g@mail.gmail.com>
Subject: Re: [PATCH v3] perf_event_open.2: Update recent changes
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
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

Sorry for the late reply.

On Thu, Jan 19, 2023 at 5:41 AM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Hi Namhyung,
>
> On 1/17/23 09:08, Namhyung Kim wrote:
> > From: Namhyung Kim <namhyung@kernel.org>
> >
> > Add missing perf_event_attr fields, new event codes and sample type.
> > Also add descriptions for PERF_FORMAT_LOST.
> >
> > Signed-off-by: Namhyung Kim <namhyung@kernel.org>
>
> Thanks!  Just a minor question.

Sure.

>
> > ---
> >   man2/perf_event_open.2 | 201 +++++++++++++++++++++++++++++++++++++++--
> >   1 file changed, 193 insertions(+), 8 deletions(-)
> >
> > diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
> > index 8e94fb4ac..05f06cf68 100644
> > --- a/man2/perf_event_open.2
> > +++ b/man2/perf_event_open.2
> [...]
>
> > @@ -2704,6 +2881,14 @@ is the inode number.
> >   .I ino_generation
> >   is the inode generation.
> >   .TP
> > +.I build_id_size
> > +is the actual size of
> > +.I build_id
> > +field (up to 20).
>
> Do we want to document this limit?  Is it some contract that we want to offer to
> users?  Or is it just an implementation detail that might change?

It's highly unlikely to change the max build-id size due to the
format of the event record.  So I think it's good to document
the limit.

>
> > +.TP
> > +.I build_id
> > +is a raw data to identify a binary.
> > +.TP
> >   .I prot
> >   is the protection information.
> >   .TP
>
> Apart from that, I'll apply the following cosmetic changes to your patch, if you
> agree.

Please go ahead.

Thanks,
Namhyung


> ---
>
> diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
> index 05f06cf68..abfa59efa 100644
> --- a/man2/perf_event_open.2
> +++ b/man2/perf_event_open.2
> @@ -918,21 +918,22 @@ .SS Arguments
>   Records hardware provided weight values like in
>   .BR PERF_SAMPLE_WEIGHT ,
>   but it can represent multiple values in a struct.
> -This shares the same space as the
> +This shares the same space as
>   .BR PERF_SAMPLE_WEIGHT ,
> -so users can apply either of those, not the both.
> -When used, it would have the following format and
> -the meaning of each fields is dependent to the
> -hardware implementation.
> +so users can apply either of those,
> +not both.
> +It has the following format and
> +the meaning of each fields is
> +dependent on the hardware implementation.
>   .PP
>   .in +4n
>   .EX
>   union perf_sample_weight {
> -    u64    full;         /* PERF_SAMPLE_WEIGHT */
> +    u64  full;           /* PERF_SAMPLE_WEIGHT */
>       struct {             /* PERF_SAMPLE_WEIGHT_STRUCT */
> -        u32    var1_dw;
> -        u16    var2_w;
> -        u16    var3_w;
> +        u32  var1_dw;
> +        u16  var2_w;
> +        u16  var3_w;
>       };
>   };
>   .EE
> @@ -1337,15 +1338,15 @@ .SS Arguments
>   .IR inherit_thread " (since Linux 5.13)"
>   .\" commit 2b26f0aa004995f49f7b6f4100dd0e4c39a9ed5f
>   This disables the inheritance of the event to a child process.
> -Only new threads in the same process (which is cloned with
> +Only new threads in the same process
> +(which is cloned with
>   .BR CLONE_THREAD )
>   will inherit the event.
>   .TP
>   .IR remove_on_exec " (since Linux 5.13)"
>   .\" commit 2e498d0a74e5b88a6689ae1b811f247f91ff188e
>   This closes the event when it starts a new process image by
> -.BR execve (2)
> -system call.
> +.BR execve (2).
>   .TP
>   .IR sigtrap " (since Linux 5.13)"
>   .\" commit 97ba62b278674293762c3d91f724f1bb922f04e0
> @@ -1568,12 +1569,14 @@ .SS Arguments
>   .\" commit a4faf00d994c40e64f656805ac375c65e324eefb
>   When
>   .B PERF_SAMPLE_AUX
> -flag is set, specify the desired size of AUX data.
> +flag is set,
> +specify the desired size of AUX data.
>   Note that it can get smaller data than the specified size.
>   .TP
>   .IR sig_data " (since Linux 5.13)"
>   .\" commit 97ba62b278674293762c3d91f724f1bb922f04e0
> -This data will be copied to user's signal handler (through
> +This data will be copied to user's signal handler
> +(through
>   .I si_perf
>   in the
>   .IR siginfo_t )
> @@ -1662,7 +1665,8 @@ .SS Reading results
>   .IR read_format .
>   .TP
>   .I lost
> -The number of lost samples of this event; only present if
> +The number of lost samples of this event;
> +only present if
>   .B PERF_FORMAT_LOST
>   was specified in
>   .IR read_format .
> @@ -2123,8 +2127,8 @@ .SS MMAP layout
>   .B PERF_RECORD_SWITCH
>   or
>   .B PERF_RECORD_SWITCH_CPU_WIDE
> -record is generated, this indicates the context switch
> -was a preemption.
> +record is generated,
> +this indicates the context switch was a preemption.
>   .TP
>   .BR PERF_RECORD_MISC_MMAP_BUILD_ID " (since Linux 5.12)"
>   .\" commit 88a16a1309333e43d328621ece3e9fa37027e8eb
> @@ -2804,10 +2808,11 @@ .SS MMAP layout
>   .TP
>   .I size
>   .TQ
> -.IR data [size]
> +.IR data [ size ]
>   If
>   .B PERF_SAMPLE_AUX
> -is enabled, then a snapshot of the aux buffer is recorded.
> +is enabled,
> +a snapshot of the aux buffer is recorded.
>   .RE
>   .TP
>   .B PERF_RECORD_MMAP2
> @@ -2820,7 +2825,8 @@ .SS MMAP layout
>   shared mappings.
>   Depending on the
>   .B PERF_RECORD_MISC_MMAP_BUILD_ID
> -bit in the header, the extra values have different layout and meanings.
> +bit in the header,
> +the extra values have different layout and meanings.
>   .IP
>   .in +4n
>   .EX
>
>
> --
> <http://www.alejandro-colomar.es/>
