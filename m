Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D3CE3ADC5E
	for <lists+linux-man@lfdr.de>; Sun, 20 Jun 2021 04:39:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230331AbhFTClz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 19 Jun 2021 22:41:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230236AbhFTClz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 19 Jun 2021 22:41:55 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E4A4C061574
        for <linux-man@vger.kernel.org>; Sat, 19 Jun 2021 19:39:42 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id m15-20020a17090a5a4fb029016f385ffad0so5313094pji.0
        for <linux-man@vger.kernel.org>; Sat, 19 Jun 2021 19:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=HGWeSdhqd515AxOLab24ln2eXM1nRb3eMjajuSs/o78=;
        b=Y5azgShdXpGTNqC8wE66qB001W3pW11hglITObgjX6GsjmswyaBO/NnF50/N7zl078
         N5B2L86JQjM6ZLALzB9U3BSAbVLoISuhwqEgaYgyJ48YTas5/oL4Dsug2BgRXvdXW7wp
         ImtUqtVY0b204LKgcBY/Ad2w9e1ATcKVRCRz7IoYDKMe9LfoNGGuD4GvdW//OdWwAi2n
         ylFg1XUAHqrgqmtcElLmFx+majZ6XcrIo/D4jCjkcX/ZUMSBvohZkHJM5aI0LlE+6Xaq
         N/2Ocgxj71Y9xrW/912s/M0jHF4C1iw2BQng+O3QI1K/FChTuFHm1SQDZCnfSS5W/I5I
         RlIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=HGWeSdhqd515AxOLab24ln2eXM1nRb3eMjajuSs/o78=;
        b=BKgg/gZ28ahTRoYXbo2z/94F/poAPxKxPACSzoZq7+/km6rWsRNdtwkCbHUS9aDuhd
         Sl1RFz4p0AVmFPsMe+HN/I7+EVELwyjs8B4H4bCE/+vgbUva8n139/WOX5bhZTOnOHbs
         SvCpuT4xvgm1lSgjVxw1Yg3w+4lnoZTIxiiIpWRi4iKUBgg5FpNtShWvC41t5ip+QJeI
         oB1zYLe5S824CXzdeXi/HoqKZAQKUJo5xXhecFVKk/NbuQAgqSemFllahi/sejLaLFdT
         hKaKSatj61VQ7u1dRIu5VkhnPcYtxbmfSJOo0+40nw0+7yJSrH3b2F6XpMnSfnb6ZaBB
         2fPQ==
X-Gm-Message-State: AOAM532SoYgaJTBm9+Qk4GevozUFvamu+Rl8cvicBLuCrKiOEneLSIQX
        og/6I4ON9tr6X9F1TM0vpiM=
X-Google-Smtp-Source: ABdhPJyyH46KX0/8yzDyRL3xp+UHxkvsZf4k5/FxZ48ROT05LryXkJRU3ICMwhWubqT7pjQjzo564A==
X-Received: by 2002:a17:90a:8816:: with SMTP id s22mr19455054pjn.231.1624156781852;
        Sat, 19 Jun 2021 19:39:41 -0700 (PDT)
Received: from [192.168.1.70] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id r10sm13151799pga.48.2021.06.19.19.39.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Jun 2021 19:39:40 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, Paul Eggert <eggert@cs.ucla.edu>
Subject: Re: [PATCH v3] MAX.3, MIN.3: New pages to document MAX() and MIN()
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <688adf87-e108-b4dd-66dd-ae9c4d7afdf8@cs.ucla.edu>
 <20210512225130.43044-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <050302e6-c80c-efeb-a291-01a3801ecd5e@gmail.com>
Date:   Sun, 20 Jun 2021 14:39:33 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210512225130.43044-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/13/21 10:51 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> Cc: Paul Eggert <eggert@cs.ucla.edu>
> ---
> 
> v2:
> 	wfix
> v3:
> 	Adress Paul's review (rewrote most sections, and added BUGS and NOTES).

Thanks.

Patch applied.

Cheers,

Michael

>  man3/MAX.3 | 90 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  man3/MIN.3 |  1 +
>  2 files changed, 91 insertions(+)
>  create mode 100644 man3/MAX.3
>  create mode 100644 man3/MIN.3
> 
> diff --git a/man3/MAX.3 b/man3/MAX.3
> new file mode 100644
> index 000000000..38d019a2d
> --- /dev/null
> +++ b/man3/MAX.3
> @@ -0,0 +1,90 @@
> +.\" Copyright (C) 2021 Alejandro Colomar <alx.manpages@gmail.com>
> +.\"
> +.\" %%%LICENSE_START(VERBATIM)
> +.\" Permission is granted to make and distribute verbatim copies of this
> +.\" manual provided the copyright notice and this permission notice are
> +.\" preserved on all copies.
> +.\"
> +.\" Permission is granted to copy and distribute modified versions of this
> +.\" manual under the conditions for verbatim copying, provided that the
> +.\" entire resulting derived work is distributed under the terms of a
> +.\" permission notice identical to this one.
> +.\"
> +.\" Since the Linux kernel and libraries are constantly changing, this
> +.\" manual page may be incorrect or out-of-date.  The author(s) assume no
> +.\" responsibility for errors or omissions, or for damages resulting from
> +.\" the use of the information contained herein.  The author(s) may not
> +.\" have taken the same level of care in the production of this manual,
> +.\" which is licensed free of charge, as they might when working
> +.\" professionally.
> +.\"
> +.\" Formatted or processed versions of this manual, if unaccompanied by
> +.\" the source, must acknowledge the copyright and authors of this work.
> +.\" %%%LICENSE_END
> +.\"
> +.TH MAX 3 2020-11-01 "Linux" "Linux Programmer's Manual"
> +.SH NAME
> +MAX, MIN \- maximum or minimum of two values
> +.SH SYNOPSIS
> +.nf
> +.B #include <sys/param.h>
> +.PP
> +.BI MAX( a ", " b );
> +.BI MIN( a ", " b );
> +.fi
> +.SH DESCRIPTION
> +These macros return the maximum or minimum of
> +.I a
> +and
> +.IR b .
> +.SH RETURN VALUE
> +These macros return the value of one of their arguments,
> +possibly converted to a different type (see BUGS).
> +.SH ERRORS
> +These macros may raise the "invalid" floating-point exception
> +when any of the arguments is NaN.
> +.SH CONFORMING TO
> +These nonstandard macros are present in glibc and the BSDs.
> +.SH NOTES
> +If either of the arguments is of a floating-point type,
> +you might prefer to use
> +.BR fmax (3)
> +or
> +.BR fmin (3),
> +which can handle NaN.
> +.PP
> +The arguments may be evaluated more than once, or not at all.
> +.PP
> +Some UNIX systems might provide these macros in a different header,
> +or not at all.
> +.SH BUGS
> +Due to the usual arithmetic conversions,
> +the result of these macros may be very different from either of the arguments.
> +To avoid this, ensure that both arguments have the same type.
> +.SH EXAMPLES
> +.EX
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <sys/param.h>
> +
> +int
> +main(int argc, char *argv[])
> +{
> +    int a, b, x;
> +
> +    if (argc != 3) {
> +        fprintf(stderr, "Usage: %s <num> <num>\en", argv[0]);
> +        exit(EXIT_FAILURE);
> +    }
> +
> +    a = atoi(argv[1]);
> +    b = atoi(argv[2]);
> +    x = MAX(a, b);
> +    printf("MAX(%d, %d) is %d\en", a, b, x);
> +
> +    exit(EXIT_SUCCESS);
> +}
> +.EE
> +.SH SEE ALSO
> +.BR fmax (3),
> +.BR fmin (3)
> diff --git a/man3/MIN.3 b/man3/MIN.3
> new file mode 100644
> index 000000000..9938abda2
> --- /dev/null
> +++ b/man3/MIN.3
> @@ -0,0 +1 @@
> +.so man3/MAX.3
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
