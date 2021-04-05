Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E8EB135419B
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 13:39:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232597AbhDELjr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 07:39:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232569AbhDELjr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 07:39:47 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE5EAC061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 04:39:39 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id x21so12233375eds.4
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 04:39:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=cEr6QthVIV45qE318vd3NhPg70iB+aRiDjMbUj7GiB8=;
        b=MEXRzt1U/XRXDihsOzhQg6Ejn8ubzyqLk9B+0R4jj+ZEAdnRpTD+tGkRYSmNPrCB+g
         gw1EqRbp/CzkpGcWphzxggbjOqkGS+h2AVisU/qsqVziYkmeXB15D5KVnWicNIuKuMxL
         y0J/ZkihuEF1MwJ3M6SeRMkieUGqd7UcS+fh84LFFcLpuMlA5Is32tPNgSBeiuft9qAA
         ejX0+3AmZx/hwDfNFGflXzBkjje1kJuybdpcLEaHtPrslDts2/4/lWY69fktn8bbVvg1
         RSiCVlUuWdZLUX0dXp7WV+wzZ2xZMgxXKIv3xo9rVP1XnjCaGiMLXAPYdDymJBWEomrF
         QlKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cEr6QthVIV45qE318vd3NhPg70iB+aRiDjMbUj7GiB8=;
        b=mTfFNAF800AM4SHTxp3lf/tDM/35BPTfVwtikWvS5k7IcsbwHCCSGZYHktPwSNO8os
         ZKABAdrR3CKaUNnGuJH+E9dNG+p1i8lB6MycmbmTfMJ5QOk9r49o93//RRWYjnsi/evm
         3uKbtKoqLxKnd5z8HgY+rRfqFXR++q/NOepadk5hfqvwRssTbNe0BeEmLr5BJds9NB16
         ONwSAXqcoMaUapKGDRi7SaubZVnE8D+hY8jrkhGV22td7qWGUsc0gLlFQJBQ0lGe3zcn
         P4CmXtcAbYp6nmpXxh6cj5Bs7hmqu97a2cg+J6PTR8IIgIRk1xPB2F6sWmTCmq2hfsaK
         ch1A==
X-Gm-Message-State: AOAM532VUCOShiIz8Jxcdjpc66wPMwi5JC7HKq9jUtOv1kO1cFliYQ9+
        JBZZqJd02FOqQJwVfS742xg=
X-Google-Smtp-Source: ABdhPJw9Og1g5nBb/KaELvuQmVpFoPibTEFzX59MDvsfPdzA1onaWVVuzVTlBI5AIRRplmlxRHGgqQ==
X-Received: by 2002:a05:6402:1857:: with SMTP id v23mr4804837edy.362.1617622778627;
        Mon, 05 Apr 2021 04:39:38 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id dh27sm1084744edb.28.2021.04.05.04.39.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 04:39:38 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 25/35] get_robust_list.2: Use syscall(SYS_...); for
 system calls without a wrapper
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-26-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c2aa4722-4f99-0d26-48cf-aa08caed8483@gmail.com>
Date:   Mon, 5 Apr 2021 13:39:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-26-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 4/4/21 1:58 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/get_robust_list.2 | 19 ++++++++-----------
>  1 file changed, 8 insertions(+), 11 deletions(-)

Patch applied.

Thanks,

Michael


> diff --git a/man2/get_robust_list.2 b/man2/get_robust_list.2
> index dd43cded2..b1368ddd3 100644
> --- a/man2/get_robust_list.2
> +++ b/man2/get_robust_list.2
> @@ -32,16 +32,16 @@
>  get_robust_list, set_robust_list \- get/set list of robust futexes
>  .SH SYNOPSIS
>  .nf
> -.B #include <linux/futex.h>
> -.B #include <syscall.h>
> +.BR "#include <linux/futex.h>" \
> +"    /* Definition of " "struct robust_list_head" " */"
> +.BR "#include <sys/syscall.h>" "    /* Definition of " SYS_* " constants */"
> +.B #include <unistd.h>
>  .PP
> -.BI "long get_robust_list(int " pid ", struct robust_list_head **" head_ptr ,
> -.BI "                     size_t *" len_ptr );
> -.BI "long set_robust_list(struct robust_list_head *" head ", size_t " len );
> +.BI "long syscall(SYS_get_robust_list, int " pid ,
> +.BI "             struct robust_list_head **" head_ptr ", size_t *" len_ptr );
> +.BI "long syscall(SYS_set_robust_list,"
> +.BI "             struct robust_list_head *" head ", size_t " len );
>  .fi
> -.PP
> -.IR Note :
> -There are no glibc wrappers for these system calls; see NOTES.
>  .SH DESCRIPTION
>  These system calls deal with per-thread robust futex lists.
>  These lists are managed in user space:
> @@ -138,9 +138,6 @@ could be found.
>  These system calls were added in Linux 2.6.17.
>  .SH NOTES
>  These system calls are not needed by normal applications.
> -No support for them is provided in glibc.
> -In the unlikely event that you want to call them directly, use
> -.BR syscall (2).
>  .PP
>  A thread can have only one robust futex list;
>  therefore applications that wish
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
