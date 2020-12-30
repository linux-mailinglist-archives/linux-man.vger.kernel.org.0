Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C6AD2E7CFC
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 23:38:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726305AbgL3WiK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 17:38:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726290AbgL3WiJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 17:38:09 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E85AC061573
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 14:37:29 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id r3so18746622wrt.2
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 14:37:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=czq3Bk7q0KDJkkiW+1uqdOGnA4F63aRIUytpe+6k+0E=;
        b=sdO2CsQvIVJCnG6lA+xivD93Esm/jqpVEA8xmYz3XkX/+4A3AojuhlXmvJHk+utZKT
         pAAr5j9eISdic3KY3oe7/WaufxBhrELIkjQXhlj9cBjatSXSkxAi8Lo5ZGI85fbyBFNe
         q9ifReKsfqqXFoHom8UIba6covxH2BO8gfvW9MyGYflbZdpPhwwXvWB51RPBZDitk36y
         v8uWwzqbaU4ahMAOSaVk3SUbgHTyLEU4RkyKcAXnat3E0HkfB+Qt2GhvBxgjWkVq+bw5
         m1dTlZJ4o1FErLj0/xbIxfixyd2JfuQVu9H2yAc2R3rH/EjtnOUfbo8u07Jl1kdq6ZEy
         d01g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=czq3Bk7q0KDJkkiW+1uqdOGnA4F63aRIUytpe+6k+0E=;
        b=p3NtLQIBsFZ1f7Sm5YQjK5hsomXplqCqflpym/r80/Wz2t79LURzuo87DV2jzBwkWU
         RFKM8gFH8ohWA7lo+BGOGqGMTkPoD2zh9T2EVxSH9UHoxYMq0dSx5TAP6zFlm9bfFRIU
         +dpTGSp0TPf5VQn1qbwJWpIHE8RF/G+lqBuQGrFuRB9HJfh6D8OenFsSSZwQmxxYPd9T
         oqPvA8ua4GjBOm++Yw9eQMa2KrNbInmEhuBLW5/Y7Obh92mqRUq5+796Fk5rV0GqtaZs
         ZfPQKthGpopJqJ45eafSLpgq9Kn5VhonWK+dwBlstlrrZiJt6dgWR5utM6MTxn9mVDrT
         n33w==
X-Gm-Message-State: AOAM531utc6QIBxlhSXSloZ3bi4CtuSWg8ASwIXmWfPR0+lo23G+L/Da
        zODfxvTcMoAUNVyLgaEl6Q8=
X-Google-Smtp-Source: ABdhPJyunbF19Yv+QAxeivQdfZ9wre0s7oLPHa3KD8BcUdva12gqiTkX8NXvHl0zMmC4aQLTEOFhvw==
X-Received: by 2002:adf:97ce:: with SMTP id t14mr62257222wrb.368.1609367848200;
        Wed, 30 Dec 2020 14:37:28 -0800 (PST)
Received: from ?IPv6:2001:a61:2467:2f01:faca:3d43:5e40:30d1? ([2001:a61:2467:2f01:faca:3d43:5e40:30d1])
        by smtp.gmail.com with ESMTPSA id c16sm45528546wrx.51.2020.12.30.14.37.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Dec 2020 14:37:27 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Eugene Syromyatnikov <evgsyr@gmail.com>
Subject: Re: [PATCH] keyctl.2: SYNOPSIS: Fix prototype parameter types
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20201230214147.874671-4-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4e1220eb-492e-0a8e-07b6-d5e47aba6169@gmail.com>
Date:   Wed, 30 Dec 2020 23:37:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201230214147.874671-4-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 12/30/20 10:41 PM, Alejandro Colomar wrote:
> The Linux kernel uses 'unsigned long'.
> There's no reason to use the typedef '__kernel_ulong_t'.
> 
> ......
> 
> $ syscall='keyctl';
> $ find linux/ -type f -name '*.c' \
>   |xargs pcregrep -Mn "(?s)^[\w_]*SYSCALL_DEFINE.\(${syscall},.*?\)";
> linux/security/keys/keyctl.c:1869:
> SYSCALL_DEFINE5(keyctl, int, option, unsigned long, arg2, unsigned long, arg3,
> 		unsigned long, arg4, unsigned long, arg5)
> linux/security/keys/compat.c:17:
> COMPAT_SYSCALL_DEFINE5(keyctl, u32, option,
> 		       u32, arg2, u32, arg3, u32, arg4, u32, arg5)
> 
> Cc: Eugene Syromyatnikov <evgsyr@gmail.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man2/keyctl.2 | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/man2/keyctl.2 b/man2/keyctl.2
> index 9311100cf..ea3a5d3dd 100644
> --- a/man2/keyctl.2
> +++ b/man2/keyctl.2
> @@ -40,9 +40,9 @@ keyctl \- manipulate the kernel's key management facility
>  .B #include <linux/keyctl.h>
>  .B #include <unistd.h>
>  .PP
> -.BI "long syscall(__NR_keyctl, int " operation ", __kernel_ulong_t " arg2 ,
> -.BI "             __kernel_ulong_t " arg3 ", __kernel_ulong_t " arg4 ,
> -.BI "             __kernel_ulong_t " arg5 );
> +.BI "long syscall(__NR_keyctl, int " operation ", unsigned long " arg2 ,
> +.BI "             unsigned long " arg3 ", unsigned long " arg4 ,
> +.BI "             unsigned long " arg5 );
>  .fi
>  .PP
>  .IR Note :
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
