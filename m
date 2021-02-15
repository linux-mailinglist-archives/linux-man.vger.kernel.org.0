Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD5D731C2C2
	for <lists+linux-man@lfdr.de>; Mon, 15 Feb 2021 21:02:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230145AbhBOUAl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Feb 2021 15:00:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230090AbhBOUAk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Feb 2021 15:00:40 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FA8CC0613D6
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 12:00:00 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id r5so3903228wmp.1
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 12:00:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pRMNJsisOUNURvEsdwdzdeqpAV+z1D9WJG8LpWqbrPE=;
        b=UH7XNnOqKLUJ+7mJNM8btlt1R3hQBwBCxDcq2WO2V0dxAjg6UheLAzc3WtUSJrwfgi
         tA2rbUl/KwMpCTFYxddo0IX3RmVC3zaygJGess5T7P6ESwfdCPZ0mmTNQxWbLErtgJUs
         P9La1LNe0Iz7VGL+8AaOWoeoRPJ9d69xR8EAHUBWBSY2NLqlgs2/K4oo/ZPz4aHL4G8B
         cDAnfpgmoa1LzUCjSVj2PwTi8j1DJh6+g0k6Zca6zQTmLHV/tqlx4zg/5WNJZF8jtWvs
         aSw3FJm7C0OLH8Py+0ApRPYDZnZzUabvtClAGdS6diEjRmLDSUS8DWBeacdjRiPMF8Ae
         Wa7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pRMNJsisOUNURvEsdwdzdeqpAV+z1D9WJG8LpWqbrPE=;
        b=gNTlJexwR0qMKan2u7n1Y9GzAWHi67dX9ykH/zMqIMn0HFysOOsG8StTaiPz92Bnsm
         819K1wPy9s9xMD/8g75n8JuwPckL767m2aFfXl6sKTzrkgTE3zv0iqiYN2VfbHhuqS7o
         Hfrnsbg1drSYPY4NzdoERxZGHMPBIZ7IzG43R92ttkSvGwbn8/iQchQQMfHFgQBw2OQk
         Iak5Ly4C0RrU7XexoF1X04YSgaclv9NFBUlNsrT4Rq9DeQjW9Zi7R1LiMPKOQW4B2ze2
         8Yex9OOcbSYHAWGxH7vO+n/GUw7BOXA/xs5DqFCCCNgPzqP8NG40XsJhDpjcUj9amfsj
         zMgQ==
X-Gm-Message-State: AOAM530M0bR3makMGcExIf8SN3fcI9I6WDIDa9AW7oUUcqGJ85hPQzqy
        o9+SUMnuaZzpHSWOi0OSILUJJFsLOOAhLA==
X-Google-Smtp-Source: ABdhPJyEHGRfrLn9MULJeg+99xsNW1oqnAKn5W/5RFkRqal3rGivQngJJY3QZfLzry8TrlbIxAfjGw==
X-Received: by 2002:a1c:dcd4:: with SMTP id t203mr371929wmg.163.1613419198770;
        Mon, 15 Feb 2021 11:59:58 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:e14:1e8b:dca4:7d73? ([2001:a61:3a2d:1d01:e14:1e8b:dca4:7d73])
        by smtp.gmail.com with ESMTPSA id z63sm453535wme.8.2021.02.15.11.59.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Feb 2021 11:59:58 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] spu_run.2: SYNOPSIS: Fix prototype parameter types
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210215131522.450666-7-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7fce9ade-3609-a03a-f486-511cbe2149a9@gmail.com>
Date:   Mon, 15 Feb 2021 20:59:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210215131522.450666-7-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/15/21 2:15 PM, Alejandro Colomar wrote:
> The 2nd and 3rd parameters of spu_run() use 'uint32_t *'.  Fix it.
> 
> ......
> 
> .../linux$ grep_syscall spu_run
> arch/powerpc/platforms/cell/spu_syscalls.c:80:
> SYSCALL_DEFINE3(spu_run,int, fd, __u32 __user *, unpc, __u32 __user *, ustatus)
> include/linux/syscalls.h:1034:
> asmlinkage long sys_spu_run(int fd, __u32 __user *unpc,
> 				 __u32 __user *ustatus);
> .../linux$
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>


Thanks! Patch applied.

Cheers,

Michael


> ---
>  man2/spu_run.2 | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/man2/spu_run.2 b/man2/spu_run.2
> index fb1879759..8b2a64ebb 100644
> --- a/man2/spu_run.2
> +++ b/man2/spu_run.2
> @@ -30,8 +30,7 @@ spu_run \- execute an SPU context
>  .nf
>  .B #include <sys/spu.h>
>  .PP
> -.BI "int spu_run(int " fd ", unsigned int *" npc \
> -", unsigned int *" event ");"
> +.BI "int spu_run(int " fd ", uint32_t *" npc ", uint32_t *" event );
>  .fi
>  .PP
>  .IR Note :
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
