Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F26FD31C2B4
	for <lists+linux-man@lfdr.de>; Mon, 15 Feb 2021 20:58:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230457AbhBOT5C (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Feb 2021 14:57:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230216AbhBOT46 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Feb 2021 14:56:58 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D6C2C0613D6
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 11:56:17 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id a16so4768200wmm.0
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 11:56:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=HaIUBkwntMtOmtkthfO3JHVjHKXSsQC3gydIV4P2tHM=;
        b=qmLYPf2BdP2DjbihQzP/9owMKln5/qN16Ifd5XKZekDnmZMtICXuSeRHTV6jkJSzJj
         c/PQot4hrwpQaOXBwIkmMPzJQg2PbgL11WcW89YX3FOLauCgUy7djp41BGzPtFByvBtU
         D6xQalMMCSwxru9WYoumqUYbLRyHAScZ0YdBZTKXzkd+XEf41nd4FDJEKssmfySgpPOI
         g+ndO1TIxMa7zoBMeJqxmRq4aR46+h2PE5MQtCz6M5rIN2oPqXH8U4WaqSOw8czibf+d
         lqca6RqJ6HctB47qfukEQ8BxlAxacGhatLiuPs8YT0dE1pkK2DZp6jL4LwtwO6Ve3zq3
         N02Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=HaIUBkwntMtOmtkthfO3JHVjHKXSsQC3gydIV4P2tHM=;
        b=EBYho5sf7rG4Hbf/OZwr+l7Q4Sc7NdlcEzzJbpXfKACDgfhOoe6+FAhK9fkjFSHw5m
         QCezu+K6KOrn50ck5qiCHcAD1dVUPpfciIyUI7gdvD7Xxib5qKdSF/xV0Rdv4k0Hrm1p
         qEV9aiL+GATewLldqirgiSiQi6Gn54izP0fHJWpXR/nr5JfHNB2CdiUL6PrsIllxCRv8
         YRJJcZ7U4Vh6IwALI3fFfSyH4q85PqFJ84+9Wa0sdq67r+PfXj7aFhcqtmHSYiLZT3nH
         DyOHD3TL1CHw3YFnDce3bUA/cJUBl2HWkKnK7wap5myrARAf2TYAuKIT3qIRnIZwwWJi
         bm2A==
X-Gm-Message-State: AOAM531zbNIIAmm8q+rhhEwy2IXd8GBf+cWjdjxLUZlPdIi2VSiOTwXA
        f2fOXAxW8de+9B2fSxxqQi+5EEk/uC4SrQ==
X-Google-Smtp-Source: ABdhPJwYfqeJcrorGtJNFDj1Z01B3KEamq9f5vtT/ptrufgAm3kdVFNmMXItacmuse5cPw2lXLzD0w==
X-Received: by 2002:a05:600c:4642:: with SMTP id n2mr393109wmo.49.1613418976090;
        Mon, 15 Feb 2021 11:56:16 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:e14:1e8b:dca4:7d73? ([2001:a61:3a2d:1d01:e14:1e8b:dca4:7d73])
        by smtp.gmail.com with ESMTPSA id a9sm22256561wrn.60.2021.02.15.11.56.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Feb 2021 11:56:15 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] socketcall.2: Add note about missing glibc wrapper
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210215131522.450666-3-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8d9fa5cf-b2e8-1588-5ac0-d871decb1690@gmail.com>
Date:   Mon, 15 Feb 2021 20:56:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210215131522.450666-3-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/15/21 2:15 PM, Alejandro Colomar wrote:
> ......
> 
> .../glibc$ grep_glibc_prototype socketcall
> .../glibc$
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks! Patch applied.

Cheers,

Michael

> ---
>  man2/socketcall.2 | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/man2/socketcall.2 b/man2/socketcall.2
> index a3012d4c7..d1803d906 100644
> --- a/man2/socketcall.2
> +++ b/man2/socketcall.2
> @@ -31,6 +31,9 @@ socketcall \- socket system calls
>  .PP
>  .BI "int socketcall(int " call ", unsigned long *" args );
>  .fi
> +.PP
> +.IR Note :
> +There is no glibc wrapper for this system call; see NOTES.
>  .SH DESCRIPTION
>  .BR socketcall ()
>  is a common kernel entry point for the socket system calls.
> @@ -153,6 +156,9 @@ T}
>  This call is specific to Linux, and should not be used in programs
>  intended to be portable.
>  .SH NOTES
> +Glibc does not provide a wrapper for this system call; call it using
> +.BR syscall (2).
> +.PP
>  On a some architectures\(emfor example, x86-64 and ARM\(emthere is no
>  .BR socketcall ()
>  system call; instead
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
