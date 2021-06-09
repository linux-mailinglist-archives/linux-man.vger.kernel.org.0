Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D52513A1FFF
	for <lists+linux-man@lfdr.de>; Thu, 10 Jun 2021 00:26:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229626AbhFIW2W (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Jun 2021 18:28:22 -0400
Received: from mail-pf1-f179.google.com ([209.85.210.179]:38906 "EHLO
        mail-pf1-f179.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229542AbhFIW2V (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Jun 2021 18:28:21 -0400
Received: by mail-pf1-f179.google.com with SMTP id z26so19728256pfj.5
        for <linux-man@vger.kernel.org>; Wed, 09 Jun 2021 15:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ciXvT8fQvRJfGE0fqiqIXkq9JqMRGZ7Hm7giIOtZKbM=;
        b=ouQY4huQ6qTcreh4dS66BGOuFBKrNCWJ+ovPWv/TOy4Mk2yPXiKClP1RVt3I3aquwh
         YjazVZWOgWNEK2sctouOAiuJSs65ioQN3E+w54wGkScydoeKtQfOI0IUKo8NTZWnjiP2
         SJWJQfDkklop3p8ykQk+pYWrVxs5utyHXd4UNAYW9Sa4tZGawl9jXXEVVJBzTnSZ4wtK
         s8ZaLVS1ERgYSpogSWIJoGJm9eDkMIf/pYG6aqi8QskkwSCHpw1l3fK6hSlr15NCa+i/
         wAst9W5Q7nM61v8PFFafPsn+zUU3xMuCjVcvYXgEwsM1bx1CUvr4+B4cMRwiqHyYhWqo
         HWgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ciXvT8fQvRJfGE0fqiqIXkq9JqMRGZ7Hm7giIOtZKbM=;
        b=qs9XFMMQVexqKg4bV4u/SZdPKpnmJml+gGt1+YtC+vgJbPpdpRmuJ9zWaz76hZVihS
         LhsuQVFJ21/HMTWUU/ZPYOi71i8hq9bJjXFLvi2rD3E6ef/gXSmLcGotkru4JOysENe7
         vQXoOu1HPcpiwgT8wPNXUV6rcAnyC8SLRrkRoIWV6Ki5q29I8RtLIUzTEL35i117XNe6
         T9vsZVBv4ngDblAX8qyjutJZrd8kzA5GrLrjTJuJlYx5C9qT9ImDbV07OkxkmGZXj3Vy
         jBLLPCTkI6OaCicX8o0xv4ldH3WTAY/ylz6j6olcoJzCdoSRNWkVtCv7uHKHJUD4K0I9
         UfTQ==
X-Gm-Message-State: AOAM5325tEbwos0FprtzW1j9cHKoinIAgmDLwN/U8KdmdTxm7DsoaXpk
        dZ+Mv8/0TrM9B1ceiqubzCekOgYgnDw=
X-Google-Smtp-Source: ABdhPJyEuo2MrFqMMn9mGoHSh1JAXCFnRM6bmPn0WBrpQMqnYiacPUbAo6+W8VlrEaXK/x7KetaUXA==
X-Received: by 2002:a63:5511:: with SMTP id j17mr1876979pgb.191.1623277508885;
        Wed, 09 Jun 2021 15:25:08 -0700 (PDT)
Received: from [192.168.1.70] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id g11sm640401pgh.24.2021.06.09.15.25.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jun 2021 15:25:08 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 06/10] set_tid_address.2: Use syscall(SYS_...); for
 system calls without a wrapper
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210521232553.161080-10-alx.manpages@gmail.com>
 <20210524181947.459437-6-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f23e53a8-88db-f7d9-871b-b89d26c18dad@gmail.com>
Date:   Thu, 10 Jun 2021 10:25:05 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210524181947.459437-6-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/25/21 6:19 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Applied.

Thanks,

Michael


> ---
>  man2/set_tid_address.2 | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)
> 
> diff --git a/man2/set_tid_address.2 b/man2/set_tid_address.2
> index 258c9b9ef..65b4931eb 100644
> --- a/man2/set_tid_address.2
> +++ b/man2/set_tid_address.2
> @@ -27,13 +27,17 @@
>  set_tid_address \- set pointer to thread ID
>  .SH SYNOPSIS
>  .nf
> -.B #include <linux/unistd.h>
> +.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
> +.B #include <unistd.h>
>  .PP
> -.BI "pid_t set_tid_address(int *" tidptr );
> +.BI "pid_t syscall(SYS_set_tid_address, int *" tidptr );
>  .fi
>  .PP
>  .IR Note :
> -There is no glibc wrapper for this system call; see NOTES.
> +glibc provides no wrapper for
> +.BR set_tid_address (),
> +necessitating the use of
> +.BR syscall (2).
>  .SH DESCRIPTION
>  For each thread, the kernel maintains two attributes (addresses) called
>  .I set_child_tid
> @@ -99,9 +103,6 @@ This call is present since Linux 2.5.48.
>  Details as given here are valid since Linux 2.5.49.
>  .SH CONFORMING TO
>  This system call is Linux-specific.
> -.SH NOTES
> -Glibc does not provide a wrapper for this system call; call it using
> -.BR syscall (2).
>  .SH SEE ALSO
>  .BR clone (2),
>  .BR futex (2),
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
