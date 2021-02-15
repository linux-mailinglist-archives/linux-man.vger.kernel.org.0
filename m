Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 74BED31C2B8
	for <lists+linux-man@lfdr.de>; Mon, 15 Feb 2021 20:58:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229764AbhBOT6H (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Feb 2021 14:58:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230510AbhBOT5m (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Feb 2021 14:57:42 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B21BC061574
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 11:57:02 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id a132so705831wmc.0
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 11:57:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Yl0Nk5QOYKdQsggQLM4wyfjr8cMFavCoCxX7DmUPfHw=;
        b=YTZo42TmdJpjZ/jnuFjyHecN7Tgz0oC94EuBmL7ohhgEoP0FX8QkDptOPaWzIfRy/R
         MjM5GbezGBMCw7/Q5Qurt28QyiX+vrntySqF9XyRKo1+11mgVG6lNSxK4FedoBlzyzU6
         1Kwqp2uqpmr/NAgOB6rTtmMmoIGSkuogKqRmLYkQQ9PDUqkjGVjPe5vbnxrlFD1nEJfu
         BCYhui8lsJ9gGS3JhzUtW8AaWBEI9Lrin0kIn0WPpHDSoxo55XEPGC4iXF9e63Ha5dgZ
         z93GfJ1rCOK/bqNPvZoq5LAO3HHpNLxxqim7xubiDW2j5m3Oi49MFKp4OxsjKd3herNp
         0zjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Yl0Nk5QOYKdQsggQLM4wyfjr8cMFavCoCxX7DmUPfHw=;
        b=DbzhaJk2mrK1cueB9wFeEJfUminVk/ZuYf1q1UIfOadCoWOtux2tY+xVzexuHZKXcF
         wWvMyORsafoxvXrtkDFwVxlgpD99MakBzZZdK4jspSmXZQYrGuzEIwcJC0aFdVKWEwmp
         nlacP+d3ezqjFRCW9zrqxC+BJIl753IukSnoHs5To0V8ltWnGgqy4CI3esn2I+rwM+YE
         Iry0GKioi7yXsTqYf1pmY9ML75CdMMGN2lNvOsEbmd6i5QmHqbsDtOrD5DfOBOzhKfRb
         bqLkPq8SKfGGbNInUXcxUZPqdTsrWevUq8B8fmx1M0h0xc1XnTn+kx07pvgctue/HJHV
         J3hg==
X-Gm-Message-State: AOAM530EyYJlNDU7LaziQOsFEc075TBQ/HHfAe/9IE0bf6js5Ehuy2om
        bLOJl9jyxd/TpSqIqAStSKG0BoFCAhjfow==
X-Google-Smtp-Source: ABdhPJzU4VY57xNLA2xO4cVfCx7kdVYA8aLvfM25zTMx1x9EpDoPW2qI1vqlg34q+amI08+63DZlrQ==
X-Received: by 2002:a05:600c:414a:: with SMTP id h10mr400519wmm.144.1613419021080;
        Mon, 15 Feb 2021 11:57:01 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:e14:1e8b:dca4:7d73? ([2001:a61:3a2d:1d01:e14:1e8b:dca4:7d73])
        by smtp.gmail.com with ESMTPSA id b75sm483599wmd.10.2021.02.15.11.57.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Feb 2021 11:57:00 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] s390_pci_mmio_write.2: SYNOPSIS: Add 'const' qualifier
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210215131522.450666-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a28dcfb7-cf46-b7c4-1d51-359b4309e6b4@gmail.com>
Date:   Mon, 15 Feb 2021 20:57:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210215131522.450666-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/15/21 2:15 PM, Alejandro Colomar wrote:
> s390_pci_mmio_write() uses 'const void *' instead of 'void *'.
> Fix it.
> 
> ......
> 
> .../linux$ grep_syscall s390_pci_mmio_write
> arch/s390/pci/pci_mmio.c:119:
> SYSCALL_DEFINE3(s390_pci_mmio_write, unsigned long, mmio_addr,
> 		const void __user *, user_buffer, size_t, length)
> .../linux$
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks! Patch applied.

Cheers,

Michael


> ---
>  man2/s390_pci_mmio_write.2 | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/man2/s390_pci_mmio_write.2 b/man2/s390_pci_mmio_write.2
> index a9088c25f..9bee6a21f 100644
> --- a/man2/s390_pci_mmio_write.2
> +++ b/man2/s390_pci_mmio_write.2
> @@ -30,10 +30,10 @@ MMIO memory page
>  .nf
>  .B #include <asm/unistd.h>
>  .PP
> -.BI "int s390_pci_mmio_write(unsigned long " mmio_addr ","
> -.BI "                        void *" user_buffer ", size_t " length ");"
> -.BI "int s390_pci_mmio_read(unsigned long " mmio_addr ","
> -.BI "                        void *" user_buffer ", size_t " length ");"
> +.BI "int s390_pci_mmio_write(unsigned long " mmio_addr ,
> +.BI "                       const void *" user_buffer ", size_t " length );
> +.BI "int s390_pci_mmio_read(unsigned long " mmio_addr ,
> +.BI "                       void *" user_buffer ", size_t " length );
>  .fi
>  .PP
>  .IR Note :
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
