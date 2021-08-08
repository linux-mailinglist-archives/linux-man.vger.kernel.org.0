Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A55E3E37AD
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 02:17:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229842AbhHHASI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 20:18:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229797AbhHHASI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 20:18:08 -0400
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AEDAC061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 17:17:50 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id u16so12372200ple.2
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 17:17:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Jm3JCdLWUS2YPcfnToi8wFsyTrzMWFR3VwFZEuez3/M=;
        b=TpsLCbmnov96R5hcna0PmuqcjENEauolJB2Qf4xIp9xdZpiJIqb3ZLwI3+WEDwYnP4
         rFB/Koc1SAdEGTaBaqIjuNaxvCAVnETXvO3ggh9vZsSN8hUv39dFspaCXPHU7W3nmwTj
         0GLU51O1G256i2aYWmw9XCUowul0jOc4+pYZoVrM+eENIkPM9f0ojrXX5a1SnIDdWxkS
         yxi+h7CmsuBfC9FJD+hITRkmIeu1erNVIammlLfwdv1criYWISgAW7DrWBWVj+6dz8af
         J3kT+6jCPWTnJcXASMWM7BPim6Q7mcBsoTk94dRS8rMp7Je3txYUv9CtRmeg5LmFZ4+/
         Yf7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Jm3JCdLWUS2YPcfnToi8wFsyTrzMWFR3VwFZEuez3/M=;
        b=fpvQyH/ecDV1snEfhXW31+guAPugxM7sATFRW+BQVBpz3kwq4dTJ1EBG9hDPNrCdg+
         Hp2mPHzZePCFLD6S5QKKdO82p/TgVhxQWRZZkIXm4idiTqztPAF50qPb55JIgdytQM9/
         iBZLTCVbKv3ZATQhefVREdlTdmNAVLIdm36kCcyMRgl/m3JtUnapAJTq6g0Vn6oOWAoo
         ZNZnHR2TQS/OlhdLlAVnLuAoN1IwL2ZzYnEMbItUhUQ2b42X5WLeroZzoUx78CiFTENq
         xU+nFcRdp9Y9xp+RU9LSOh8iGsQPja00Lw82FOPompnbh4yXZtLzWUGbJM6NkbZCgmw8
         yeGw==
X-Gm-Message-State: AOAM533Q0RamV0jrXFwqL4hF3LLyODPqre02z+v8fWzwrXNQccGn96Ta
        7CB14+ElfO7ssL/MawJ/hDsUtTNOdKI=
X-Google-Smtp-Source: ABdhPJy6dRimAn9i/Nl/K1bnlJB35HdQI424W9JozbtW3DxBOimftlmTzKPAZfshB++pdhCDlaxG3A==
X-Received: by 2002:a65:508c:: with SMTP id r12mr114616pgp.274.1628381869940;
        Sat, 07 Aug 2021 17:17:49 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id b19sm15545664pfp.5.2021.08.07.17.17.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 17:17:49 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Christophe Leroy <christophe.leroy@csgroup.eu>
Subject: Re: [PATCH 03/32] vdso.7: Remove outdated limitation for powerpc
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-4-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <bf4202a4-7d21-3424-1582-f72317e82fe3@gmail.com>
Date:   Sun, 8 Aug 2021 02:17:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-4-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 7/28/21 10:19 PM, Alejandro Colomar wrote:
> Christophe Leroy via Bugzilla:

For the commit message, it would be good to have a URL for 
the bug. (I could not find the bug.)

> [
> https://man7.org/linux/man-pages/man7/vdso.7.html
> (as of today, flagged 2021-03-22)
> 
> ppc/32 and ppc/64 sections both have the following note:
> 
>        The CLOCK_REALTIME_COARSE and CLOCK_MONOTONIC_COARSE clocks
>        are not supported by the __kernel_clock_getres and
>        __kernel_clock_gettime interfaces; the kernel falls back to
>        the real system call
> 
> This note has been wrong from quite some time now,
> since commit 654abc69ef2e
> ("powerpc/vdso32: Add support for CLOCK_{REALTIME/MONOTONIC}_COARSE")
> and commit 5c929885f1bb
> ("powerpc/vdso64: Add support for CLOCK_{REALTIME/MONOTONIC}_COARSE")
> ]
> 
> Reported-by: Christophe Leroy <christophe.leroy@csgroup.eu>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

In cases such as this, I prefer not to drop the historical info.
See below.

> ---
>  man7/vdso.7 | 26 --------------------------
>  1 file changed, 26 deletions(-)
> 
> diff --git a/man7/vdso.7 b/man7/vdso.7
> index ef6bef5bd..1d527c38e 100644
> --- a/man7/vdso.7
> +++ b/man7/vdso.7
> @@ -385,19 +385,6 @@ __kernel_sync_dicache_p5	LINUX_2.6.15
>  .in
>  .ft P
>  \}
> -.PP
> -The
> -.B CLOCK_REALTIME_COARSE
> -and
> -.B CLOCK_MONOTONIC_COARSE
> -clocks are
> -.I not
> -supported by the
> -.I __kernel_clock_getres
> -and
> -.I __kernel_clock_gettime
> -interfaces;
> -the kernel falls back to the real system call.
>  .SS ppc/64 functions
>  .\" See linux/arch/powerpc/kernel/vdso64/vdso64.lds.S
>  The table below lists the symbols exported by the vDSO.
> @@ -423,19 +410,6 @@ __kernel_sync_dicache_p5	LINUX_2.6.15
>  .in
>  .ft P
>  \}
> -.PP
> -The
> -.B CLOCK_REALTIME_COARSE
> -and
> -.B CLOCK_MONOTONIC_COARSE
> -clocks are
> -.I not
> -supported by the
> -.I __kernel_clock_getres
> -and
> -.I __kernel_clock_gettime
> -interfaces;
> -the kernel falls back to the real system call.
>  .SS riscv functions
>  .\" See linux/arch/riscv/kernel/vdso/vdso.lds.S
>  The table below lists the symbols exported by the vDSO.

I instead applied the patch below.

Cheers,

Michael


diff --git a/man7/vdso.7 b/man7/vdso.7
index ef6bef5bd..39d6dc4ad 100644
--- a/man7/vdso.7
+++ b/man7/vdso.7
@@ -386,7 +386,9 @@ __kernel_sync_dicache_p5    LINUX_2.6.15
 .ft P
 \}
 .PP
-The
+In kernel versions before Linux 5.6,
+.\" commit 654abc69ef2e69712e6d4e8a6cb9292b97a4aa39
+the
 .B CLOCK_REALTIME_COARSE
 and
 .B CLOCK_MONOTONIC_COARSE
@@ -424,7 +426,9 @@ __kernel_sync_dicache_p5    LINUX_2.6.15
 .ft P
 \}
 .PP
-The
+In kernel versions before Linux 4.16,
+.\" commit 5c929885f1bb4b77f85b1769c49405a0e0f154a1
+the
 .B CLOCK_REALTIME_COARSE
 and
 .B CLOCK_MONOTONIC_COARSE



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
