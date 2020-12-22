Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A4BCA2E0A14
	for <lists+linux-man@lfdr.de>; Tue, 22 Dec 2020 13:34:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726867AbgLVMeB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Dec 2020 07:34:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726526AbgLVMeA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Dec 2020 07:34:00 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3DA0C06179C
        for <linux-man@vger.kernel.org>; Tue, 22 Dec 2020 04:33:19 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id i9so14380771wrc.4
        for <linux-man@vger.kernel.org>; Tue, 22 Dec 2020 04:33:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Pw3ScKFNOmHQNopK+wVhPZ7sGGOnuzibGp3JbI1veWk=;
        b=Ud8DEzvunHDBwUNDlVnp1aqRVuh1Clr7JSM9caBQt6a7tykb/z2gEYruFeg7kkI2ZP
         UMhVbMsLAHilC1QWk12wRMSOfSCPSXx9a/zBmAViFy2+oipkLbDoG72XXvYfNIu7u+io
         0xAE7tbLbNcBMOLIHagHW5itOjlVSzXzHENxYwU1KZsIQLQDxQIYmHh19lqbwn00zlXO
         DzUNgAs9l1QCf4TK05fOnTUeEoIQBlA0kVp1IYP8kI0YSAbNlVQCcpW14/KLboyLchYF
         1JtHSMF0rnafAL9T0E93v16lDKdYh/I2WUJGtaeUgarFsh7yOCExFt5ooBeN0dUMJN30
         ttRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Pw3ScKFNOmHQNopK+wVhPZ7sGGOnuzibGp3JbI1veWk=;
        b=WwZYNi7IdQHexVNrOgaYbA4EzZFPpCrjVMh89slgl+JSCDIAMpKXSuLgn7tq+WHnRL
         iROMUTAS2xVGG0ZeULz169rjOZu8g9K81inkr62Vq0btow7ZEIJeFaovX8O1ijv/JlYa
         Wkb9RGpa8rSRNyOaac4zT3qJ/EXgsWpumMX3V8BgLoaWiNUrTrSfpIhMkjj2StZWVn4D
         DrL0CJrvCeIXimcjDWg1tJG4XkXlXB2vCaNuTC/aDeTkqt61qX7FHy8ppymuwLnzGygQ
         LGCZUH5/1l0W+O6KH2j7u+KZporiBmr9RzEAoSTazkbOvtSC0mHwfyWTGKAAH7Gn4zQh
         eq3g==
X-Gm-Message-State: AOAM53077qVDwfUrXutVB3Qpd34SmRfNYOq5AK8kWEw+mRTEQ4tr6yUP
        7xWZS/R+41kQ17ArENCM1+rdyNxiwCQ=
X-Google-Smtp-Source: ABdhPJyUhFYTRAwsIAlnEpJFKGYs59ioTj1qoFUH/jY/lg9/KMT5SLJH4Ke/9D+oSjc/RWDe+xqJeA==
X-Received: by 2002:adf:efc5:: with SMTP id i5mr23415855wrp.377.1608640398750;
        Tue, 22 Dec 2020 04:33:18 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id a17sm31784312wrs.20.2020.12.22.04.33.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Dec 2020 04:33:18 -0800 (PST)
Subject: Re: [patch] syscall.2: Update superh syscall convention
To:     =?UTF-8?Q?Peter_Fr=c3=b6hlich?= <peter.hans.froehlich@gmail.com>,
        Rich Felker <dalias@libc.org>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
References: <CAHXXO6EzZ-3iRj9tm-4N4-nrWDy44sZX=bq9N0wmL5L=PmWYLg@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <e85efdb1-c26a-540b-cc17-bcf088492c35@gmail.com>
Date:   Tue, 22 Dec 2020 13:33:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <CAHXXO6EzZ-3iRj9tm-4N4-nrWDy44sZX=bq9N0wmL5L=PmWYLg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Peter,

I found Rich's email on the lkml archives.

Thanks,

Alex

On 12/22/20 1:28 PM, Peter Fröhlich wrote:
> I noticed this while working on some silly "hello, world" programs,
> see https://git.sr.ht/~phf/hello-again if you're curious.
> Disassembling sh4 code showed trap #31 all over the place but the
> syscall(2) man page talked about trap #0x17 and friends. Checking the
> kernel sources I got lucky in arch/sh/kernel/entry-common.S where in
> commit 3623d138213ae Rich Felker clarifies the situation. (I would
> have cc'ed Rich but I cannot find his email.) I've attached the patch
> since I am less than convinced that gmail will properly preserve it
> inline.
> 
> ---
>  man2/syscall.2 | 14 ++++----------
>  1 file changed, 4 insertions(+), 10 deletions(-)
> 
> diff --git a/man2/syscall.2 b/man2/syscall.2
> index 986db9d11..87de539dd 100644
> --- a/man2/syscall.2
> +++ b/man2/syscall.2
> @@ -216,7 +216,7 @@ powerpc64    sc    r0    r3    -    cr0.SO    1
>  riscv    ecall    a7    a0    a1    -
>  s390    svc 0    r1    r2    r3    -    3
>  s390x    svc 0    r1    r2    r3    -    3
> -superh    trap #0x17    r3    r0    r1    -    4, 6
> +superh    trapa #31    r3    r0    r1    -    4, 6
>  sparc/32    t 0x10    g1    o0    o1    psr/csr    1, 6
>  sparc/64    t 0x6d    g1    o0    o1    psr/csr    1, 6
>  tile    swint1    R10    R00    -    R01    1
> @@ -252,15 +252,9 @@ For s390 and s390x,
>  .I "svc\ NR"
>  if it is less than 256.
>  .IP [4]
> -On SuperH, the trap number controls the maximum number of arguments passed.
> -A
> -.IR "trap\ #0x10"
> -can be used with only 0-argument system calls, a
> -.IR "trap\ #0x11"
> -can be used with 0- or 1-argument system calls,
> -and so on up to
> -.IR "trap #0x17"
> -for 7-argument system calls.
> +On SuperH additional trap numbers are supported for historic reasons, but
> +.BR trapa #31
> +is the recommended "unified" ABI.
>  .IP [5]
>  The x32 ABI shares syscall table with x86-64 ABI, but there are some
>  nuances:
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
