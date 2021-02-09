Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4FCA43159FB
	for <lists+linux-man@lfdr.de>; Wed, 10 Feb 2021 00:24:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234514AbhBIXVC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 9 Feb 2021 18:21:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233990AbhBIWl7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 9 Feb 2021 17:41:59 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58827C061786;
        Tue,  9 Feb 2021 10:59:51 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id u14so23394037wri.3;
        Tue, 09 Feb 2021 10:59:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jqGxzA22gRmHHh9JA9VdOkFG7vnAEA7LEY3kb8FYFug=;
        b=Wmh3eqyOtjf62u86HM/LOnNU0NT+W2vwF6VtFpR53n/VBnahPgcb1MAEZdVHHuMTNo
         +bqY05N1weVb3P84DzatxlDhbyfAvJqH0zRT/ssCtzlJBFjH/pclzV4dhpvdk6f3D3zA
         8U+SW8UrrCF0rKEUBMBkyJzaywL8jxnUXY8Htt9ZZRTHPIGFNGKACc/IQZoxeQ7vKKaw
         vyUU1Eev6/kxs627SpuNLEnIHUseN8rroYbb0veqnxHXxmP38GBrQvYF1c2+Xa5FlhUq
         N6GJaCeatWHrqQxPebnNDMBpwlmAiSG+E63+UxBRqv9gaLL5bJZTNWzYfUr8h6TXl6Gh
         wFDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jqGxzA22gRmHHh9JA9VdOkFG7vnAEA7LEY3kb8FYFug=;
        b=n2wg7QcWRB5KaBRfdhELRMwNFGQ3+009gW3qBNyJOFkj/1g/0Gt92MHfk8Bq49WVyT
         FpV1P81v8HzwooQ2NXUMQ1TBtnrpO4hEDhhY49aIL2HViSYuCpacI+hRUA+0hN42lOk6
         EBIqx8pSg4Hz2beWDjiKEZLTRO7wSVkjAylfZs69eoBnp0galVmNN2RX/Kz+v1iMW0Fi
         v5aaymrX/rG7TCrcYFnu3eQM6qn3l14YC59q0cccRVbbfjVV6F0Cm8JyQykp714f3nJ7
         C+i12Lf+kf73RnmUUoozm6CSfmQ0V7k7R7sXUq0W0GxM9JZWGTMzsFTv1CvPmo1ejrhF
         mavQ==
X-Gm-Message-State: AOAM531BJAXzzXHffJ9z/xGgHBkK+4B9OxBWG7151za2NVh+dpW59fvi
        d3k23XlUmRD5M4IN9diYBPS0BXOi7lPYZw==
X-Google-Smtp-Source: ABdhPJwU/83ac6/3GLn4H+C0rxB4dhR7yVTPxjU0gZzLwYOTTyW3y4wknQLd7SQipTkCsfQmVfO0ag==
X-Received: by 2002:adf:f905:: with SMTP id b5mr26450688wrr.129.1612897189845;
        Tue, 09 Feb 2021 10:59:49 -0800 (PST)
Received: from ?IPv6:2001:a61:24ca:4d01:a815:d0d9:f754:e0ef? ([2001:a61:24ca:4d01:a815:d0d9:f754:e0ef])
        by smtp.gmail.com with ESMTPSA id j11sm37977423wrt.26.2021.02.09.10.59.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Feb 2021 10:59:48 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] ipc.2: Fix prototype parameter types
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210204093051.184049-1-alx.manpages@gmail.com>
 <20210207123654.187829-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d51a100d-07d9-8917-b4c1-be57ce16dc4b@gmail.com>
Date:   Tue, 9 Feb 2021 19:59:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210207123654.187829-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/7/21 1:36 PM, Alejandro Colomar wrote:
> The types for some of the parameters are incorrect
> (different than the kernel).  Fix them.
> Below are shown the types that the kernel uses.

Thanks. Patch applied.

Cheers,

Michael

> ......
> 
> .../linux$ grep_syscall ipc
> ipc/syscall.c:110:
> SYSCALL_DEFINE6(ipc, unsigned int, call, int, first, unsigned long, second,
> 		unsigned long, third, void __user *, ptr, long, fifth)
> ipc/syscall.c:205:
> COMPAT_SYSCALL_DEFINE6(ipc, u32, call, int, first, int, second,
> 	u32, third, compat_uptr_t, ptr, u32, fifth)
> include/linux/compat.h:874:
> asmlinkage long compat_sys_ipc(u32, int, int, u32, compat_uptr_t, u32);
> include/linux/syscalls.h:1221:
> asmlinkage long sys_ipc(unsigned int call, int first, unsigned long second,
> 		unsigned long third, void __user *ptr, long fifth);
> .../linux$
> 
> function grep_syscall()
> {
> 	if ! [ -v 1 ]; then
> 		>&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
> 		return ${EX_USAGE};
> 	fi
> 
> 	find * -type f \
> 	|grep '\.c$' \
> 	|sort -V \
> 	|xargs pcregrep -Mn "(?s)^\w*SYSCALL_DEFINE.\(${1},.*?\)" \
> 	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
> 
> 	find * -type f \
> 	|grep '\.[ch]$' \
> 	|sort -V \
> 	|xargs pcregrep -Mn "(?s)^asmlinkage\s+[\w\s]+\**sys_${1}\s*\(.*?\)" \
> 	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
> }
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/ipc.2 | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/man2/ipc.2 b/man2/ipc.2
> index 6589ffae6..a36e895a2 100644
> --- a/man2/ipc.2
> +++ b/man2/ipc.2
> @@ -27,9 +27,8 @@
>  ipc \- System V IPC system calls
>  .SH SYNOPSIS
>  .nf
> -.BI "int ipc(unsigned int " call ", int " first ", int " second \
> -", int " third ,
> -.BI "        void *" ptr ", long " fifth );
> +.BI "int ipc(unsigned int " call ", int " first ", unsigned long " second ,
> +.BI "        unsigned long " third ", void *" ptr ", long " fifth );
>  .fi
>  .PP
>  .IR Note :
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
