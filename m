Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3933F3A1FFE
	for <lists+linux-man@lfdr.de>; Thu, 10 Jun 2021 00:26:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229557AbhFIW1y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Jun 2021 18:27:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229542AbhFIW1y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Jun 2021 18:27:54 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0B27C061574
        for <linux-man@vger.kernel.org>; Wed,  9 Jun 2021 15:25:42 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id e1so2075596plh.8
        for <linux-man@vger.kernel.org>; Wed, 09 Jun 2021 15:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=PIXs0lbWsgPJqKv4COXrYxpWHjP5TLAX5E0wmKJTcKM=;
        b=KOYg0AZqatiGHZXlkC7/2vLq4q3SdfZZb3hCKXdBFJ58i5+IQmOZZH/YbDhC63kZfO
         rLXFnTQ+AelXV8fmGnXw9r49y9Kolt2xwUT2krkok/0hWE9qXYHMMQ5WlbQW3i2V1PND
         Fo9k8HkPKCmzX0jVQ9Jq7XexWDzUEzLICQoOwdpA3XM2oYkNyUnFUbzNZH1K7/HG7PLk
         1JEpmtns5lBLRNftP4ySbsV+2C2Y0INLVFYU4S9ifLYGLYEaNsXf5F8zGwpRvg5haffR
         8DL5AU3QZRY9TPFZJ5Q8UCNmcNUkd+DTFQtNCrCRiSnFUHyQ+PdnScyQcEmb71I/hqUW
         xyhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PIXs0lbWsgPJqKv4COXrYxpWHjP5TLAX5E0wmKJTcKM=;
        b=OpoJvhkViKCTvQ2EGPLEMp5u1G2VGumLCBCH1qtLcgcX8TItGItzfJsWRgece1/10n
         ggctObTHBqEZUN5S8NUmJ1WuujedyW9Of1KGvZnuYWqs7N9cw7T6DAoCfNEUnOt1jTox
         Q7KaWQERUDW56YBojn/Yv92RDi71DA9LVP0qAFh1WDEaSSXXOB+Buv9aoX+wE2kbSitp
         1O2I2V1nLSg/FxrzvJjenB0ovy9J2Ek08XMxDRiiO2IodBf7JNlNPWPllcs79IamwXYg
         awWzMcWaPRUWX3KQiUr5ET0BzYFoUWW/7MGv65w+AM2X5BS/VivY8y4NnAZcdUcsr2fA
         KWzg==
X-Gm-Message-State: AOAM532JO9akZgRa5EagNXSnft41Hx6Q8gUxbyVSOdzBh7IzI4kLYxKn
        shfq/X+dPbuTF0vS8FgQhGmba7d+LPI=
X-Google-Smtp-Source: ABdhPJxAvKF4xRTgfnSFqHglgj25PYjzTnLvMvtiUi3nhJ0A5mRT45Knm2paKY7KLJNoHvPC6xOYLQ==
X-Received: by 2002:a17:902:be0d:b029:f9:c913:821f with SMTP id r13-20020a170902be0db02900f9c913821fmr1736234pls.2.1623277541983;
        Wed, 09 Jun 2021 15:25:41 -0700 (PDT)
Received: from [192.168.1.70] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id l5sm466295pff.20.2021.06.09.15.25.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jun 2021 15:25:41 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 07/10] sgetmask.2: Use syscall(SYS_...); for system
 calls without a wrapper
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210521232553.161080-10-alx.manpages@gmail.com>
 <20210524181947.459437-7-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f71544ba-5196-40fb-acfb-5ae35ffcd299@gmail.com>
Date:   Thu, 10 Jun 2021 10:25:36 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210524181947.459437-7-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/25/21 6:19 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Applied.

Thanks,

Michael


> ---
>  man2/sgetmask.2 | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
> 
> diff --git a/man2/sgetmask.2 b/man2/sgetmask.2
> index 7563b57ff..59b58ceaf 100644
> --- a/man2/sgetmask.2
> +++ b/man2/sgetmask.2
> @@ -27,12 +27,17 @@
>  sgetmask, ssetmask \- manipulation of signal mask (obsolete)
>  .SH SYNOPSIS
>  .nf
> -.B "long sgetmask(void);"
> -.BI "long ssetmask(long " newmask );
> +.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
> +.B #include <unistd.h>
> +.PP
> +.B "long syscall(SYS_sgetmask, void);"
> +.BI "long syscall(SYS_ssetmask, long " newmask );
>  .fi
>  .PP
>  .IR Note :
> -There are no glibc wrappers for these system calls; see NOTES.
> +glibc provides no wrappers for these functions,
> +necessitating the use of
> +.BR syscall (2).
>  .SH DESCRIPTION
>  These system calls are obsolete.
>  .IR "Do not use them" ;
> @@ -73,10 +78,6 @@ option.
>  .SH CONFORMING TO
>  These system calls are Linux-specific.
>  .SH NOTES
> -Glibc does not provide wrappers for these obsolete system calls;
> -in the unlikely event that you want to call them, use
> -.BR syscall (2).
> -.PP
>  These system calls are unaware of signal numbers greater than 31
>  (i.e., real-time signals).
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
