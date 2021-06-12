Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 17DCD3A4DB5
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:36:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230012AbhFLIip (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:38:45 -0400
Received: from mail-wm1-f46.google.com ([209.85.128.46]:42730 "EHLO
        mail-wm1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229584AbhFLIin (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:38:43 -0400
Received: by mail-wm1-f46.google.com with SMTP id l7-20020a05600c1d07b02901b0e2ebd6deso9920129wms.1
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:36:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=E1OmEWyTxSwx53cZyOS6ar3gXCWnYLccMSf/+1B185c=;
        b=XXADpmEQxU8oAjCQY3t7loskdoToQ+A5uhV7UtLb+RLd36su7dgJTk1WxaWS/u7t8E
         AnZVEsH9a1Zzqiv2b+n5TQ+/NzIU1uHKGPc7UnPgqIcoIt3jvWJ9yAjGIXjJkWjZ/uc9
         i6Oa94YfzmhIbkoLUyC7jHlEMD07Z7PzEnPZMBy7GqQrYa6Liv64NE4pJOoWQZUUvjJU
         u80p2CEwMAdAqCH9AtZvZMbBSnXGKwhUfjPwixmFvjrYjTRlLr/Y/juDCyDCO4yIdbp9
         PoNwgUkMJaeWFCuIJcjsiORv+wUwtJ0m1w3JB5nO3tJd94R/rWovGVw19OQpfQghFeSS
         OBIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=E1OmEWyTxSwx53cZyOS6ar3gXCWnYLccMSf/+1B185c=;
        b=BfO/9DOPuOD/LOif3xJFqH22F0ErRq20+pfC2zjXj6Jpl2sQNY7MCzMXWF5Ca8+wxT
         w5u10nV8W+5H1e80OGTGM7KUs46zDZO9CTOzmAMDh6HcSOF4aCc9qTfUo8g62Y7CONUm
         a0gyk5pa8yAapDhqfreQYKWUhZHxqwa9tsFKs7fkIEv+AwJWOpnpLs61vCcAi4jZwD1k
         b7IwNtBsbEn+FwVF9C+dyGPGDrFrCJr2UC25sYLwRiAnyIYLS1lkIV2inIjGJFRHszLE
         GkxIVyZ3lKMz9IkfifkYOAw89VLnTqu75UVjSoQ2ff6gm1dk8J8qsHHP5i4GOLAhyL9F
         NBiQ==
X-Gm-Message-State: AOAM530drndUMj/7oClkfJqHqVREKeSzqfKBwuB3VXmtVjLTfTMMvWmj
        ZixTFlz6BJKQElVH0OzbuM4=
X-Google-Smtp-Source: ABdhPJy/bFHlxVzh/1n9uhNV/7CgcmCcQTS1zndUCvVrKZxkNxXbCVfdYYQbyEejYrBPED/TB3JC/w==
X-Received: by 2002:a05:600c:3795:: with SMTP id o21mr7442074wmr.99.1623486930733;
        Sat, 12 Jun 2021 01:35:30 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id a10sm8009512wrr.48.2021.06.12.01.35.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Jun 2021 01:35:30 -0700 (PDT)
Subject: Ping: [PATCH v3] MAX.3, MIN.3: New pages to document MAX() and MIN()
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Paul Eggert <eggert@cs.ucla.edu>
References: <688adf87-e108-b4dd-66dd-ae9c4d7afdf8@cs.ucla.edu>
 <20210512225130.43044-1-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <4a253e9e-06dd-7c20-a6c1-b0a684ad741d@gmail.com>
Date:   Sat, 12 Jun 2021 10:35:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210512225130.43044-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Ping

On 5/13/21 12:51 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> Cc: Paul Eggert <eggert@cs.ucla.edu>
> ---
> 
> v2:
> 	wfix
> v3:
> 	Adress Paul's review (rewrote most sections, and added BUGS and NOTES).
> 
> 
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
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
