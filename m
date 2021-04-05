Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB52535419A
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 13:38:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232683AbhDELiG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 07:38:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232597AbhDELiG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 07:38:06 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62B38C061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 04:38:00 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id r12so16409753ejr.5
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 04:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=AqKw1rGHVB82i6k9MlJz4LsvFBNzCLmSFmpoZHnICb4=;
        b=UuF+r01oOoBDE2/PZ0B/W+ziAXONn/Rv5dVWzxUSDd/7jLA0VfV9d2b/l8Fbu/rC2J
         p+q+iPsRap0H6+FNiPKOamEYfKA+d2CZGlo7L09GoL730C70zuqV9MzTFKhKO5b0hjZ2
         5eUUfyZudt8tUTXxLDXz/4AMlyrnMS/l9uuiRU9vOzGhSfHM9RuECXqU+zCQaQdIEv3O
         NtZMVnKYWN9XrCrJgNOx2Wq6Ob70cCAPraKf33szZz5QRCjnnZ2elhPJyFK4x3o6Yeq5
         ZFSLI110onX9kSaVcsaQeRsEPCBJWWA+cWmkJKShHiDhG0WbzmoSjzuXp8mLxAJQDbXF
         0R8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=AqKw1rGHVB82i6k9MlJz4LsvFBNzCLmSFmpoZHnICb4=;
        b=DLi1/P6eFssZe4IcbXO0+8E9uXakqy4Of2SBhs3FRF+EjtH0SdDlN65ylRtDIbwBi7
         Y5yDcUngY7s7N9xwe05BtY1PG48jS5vokDLVoLEY4EevwtGVJaocpz9j5i421kOrPHXa
         J1hOahrwTbKvQsztjvWNDfFssnVPGjagV+uRmmpnfQhGkKXUBuCdMay7yhYJorCBtq7Z
         9eWq07o10HCSqNkv9eu4kPcHaPwzrb0g5g5PKkGLKtadxnyiEQfe6s5r7fIiD0Dw/dJ9
         oOrF2C2T8sT+32EFln7FeJYZXQNvL4O+vje7fXtJZI9oeefhoxXPNnEUTPG3Xn4OGLXl
         H1TA==
X-Gm-Message-State: AOAM530fjqVNMOFQiPpw0h3sHlGlm7lp/4IV+UhP1xM3ynIIccvZ9qw5
        H4G+E7t1aQcxl8R3HkHdp8d4eVRtEso=
X-Google-Smtp-Source: ABdhPJxFxbH5S2b+Gdc/faIIbUgYOiBD2EX2EF6U2wB1LCnMTrCFOG6pwuayAGHpRgnzHITCfLLLRA==
X-Received: by 2002:a17:906:cd0e:: with SMTP id oz14mr1301879ejb.60.1617622679126;
        Mon, 05 Apr 2021 04:37:59 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id k26sm8651790ejk.29.2021.04.05.04.37.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 04:37:58 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 24/35] getunwind.2: Use syscall(SYS_...); for system
 calls without a wrapper
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-25-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d94772f6-5379-fa41-5f63-9614930c1faf@gmail.com>
Date:   Mon, 5 Apr 2021 13:37:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-25-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 4/4/21 1:58 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/getunwind.2 | 14 ++++----------
>  1 file changed, 4 insertions(+), 10 deletions(-)


Patch applied.

Thanks,

Michael


> diff --git a/man2/getunwind.2 b/man2/getunwind.2
> index 45535dccf..2c44506c7 100644
> --- a/man2/getunwind.2
> +++ b/man2/getunwind.2
> @@ -29,16 +29,14 @@
>  getunwind \- copy the unwind data to caller's buffer
>  .SH SYNOPSIS
>  .nf
> -.B #include <syscall.h>
>  .B #include <linux/unwind.h>
> +.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
> +.B #inlcude <unistd.h>
>  .PP
> -.BI "long getunwind(void " *buf ", size_t " buf_size );
> +.BI "long syscall(SYS_getunwind, void " *buf ", size_t " buf_size );
>  .fi
> -.PP
> -.IR Note :
> -There is no glibc wrapper for this system call; see NOTES.
>  .SH DESCRIPTION
> -.I Note: this function is obsolete.
> +.I Note: this system call is obsolete.
>  .PP
>  The
>  IA-64-specific
> @@ -102,9 +100,5 @@ and is available only on the IA-64 architecture.
>  This system call has been deprecated.
>  The modern way to obtain the kernel's unwind data is via the
>  .BR vdso (7).
> -.PP
> -Glibc does not provide a wrapper for this system call;
> -in the unlikely event that you want to call it, use
> -.BR syscall (2).
>  .SH SEE ALSO
>  .BR getauxval (3)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
