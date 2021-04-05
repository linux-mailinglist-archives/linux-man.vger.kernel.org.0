Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C00A35417D
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 13:22:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234622AbhDELXC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 07:23:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233218AbhDELXB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 07:23:01 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B55FCC061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 04:22:55 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id r12so16359666ejr.5
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 04:22:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=e6SwtZ5phgsXi46bIn6Afh7YVqYG8G1szsMiwDMMxrc=;
        b=TMQrLtF11bOCNJX8q+suCPJxR6q98/utNx9f5O1A422DdYDv+JOwOzfachdJZMGvuS
         EnhvJmH2kiVg2i649XUsUJLIAM1qIz3fCnZJG6jxu2OfQtQwAsU/Y1qgadUTsUzq1gbi
         RQ9R1dKL4eltWtp5NCN4iky06Lp2u7OOvRLEcIkUF2ZcWXJOIX1Nbyylrnn6vur/U/mp
         4Y8D7RxNXXifp/0nTZ/CzRrnHrRow5nrcmc0xeW0LsuMMFrt8Kf1y5sV3a7ERtXEKzgn
         bkF4LQDCx8Dujuc7T5UCvIoHiS5AQ3NvdEmZFVJXA1BDFm/5CQaI6EtUij8RQlyzW/CP
         t8hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=e6SwtZ5phgsXi46bIn6Afh7YVqYG8G1szsMiwDMMxrc=;
        b=cHRe0ITZuyyb+KeH8f5cqsP5uQOeS9T1ws8QwitAZ/uu+aFbtgUOM/arJW1oynnYr6
         XVrrycarxVW1CL3T865mAfvPVOqhZjKtH/bGMLIKADFFtsMAbvSHVoCviFvIPWs+Mgny
         YQtqvu0sR6vLO6tgwJfRpvC/YEklXlG8JDO5xZITn0/1SNhM4Wbp5OQfYJuV7uMCkXB7
         2saDc+Ae2U8cIxpDpmTkfTfdASRdAv+jB7T4JUAUp5Hg1StwBiR2PQbkwxw2w/RjmCBk
         tbf5t+nOW43Ca/en4VkDAACsAaVTaOPOnjfUipPtp263dAcjgrTVsuMM2mYKnE+0C+Ps
         Fw4w==
X-Gm-Message-State: AOAM531XzXYM0hEizsLVUKpNNxDiycOj2Laq03YxXFga3gLERzpfDxZE
        c4CAr0LmEBhUAAbEq1yR0CQ=
X-Google-Smtp-Source: ABdhPJyn/Den5tytrF9advnMT1B2WCCaUgLod4FaIf9ztVZKr1y8fpo+mVfJSuJrx08hiryu8UdHpg==
X-Received: by 2002:a17:906:1519:: with SMTP id b25mr27740275ejd.254.1617621774314;
        Mon, 05 Apr 2021 04:22:54 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id sd21sm2093372ejb.98.2021.04.05.04.22.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 04:22:53 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 07/35] alloc_hugepages.2: Use syscall(SYS_...); for
 system calls without a wrapper
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-8-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6ea6e22a-0396-7c98-63c7-6768d2af147d@gmail.com>
Date:   Mon, 5 Apr 2021 13:22:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-8-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 4/4/21 1:58 PM, Alejandro Colomar wrote:
> The page didn't specify includes, and the syscalls are extint, so
> instead of adding incomplete information about includes, just
> leave it without any includes.


Patch applied.

Thanks,

Michael


> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/alloc_hugepages.2 | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/man2/alloc_hugepages.2 b/man2/alloc_hugepages.2
> index 07193c542..cc76fc495 100644
> --- a/man2/alloc_hugepages.2
> +++ b/man2/alloc_hugepages.2
> @@ -27,11 +27,12 @@
>  alloc_hugepages, free_hugepages \- allocate or free huge pages
>  .SH SYNOPSIS
>  .nf
> -.BI "void *alloc_hugepages(int " key ", void *" addr ", size_t " len ,
> -.BI "                      int " prot ", int " flag );
> +.BI "void *syscall(SYS_alloc_hugepages, int " key ", void *" addr \
> +", size_t " len ,
> +.BI "              int " prot ", int " flag );
>  .\" asmlinkage unsigned long sys_alloc_hugepages(int key, unsigned long addr,
>  .\" unsigned long len, int prot, int flag);
> -.BI "int free_hugepages(void *" addr );
> +.BI "int syscall(SYS_free_hugepages, void *" addr );
>  .\" asmlinkage int sys_free_hugepages(unsigned long addr);
>  .fi
>  .SH DESCRIPTION
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
