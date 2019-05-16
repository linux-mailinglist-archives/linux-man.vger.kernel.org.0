Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 13F272107C
	for <lists+linux-man@lfdr.de>; Fri, 17 May 2019 00:23:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728122AbfEPWXr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 16 May 2019 18:23:47 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:35261 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726762AbfEPWXr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 16 May 2019 18:23:47 -0400
Received: by mail-pl1-f196.google.com with SMTP id g5so2314610plt.2
        for <linux-man@vger.kernel.org>; Thu, 16 May 2019 15:23:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=aZRZJMhC8F676azi0pCpUQrwuWHw2gfjrzu8OXtc9zQ=;
        b=IBOn5EwgFVrldVZWKpgbce2IymU/7balOjiiGXpRAsV+YjlnFYS2vcwpL8A0w5mPPb
         qwZv/zwwY2JiLljjUVvU0u8XS9V3GDInpAFhPpG1y1K+85WSulI9W+789FTXkejsdDC0
         u6mGd6HyJAqWagjGTxpDp4hoObuNFdBJox51YNgiT3NigRUz1daHM3nJ9VOOh8Car4ou
         Dps0f+XkMmINkZ7c8TLRbMxP1JmxfdxrazvewX+8q+hKSUqnWYXuAETHkca5f4L/byFu
         3ruQKBr31ghPc+Jx7i5sMMW6nbEYjnvTQLRW/RvGqwsHfGR+XDMTwmkI2a/WpTjnJR2h
         /AJg==
X-Gm-Message-State: APjAAAXjwDGSP6YZuqsVA78Gqha6iZi9oJckTI0lCBeC0+AazUIfVYGL
        J+q8eaCN4L5dSB5w7l931LlyxQ==
X-Google-Smtp-Source: APXvYqwi4CeslffBT+XjG8XcBoz4B/7+za3kVOe40AbrYTf1fBgf84DLz3koPeHCH5e+j7oZHCCRfw==
X-Received: by 2002:a17:902:6bc8:: with SMTP id m8mr51956930plt.227.1558045426028;
        Thu, 16 May 2019 15:23:46 -0700 (PDT)
Received: from localhost ([12.206.222.5])
        by smtp.gmail.com with ESMTPSA id a18sm12495503pfr.22.2019.05.16.15.23.45
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 16 May 2019 15:23:45 -0700 (PDT)
Date:   Thu, 16 May 2019 15:23:45 -0700 (PDT)
X-Google-Original-Date: Thu, 16 May 2019 15:03:52 PDT (-0700)
Subject:     Re: [PATCH] vdso.7: document vDSO for RISCV
In-Reply-To: <20190516094132.8850-1-tklauser@distanz.ch>
CC:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
From:   Palmer Dabbelt <palmer@sifive.com>
To:     tklauser@distanz.ch
Message-ID: <mhng-9d7065a2-56aa-4039-bd33-f115ac554b4c@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, 16 May 2019 02:41:32 PDT (-0700), tklauser@distanz.ch wrote:
> Document the symbols exported by the RISCV vDSO which is present
> from kernel 4.15 onwards.
>
> See https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/arch/riscv/vdso
>
> Signed-off-by: Tobias Klauser <tklauser@distanz.ch>
> ---
>  man7/vdso.7 | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
>
> diff --git a/man7/vdso.7 b/man7/vdso.7
> index 8375df527ffa..8ac6c12d2c2f 100644
> --- a/man7/vdso.7
> +++ b/man7/vdso.7
> @@ -153,6 +153,7 @@ ia64	linux\-gate.so.1
>  mips	linux\-vdso.so.1
>  ppc/32	linux\-vdso32.so.1
>  ppc/64	linux\-vdso64.so.1
> +riscv	linux\-vdso.so.1
>  s390	linux\-vdso32.so.1
>  s390x	linux\-vdso64.so.1
>  sh	linux\-gate.so.1
> @@ -433,6 +434,27 @@ and
>  .I __kernel_clock_gettime
>  interfaces;
>  the kernel falls back to the real system call.
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
>  .SS s390 functions
>  .\" See linux/arch/s390/kernel/vdso32/vdso32.lds.S
>  The table below lists the symbols exported by the vDSO.

Reviewed-by: Palmer Dabbelt <palmer@sifive.com>
