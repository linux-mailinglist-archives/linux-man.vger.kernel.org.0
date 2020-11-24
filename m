Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 02FCB2C2212
	for <lists+linux-man@lfdr.de>; Tue, 24 Nov 2020 10:50:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731107AbgKXJuc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Nov 2020 04:50:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728886AbgKXJuc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Nov 2020 04:50:32 -0500
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6A3FC0613D6;
        Tue, 24 Nov 2020 01:50:31 -0800 (PST)
Received: by mail-wm1-x341.google.com with SMTP id d142so1820115wmd.4;
        Tue, 24 Nov 2020 01:50:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ytqY2Kta/VT9WRzycnbHe2+qadbmffHx1RuPAjT9P+M=;
        b=REBujwmMsE/IcjcGZLUPk2jAvBtRhqBa7cNuMVsLB1cGchTjqtRjv8/ryA8LaBv/8a
         w6YBT56rywVqcp1qkQWtI1nCmRkYnJ2Q018EQcGDkfZB9Rr21bfS1ZC9R6w+CV9g2sXa
         /BletmLQqNAatYNgUXp18gH4n8K49Yb9z/QNSE4YWyZcoQqClfoZVatnKxIMGFgNejLW
         kUnNLihBFwpTTCL3/9MAORVd6+vMGdbQRTcuWWUfLBvD198sHex0I5NsIQvEcZuPRU9x
         HbL5c8yJvbzyCG72kCKbS7TchaBrkhNlGb5ONpKqYWRXSPUq15TSK5l5eNm7qGSuXco3
         ZfHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ytqY2Kta/VT9WRzycnbHe2+qadbmffHx1RuPAjT9P+M=;
        b=Oe6vyQ8YSHs2Fq54SWXcegzXxVy20sw82Kd7oGffcM1tDvCkwzVTvUD/LlCN075PLm
         riJSzSIkVo3RHdyyY1ks9TpJUE9xv9egR4glZFYcAgWoHjjoYU+6BnNS9UZOsuqoYvF8
         nG4EHwDynjyjDkOwwN077Jtm7uKONZ33hbJLWZXzXBEqA8nry9tIJKkPJf4l5qD2s1u1
         fhUV4KngfMr3qVbo9ozmu8SrF5TmFpzMbxnygLkxCKHihw4wettMwuuuhVXZlltBS55M
         194gXgjSPJag+d6m3yyoS/DyTh21woDBJWIq9SvX7+p5BNg5NltYgiVlAG+Z++hOdzzo
         5+Dg==
X-Gm-Message-State: AOAM530DedGs7MiAHcQ+zRv6Wx7Y42wxy/P4ms4pTyMmKadHBjZvHmIG
        w+K2lc0fmZpM8YyIdkh1EFk=
X-Google-Smtp-Source: ABdhPJyjwtXMVF2/0IXnGNwO2NXJ1PopNhVKW+E+D46wrpFO5jOPmq5/J7KVJj4EgRkW9+bNwDl5OA==
X-Received: by 2002:a1c:2b05:: with SMTP id r5mr3341075wmr.179.1606211430596;
        Tue, 24 Nov 2020 01:50:30 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id a18sm4301676wme.18.2020.11.24.01.50.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Nov 2020 01:50:29 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH] set_tid_address.2: SYNOPSIS: Fix set_tid_address() return
 type
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20201123215911.7576-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b8c3ee44-91f7-ee0c-b39a-044459f3b456@gmail.com>
Date:   Tue, 24 Nov 2020 10:50:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201123215911.7576-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 11/23/20 10:59 PM, Alejandro Colomar wrote:
> The Linux kernel uses 'pid_t' instead of 'long' for the return type.
> As glibc provides no wrapper, use the same types the kernel uses.
> 
> $ sed -n 34,36p man-pages/man2/set_tid_address.2
> .PP
> .IR Note :
> There is no glibc wrapper for this system call; see NOTES.
> 
> $ grep -rn 'SYSCALL_DEFINE.*set_tid_address' linux/
> linux/kernel/fork.c:1632:
> SYSCALL_DEFINE1(set_tid_address, int __user *, tidptr)
> 
> $ sed -n 1632,1638p linux/kernel/fork.c
> SYSCALL_DEFINE1(set_tid_address, int __user *, tidptr)
> {
> 	current->clear_child_tid = tidptr;
> 
> 	return task_pid_vnr(current);
> }
> 
> $ grep -rn 'task_pid_vnr(struct' linux/
> linux/include/linux/sched.h:1374:
> static inline pid_t task_pid_vnr(struct task_struct *tsk)
>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks! Patch applied.

Cheers,

Michael

> ---
>  man2/set_tid_address.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/set_tid_address.2 b/man2/set_tid_address.2
> index 380efcdd8..b18b8efef 100644
> --- a/man2/set_tid_address.2
> +++ b/man2/set_tid_address.2
> @@ -29,7 +29,7 @@ set_tid_address \- set pointer to thread ID
>  .nf
>  .B #include <linux/unistd.h>
>  .PP
> -.BI "long set_tid_address(int *" tidptr );
> +.BI "pid_t set_tid_address(int *" tidptr );
>  .fi
>  .PP
>  .IR Note :
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
