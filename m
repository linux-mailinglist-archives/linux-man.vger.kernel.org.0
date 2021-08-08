Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BF3353E3CBC
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 22:36:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232284AbhHHUhK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 16:37:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231559AbhHHUhK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 16:37:10 -0400
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3BACC061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 13:36:49 -0700 (PDT)
Received: by mail-pl1-x629.google.com with SMTP id z3so14182800plg.8
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 13:36:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=zcsNEjZvJx9sXjei8LaFw3uYIIWOFE7BMkEMXNw9Y8c=;
        b=El0hOf+iK/IN4UYEvRqkFXppEndiW1H9OfMBghHv5Hbi9v2aOcO5vK8PiATXRnfcVY
         1ToJzLkz1iLUb5cSM9gmu9vjmG7tOuIQaKJo4c8e6LvLYkGMM9POLcNpcuwbR7hyTSv1
         hkHGH6xFWauz6zts/PNpbpBRSqe03qgF0swV974JRyfBjnhJXO1/g9qxJFOgAoPIDudu
         s/NjTzhVi9ihX9KmTteJ/ofmF0IfSjx9P6RkDRM+QioV4YqsVS7Pbd+e1E2XabFiVxn4
         aFBv54SK9SRMluz/O7JsfrBe3CUcTVDA8jC5f3nuDmfI1s2HCI30O8MVewoWNIjgbgt3
         kB6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zcsNEjZvJx9sXjei8LaFw3uYIIWOFE7BMkEMXNw9Y8c=;
        b=RJpMfJfUyPAkjh4EwbNUNTI4t1XBlrVXnciMeEU0cScoJUB7+Qng+7esij4w2xdUb/
         3ofYLXaeMIrMZxoJAiMg2RJ3C/2L++RkcwCug/ZKBtkmLkeuc+9eRFnpjqYPP0O63G6o
         +f+x2HsrLtNNwu2abPA4vGJtLWAnJvl+CQ5/UWCOP3o7LvXoUmfir1hgKAVL9rKCZVzH
         hz/CvXtYqJ4aNsc5DoNuM7Ng1AQjLX52Ibl+jlgo0vhhmjJRJR78MN6ju41FS1S2yTrH
         uGdl9jIg9KVg3AO/SSzDNCe0Kkd0QazMJwIIo5rmutNSOlGg5gy5EmujpUztwobNoyLl
         RftQ==
X-Gm-Message-State: AOAM532v/I5glgnqzfp7u/nFfMNMZ/QMPYTJNnF7rsHFwiGXEjbwOCAf
        SviBZicVh3l62cifDoeEJC5foX7yu3M=
X-Google-Smtp-Source: ABdhPJzi6LqXPcKiSuNxezCtSVpKl7jnFsPGB2RVmfijhi0onCshmAttEH/NQUcXkIaucElJH5ZSPw==
X-Received: by 2002:a17:90a:2882:: with SMTP id f2mr22043529pjd.102.1628455009025;
        Sun, 08 Aug 2021 13:36:49 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id q21sm7380884pjg.55.2021.08.08.13.36.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 13:36:48 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 18/23] termios.3: SPARC architecture has 4 different Bnnn
 constants
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
 <20210808084133.734274-19-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8f2449e1-11a4-dc1d-c1e2-040a21fc1472@gmail.com>
Date:   Sun, 8 Aug 2021 22:36:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210808084133.734274-19-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Pai and Alex

@Pali Thanks so much for these fixes to termios(3) and ioctl_tty(2)!

On 8/8/21 10:41 AM, Alejandro Colomar wrote:
> From: Pali Rohár <pali@kernel.org>
> 
> SPARC is special, it does not have Bnnn constants for baud rates above
> 2000000. Instead it defines 4 Bnnn constants with smaller baud rates.
> 
> This difference between SPARC and non-SPARC architectures is present in
> both glibc API (termios.h) and also kernel ioctl API (asm/termbits.h).
> 
> Signed-off-by: Pali Rohár <pali@kernel.org>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Patch applied.

Cheers,

Michael

> ---
>  man3/termios.3 | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/man3/termios.3 b/man3/termios.3
> index 4fbd34a52..8c88c25e4 100644
> --- a/man3/termios.3
> +++ b/man3/termios.3
> @@ -953,6 +953,24 @@ to by \fItermios_p\fP to \fIspeed\fP, which must be one of these constants:
>  	B1152000
>  	B1500000
>  	B2000000
> +.ft P
> +.fi
> +.PP
> +These constants are additionally supported on the SPARC architecture:
> +.PP
> +.nf
> +.ft B
> +	B76800
> +	B153600
> +	B307200
> +	B614400
> +.ft P
> +.fi
> +.PP
> +These constants are additionally supported on non-SPARC architectures:
> +.PP
> +.nf
> +.ft B
>  	B2500000
>  	B3000000
>  	B3500000
> @@ -960,6 +978,11 @@ to by \fItermios_p\fP to \fIspeed\fP, which must be one of these constants:
>  .ft P
>  .fi
>  .PP
> +Due to differences between architectures, portable applications should check
> +if a particular
> +.BI B nnn
> +constant is defined prior to using it.
> +.PP
>  The zero baud rate,
>  .BR B0 ,
>  is used to terminate the connection.
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
