Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A707F31ACD6
	for <lists+linux-man@lfdr.de>; Sat, 13 Feb 2021 17:06:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229716AbhBMQGB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Feb 2021 11:06:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229714AbhBMQF6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Feb 2021 11:05:58 -0500
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19576C061574
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 08:05:18 -0800 (PST)
Received: by mail-ej1-x633.google.com with SMTP id i8so4415463ejc.7
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 08:05:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=JMl/20ctes0P67yEudL3NiT/j+vmsr5Sr/frIBIgPF0=;
        b=mRYiydNWPinMrlXFKMAmK87A4UJgTQMncutPyDTJLTLvmnNHHTJMCEJuac/aFn1xBY
         tMhSMyb6SCv9Ts4RPjq38rNrxNIjNq/VD73CBMXRzmRyMnbiY2pC0tZTwH1Z0Ewm7jCI
         d/ZzWIm/y+tVCzplHIsf9yRc7gnKuEzciO+MtHd7I6arDr1DhjksWVxFbKaEngXcdody
         CT0+Mt/oy+swQXvWxvvv6/mSQ0dB9XvUpFpoacjvb5WgfSI6RhTbuXHO2Un5B/uoFxwq
         +CEqj68sISun6CXXUmRf8Ali2hqZ3DxLvEcEgejVhzE8KUhRP+NDgmz0+1CZVN3XjckU
         YoNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=JMl/20ctes0P67yEudL3NiT/j+vmsr5Sr/frIBIgPF0=;
        b=lrHhy8ZMgcvw/akArxOSw7wcUJYB7uBqM7ocbQt99kEZbYnlkBdD0jJrGcrczpQHvb
         PJT9AzNiJhB8u5y0i8Ij3Z1+wPsSJqkXFsCNKCR/JWY/jJF0iIzo2XbBXw2e5eaemNKR
         K6qOIxfwrqD2mKs59djbu+PFNXjL9apJ0DuNIZ4XLAmmlJwvalP1mX+GlziirYqHUFP4
         K7a1HIdrk1TZNF+ZGIu1/5tehhem/ihPPAaEgDExmAiOU5kCpE4LZd60nQXaMpEHpS06
         SDbys33KlgkX6yL55aY6HKoJdcC1Aev4IgLeflRdAzNwz0hMuGxA3CeLrke5KUg5mUPx
         aGLA==
X-Gm-Message-State: AOAM532KS9nQiX7a34yrthk2/gTNFd9ZaH75hD2vQ+jiruNzYMs+avHi
        /P1zIRodi+8TDGUJh0QEUnbGFh/qupIJtQ==
X-Google-Smtp-Source: ABdhPJzscblA+pKDhd2gy4gf8jxSTL4lfpGTMHNlYlbVC0EYG0yt/gqBpEcqkr2sqaANt43podgp+w==
X-Received: by 2002:a17:906:3719:: with SMTP id d25mr8150844ejc.256.1613232316538;
        Sat, 13 Feb 2021 08:05:16 -0800 (PST)
Received: from [192.168.178.63] (dynamic-095-118-040-212.95.118.pool.telefonica.de. [95.118.40.212])
        by smtp.gmail.com with ESMTPSA id df15sm7393506edb.24.2021.02.13.08.05.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Feb 2021 08:05:15 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: sigprocmask.2: s/kernel_sigset_t/sigset_t/
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <cd449862-373b-c058-6abf-fd4b4efc8acf@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <89b4b88d-a5e1-345e-b2c8-3d9479177e22@gmail.com>
Date:   Sat, 13 Feb 2021 17:05:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <cd449862-373b-c058-6abf-fd4b4efc8acf@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/12/21 4:28 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> AFAICT, the syscalls [rt_]sigprocmask use '[old_]sigset_t' (there's the
> '__user' modifier too), so 'kernel_' should be removed from the types,
> shouldn't it?

Looks like you're right. Will you send a patch?

Thanks,

Michael

> [[
> SYNOPSIS
>        #include <signal.h>
> 
>        /* Prototype for the glibc wrapper function */
>        int sigprocmask(int how, const sigset_t *restrict set,
>                        sigset_t *restrict oldset);
> 
>        /* Prototype for the underlying system call */
>        int rt_sigprocmask(int how, const kernel_sigset_t *set,
>                        kernel_sigset_t *oldset, size_t sigsetsize);
> 
>        /* Prototype for the legacy system call (deprecated) */
>        int sigprocmask(int how, const old_kernel_sigset_t *set,
>                        old_kernel_sigset_t *oldset);
> 
>    Feature  Test  Macro   Requirements   for   glibc   (see   fea‐
>    ture_test_macros(7)):
> 
>        sigprocmask():
>            _POSIX_C_SOURCE
> 
> ]]
> 
> .../linux$ grep_syscall rt_sigprocmask
> kernel/signal.c:3050:
> SYSCALL_DEFINE4(rt_sigprocmask, int, how, sigset_t __user *, nset,
> 		sigset_t __user *, oset, size_t, sigsetsize)
> kernel/signal.c:3081:
> COMPAT_SYSCALL_DEFINE4(rt_sigprocmask, int, how, compat_sigset_t __user
> *, nset,
> 		compat_sigset_t __user *, oset, compat_size_t, sigsetsize)
> include/linux/compat.h:698:
> asmlinkage long compat_sys_rt_sigprocmask(int how, compat_sigset_t
> __user *set,
> 					  compat_sigset_t __user *oset,
> 					  compat_size_t sigsetsize);
> include/linux/syscalls.h:696:
> asmlinkage long sys_rt_sigprocmask(int how, sigset_t __user *set,
> 				sigset_t __user *oset, size_t sigsetsize);
> .../linux$ grep_syscall sigprocmask
> kernel/compat.c:40:
> COMPAT_SYSCALL_DEFINE3(sigprocmask, int, how,
> 		       compat_old_sigset_t __user *, nset,
> 		       compat_old_sigset_t __user *, oset)
> kernel/signal.c:4236:
> SYSCALL_DEFINE3(sigprocmask, int, how, old_sigset_t __user *, nset,
> 		old_sigset_t __user *, oset)
> include/linux/compat.h:882:
> asmlinkage long compat_sys_sigprocmask(int how, compat_old_sigset_t
> __user *nset,
> 				       compat_old_sigset_t __user *oset);
> include/linux/syscalls.h:1136:
> asmlinkage long sys_sigprocmask(int how, old_sigset_t __user *set,
> 				old_sigset_t __user *oset);
> .../linux$
> 
> 
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
