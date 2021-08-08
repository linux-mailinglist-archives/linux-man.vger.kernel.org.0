Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8352F3E37B0
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 02:21:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229865AbhHHAVj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 20:21:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229797AbhHHAVj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 20:21:39 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E01AFC061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 17:21:20 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id q11so4096020wrr.9
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 17:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=bRc5/fQ8TjxkpkMNBWVO1dbKuNE9MrEtCt52guKjMZ4=;
        b=AND2F+SpDDwn3SteAquSCCDozv2cQigM+zJ0zkYN9epm81xM87feLSTkHtQozoG6iE
         UHO+Viix7rmWJBCMljCtL7GmOhK+Mq+bOQkMaaokqbLYeKj9kSWMqAUmjHS601pfVCku
         VkLt4oVrFpFUL4qkmjGtnyfLQ9L3bAYXMZPfay3m6A7j5b9uGrSVco1Gb3qUZ+8OnEdS
         SNKerIfGOUqTl2KWOp/TMExedow0HJzBosFi2sFHgJp/FZUYRNRxTdGmxNdzS2VyiTXq
         MwamTRcLAB+gt+Fh58dP3MvW//jyqVZgibs4PZxeBlzqO8FSzx1dsU39T7uu8vLijSoX
         kuLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=bRc5/fQ8TjxkpkMNBWVO1dbKuNE9MrEtCt52guKjMZ4=;
        b=kpwWwraiPI/UDWQLZN0zzr/ZFTZVaw87Pdul2T0qHV2VK8jZZ/arK2sL8pQFPp459h
         UcX8qEfycHngK5sqZoEHu+gY0bviix6F4lPj24zhmpi634sj3YZQw3PrTOlPTzRdX0P4
         Vv+ArXtGlKth2U73URIfjLRHs6uZjTs7UV5nZIVfR2fJV1PDflP2WrpC5RZqyGdz4HD8
         E36jfi9GOxt6KeOcOwktKv1lLbokFniX2F3vYzeTwRniZ2wWEXSJPdUhnmsVABohIMM9
         MPRnIHLcrcL8C7RUxh8myka8hcV4POYqb2lD+/7hTruB7fl2Hb1MIWJCNMVK+1a1LpqK
         qKzQ==
X-Gm-Message-State: AOAM533ptcfwtCpE3eeMvjE5pah4xJoje4FwAHBcb1BNPxEI57mnF3jd
        fpOFmumsrZODso17EFzv9sc=
X-Google-Smtp-Source: ABdhPJw6hFDhQvaoExe7QRU/DfY0pG+wheR3gDbTIoNuOyjrTCz6SYVSqxkJ00yNfMWS90OPClvFLQ==
X-Received: by 2002:adf:dcd1:: with SMTP id x17mr17258997wrm.59.1628382078920;
        Sat, 07 Aug 2021 17:21:18 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id b6sm17283061wrn.9.2021.08.07.17.21.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 17:21:18 -0700 (PDT)
Subject: Re: [PATCH 03/32] vdso.7: Remove outdated limitation for powerpc
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        Christophe Leroy <christophe.leroy@csgroup.eu>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-4-alx.manpages@gmail.com>
 <bf4202a4-7d21-3424-1582-f72317e82fe3@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <ae667bed-0f9f-6917-893b-9311aa69ebfa@gmail.com>
Date:   Sun, 8 Aug 2021 02:21:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <bf4202a4-7d21-3424-1582-f72317e82fe3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael,

On 8/8/21 2:17 AM, Michael Kerrisk (man-pages) wrote:
> Hello Alex,
> 
> On 7/28/21 10:19 PM, Alejandro Colomar wrote:
>> Christophe Leroy via Bugzilla:
> 
> For the commit message, it would be good to have a URL for 
> the bug. (I could not find the bug.)

That's right.  <https://bugzilla.kernel.org/show_bug.cgi?id=213419>

> 
>> [
>> https://man7.org/linux/man-pages/man7/vdso.7.html
>> (as of today, flagged 2021-03-22)
>>
>> ppc/32 and ppc/64 sections both have the following note:
>>
>>        The CLOCK_REALTIME_COARSE and CLOCK_MONOTONIC_COARSE clocks
>>        are not supported by the __kernel_clock_getres and
>>        __kernel_clock_gettime interfaces; the kernel falls back to
>>        the real system call
>>
>> This note has been wrong from quite some time now,
>> since commit 654abc69ef2e
>> ("powerpc/vdso32: Add support for CLOCK_{REALTIME/MONOTONIC}_COARSE")
>> and commit 5c929885f1bb
>> ("powerpc/vdso64: Add support for CLOCK_{REALTIME/MONOTONIC}_COARSE")
>> ]
>>
>> Reported-by: Christophe Leroy <christophe.leroy@csgroup.eu>
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> 
> In cases such as this, I prefer not to drop the historical info.
> See below.

And also right.

> 
>> ---
>>  man7/vdso.7 | 26 --------------------------
>>  1 file changed, 26 deletions(-)
>>
>> diff --git a/man7/vdso.7 b/man7/vdso.7
>> index ef6bef5bd..1d527c38e 100644
>> --- a/man7/vdso.7
>> +++ b/man7/vdso.7
>> @@ -385,19 +385,6 @@ __kernel_sync_dicache_p5	LINUX_2.6.15
>>  .in
>>  .ft P
>>  \}
>> -.PP
>> -The
>> -.B CLOCK_REALTIME_COARSE
>> -and
>> -.B CLOCK_MONOTONIC_COARSE
>> -clocks are
>> -.I not
>> -supported by the
>> -.I __kernel_clock_getres
>> -and
>> -.I __kernel_clock_gettime
>> -interfaces;
>> -the kernel falls back to the real system call.
>>  .SS ppc/64 functions
>>  .\" See linux/arch/powerpc/kernel/vdso64/vdso64.lds.S
>>  The table below lists the symbols exported by the vDSO.
>> @@ -423,19 +410,6 @@ __kernel_sync_dicache_p5	LINUX_2.6.15
>>  .in
>>  .ft P
>>  \}
>> -.PP
>> -The
>> -.B CLOCK_REALTIME_COARSE
>> -and
>> -.B CLOCK_MONOTONIC_COARSE
>> -clocks are
>> -.I not
>> -supported by the
>> -.I __kernel_clock_getres
>> -and
>> -.I __kernel_clock_gettime
>> -interfaces;
>> -the kernel falls back to the real system call.
>>  .SS riscv functions
>>  .\" See linux/arch/riscv/kernel/vdso/vdso.lds.S
>>  The table below lists the symbols exported by the vDSO.
> 
> I instead applied the patch below.
> 
> Cheers,
> 
> Michael
> 
> 
> diff --git a/man7/vdso.7 b/man7/vdso.7
> index ef6bef5bd..39d6dc4ad 100644
> --- a/man7/vdso.7
> +++ b/man7/vdso.7
> @@ -386,7 +386,9 @@ __kernel_sync_dicache_p5    LINUX_2.6.15
>  .ft P
>  \}
>  .PP
> -The
> +In kernel versions before Linux 5.6,
> +.\" commit 654abc69ef2e69712e6d4e8a6cb9292b97a4aa39
> +the
>  .B CLOCK_REALTIME_COARSE
>  and
>  .B CLOCK_MONOTONIC_COARSE
> @@ -424,7 +426,9 @@ __kernel_sync_dicache_p5    LINUX_2.6.15
>  .ft P
>  \}
>  .PP
> -The
> +In kernel versions before Linux 4.16,
> +.\" commit 5c929885f1bb4b77f85b1769c49405a0e0f154a1
> +the

Much better!

Thanks,

Alex

>  .B CLOCK_REALTIME_COARSE
>  and
>  .B CLOCK_MONOTONIC_COARSE
> 
> 
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
