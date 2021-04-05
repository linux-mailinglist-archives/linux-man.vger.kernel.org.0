Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F06BD354174
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 13:13:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229869AbhDELNp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 07:13:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229639AbhDELNp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 07:13:45 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71427C061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 04:13:39 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id z1so12147422edb.8
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 04:13:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=EisEkN+nCXku7J5+S3sZOKkPVt0M19SYdm2CK/WJNCE=;
        b=ZnreAw29U5yf2P1/h1MWonFeIrlBcWUCS+HZE21M/Rfrt0FzpSgGKj/g+GbXjrzTih
         AdQRYFTGLl2Jp2g/fIXGkLUKuQEPkkywRIFl5FYjOO1rJ96KYkBe7tOx1FaBuODNnfRm
         GtUE2knrhghcs3rYRu75WRBXP8vsPXnoiab3vdSwmf6fRvB6o4KKdkg7cGq1k2LWq0u5
         qP4zKN9WMN5QrUjHCF4uY6aYit4sZPTTsGFvYQK6prp3giEyz5hp7mzEaXjMhaf24Mym
         cvhtDgLRrThvkT7uO/z71PRGrIXZIgExQ2bVDIeKwhEkp0xH/iBvnBc/kOL7unxeq1j/
         lfLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=EisEkN+nCXku7J5+S3sZOKkPVt0M19SYdm2CK/WJNCE=;
        b=a6HpCm6N0T4P1PCNn+6iaqOONqHXHo146hbWsjEgNKedVrOturQChjpXZHiMrS9ngZ
         +1gvhnUU/vArbtsegO+u/MM5LAriPTZMolIpSPsfCZgDvxbM2S0y6sHyk7k3rUFxMdwB
         0xW7cl5EBQhJmOQGsNN02YwNFmwoXoI88zbD3IQxlIGOdulLmcMyuQFaWGA65WYpnjSC
         zqsCeJwP/foSSsyDv9EpQ9pGEsWsVztKYA1Zn7sHcwXkHNjd7Bz/be0lNR97L6+H+qOJ
         9Q3RDDKuREcLzPy7X2jZBb0Ut/5TLxuRUbWKqbdYwW5/Rek5HxnVoG99Rvp9kugNoN8m
         JpIw==
X-Gm-Message-State: AOAM530xuQ9AbN8RPu0IVv2rnUXIPemV8wMdXZuSIyWnq7Zwk6oljCzX
        40SF4oAtG4hh+IPOx9pzgR/3GEsN1Zg=
X-Google-Smtp-Source: ABdhPJy6V2xV/R7QjrLUYtBBitq5a96Pt8UUZXCsGr1JWjujnloE1tQdicx/JLHNizQjjYYLk2/PXw==
X-Received: by 2002:a05:6402:2363:: with SMTP id a3mr6732550eda.130.1617621218099;
        Mon, 05 Apr 2021 04:13:38 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id y21sm2703851edv.31.2021.04.05.04.13.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 04:13:37 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 31/35] ioctl_ficlonerange.2: Make clear why is each
 header exactly needed.
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-32-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a86504dd-9ea2-c6db-8707-476bdde2ed2a@gmail.com>
Date:   Mon, 5 Apr 2021 13:13:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-32-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 4/4/21 1:58 PM, Alejandro Colomar wrote:
> Only the one that provides the prototype doesn't need a comment.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Patch applied.

Thanks,

Michael


> ---
>  man2/ioctl_ficlonerange.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/ioctl_ficlonerange.2 b/man2/ioctl_ficlonerange.2
> index 34c171941..75ab14bc4 100644
> --- a/man2/ioctl_ficlonerange.2
> +++ b/man2/ioctl_ficlonerange.2
> @@ -25,8 +25,8 @@
>  ioctl_ficlonerange, ioctl_ficlone \- share some the data of one file with another file
>  .SH SYNOPSIS
>  .nf
> +.BR "#include <linux/fs.h>" "        /* Definition of " FICLONE* " constants */"
>  .B #include <sys/ioctl.h>
> -.B #include <linux/fs.h>
>  .PP
>  .BI "int ioctl(int " dest_fd ", FICLONERANGE, struct file_clone_range *" arg );
>  .BI "int ioctl(int " dest_fd ", FICLONE, int " src_fd );
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
