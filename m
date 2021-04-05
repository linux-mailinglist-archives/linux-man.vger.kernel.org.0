Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F85B35417F
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 13:25:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233218AbhDELZp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 07:25:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230032AbhDELZp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 07:25:45 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05743C061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 04:25:38 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id l18so12185535edc.9
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 04:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=R8qbYCl0K0scOT2t2Zvk2C6CpQsik38I/CGxVOj6W0o=;
        b=XBfU1QGd7kBg8HxGuQQ7GApJ78+KbvLcuVbdfQ8YSzmtrwT5NC2/CWkYzEnBsUFT6F
         GzdR5d8wg3Rget5oSwa+WoG/fALQnT557l9gbdYdhw5mVH+W6fbrhUNUsln9IWciIFb8
         OGwnuDDbGigLQ1i0vLP9mgMcNblDTauvp2Gv+iYlxgAatx80xUxkZS886VinPMQULXgj
         eMiadRJKSFt7HdL+L2ecfnYiM27hyg7MFnLriqfX0GYWmvXk0BAtRu/MapdYIX7Cntcs
         dyaaFBgWTaWswKf+HfB9fZYaqcHJsBxNYD5Sd/R0flVCjqdViy6epBtiHRjNptnWVoB1
         35FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=R8qbYCl0K0scOT2t2Zvk2C6CpQsik38I/CGxVOj6W0o=;
        b=nMw4gvkMUMBDV1uBU7M7KABj4uljccuzJpflU9r7wpGQG5A7yDevoItbU+t6bgSxyQ
         wpbtIz2im/ue3cnDyaVBs5xAOAj6Kx2B3pFLs9dXjt/hSyT6T5I5/fURd06OnDD3HEaO
         3BmhbhqGuvYZ93LBztQsD1X9E0SNVBf6Oqg8pjR1dE6wI7wOXVYRNJWnUwNne80m3MNt
         iZ4niPcCZ/mFfq5AULbUWiXY3DW52ZfL7ljgt4Q18LbLeekmSLhEa5GCKOx3CdoDhqoz
         K5etghcOLwfz71AsCWbRuIwDjM1f+dVXtlZTzCgbE6JqamORGM7VGpO8U0sY+eIGhL5e
         TAPw==
X-Gm-Message-State: AOAM532Lz7iL1U55NA+zXZ5bSJkoopOe+3sM3xRmFpaUVq0coScTElhA
        s4sUhtqQPlDJc395iQn/CGY=
X-Google-Smtp-Source: ABdhPJy6Ceu++kG+RiPCiSCQv8qMxOdlSTGl4/AJG/6volKwBS7jqpCggyllbixTeEGEFbgLtWT5eA==
X-Received: by 2002:a05:6402:484:: with SMTP id k4mr30523394edv.321.1617621937684;
        Mon, 05 Apr 2021 04:25:37 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id rk11sm2178098ejb.60.2021.04.05.04.25.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 04:25:37 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 08/35] arch_prctl.2: Use syscall(SYS_...); for system
 calls without a wrapper
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-9-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6ee823f7-557c-64ca-8f9b-81e397b5a34d@gmail.com>
Date:   Mon, 5 Apr 2021 13:25:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-9-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 4/4/21 1:58 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/arch_prctl.2 | 14 +++++---------
>  1 file changed, 5 insertions(+), 9 deletions(-)


Patch applied.

Thanks,

Michael


> diff --git a/man2/arch_prctl.2 b/man2/arch_prctl.2
> index 1ddeca595..f8073d625 100644
> --- a/man2/arch_prctl.2
> +++ b/man2/arch_prctl.2
> @@ -27,15 +27,14 @@
>  arch_prctl \- set architecture-specific thread state
>  .SH SYNOPSIS
>  .nf
> -.B #include <asm/prctl.h>
> +.BR "#include <asm/prctl.h>" "        /* Definition of " ARCH_* " constants */"
>  .B #include <sys/prctl.h>
> +.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
> +.B #include <unistd.h>
>  .PP
> -.BI "int arch_prctl(int " code ", unsigned long " addr );
> -.BI "int arch_prctl(int " code ", unsigned long *" addr );
> +.BI "int syscall(SYS_arch_prctl, int " code ", unsigned long " addr );
> +.BI "int syscall(SYS_arch_prctl, int " code ", unsigned long *" addr );
>  .fi
> -.PP
> -.IR Note :
> -There is no glibc wrapper for this system call; see NOTES.
>  .SH DESCRIPTION
>  .BR arch_prctl ()
>  sets architecture-specific process or thread state.
> @@ -177,9 +176,6 @@ and
>  in the same thread is dangerous, as they may overwrite each other's
>  TLS entries.
>  .PP
> -Glibc does not provide a wrapper for this system call; call it using
> -.BR syscall (2).
> -.PP
>  .I FS
>  may be already used by the threading library.
>  Programs that use
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
