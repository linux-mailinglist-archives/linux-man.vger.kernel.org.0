Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D3C1C311CCF
	for <lists+linux-man@lfdr.de>; Sat,  6 Feb 2021 12:05:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229590AbhBFLFA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 6 Feb 2021 06:05:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229529AbhBFLE7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 6 Feb 2021 06:04:59 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D3DBC06174A
        for <linux-man@vger.kernel.org>; Sat,  6 Feb 2021 03:04:18 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id p15so10670601wrq.8
        for <linux-man@vger.kernel.org>; Sat, 06 Feb 2021 03:04:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=T/rcjJEerNEcThXqKmRwTFYfJwqqpuweJsiKjttJgS4=;
        b=UUo0oGiQF0Uf+210QKofmjnablCKQcJSxb1Ug58sFSnR58yzV4DP6qVaClK6LHILTT
         cWdzdjaXeq3uKN0d0sKQeLDgLyzZS9e6MmV4U2ReaF/DGmr0jaGd7p3zvXMDkzfTDmN8
         hoeOyJr4tB2/HJIJKJQlmmc3KBVzHzqXFCcljAilpsMD+pEglVF2DYkG0C8MvnOg3e4w
         vs68K6n/kF+G5P1/40eFcu/K9Lp4G7hDQFjgrQDaFMLdiXp0uAdmdNdnrXpqh5ct32zL
         O0rArzFwzqhg/gXW4ZFROkHdO2Hc+zWaLcvFLiukoO/8XEwK7zODk/7NzjpNDtlm2by1
         STaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=T/rcjJEerNEcThXqKmRwTFYfJwqqpuweJsiKjttJgS4=;
        b=jjZ1u3BvbOFSww1Ij2iRhyWNWmc4qz1V7ZVAcEGFMzoVK307KyM3TwiSnUdnPd+TCF
         IHxoaeOVmX8PEBU3+mY/U3yxMDCdyjGiFSUdvwdZWGFW0Hdc4CRKyaNQtZvu6rDNA+dJ
         WD9UgIJu/+RZzR0d/qO0PzUtJC1TIylUkSlmTB8MFbh651Te4c/agX4sEZAWgehIZn3W
         HyBaDykGVidTPVsA9kkVrVQjTkyFPH3VOV4deYVioqX7JHTzHv62QbewokooR/Ze5O9t
         g8B2EFi11230/yZLW24/OG9X8GbxFvi1+cNOZkQR89giVCnXM0xeEJp+MEa9dYKmsTDt
         Ubqg==
X-Gm-Message-State: AOAM530IvLLGcB3KNZ7paZtKf435ZrF1GkYiH/wRUXfWKN9YhCwZI0YN
        5EBKr1gC8s/ba7g6YgZuc08=
X-Google-Smtp-Source: ABdhPJxieo3+v+PnGu3oG487UNYeLr+BKtoacEOBEZZY3xSIZTGJiuM89JZJ8x7SIZ4/sPSPND57vA==
X-Received: by 2002:a5d:4708:: with SMTP id y8mr1486050wrq.402.1612609457048;
        Sat, 06 Feb 2021 03:04:17 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id d13sm15237890wrx.93.2021.02.06.03.04.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Feb 2021 03:04:16 -0800 (PST)
Subject: Re: [PATCH] execveat.2: Fix prototype
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>,
        David Drysdale <drysdale@google.com>
References: <20210203184517.153948-1-alx.manpages@gmail.com>
 <CAKgNAkgW=1GE4qcmWsTvfpj2y_N8Bp_ePKtV4VyE8t_b9Ro85w@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <94d4a5ad-7d44-0745-db9c-e1b7e50efae4@gmail.com>
Date:   Sat, 6 Feb 2021 12:04:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkgW=1GE4qcmWsTvfpj2y_N8Bp_ePKtV4VyE8t_b9Ro85w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/6/21 10:54 AM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> Can we please begin every commit message with some English sentences :-).

Sure! Thanks for the reminder! :-)

> 
> I'm a little hesitant about the proposed change. execve() has a
> similar prototype in the kernel, but the glibc wrapper is just:
> 
> extern int execve (const char *__path, char *const __argv[],
>                    char *const __envp[]) ;

I guess that was the reason to write it like that.

> 
> I expect that one day when execveat() is added to glibc, it will be
> the same. What do you think?

execveat() was added 6 years ago to the kernel (kernel commit
51f39a1f0cea1cacf8c787f652f26dfee9611874) and there's still no wrapper.
 It's not like epoll_pwait2() that isn't yet in a stable release.  I'd
document the actual prototype, maybe open a bug in glibc to request a
wrapper, and if some day glibc adds that wrapper, I'd just revert the
commit.  Wouldn't you?

Thanks,

Alex

> 
> Thanks,
> 
> Michael
> 
> On Wed, 3 Feb 2021 at 19:46, Alejandro Colomar <alx.manpages@gmail.com> wrote:
>>
>> .../linux$ grep_syscall execveat
>> fs/exec.c:2062:
>> SYSCALL_DEFINE5(execveat,
>>                 int, fd, const char __user *, filename,
>>                 const char __user *const __user *, argv,
>>                 const char __user *const __user *, envp,
>>                 int, flags)
>> fs/exec.c:2083:
>> COMPAT_SYSCALL_DEFINE5(execveat, int, fd,
>>                        const char __user *, filename,
>>                        const compat_uptr_t __user *, argv,
>>                        const compat_uptr_t __user *, envp,
>>                        int,  flags)
>> include/linux/syscalls.h:980:
>> asmlinkage long sys_execveat(int dfd, const char __user *filename,
>>                         const char __user *const __user *argv,
>>                         const char __user *const __user *envp, int flags);
>> .../linux$
>>
>> function grep_syscall()
>> {
>>         if ! [ -v 1 ]; then
>>                 >&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
>>                 return ${EX_USAGE};
>>         fi
>>
>>         find * -type f \
>>         |grep '\.c$' \
>>         |sort -V \
>>         |xargs pcregrep -Mn "(?s)^\w*SYSCALL_DEFINE.\(${1},.*?\)" \
>>         |sed -E 's/^[^:]+:[0-9]+:/&\n/';
>>
>>         find * -type f \
>>         |grep '\.h$' \
>>         |sort -V \
>>         |xargs pcregrep -Mn "(?s)^asmlinkage \w+ \**sys_${1}\(.*?\)" \
>>         |sed -E 's/^[^:]+:[0-9]+:/&\n/';
>> }
>>
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>> ---
>>  man2/execveat.2 | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/man2/execveat.2 b/man2/execveat.2
>> index 02d9c7331..d1ce4bee1 100644
>> --- a/man2/execveat.2
>> +++ b/man2/execveat.2
>> @@ -31,7 +31,7 @@ execveat \- execute program relative to a directory file descriptor
>>  .B #include <unistd.h>
>>  .PP
>>  .BI "int execveat(int " dirfd ", const char *" pathname ,
>> -.BI "             char *const " argv "[], char *const " envp [],
>> +.BI "             const char *const " argv "[], const char *const " envp [],
>>  .BI "             int " flags );
>>  .fi
>>  .PP
>> --
>> 2.30.0
>>
> 
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
