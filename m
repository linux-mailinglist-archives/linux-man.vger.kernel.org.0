Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E007E7D023A
	for <lists+linux-man@lfdr.de>; Thu, 19 Oct 2023 21:10:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233086AbjJSTK2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Oct 2023 15:10:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232935AbjJSTK1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Oct 2023 15:10:27 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F0E0CF
        for <linux-man@vger.kernel.org>; Thu, 19 Oct 2023 12:10:22 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-9c3aec5f326so247845066b.1
        for <linux-man@vger.kernel.org>; Thu, 19 Oct 2023 12:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697742620; x=1698347420; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NwleYINFk+UtatM33m3Z+ol9FgvT84vYovSTNFlLlJs=;
        b=NEV42PNyoBIQHvbJawm3Q1jtDKHBrFy/JkWJzNtxVlqwmnIhHOfb4NQbOp6zXsHzRd
         NNYydvqoQAZNdll1fKoRYDIKH5aKO8TrAPtTnSE2Io05Uyz/HeNWAenLxlnFY6RehpLC
         hHws7Y5NOf6jAJeMAoevG2it6QEcklId6hYDbB30eujDXWZgo3R12+qiOjQmGa1ZN33M
         cqRMUWIx4hMeyfTRNLO1aaEZ2ibDXUEsJbAzOjTXO52SR5uIproxn+IsXXMYzLRVhaCw
         mz6MRoUUE5wYDOFEb7/gA9CZHqNnXyXs9u8NkzJQli8K8MH9qcA5PnjU1ORq6o91hobB
         V2uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697742620; x=1698347420;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NwleYINFk+UtatM33m3Z+ol9FgvT84vYovSTNFlLlJs=;
        b=CobwzcqP4AgF176i/PVQf43e4tplrP8fRWHcrEEnYkdG3Jc9qY1g9Auj+r7KF26Y0s
         aVAGZclA8YRNhcXLsgTNb4wxXi7bOzPyp53yyMNquVkw/BZUgLwS/8eIAfBu65mQgPrf
         4FAVVPCwpucoJW6sqL2JyBHqm2P478N0TNgY23Q3QTUTwwVBaplIG4cwXNEaWUFIrUW5
         CaCyCVy1jfCvKleH9o94pp4JKrQVbC83Eh5W4c5N3rY5kgSWhnI+lXlQF0fm44JaZxzc
         sJ24Kh+148YMUoNx5rvdJSbv9NZulKX+C/dIfiqxnk9WnvwDaYJOXvn/ATbfYiyX8+8V
         iZNg==
X-Gm-Message-State: AOJu0YzVyz6kzdGsCq7lmfqobUun8WUlsOmRR8L2OSobQmOTl+D4r0Ic
        cOUJneiqDOuOuA9686xStd+qcdUxSLbY1/gTyNM=
X-Google-Smtp-Source: AGHT+IFDZirVvnQycAlobyoWxnjJoCLtAdo+7opBKm0Z/PH2w3/DdyvcWYRF2WurFjYpenR5eVgSA8xkDYMcQ6jw+OE=
X-Received: by 2002:a17:906:c155:b0:9bd:a66a:a22 with SMTP id
 dp21-20020a170906c15500b009bda66a0a22mr2479995ejc.15.1697742620263; Thu, 19
 Oct 2023 12:10:20 -0700 (PDT)
MIME-Version: 1.0
References: <20231019172315.208972-1-adhemerval.zanella@linaro.org>
In-Reply-To: <20231019172315.208972-1-adhemerval.zanella@linaro.org>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Thu, 19 Oct 2023 22:10:07 +0300
Message-ID: <CACKs7VBtQNA-j=HapaBcM47gRE72jaBBU+c59G4Xx3WimPRFsg@mail.gmail.com>
Subject: Re: [PATCH v3] ld.so.8: Describe glibc Hardware capabilities
To:     Adhemerval Zanella <adhemerval.zanella@linaro.org>
Cc:     linux-man@vger.kernel.org, alx@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi and sorry to jump in so late in the discussion,

On Thu, Oct 19, 2023 at 8:23=E2=80=AFPM Adhemerval Zanella
<adhemerval.zanella@linaro.org> wrote:
>
> It was added on glibc 2.33 as a way to improve path search, since
> legacy hardware capabilities combination scheme do not scale
> properly with new hardware support.  The legacy support was removed
> on glibc 2.37, so it is the only scheme currently supported.

I would suggest (caveat: non-native English speaker here):

s/It was added on glibc/The feature was added in glibc/
s/improve path search/improve the path search/
s/since legacy/since the legacy/
s/hardware capabilities combination scheme do not/hardware
capabilities scheme does not/
s/was removed on glibc/was removed in glibc/

>
> Signed-off-by: Adhemerval Zanella <adhemerval.zanella@linaro.org>
> ---
>  man8/ld.so.8 | 48 +++++++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 47 insertions(+), 1 deletion(-)
>
> diff --git a/man8/ld.so.8 b/man8/ld.so.8
> index cf03cb85e..5b02ae88f 100644
> --- a/man8/ld.so.8
> +++ b/man8/ld.so.8
> @@ -208,6 +208,14 @@ The objects in
>  .I list
>  are delimited by colons.
>  .TP
> +.BI \-\-glibc-hwcaps-mask " list"
> +only search built-in subdirectories if in
> +.IR list .
> +.TP
> +.BI \-\-glibc-hwcaps-prepend " list"
> +Search glibc-hwcaps subdirectories in
> +.IR list .
> +.TP
>  .B \-\-inhibit\-cache
>  Do not use
>  .IR /etc/ld.so.cache .
> @@ -808,7 +816,7 @@ as a temporary workaround to a library misconfigurati=
on issue.)
>  .I lib*.so*
>  shared objects
>  .SH NOTES
> -.SS Hardware capabilities
> +.SS Legacy Hardware capabilities (from glibc 2.5 to glibc 2.37)
>  Some shared objects are compiled using hardware-specific instructions wh=
ich do
>  not exist on every CPU.
>  Such objects should be installed in directories whose names define the
> @@ -843,6 +851,44 @@ z900, z990, z9-109, z10, zarch
>  .B x86 (32-bit only)
>  acpi, apic, clflush, cmov, cx8, dts, fxsr, ht, i386, i486, i586, i686, m=
ca, mmx,
>  mtrr, pat, pbe, pge, pn, pse36, sep, ss, sse, sse2, tm
> +.SS glibc Hardware capabilities (from glibc 2.33)
> +The legacy hardware capabilities combinations has the drawback where
> +each feature name incur in
> +cascading extra paths added on the search path list,

IMO, this part could use some rephrasing. How about:
The legacy hardware capabilities support has the drawback that each
feature grows the number of paths added to the search list.

Also, maybe this would better fit under the legacy capabilities section?

> +adding a lot of overhead on
I think "adding a lot of overhead to" sounds better here. "Adding to"
instead of "adding on".

> +.B ld.so
> +during library resolution.
> +For instance, on x86 32-bit, if the hardware
> +supports
> +.B i686
> +and
> +.BR sse2
> +, the resulting search path will be
> +.BR i686/sse2:i686:sse2:. .
> +A new capability
> +.B newcap
> +will set the search path to
> +.BR newcap/i686/sse2:newcap/i686:newcap/sse2:newcap:i686/sse2:i686:sse2:=
 .
> +.PP
> +glibc 2.33 added a new hardware capability scheme,
> +where each ABI can define

Maybe s/each ABI/each ABI version/? I'm not familiar with the feature,
just guessing from the examples below; they were very helpful, IMO.

> +a set of paths based on expected hardware support.

a set of paths where to find the expected hardware support?

This is based on how I (mis)understood the feature, though, if that's
wrong, then the above might also be wrong. I guess the x86-64 glibc
would install the x86-64-v2, -v3 and -v4 directories on disk; when
running a program, glibc can then check what the current CPU supports
- say if it supports x86-64-v3, it loads the contents of that folder?

> +Each path is added depending of the hardware of the machine,
> +and they are not combined together.
> +They also have priority over the legacy hardware capabilities.
> +The following paths are currently supported.
> +.TP
> +.B PowerPC (64-bit little-endian only)
> +power9, power10
> +.TP
> +.B s390 (64-bit only)
> +z13, z14, z15, z16
> +.TP
> +.B x86 (64-bit only)
> +x86-64-v2, x86-64-v3, x86-64-v4
> +.PP
> +The glibc 2.37 removed support for the legacy hardware capabilities.
s/The glibc/glibc

Regards,
Stefan.

> +.
>  .SH SEE ALSO
>  .BR ld (1),
>  .BR ldd (1),
> --
> 2.34.1
>
