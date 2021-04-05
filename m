Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 979AE354148
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 12:50:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234135AbhDEKtr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 06:49:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237866AbhDEKtq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 06:49:46 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF50EC061788
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 03:49:39 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id x16so10556127wrn.4
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 03:49:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=WRmyqozJtKAirKr6ADn/6arME49PNHlxIiJ29+TrdhE=;
        b=nBKPdI8q0okSUCIZ19kanqjwUgSDN8SnYIFYYTl+x213KaUEgoZ3eMAt1FLaj/gJyW
         hPKxrhxl43WVhei/2Njzg3Z9UC31mgB9Sjy8DzUi1jZQLdPpVYHC1SF7b2m9f4hi+Upi
         1lq51bVsaFCn1mcSlz/swMMIL4/z2b2MnKjyU0q026/LrUvR1YwuS7WBqoUvJQhlCm+5
         CdMVoZHS9JU9niAKnd26fvaA5hCa7Wzx6BIQzhghc4tDqvz3iMz9yE8Iu2fnqZ44o4av
         DeO3vtAeMKalB0guzPcC5HoNM1Rnz8vVXEIVWWFma07cGb9Wp/sksPXevtY1a3exoZ00
         XBqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=WRmyqozJtKAirKr6ADn/6arME49PNHlxIiJ29+TrdhE=;
        b=WCPsu0D1z5GplhmD57imEVdOlRgPDP8OKDMeXR1KVniDrw4P+fDwp/fwDXqeupo4ed
         Kl2Y0strWUzz3619G0FiOCHnLLJtqBH5Ob/4pQZts8VarCy6x51Pg1ziWpvJGRKK3w22
         Jzu4/YcDefXWn0vlsE4p22rJ+TifVlOM1RgANZG2tjPeB/9MUsvGXmcZa2LucxbCcLvl
         0LafcDI4sC5cDLNQI6SW5Mmna8WI7X7ZZbgPwDt8AmnNXqoiiIN0+CR2+GmcldGdzZFR
         aONH2bBGl8s2S9pAK5BDfRjDgb4bve8lGFC/8xP3JL2669d95U9//g7S2ka5xz5s3g53
         AtNQ==
X-Gm-Message-State: AOAM533LYKEbyrQxEZMc40Ox7tlUYUaHN7rGBhO49zK+vhnXeMZ2Q64w
        5V6Q91+Ki/XH7yat0jJ7eEg=
X-Google-Smtp-Source: ABdhPJysYXK9D3By3Fzy6CXTMN5PPOnPetU35kg2fhF9pgoG6Jui4DFcrAxIGVkq3e8IA2SbAce3Xw==
X-Received: by 2002:adf:fc4b:: with SMTP id e11mr7334195wrs.169.1617619778441;
        Mon, 05 Apr 2021 03:49:38 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id s21sm23480960wmc.10.2021.04.05.03.49.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 03:49:37 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 22/35] getpriority.2: Remove unused include
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-23-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <451a4c27-58b7-e9d6-6927-c50ad9735c91@gmail.com>
Date:   Mon, 5 Apr 2021 12:49:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-23-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 4/4/21 1:58 PM, Alejandro Colomar wrote:
> <sys/time.h> is not needed to get the function declaration nor any
> constant used by the function.  It was only needed (before
> POSIX.1) to get 'struct timeval', but that information would be
> more suited for system_data_types(7), and not for this page.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Patch applied.

Thanks,

Michael


> ---
>  man2/getpriority.2 | 13 -------------
>  1 file changed, 13 deletions(-)
> 
> diff --git a/man2/getpriority.2 b/man2/getpriority.2
> index e3d518028..d6744989d 100644
> --- a/man2/getpriority.2
> +++ b/man2/getpriority.2
> @@ -47,7 +47,6 @@
>  getpriority, setpriority \- get/set program scheduling priority
>  .SH SYNOPSIS
>  .nf
> -.B #include <sys/time.h>
>  .B #include <sys/resource.h>
>  .PP
>  .BI "int getpriority(int " which ", id_t " who );
> @@ -209,18 +208,6 @@ the real or effective user ID of the process \fIwho\fP.
>  All BSD-like systems (SunOS 4.1.3, Ultrix 4.2,
>  4.3BSD, FreeBSD 4.3, OpenBSD-2.5, ...) behave in the same
>  manner as Linux 2.6.12 and later.
> -.PP
> -Including
> -.I <sys/time.h>
> -is not required these days, but increases portability.
> -(Indeed,
> -.I <sys/resource.h>
> -defines the
> -.I rusage
> -structure with fields of type
> -.I struct timeval
> -defined in
> -.IR <sys/time.h> .)
>  .\"
>  .SS C library/kernel differences
>  Within the kernel, nice values are actually represented
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
