Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A49DF31C2BF
	for <lists+linux-man@lfdr.de>; Mon, 15 Feb 2021 21:00:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230038AbhBOUAX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Feb 2021 15:00:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230223AbhBOUAW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Feb 2021 15:00:22 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD629C061756
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 11:59:41 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id h67so5570067wmh.1
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 11:59:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=7ICZcixMKAes5S5uD63Z+adOIzORxITcdtJ9tInud7M=;
        b=ApFvT+maiZLn/Dm6YguhF1eaKQIrk5ngQo6/+WeUIb7XlZz5QlohrmrwN7clJeP5Kj
         1PjjajebrrFL4zrLXQq/MQMQ9iX6qTM/+tt5gjxEkCNdBUXpW8PGfXE6T/IJ2XMA4cow
         7ib1RAlJ4bo9HdakYYHE2S8BbfoOkA741rlsskgMkQEK0LVteQIdldzNf0UCYR6lOsb2
         uxHbRw7fvdl373cNgk43pkiU98fPyF+/cNH2yFyB7w5KFo4273Kpl+kbOF+s5PCIp0e4
         DPZUydRRTIWFM7yAbk3Iev5IUfz9ZbufqUyuhlWroG6W5oFVOGYBT/qB2yaJazmYbmeY
         q6Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7ICZcixMKAes5S5uD63Z+adOIzORxITcdtJ9tInud7M=;
        b=ewTwpInanahaV/vpD7AucgC2+VlH8/ltHW40BHNN99gAmZMyYzm1Lhcwje+kDwVLSK
         CvvRNl9vinZ1tA6my5cIuJSDA4g+s3ni1HoMpISAE83zctopIsJFLGXnuTgL6YLF3Bg8
         74sm+QNXm/aUU4FVUDupaf0hQbFz4Wkh/KAipHJP8uoTPL94c38fLUPbUDOvvqh3Kzoy
         wKsp+1963DmXUe7U5YaVfrT0tRVp+/xBbxsK2YaS7qi0sZ8MlZ1SlOLx8hBI1DVgFqOX
         ItAVr8ISFFzKKVlIFhW/2hslNZjPDr/qRLcJfbJS1tdpuQ+uRTUj160LyCJnAZsThbqP
         n71g==
X-Gm-Message-State: AOAM530ykoLGgwiYEJKsLolOUEGMbGkV2FPe076B4rGCAMzPfxEmxBcW
        AI1BcE+XWsp3dcIIYY9nRitems7eFhVH0w==
X-Google-Smtp-Source: ABdhPJyNv2/Ncs81F2sEAtzvdf4lzYXA0rrBq8oGLaNl3tNGjpCnCiytiYyFUdnSAD1ha0D4r52lWQ==
X-Received: by 2002:a1c:b60a:: with SMTP id g10mr415737wmf.6.1613419180437;
        Mon, 15 Feb 2021 11:59:40 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:e14:1e8b:dca4:7d73? ([2001:a61:3a2d:1d01:e14:1e8b:dca4:7d73])
        by smtp.gmail.com with ESMTPSA id 35sm26341121wrn.42.2021.02.15.11.59.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Feb 2021 11:59:40 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] spu_create.2: SYNOPSIS: Fix prototype parameter type
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210215131522.450666-6-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e748f71b-ba30-ccff-2e1c-44fb1d4d2c7f@gmail.com>
Date:   Mon, 15 Feb 2021 20:59:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210215131522.450666-6-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/15/21 2:15 PM, Alejandro Colomar wrote:
> The 'flags' parameter of spu_create() uses 'unsigned int'.  Fix it.
> 
> ......
> 
> .../linux$ grep_syscall spu_create
> arch/powerpc/platforms/cell/spu_syscalls.c:56:
> SYSCALL_DEFINE4(spu_create, const char __user *, name, unsigned int, flags,
> 	umode_t, mode, int, neighbor_fd)
> include/linux/syscalls.h:1036:
> asmlinkage long sys_spu_create(const char __user *name,
> 		unsigned int flags, umode_t mode, int fd);
> .../linux$
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>


Thanks! Patch applied.

Cheers,

Michael


> ---
>  man2/spu_create.2 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/man2/spu_create.2 b/man2/spu_create.2
> index ff0dbdc20..2493b16bc 100644
> --- a/man2/spu_create.2
> +++ b/man2/spu_create.2
> @@ -30,7 +30,8 @@ spu_create \- create a new spu context
>  .B #include <sys/types.h>
>  .B #include <sys/spu.h>
>  .PP
> -.BI "int spu_create(const char *" pathname ", int " flags ", mode_t " mode ","
> +.BI "int spu_create(const char *" pathname ", unsigned int " flags \
> +", mode_t " mode ,
>  .BI "               int " neighbor_fd ");"
>  .fi
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
