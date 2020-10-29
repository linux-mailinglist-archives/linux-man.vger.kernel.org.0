Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D834A29F5A3
	for <lists+linux-man@lfdr.de>; Thu, 29 Oct 2020 20:55:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725919AbgJ2Tze (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Oct 2020 15:55:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725914AbgJ2TyT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Oct 2020 15:54:19 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D870C0613D2;
        Thu, 29 Oct 2020 12:54:19 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id c16so967959wmd.2;
        Thu, 29 Oct 2020 12:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3/UuFFzbQEiA3BF2ACATv8N8EgPz11Ros4u4W445Mfw=;
        b=SVZ4uevrdJ6OMfqWafiaqFhAhnKlSxo6b1M5OQZXIbzF0ZVQZIJcPRbKR9OHNPHhMo
         /y7XreNOH2XD61oy/J7CAZKHctkPCgMCumloLDOpIsEyBF6PKy6MFT12x9oCdyUTPuQh
         xGilkCy0b+DnIyb1S5JqmU4Hn8bj8GiE280DZ+9HyFAf8he6PvabhS/JuENeBIQrcMJA
         p7ahrBzpV+Swexx4HCrif5iNNTIe/S0ee2FyIn/s9yEaw5MHYzvSIMK0tbl76jfQ8Tje
         nGjJuwFfTpF3khWiqMCt3zJWooAy5VypoqoDum5stWfmmeEyVOyEaDGsDPJ7sMQBjieC
         jm4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3/UuFFzbQEiA3BF2ACATv8N8EgPz11Ros4u4W445Mfw=;
        b=W2zq2RG1fMOvhgziUrAiM7JAd25fxkX8YSSUmvjtXfosdJogcHldOMn1hJON4wyFrI
         LPzCQpttZzWD0cuyvaGNDosErHn4xOhUkGNqjdphEZJ+NzduHSAF39zZXgqtSN+8Qir8
         TXdPiGV2QBDLhTN4GtKJGg9JUk0yhcPqCyCtkBkwJwtY3jUmSpbwawXJoU3QjjbIoYJh
         a5cdelkaFelBqlTrKFy0mqNrfrQjcCiSlWYt2Xul+NX9YZbDxTsCX9DmBN/D4Dh2GF8i
         rd2PEWGmzYqB8WFbe7EzVBd2oF9sIXbWFXEgtbrD/oWuRj4URBG7KcYCVlVwPUBVqIO2
         3rQw==
X-Gm-Message-State: AOAM530GuYh1oH2M0digUgziSBZbEynPPmDriPv0C12dOtVPvuY5wzIk
        NjeAY0f7QtlHUOJJE7Brm0E60jgCMhI=
X-Google-Smtp-Source: ABdhPJx2NWv7bowLTMuidrYSL9LKLXO/QP5R6FGI7HmnnXIdaAK8mZs/ZkRHQzKTi3jEm+LX+aL1ow==
X-Received: by 2002:a1c:67d5:: with SMTP id b204mr593077wmc.92.1604001258101;
        Thu, 29 Oct 2020 12:54:18 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id t6sm7829578wre.30.2020.10.29.12.54.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 12:54:17 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH v3] getdents.2: Use appropriate types
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <CAKgNAkgi7MAW9PxKNBFQ07r7p2PFRR3xU2BJBTqk8oiXDJ4NXA@mail.gmail.com>
 <20201029141053.195998-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <bbc1e527-23fd-855e-6a9f-acad1ed97bbd@gmail.com>
Date:   Thu, 29 Oct 2020 20:54:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201029141053.195998-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/29/20 3:10 PM, Alejandro Colomar wrote:
> getdents():
> This function has no glibc wrapper.
> As such, we should use the same types the Linux kernel uses:
> Use 'long' as the return type.
> 
> getdents64():
> The glibc wrapper uses:
> ssize_t getdents64(int, void *, size_t);
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Applied.

Cheers,

Michael


> ---
> 
> Hi Michael,
> 
> Sorry, I'm being a bit distracted these days :)
> It should be good enough now, I think.
> 
> Cheers,
> 
> Alex
> 
>  man2/getdents.2 | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/man2/getdents.2 b/man2/getdents.2
> index a187fbcef..ed3bb40b1 100644
> --- a/man2/getdents.2
> +++ b/man2/getdents.2
> @@ -33,14 +33,13 @@
>  getdents, getdents64 \- get directory entries
>  .SH SYNOPSIS
>  .nf
> -.BI "int getdents(unsigned int " fd ", struct linux_dirent *" dirp ,
> +.BI "long getdents(unsigned int " fd ", struct linux_dirent *" dirp ,
>  .BI "             unsigned int " count );
>  .PP
>  .BR "#define _GNU_SOURCE" "        /* See feature_test_macros(7) */"
>  .B #include <dirent.h>
>  .PP
> -.BI "int getdents64(unsigned int " fd ", struct linux_dirent64 *" dirp ,
> -.BI "             unsigned int " count );
> +.BI "ssize_t getdents64(int " fd ", void *" dirp ", size_t " count );
>  .fi
>  .PP
>  .IR Note :
> @@ -282,7 +281,8 @@ struct linux_dirent {
>  int
>  main(int argc, char *argv[])
>  {
> -    int fd, nread;
> +    int fd;
> +    long nread;
>      char buf[BUF_SIZE];
>      struct linux_dirent *d;
>      char d_type;
> @@ -301,7 +301,7 @@ main(int argc, char *argv[])
>  
>          printf("\-\-\-\-\-\-\-\-\-\-\-\-\-\-\- nread=%d \-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\en", nread);
>          printf("inode#    file type  d_reclen  d_off   d_name\en");
> -        for (int bpos = 0; bpos < nread;) {
> +        for (long bpos = 0; bpos < nread;) {
>              d = (struct linux_dirent *) (buf + bpos);
>              printf("%8ld  ", d\->d_ino);
>              d_type = *(buf + bpos + d\->d_reclen \- 1);
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
