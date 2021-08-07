Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 149A83E379C
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 01:45:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229797AbhHGXps (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 19:45:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229578AbhHGXpq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 19:45:46 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6998DC061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 16:45:27 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id t7-20020a17090a5d87b029017807007f23so25219321pji.5
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 16:45:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=laIQT5UydnIXdS7z5txQBmCoG8ZcMmlD3Ekb/CyvIBs=;
        b=qobRdlDq9Yn09a8MAm2dI0SJTDiFfoZR4LUjw6/sj8Ge7Kl7Yj8gWghqsLOpcTJKwc
         92BrYRQ4L0I/wokKpV5SbjoCHOtq+dX8WNUnm3LdhO3lrxi2zKhw6ybkavLxrsqNM8vS
         WZxX2daTBCnZO7TMRwaHB7rpqmQv9V6P2YG+kDZFub9DZbS9iv1f55oEXCuKT7KVZUdv
         tYRwPrh/uR/kMFSIUYkXGs4Dk9ePQtpmwlKvuktfATcG6kB22IWfKBdOz3rrKsYF++Ot
         dapJno2HDGDisr39RNRPcAeT5uSvOb/w5k7uawne/LDKnclwquRVrt7FBweFk4NOCzPu
         1tjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=laIQT5UydnIXdS7z5txQBmCoG8ZcMmlD3Ekb/CyvIBs=;
        b=UN8nik3Mnd0Pu9sG5MqblPF7OoM9C0GneiOoZMB51oUh9ueukeUxEPejqn4A0GSPFO
         DCa5lq9OpwthQlX3Uv7YL2/bBgUIo7dRDrHCdxsOSZGZ9glaLLO8ZpJkLdPF71ybmvMz
         Piknw7amCs7WAOzzs3f9a7QPUOsdoWzXoRlouecjQlLo6wvlfEhwQK49hyU+HoSVrfdW
         lChH2RVEogUUmByt0O7ysEGk8kabZXK3m+aLEKnQQmALBw2aj302s2R8QI8K3iQtWpn4
         eVyGPqzv8qjl+wL2L5R5/sftvg4XziF4R+8aUOg5CLKRfWvcqjvPk42XTGt8ZUJbeW8H
         s1cQ==
X-Gm-Message-State: AOAM531/NIlsj8d2okbqoYOkOh/G/zU34vgOTWWU2VB6WDR5bRvjS1tV
        GHc9MrrJIOOlWpBylG5nfgo=
X-Google-Smtp-Source: ABdhPJzPQgjzbc+hvwR2q7UZDZ8U/seaoOtMR/pJrTvqjaHU/YWhlF0ityUZln8JibYswNn1CL0GYA==
X-Received: by 2002:a17:90b:2487:: with SMTP id nt7mr12966441pjb.6.1628379926788;
        Sat, 07 Aug 2021 16:45:26 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id 65sm17067605pgi.12.2021.08.07.16.45.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 16:45:26 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jonny Grant <jg@jguk.org>
Subject: Re: [PATCH 30/32] strlen.3, wcslen.3: Add recommendations for safer
 variants
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-31-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0b8006d4-82d3-3896-5ee9-c1efe04a8583@gmail.com>
Date:   Sun, 8 Aug 2021 01:45:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-31-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

I see there was a rather long mail thread that led
to this patch. The patch definitely deserves a commit
message.

See also below.
On 7/28/21 10:20 PM, Alejandro Colomar wrote:
> Reported-by: Jonny Grant <jg@jguk.org>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man3/strlen.3 | 6 ++++++
>  man3/wcslen.3 | 9 ++++++++-
>  2 files changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/man3/strlen.3 b/man3/strlen.3
> index dea4c1050..78783c446 100644
> --- a/man3/strlen.3
> +++ b/man3/strlen.3
> @@ -66,6 +66,12 @@ T}	Thread safety	MT-Safe
>  .sp 1
>  .SH CONFORMING TO
>  POSIX.1-2001, POSIX.1-2008, C89, C99, C11, SVr4, 4.3BSD.
> +.SH NOTES
> +.SS strnlen(3)
> +If the input buffer size is known,
> +it is probably better to use
> +.BR strnlen (3),
> +which can prevent reading past the end of the array.

I hesitate slightly about this. strlen() is in the C standard, but
strnlen() is not. What do you think; do we need to care?


Thanks,

Michael

>  .SH SEE ALSO
>  .BR string (3),
>  .BR strnlen (3),
> diff --git a/man3/wcslen.3 b/man3/wcslen.3
> index af3fcb9ca..fe1d6331b 100644
> --- a/man3/wcslen.3
> +++ b/man3/wcslen.3
> @@ -58,5 +58,12 @@ T}	Thread safety	MT-Safe
>  .sp 1
>  .SH CONFORMING TO
>  POSIX.1-2001, POSIX.1-2008, C99.
> +.SH NOTES
> +.SS wcsnlen(3)
> +If the input buffer size is known,
> +it is probably better to use
> +.BR wcsnlen (3),
> +which can prevent reading past the end of the array.
>  .SH SEE ALSO
> -.BR strlen (3)
> +.BR strlen (3),
> +.BR wcsnlen (3)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
