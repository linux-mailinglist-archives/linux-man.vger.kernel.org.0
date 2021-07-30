Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 61EC43DBE42
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 20:20:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229773AbhG3SUL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 14:20:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229921AbhG3SUL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Jul 2021 14:20:11 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AE4AC06175F
        for <linux-man@vger.kernel.org>; Fri, 30 Jul 2021 11:20:05 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id p5so12411109wro.7
        for <linux-man@vger.kernel.org>; Fri, 30 Jul 2021 11:20:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/RylP+HxNusXHGQoEJ+QdocH2FDJqIjxZ9oTR0n7zc0=;
        b=pyncBioQ4lK37VCwyNgNciYzLL2WINNmqVg6n4ShrlZ24irILzLzDK1VcNteI7ZzbZ
         q575B7yRxc+56NUhzgzTM/SIgbeoXxPrushpvWVMT3z6C8QUjP5AVAZrXrOhzyh5y6d5
         pVSwC4lNKY1TzE5usMo0aHlMNVq9zqs7nrQT52MsB9svwKfB8IcqU7Rx4YQ9sN7suM6d
         180GjAeV++n6i3p9mTKUlen87pBRt7JlTDx3TvuYVP8DG+OGMUTX2QkQ0RgGejMxXS/D
         DpC2e0y8oac09Q1xUr2mIGtVdYvzdp6VE48twkytkzoAUioGTzars56WTTGy7DZEF3tj
         R6wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/RylP+HxNusXHGQoEJ+QdocH2FDJqIjxZ9oTR0n7zc0=;
        b=N+t/iMA4G8qz1dUiMnTwf6pjG+QK467b1G63pL8Vk7yAYFhvp0Q0SN0PKEg7bgrtFG
         y9vssW3/Ar8BAzV7oNSn0TCoSvILkeEro5uF6z2Ig7j46B3nXDycsYJN3gnquO3WHmtZ
         2i4nSE3M/rMyqEnLZHbDtJ4CheDHKzlX4QC7cSNpnreuhY3wqFwQ88G+ncnbB1/tVzsq
         A5If5tpaSxgwPOlbIZUVk83UTXYlGi2PPJ1ouewe31hKvjT/I6uQdua6fSaBRqXLoGoL
         2MFQwtmNe/6gTR+Rvo6P05ufIUq0+QYdFdMHA1iChuSzzV8d+EiJlr/M7dfFqL0VudTj
         vy2A==
X-Gm-Message-State: AOAM5302xYWzzfbsiVyDamHsdH9Ao5lZ4sbeH0u7e15fZ8CEuek95l7W
        ScM9ULBvI4Eya/tWSvxmRXk=
X-Google-Smtp-Source: ABdhPJzCGntxjKkmURt6mtOVwz5z1DsKEbGzsRTcPJOqheEPaLJO7RkxVi4Wkj3uIMZrVWPDvOAsRQ==
X-Received: by 2002:a5d:5645:: with SMTP id j5mr4337127wrw.426.1627669203914;
        Fri, 30 Jul 2021 11:20:03 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id p2sm2448664wrr.21.2021.07.30.11.20.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 11:20:03 -0700 (PDT)
Subject: Re: [PATCH v2] ioctl_tty.2: Document ioctls: TCGETS2, TCSETS2,
 TCSETSW2, TCSETSF2
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>
Cc:     =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210725225506.7404-1-pali@kernel.org>
 <20210730104803.10328-1-pali@kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <2e3eb624-310b-bae3-c244-fbfac0bc22d6@gmail.com>
Date:   Fri, 30 Jul 2021 20:20:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210730104803.10328-1-pali@kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Pali,

On 7/30/21 12:48 PM, Pali Rohár wrote:
> Signed-off-by: Pali Rohár <pali@kernel.org>
> 

Patch applied.  Thanks,

Alex

> ---
> Changes in v2:
> * Remove information about asm/termbits.h (will be in followup patch)
> * Style fixes
> ---
>   man2/ioctl_tty.2 | 29 +++++++++++++++++++++++++++++
>   1 file changed, 29 insertions(+)
> 
> diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
> index 2a0effdae8ab..c1875530f0b1 100644
> --- a/man2/ioctl_tty.2
> +++ b/man2/ioctl_tty.2
> @@ -77,6 +77,35 @@ The following four ioctls are just like
>   .BR TCSETSW ,
>   .BR TCSETSF ,
>   except that they take a
> +.I "struct termios2\ *"
> +instead of a
> +.IR "struct termios\ *" .
> +If struct member
> +.B c_cflag
> +contains
> +.B BOTHER
> +then baudrate is stored in struct members
> +.B c_ispeed
> +and
> +.B c_ospeed
> +as integer values.
> +These ioctls are not supported on all architectures.
> +.RS
> +.TS
> +lb l.
> +TCGETS2	\fBstruct termios2 *\fPargp
> +TCSETS2	\fBconst struct termios2 *\fPargp
> +TCSETSW2	\fBconst struct termios2 *\fPargp
> +TCSETSF2	\fBconst struct termios2 *\fPargp
> +.TE
> +.RE
> +.PP
> +The following four ioctls are just like
> +.BR TCGETS ,
> +.BR TCSETS ,
> +.BR TCSETSW ,
> +.BR TCSETSF ,
> +except that they take a
>   .I "struct termio\ *"
>   instead of a
>   .IR "struct termios\ *" .
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
