Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B2C6168CBFB
	for <lists+linux-man@lfdr.de>; Tue,  7 Feb 2023 02:37:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230152AbjBGBha (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Feb 2023 20:37:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230316AbjBGBh2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Feb 2023 20:37:28 -0500
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com [IPv6:2607:f8b0:4864:20::112c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 778EE34C27;
        Mon,  6 Feb 2023 17:37:25 -0800 (PST)
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-4b718cab0e4so178308627b3.9;
        Mon, 06 Feb 2023 17:37:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=G6OwuI1Rql0AMhO4PrA27bZD0R63IcddXVc3EQfeKFU=;
        b=lxW55L3B/lXBXRwvvAHnJIJgtt6hnY1LzQH4aqFGJaY5IO6kIWfUcTSFuU1OqjCjZM
         Jk8HDyCRaUwQzd0fnIaWdXqbu7q1Q0CqVbBzi2PNJhWp4Pk9EmX5Zn2QCMZQmmTeDjpu
         /frprND0GhVu/OqZmTLRAItuEzUg6mRd1nAVFw4KHNWI4OzGEjr6IY7XC/pGEuGFUOdv
         vL3AiStxVo1y3SRiKt+qHgc+7Xk1+RZVR0GnFaV/NR2o4yxUUdEmOO/b0JCeH5e+zd/N
         FjAbyi6E7UdQj6mt0ToiVgECj04gqJ6V72t8Ac4w6eWIh1jxVcC83/0b6LoA4gKf55SM
         t0cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G6OwuI1Rql0AMhO4PrA27bZD0R63IcddXVc3EQfeKFU=;
        b=U3lr9WOvKi5vBPQ6vkoO/jVh/repF16vNKwj49/aboSAh8y283qTh2zgkW6rcfB//k
         Z9TlP925fUfyqzi9aAEha9nM52GJk+fl0y02ZitT+tQxgRTaDcv0M8UUDgn71mlWgwMN
         AcBJrfyw+MxsBJ/l+mmkOL9gYk4cj6kj4AANILEch2KpgoPlekzezIQPKABNU6Vwcd2g
         Jls4sQ/rFPw0qdDniLD8GP/ZOq1EzDqtOaFK1RPiaNzub2SbAGuFmYEtx9kdkZe0dGsK
         +76zja/oIAu5cjL60pFecTtxhMv/QwXavF8lbL00E3Be7eQsF/RcqHAaSrsq0njJKzNg
         W2FQ==
X-Gm-Message-State: AO0yUKX9CSiG4RnqkzzuyLf8aRgGDKbzw2nWG45iffuoscffRHFAv6Za
        fTI3B03q1Pa2ZuWauVpTrg+/yzXkQe/4XF1vjWg=
X-Google-Smtp-Source: AK7set/NL/NEjT7dHThqg3maBLzFaArCRT/B5J1/RbaQkbNfhKm99nAxmATrA5JXVIfAbx2I30n3sDkverNlBlkuz6M=
X-Received: by 2002:a81:4a46:0:b0:4ff:95a:1aa with SMTP id x67-20020a814a46000000b004ff095a01aamr127646ywa.364.1675733844540;
 Mon, 06 Feb 2023 17:37:24 -0800 (PST)
MIME-Version: 1.0
References: <20230117080846.588289-1-namhyung@gmail.com> <e4f35e3f-b1da-8087-de4b-501504ef3c40@gmail.com>
In-Reply-To: <e4f35e3f-b1da-8087-de4b-501504ef3c40@gmail.com>
From:   Namhyung Kim <namhyung@gmail.com>
Date:   Mon, 6 Feb 2023 17:37:12 -0800
Message-ID: <CAM9d7ciFQ_sSir-DzGMVpRYXtj64fKEcNvOv_5xU8xy_3A1fBQ@mail.gmail.com>
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

On Sun, Feb 5, 2023 at 6:21 AM Alejandro Colomar <alx.manpages@gmail.com> wrote:
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
> > ---
> >   man2/perf_event_open.2 | 201 +++++++++++++++++++++++++++++++++++++++--
> >   1 file changed, 193 insertions(+), 8 deletions(-)
> >
> > diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
> > index 8e94fb4ac..05f06cf68 100644
> > --- a/man2/perf_event_open.2
> > +++ b/man2/perf_event_open.2
>
> [...]
>
> > @@ -2201,7 +2332,9 @@ struct {
> >       char   data[size];  /* if PERF_SAMPLE_STACK_USER */
> >       u64    dyn_size;    /* if PERF_SAMPLE_STACK_USER &&
> >                              size != 0 */
> > -    u64    weight;      /* if PERF_SAMPLE_WEIGHT */
> > +    union perf_sample_weight;
>
> This is a type declaration, but defines no storage.  Did you intend to use it as
> an anonymous union, or did you accidentally miss a variable name?

Oh, I missed the name.  Will update.

Thanks,
Namhyung

>
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
> [...]
>
> --
> <http://www.alejandro-colomar.es/>
> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
