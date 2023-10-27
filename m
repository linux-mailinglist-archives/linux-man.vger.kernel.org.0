Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D7CA37D92E5
	for <lists+linux-man@lfdr.de>; Fri, 27 Oct 2023 10:58:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234963AbjJ0I6I (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 27 Oct 2023 04:58:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231340AbjJ0I6H (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 27 Oct 2023 04:58:07 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA22BBD
        for <linux-man@vger.kernel.org>; Fri, 27 Oct 2023 01:58:04 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-53dd3f169d8so2720969a12.3
        for <linux-man@vger.kernel.org>; Fri, 27 Oct 2023 01:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698397083; x=1699001883; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=inE8R/K+jLPknNlkLWQJwXldWu+jcYxbMH/dHart2Bs=;
        b=PtF75HZm0rMDr6epPcef55BNA52Ft87PWIBlT2ED82uCTvXQzd7VAKrOuxwIuyyIe5
         wGZRqwLCz40+eNZZEGe90T0oS0Wdd7O0BfzAkQNfA3UVPBMqQuW4j6lO/WPccJSAmuQS
         EraQpcV5p7hARQFjCuMfmOQU/Gm/i6GrUjP8rMDEbxKkP8Ri891F5c2Z4mazm/3qjKa6
         ZYtUgpIM1TwMQgi/RvBnCu+GeAOUfQ6aBnVlrYhootDZ1Bs7eAtfbCdKR6occSyyknlZ
         PptqHcknWr9/3T5ty5h9Fk9GdgvQFlWISAz575OnkshJkfqEIUYagWMnfqsN6Lrrg1+g
         Q+cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698397083; x=1699001883;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=inE8R/K+jLPknNlkLWQJwXldWu+jcYxbMH/dHart2Bs=;
        b=RmFMuziho82no4s0+iLITZXCZPUULkpJ9Tey0E5n2xdXg/CkcuTvaIEcWM+i54kcZH
         bln2zwGTUelK4vMT9Ksny14e6MKIi1wc3fLfkqy9n7BnQ/7SIYVLq1Ipyd2S0jSQcMuL
         cX2Xo+KfWp1EQuNd+WNyr4CzOM2ZIq+JSdyoqVCnJ4aY+/70rxavH0XZSba+oS7WxaCI
         3ECdz5TQ2QZ24KJjP/6TlXHcs3lutOpKzsdXpwWSoFcJSbK3EANF9SVRjr+1Zp1YbxY+
         OdAXQB3hMt3xjPMNiDi9Jv1la+JnBmmXJ0M+IfILTKzUghph8l90GC9pdYVG0rsY5uJt
         1UIw==
X-Gm-Message-State: AOJu0YwvRLw/cFH9I8FOuG5eNSJViMrQRdJtsbiV1B/ctPOabMtUK6I5
        ij+rvUojD4iEqmJKMQSnQq3VWGa2CZUfgya2fyc=
X-Google-Smtp-Source: AGHT+IGSkegLtx2MPp56fcWebQOVFnKzE4M9Xg89TScahhhbi1R7dgoDTGVNR5njAhv1daRl6luMZr6/rbexvoWIgAw=
X-Received: by 2002:aa7:d1c9:0:b0:53e:5dad:dce0 with SMTP id
 g9-20020aa7d1c9000000b0053e5daddce0mr1826797edp.3.1698397082908; Fri, 27 Oct
 2023 01:58:02 -0700 (PDT)
MIME-Version: 1.0
References: <20231026182802.2194109-1-adhemerval.zanella@linaro.org>
In-Reply-To: <20231026182802.2194109-1-adhemerval.zanella@linaro.org>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Fri, 27 Oct 2023 11:57:51 +0300
Message-ID: <CACKs7VAV4aamaYe3b-6XDdxwUrbp8xTrJYCQB4bj+QET7MK0tA@mail.gmail.com>
Subject: Re: [PATCH v4] ld.so.8: Describe glibc Hardware capabilities
To:     Adhemerval Zanella <adhemerval.zanella@linaro.org>
Cc:     linux-man@vger.kernel.org, alx@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Oct 26, 2023 at 9:28=E2=80=AFPM Adhemerval Zanella
<adhemerval.zanella@linaro.org> wrote:
>
> The feature was added on glibc 2.33 as a way to improve the path
> search, since the legacy hardware capabilities combination scheme
> does not scale properly with new hardware support.  The legacy support
> was removed non glibc 2.37, so it is the only scheme currently
> supported.
>
> Signed-off-by: Adhemerval Zanella <adhemerval.zanella@linaro.org>
> ---
>  man8/ld.so.8 | 63 +++++++++++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 62 insertions(+), 1 deletion(-)
>
> diff --git a/man8/ld.so.8 b/man8/ld.so.8
> index cf03cb85e..ed27744cb 100644
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
> @@ -843,6 +851,59 @@ z900, z990, z9-109, z10, zarch
>  .B x86 (32-bit only)
>  acpi, apic, clflush, cmov, cx8, dts, fxsr, ht, i386, i486, i586, i686, m=
ca, mmx,
>  mtrr, pat, pbe, pge, pn, pse36, sep, ss, sse, sse2, tm
> +.PP
> +The legacy hardware capabilities support has the drawback that each
> +new feature added grows the search path exponentially, because it has
> +to be added to every combination of the other existing features.
> +.PP
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
> +.SS glibc Hardware capabilities (from glibc 2.33)
> +.TP
> +.\" The initial discussion on various pitfalls of the old scheme is
> +.\" https://sourceware.org/pipermail/libc-alpha/2020-May/113757.html
> +.\" and the patchset that proposes the glibc-hwcap support is
> +.\" https://sourceware.org/pipermail/libc-alpha/2020-June/115250.html
> +glibc 2.33 added a new hardware capability scheme, where under each
> +CPU architecture, certain levels can be defined, grouping support for
> +certain features or special instructions. Each architecture level has
> +a fixed set of paths that it adds to the dynamic linker search list,
> +depending on the hardware of the machine. Since each new architecture
> +level is not combined with previously existing ones, the new scheme
> +does not have the drawback of growing the dynamic linker search list
> +uncontrollably.
> +.PP
> +For instance, on x86 64-bit, if the hardware supports
> +.B x86_64-v3
> +(for instance Intel Haswell or AMD Excavator)
> +, the resulting search path will be
> +.BR glibc-hwcaps/x86-64-v3:glibc-hwcaps/x86-64-v2:.
> +.\" The x86_64 architectures levels are defined the official ABI:
> +.\" https://gitlab.com/x86-psABIs/x86-64-ABI/-/blob/master/x86-64-ABI/lo=
w-level-sys-info.tex
> +.\" The PowerPC and s390x are glibc defined ones based on chip
> +.\" support (which maps to ISA levels).
> +The following paths are currently supported, in priority order.
> +.TP
> +.B PowerPC (64-bit little-endian only)
> +power10, power9
> +.TP
> +.B s390 (64-bit only)
> +z16, z15, z14, z13
> +.TP
> +.B x86 (64-bit only)
> +x86-64-v4, x86-64-v3, x86-64-v2
> +.PP
> +glibc 2.37 removed support for the legacy hardware capabilities.
> +.
>  .SH SEE ALSO
>  .BR ld (1),
>  .BR ldd (1),

LGTM, thanks!

Stefan.

> --
> 2.34.1
>
