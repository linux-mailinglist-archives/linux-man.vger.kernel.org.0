Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0114C3E3CD3
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 22:58:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229977AbhHHU65 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 16:58:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229895AbhHHU65 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 16:58:57 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AEC9C061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 13:58:38 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id mt6so24791627pjb.1
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 13:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=F3JcM01R5P8PU4rM/t5eh7IR2lhKAfvbsj0g7OjwQdI=;
        b=clBtUYHwb7JzfnLtmAnqe1i2oNe6MVpOKROrtIm4fS6IGiPWXiVHsAwEMvu4kv5zH2
         Yv4LIhbsQ//kXpvTaHCIhyc/zIzvgL5j6wzU1QvELaDjEFfATCoxPL4/5pwpw/JeawpW
         yEjhxfVdurO61FB62EI4DP7CVHWaNUGCq6LZi3HQ8ksxqGiR/eT6X6OMsPhFmUKaTSYU
         RyzZM8ktrCIGkLKxDtnH1BpTU59ppuF7WPsP5F15f7T2JXEi3Iv6+if7s8Pb1W0cdZOD
         C96GenTAalVAQoElIZNHyXpF1r2C9MJgqnlm8k/yqBIb9V9pc/aVVm47YNf8oGIPOVll
         k+KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=F3JcM01R5P8PU4rM/t5eh7IR2lhKAfvbsj0g7OjwQdI=;
        b=VFNrhvr7dZi99d6UIX/w9NgycAZQYMY8RQNhA2HHgdo7V4yWfGmJ+eb2x7P4Af5sKV
         KOsZKe3NQIvVwSJluS2HHOYG8TgULJqsA4I1ycaZrVxfbpzDKQY2o0Ovqmht/SZmLMP/
         Yy3yY1NWJmOfwzRiO2Zh+ioKp9QR4lk3+gjarrzjOYWk9KYYdl1tREAjYraKwdrJ0hPq
         gs4l9BjPX1vJVmngBbWxcmJkiYlEsFBRBjBR/I2x3OoT3XTI4Pzz/I12C8T7HuJnx5b/
         uEvSV5auF22eCHmd/3TTU3imTxldsKyEQ8UZBcd3Morq+NXD0XW9fvyp8MRnPvNBpCDt
         25MQ==
X-Gm-Message-State: AOAM531Gxy9u1SaTaZ9YwOMIdyxWOCSGM913SKZV0tkYKnV7ToJnLycs
        VCCjsOBUW152Y0kxWWI0zmz2GXDAX/M=
X-Google-Smtp-Source: ABdhPJzn2ZosDKZ1vOeyz/lZQDx77MJ4Amcc2XpdlKmmQ5xDWxT/TwxG7EZModYSPrBa2Y8h3Fjcew==
X-Received: by 2002:a17:90b:1e05:: with SMTP id pg5mr26320099pjb.12.1628456317464;
        Sun, 08 Aug 2021 13:58:37 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id u21sm16971155pfh.163.2021.08.08.13.58.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 13:58:36 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 23/23] close_range.2: Glibc added a wrapper recently
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
 <20210808084133.734274-24-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c8ef7f1e-b920-30af-3fd2-82de00daee54@gmail.com>
Date:   Sun, 8 Aug 2021 22:58:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210808084133.734274-24-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 8/8/21 10:41 AM, Alejandro Colomar wrote:
> Fixes: c2356ba085ed4f748b81c0ceeba1811b4a549e1c
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Applied.

Cheers,

Michael

> ---
>  man2/close_range.2 | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/man2/close_range.2 b/man2/close_range.2
> index ca84dc448..0bb5de436 100644
> --- a/man2/close_range.2
> +++ b/man2/close_range.2
> @@ -33,9 +33,6 @@ close_range \- close all file descriptors in a given range
>  .BI "int close_range(unsigned int " first ", unsigned int " last ,
>  .BI "                unsigned int " flags );
>  .fi
> -.PP
> -.IR Note :
> -There is no glibc wrapper for this system call; see NOTES.
>  .SH DESCRIPTION
>  The
>  .BR close_range ()
> @@ -100,8 +97,6 @@ Library support was added in glibc in version 2.34.
>  .BR close_range ()
>  is a nonstandard function that is also present on FreeBSD.
>  .SH NOTES
> -Glibc does not provide a wrapper for this system call; call it using
> -.BR syscall (2).
>  .SS Closing all open file descriptors
>  .\" 278a5fbaed89dacd04e9d052f4594ffd0e0585de
>  To avoid blindly closing file descriptors
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
