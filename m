Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 432123A201B
	for <lists+linux-man@lfdr.de>; Thu, 10 Jun 2021 00:31:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229757AbhFIWdT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Jun 2021 18:33:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229542AbhFIWdT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Jun 2021 18:33:19 -0400
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F18C9C061574
        for <linux-man@vger.kernel.org>; Wed,  9 Jun 2021 15:31:13 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id c13so13530742plz.0
        for <linux-man@vger.kernel.org>; Wed, 09 Jun 2021 15:31:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=WacEZKR/xsVuf8WgIbqBOqvmsWS6m5sckxSGmQal3ZI=;
        b=WA8OueRX71g6ZE7Y8m83L1FGdHS0vCLzXRWErLjudl45ZvOiRiwyKrAfQJMAdMMNdL
         wRbXPvVY7QkwqFIdmh6F67uQsux4WKyYhE3z+VfkwT48M6r8ilSCd8aEPhcHDUiFgXAm
         utufr3SZdoTGue2BDE0Ohow1XseBgP4VTGZTylDpkfft7TuV5uBxApzQ8UTEE6iKU0SA
         PEZmwt5zgYLuYX6gQq9qRY5WqB1DqOKdJwfaWzoakwkAvTM0lOG/jcAqD3J6d72q+dAd
         ehiFiz2eTJVw9wKekagniHPAif6GMKunfRgym6hmTO1FStcUZvA7UpbbQimiA49ifxpF
         L8Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=WacEZKR/xsVuf8WgIbqBOqvmsWS6m5sckxSGmQal3ZI=;
        b=UgK4Oq/cU83XAF7vBYIuViPRI4j23MFK9Sv7tT5g7w0K9UTEg08vUp6C+dpRsON25A
         RbsNHjolaJbbLCq8w60N0AnNP80+ED+4Zwwa1xRBx7Av1jcXV8xzATBpO2I5rZW92Jy/
         m+6sm3IQXOdR78yRIytTpGhLnNcHjeDVA8iHIJBxaMXhUx+fyD68OBXux+KGy8cCepim
         +iv7qjIHRUAmNrx7saR7zYLhPIoNh5n4AEb+7Fj854nk0pnL2YOXSGrgFLqcheo0911s
         SJoTj+bWdAEYCfhW5Ezdj5XMrYQzlcO1Sr8kLIyjRPPOlrEWIqWO0IQx3XyYrk92HSAE
         pdhg==
X-Gm-Message-State: AOAM530dAadDfNKUgcJGCbGWkMOxzRgGlUNvBg8ziGTuKlSg/2VqbSuu
        0bO/aYQkmT7fJImEs7hodcBv3TDGrxU=
X-Google-Smtp-Source: ABdhPJxy7MNZ8rWWM8ywqjISgBX7Tbv/qnStFLusmzdCEqgo7M3/yT5aFgN0ptCc3vJhR2wMxvSWcQ==
X-Received: by 2002:a17:902:56d:b029:103:75e4:7bf5 with SMTP id 100-20020a170902056db029010375e47bf5mr1805005plf.84.1623277872504;
        Wed, 09 Jun 2021 15:31:12 -0700 (PDT)
Received: from [192.168.1.70] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id r6sm5576882pjm.12.2021.06.09.15.31.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jun 2021 15:31:12 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 04/10] seccomp.2: Use syscall(SYS_...); for system
 calls without a wrapper
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210521232553.161080-10-alx.manpages@gmail.com>
 <20210524181947.459437-4-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <65088a2c-854e-4f26-795e-a87cab192575@gmail.com>
Date:   Thu, 10 Jun 2021 10:31:09 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210524181947.459437-4-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/25/21 6:19 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

This patch doesn't apply. Probably because I dropped 3/10?

Thanks,

Michael

> ---
>  man2/seccomp.2 | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
> 
> diff --git a/man2/seccomp.2 b/man2/seccomp.2
> index 1be7d6766..0f3f30767 100644
> --- a/man2/seccomp.2
> +++ b/man2/seccomp.2
> @@ -37,13 +37,18 @@ seccomp \- operate on Secure Computing state of the process
>  .BR "#include <sys/ptrace.h>" "     /* Definition of " PTRACE_* " constants */"
>  .\" Kees Cook noted: Anything that uses SECCOMP_RET_TRACE returns will
>  .\"                  need <sys/ptrace.h>
> +.BR "#include <sys/syscall.h>" "    /* Definition of " SYS_* " constants */"
> +.B #include <unistd.h>
>  .PP
> -.BI "int seccomp(unsigned int " operation ", unsigned int " flags \
> -", void *" args );
> +.BI "int syscall(SYS_seccomp, unsigned int " operation ", unsigned int " flags ,
> +.BI "            void *" args );
>  .fi
>  .PP
>  .IR Note :
> -There is no glibc wrapper for this system call; see NOTES.
> +glibc provides no wrapper for
> +.BR seccomp (),
> +necessitating the use of
> +.BR syscall (2).
>  .SH DESCRIPTION
>  The
>  .BR seccomp ()
> @@ -858,9 +863,6 @@ Tile (since Linux 4.3)
>  PA-RISC (since Linux 4.6)
>  .\" User mode Linux since Linux 4.6
>  .PD
> -.PP
> -Glibc does not provide a wrapper for this system call; call it using
> -.BR syscall (2).
>  .\"
>  .SS Caveats
>  There are various subtleties to consider when applying seccomp filters
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
