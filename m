Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A44282C722E
	for <lists+linux-man@lfdr.de>; Sat, 28 Nov 2020 23:06:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731531AbgK1VuY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 28 Nov 2020 16:50:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732454AbgK1TA3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 28 Nov 2020 14:00:29 -0500
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66E46C02B8EE;
        Sat, 28 Nov 2020 00:57:02 -0800 (PST)
Received: by mail-wm1-x344.google.com with SMTP id v14so1301992wml.1;
        Sat, 28 Nov 2020 00:57:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jSwglpibr8SD4xYQvu/kD8qx3bDD7ljk9nmPcuPEoLI=;
        b=iQUGvVBiJ1OEcrN0h4BcsOFX+VzWhBwlRLV3YgaK9QHGIy2jw+a6vcw/KiYYuISKLx
         QxB/wWLfTmuNKdBEFPCM76+MoFETMx1N/EotrwsWO24XcD5+3ByLJep/wroZrsYxdD03
         8sdAXv8B85sSpqk2c5tmSyFHZkVyxMqKKFeYkCnUfDLlVEvKI2rFnh5ZbliFxOiINDsr
         Wo2BBFPpvLw3o79Q2sgHe31ItZDBlouyUO+6GavX3zs+wMQu9uiJeJ3x7Yd5dF+gfsz1
         +l/fq2OYk8Q77zWV+rGwyokRaN22yn1BYNAx5+ydeJNq/8OrthKZmjHmf5604v6m3PZ/
         sIzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jSwglpibr8SD4xYQvu/kD8qx3bDD7ljk9nmPcuPEoLI=;
        b=goC9IV9+ROoloCCPTCFOMlKtvcNKjTPFoOcDUTuhKH1mSWIhegchtvOUYfHr2U788i
         ZzAjd3nvQWHUoB5BbGYoSfDI6gtkMlyqmHc2OnT5Uh8kIJSYAGuLGIBcOAXquE6HPEFV
         4TWATQVFSlrKEbSurb8a7aZDYXrQf0ngJ6wrMT7hcVxb+2HVWsa7vj5guiQ3I5yzhqKH
         D+gMKttoV+Vt6PWtfqDwHv9W82N6ziJLDAUOd8MLjoy17oe0XMgIJALUKqfH35zHeA4z
         OpPxGRwDYTmsAGRjSrv7xpzOJUCFPCaK+vrB30XsSSzH3Nc6U0jUvAa8pT5MPvUGNHM4
         DrJA==
X-Gm-Message-State: AOAM530MKAlzu8c2Ng/p/pRhxKkFWWzc8roL1wNSyEcicxOeUrkfA6H5
        woK19t/zv1Z5zlXTAq5QU5JrCOOqBHdgpg==
X-Google-Smtp-Source: ABdhPJw2X2rXk1TOS9fObhj6bjUpTvwyjqHToCFaW9jW95QaKGK4aKVddKC88UJRed6quWoYdBWntg==
X-Received: by 2002:a7b:c19a:: with SMTP id y26mr13609321wmi.88.1606553820930;
        Sat, 28 Nov 2020 00:57:00 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id m4sm492142wmi.41.2020.11.28.00.56.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Nov 2020 00:56:59 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] subpage_prot.2: SYNOPSIS: Fix return type: s/long/int/
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20201127234417.26257-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f61b365a-19b7-8dbc-e714-7c55d192d469@gmail.com>
Date:   Sat, 28 Nov 2020 09:56:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201127234417.26257-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 11/28/20 12:44 AM, Alejandro Colomar wrote:
> The Linux kernel uses 'int' instead of 'long' for the return type.
> As glibc provides no wrapper, use the same type the kernel uses.

Thanks. Patch applied.

Cheers,

Michael

> ......
> 
> $ grep -n wrapper man-pages/man2/subpage_prot.2
> 40:There is no glibc wrapper for this system call; see NOTES.
> 99:Glibc does not provide a wrapper for this system call; call it using
> 
> $ grep -rn SYSCALL_DEFINE.*subpage_prot linux/;
> linux/arch/powerpc/mm/book3s64/subpage_prot.c:190:
> SYSCALL_DEFINE3(subpage_prot, unsigned long, addr,
> 
> $ sed -n /SYSCALL.*subpage_prot/,/^}/p \
>   linux/arch/powerpc/mm/book3s64/subpage_prot.c \
>   |grep return;
> 		return -ENOENT;
> 		return -EINVAL;
> 		return -EINVAL;
> 		return 0;
> 		return -EFAULT;
> 			return -EFAULT;
> 	return err;
> 
> $ sed -n /SYSCALL.*subpage_prot/,/^}/p \
>   linux/arch/powerpc/mm/book3s64/subpage_prot.c \
>   |grep '\<err\>';
> 	int err;
> 			err = -ENOMEM;
> 		err = -ENOMEM;
> 	err = 0;
> 	return err;
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/subpage_prot.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/subpage_prot.2 b/man2/subpage_prot.2
> index b38ba718f..d6f016665 100644
> --- a/man2/subpage_prot.2
> +++ b/man2/subpage_prot.2
> @@ -32,7 +32,7 @@
>  subpage_prot \- define a subpage protection for an address range
>  .SH SYNOPSIS
>  .nf
> -.BI "long subpage_prot(unsigned long " addr ", unsigned long " len ,
> +.BI "int subpage_prot(unsigned long " addr ", unsigned long " len ,
>  .BI "                  uint32_t *" map );
>  .fi
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
