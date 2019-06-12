Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C816D44965
	for <lists+linux-man@lfdr.de>; Thu, 13 Jun 2019 19:18:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729655AbfFMRRF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Jun 2019 13:17:05 -0400
Received: from mail-ed1-f67.google.com ([209.85.208.67]:40606 "EHLO
        mail-ed1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727188AbfFLVZT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 Jun 2019 17:25:19 -0400
Received: by mail-ed1-f67.google.com with SMTP id k8so13206655eds.7
        for <linux-man@vger.kernel.org>; Wed, 12 Jun 2019 14:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8tApWh19wesriccsxYCzoyBDPLAsbWT/Qg0XypKnVYM=;
        b=s3IXJSa51Vkg5yZW3xPNLByoKzpIAnpcH9v4C/I6Imw3mtikzInPyUwp84lC2/ez4k
         X0YZdDUs93AvvCrtAvsa81591Bt+oycGd3QcUxM6CiYX/TGJZNONlidZepXnGF57QLLI
         FyEVM1xJ2k2TrOYMPi5ylNyPJrxwoNLpHIMOrKU0xyL+qIV5JomC+7DXXCYhuseOyBzo
         Yz1SR9+MJ1Fu9k5E9sj8y6gKjBX0UoTsE7cLnhyE33nUfsvyEYBxk4rcOqUuKa9GLBUv
         WTcmi/XPPoPRz0BsD02A5CNz/sxrWm1L+U0Hf3bKwuGljAbHpZsqhYphtTsuIMPG588F
         3OCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8tApWh19wesriccsxYCzoyBDPLAsbWT/Qg0XypKnVYM=;
        b=s0891U9LJhGnvSoe7bZRc2ENlxdt/E42DHurkbIwm6A/8ge0aefnO1RJjCMsNan0jn
         u6W3L6YB2Bft24Vy+qEnc2meT6F1CvO1usoo6fLsFwd5CfS3OxKHNQj3PsiLRj2J+1yY
         S7xRTvRZXU/iqOdZeHrb8KJdFWvtBRILfm+GbxymlN5eqY6/DZJ8NRNw+Y3kdFOk8oKs
         M9KraYTdSpHv4aQsmxWdS2xJxcnh6MB+yQNwEvgQHiiXf4P6g+VpuTOtJBQUJ6jGitTh
         cQUof8VNNQsudyQJMnFb9NySKshw7evqiYsuDxB+SRvRVcOTSG4fZUOb/ZXOouoe/Bjx
         0EFA==
X-Gm-Message-State: APjAAAV1/2xCIgxOPU9E23cXRDE+rbhBb9uqvoNvfy4Lxlg1y40FRNAH
        Em2PF/FuLYngVVciQZgzOew=
X-Google-Smtp-Source: APXvYqwmZZUCKTYXgBqzxrRJyRgS+0xrf/V9kOhN15afa2bhOiaXPjBRLsmU2/d43hflKHKELoD2hg==
X-Received: by 2002:a17:906:60c3:: with SMTP id f3mr24546605ejk.253.1560374717245;
        Wed, 12 Jun 2019 14:25:17 -0700 (PDT)
Received: from [192.168.8.116] ([194.230.158.146])
        by smtp.gmail.com with ESMTPSA id q11sm292900edd.51.2019.06.12.14.25.14
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Jun 2019 14:25:16 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, palmer@sifive.com
Subject: Re: [PATCH] vdso.7: document vDSO for RISCV
To:     Tobias Klauser <tklauser@distanz.ch>, linux-man@vger.kernel.org
References: <20190611133356.4937-1-tklauser@distanz.ch>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <347fd81f-d811-4512-e0cc-2884b15ff20f@gmail.com>
Date:   Wed, 12 Jun 2019 23:25:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190611133356.4937-1-tklauser@distanz.ch>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Tobias,

On 6/11/19 3:33 PM, Tobias Klauser wrote:
> Document the symbols exported by the RISCV vDSO which is present
> from kernel 4.15 onwards.

Thanks! Patch applied.

> See https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/arch/riscv/vdso

The above URL was missing a piece, but I've amended it.

> Signed-off-by: Tobias Klauser <tklauser@distanz.ch>

Salutations de Bienne / Grüezi aus Biel.

> Reviewed-by: Palmer Dabbelt <palmer@sifive.com>

Thanks for the review, Palmer.

Cheers,

Michael

> ---
> 
> It seems the initial submission didn't make it to the linux-man mailing list,
> thus resending.
> 
>   man7/vdso.7 | 22 ++++++++++++++++++++++
>   1 file changed, 22 insertions(+)
> 
> diff --git a/man7/vdso.7 b/man7/vdso.7
> index 8375df527ffa..8ac6c12d2c2f 100644
> --- a/man7/vdso.7
> +++ b/man7/vdso.7
> @@ -153,6 +153,7 @@ ia64	linux\-gate.so.1
>   mips	linux\-vdso.so.1
>   ppc/32	linux\-vdso32.so.1
>   ppc/64	linux\-vdso64.so.1
> +riscv	linux\-vdso.so.1
>   s390	linux\-vdso32.so.1
>   s390x	linux\-vdso64.so.1
>   sh	linux\-gate.so.1
> @@ -433,6 +434,27 @@ and
>   .I __kernel_clock_gettime
>   interfaces;
>   the kernel falls back to the real system call.
> +.SS riscv functions
> +.\" See linux/arch/riscv/kernel/vdso/vdso.lds.S
> +The table below lists the symbols exported by the vDSO.
> +.if t \{\
> +.ft CW
> +\}
> +.TS
> +l l.
> +symbol	version
> +_
> +__kernel_rt_sigreturn	LINUX_4.15
> +__kernel_gettimeofday	LINUX_4.15
> +__kernel_clock_gettime	LINUX_4.15
> +__kernel_clock_getres	LINUX_4.15
> +__kernel_getcpu	LINUX_4.15
> +__kernel_flush_icache	LINUX_4.15
> +.TE
> +.if t \{\
> +.in
> +.ft P
> +\}
>   .SS s390 functions
>   .\" See linux/arch/s390/kernel/vdso32/vdso32.lds.S
>   The table below lists the symbols exported by the vDSO.
> 
