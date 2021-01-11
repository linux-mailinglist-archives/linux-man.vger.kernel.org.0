Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ACAD02F0DBC
	for <lists+linux-man@lfdr.de>; Mon, 11 Jan 2021 09:19:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727800AbhAKITH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 11 Jan 2021 03:19:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727798AbhAKITH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 11 Jan 2021 03:19:07 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F15D8C061786
        for <linux-man@vger.kernel.org>; Mon, 11 Jan 2021 00:18:26 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id 91so15403477wrj.7
        for <linux-man@vger.kernel.org>; Mon, 11 Jan 2021 00:18:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=wrgcUvp4grp9eov2esw16EYlGrSOM23dsta0F2ktCGQ=;
        b=rdIupdIkxRCUUYtV0ngL2JKQBn9cDWvkCq+T9nG88jDgomB4ZKWCMUxf7t59nX5/SK
         n7mVEM/elKJoCRPX2npDZUH7FONydcqEcQYTo7fjjFwrHs7zf7wLI5TAX5hGl/zy+krs
         /qj2fTze6M5cE3DZ9Os7s4e2xFDoWY9hVv5vCkdfrJEvcNV6OUHQsZLxC7+p2K0f32Hz
         fYQEB3ACbsj9I1450lyOF/KeivCnWGXnvw8ZJKzRGuHlJOkeYoKAW+HnOwttpmONtAI/
         eV4KmUsZb0zDkWknlGJvmqL2g7u7yu99JKPzhnnR2sdyH4A3hRs280pe4HzBSBUtMnnl
         jSug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=wrgcUvp4grp9eov2esw16EYlGrSOM23dsta0F2ktCGQ=;
        b=BPdDrOabjvqx65n5xwjiT2KjfHjnFz1SK/u6z4dNhK1IOlpSDK6C/Z5GR5iZFkZ+K1
         llUmu0SN+vThSs8YCCexdzPtETbPHxaTsbNbg99rqEzusGg5JSePRibtRB6Eb3vYMvs6
         qiu4VKt382sUUEwWgjV/AN1+tA+WoW17MBrb4oCKiyaiuLaECDr9vwqx/hRD+MbQ7A5S
         GvTsfYrG5Fy3t+pz3CJSonSUxTpDhWgwEdxFyCYeHzcXpkHASGUonmPjukAdoHFvcuwS
         MJOOrgPzXDbyy+uJwdAeucRIaC0PCRUKBqjo9U3C5UJ9jyeidapZhPVWAc/+4FGrDQMt
         KRMg==
X-Gm-Message-State: AOAM531izW+6pkSGew70V+TqsmHKdE2wSbZWWCmt6xmO9J0B6vRAATq2
        Hr21eir95aMw3f3URSv8Mgc=
X-Google-Smtp-Source: ABdhPJwGBWf9Uv+phPXrLJ1GbSyLF5Y4pSWW0CUaE1kaZJgjIUl1hVRkojm7BMbifeWnrCck59kzeA==
X-Received: by 2002:adf:a4cc:: with SMTP id h12mr15148324wrb.391.1610353105753;
        Mon, 11 Jan 2021 00:18:25 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id j59sm24605503wrj.13.2021.01.11.00.18.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 00:18:24 -0800 (PST)
Cc:     mtk.manpages@gmail.com, alx.manpages@gmail.com
Subject: Re: [patch] clone.2: Fix types in clone_args
To:     Valentin <vakevk@gmail.com>, linux-man@vger.kernel.org
References: <CAB-V1p7jV3ssGLHbz+mMq219aQBS5Sn6UnyWBk_E2k-8=LQM+Q@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4006b3bf-facc-d1cc-0509-d31f2691f426@gmail.com>
Date:   Mon, 11 Jan 2021 09:18:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <CAB-V1p7jV3ssGLHbz+mMq219aQBS5Sn6UnyWBk_E2k-8=LQM+Q@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Valentin

On 1/10/21 11:22 AM, Valentin wrote:
>>From 2b076eb6579e8461eb16450f2e7f2c2f1c82fbad Mon Sep 17 00:00:00 2001
> From: Valentin Kettner <vakevk@gmail.com>
> Date: Sun, 10 Jan 2021 11:18:20 +0100
> Subject: [PATCH] clone.2: Fix types in clone_args
> 
> A file descriptor is an int so it should be stored through an int pointer while
> parent_tid should have the same type as child_tid which is pid_t pointer.

Thanks! Patch applied.

Cheers,

Michael

> ---
>  man2/clone.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/clone.2 b/man2/clone.2
> index ce55997b5..fecec90c8 100644
> --- a/man2/clone.2
> +++ b/man2/clone.2
> @@ -183,11 +183,11 @@ is a structure of the following form:
>  struct clone_args {
>      u64 flags;        /* Flags bit mask */
>      u64 pidfd;        /* Where to store PID file descriptor
> -                         (\fIpid_t *\fP) */
> +                         (\fIint *\fP) */
>      u64 child_tid;    /* Where to store child TID,
>                           in child\(aqs memory (\fIpid_t *\fP) */
>      u64 parent_tid;   /* Where to store child TID,
> -                         in parent\(aqs memory (\fIint *\fP) */
> +                         in parent\(aqs memory (\fIpid_t *\fP) */
>      u64 exit_signal;  /* Signal to deliver to parent on
>                           child termination */
>      u64 stack;        /* Pointer to lowest byte of stack */
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
