Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 28ABB3A2003
	for <lists+linux-man@lfdr.de>; Thu, 10 Jun 2021 00:27:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229534AbhFIW3c (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Jun 2021 18:29:32 -0400
Received: from mail-pj1-f51.google.com ([209.85.216.51]:45815 "EHLO
        mail-pj1-f51.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229526AbhFIW3c (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Jun 2021 18:29:32 -0400
Received: by mail-pj1-f51.google.com with SMTP id z3-20020a17090a3983b029016bc232e40bso2561144pjb.4
        for <linux-man@vger.kernel.org>; Wed, 09 Jun 2021 15:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Qzf6i3HJ/f3Yt/ti8HaeMusoVpMYz4b15511XX83n/0=;
        b=KmjHMIqSuwXXdZfljSQbVNERi0ZAMjHDlT4C1UGHO+/SLjhAb3uWcUuqN1m8ZjiJqe
         9F5ElzD/UlQz94lXt1VYQ2gUV8Lk98zBXHnoFzikA831h/rAIpVeRRIVYwh6RH+RVd14
         vvvtPCqUmbOK4JduFr9GCobf//J3f+YWHjsC3KryMcLRm0lmzolXxPWcjyeNMqYWl1kN
         eLd+zvGzVk4paH1rCbIaWGck7IOiFt1+/4FR+yvcfs6FNqFjKXvLN4gOUUFU0nYlkTzJ
         s0jNVMVclQ/B7eayVopP3wAspbWUzxWJWRxjRicUlrwfLkWSQMTWewYK9fzCy+NUXFOr
         tquw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Qzf6i3HJ/f3Yt/ti8HaeMusoVpMYz4b15511XX83n/0=;
        b=iG7h7BrxisYdo2ffjzYnJ9mKw0d0zxaw8Iz0ehLuiTuVHWR68Z/Pi40O1+rbkf8pWM
         nRtFy/mfLX5Wva8/qiNZC/qWoPkpXRJj6D4uKRGxB66/wqRHcG5w32X4XNYhSwYC+OwC
         hEsnEonBEkRJcgRtueZOwQkqHBi4GxxHP4zQAjrsC4VNZPH1xwJ0qgELPk6hVa91BbMB
         2qoF6rpHcShPz4g8ShIsfqlJphVPYVKEssON/prWnIHWZdCsXOlF6Tq22H4TBv3JIhe1
         ytIIc15MmDlikXkg4ygIehFTg7gxZLmx1DxvTCpLZTr1HIAJLJFIk77FgM3Lrcdef3Mn
         y2mA==
X-Gm-Message-State: AOAM533hB+Iq6O4+48JnFV70YXZOUfd2xNbWwAg3Vae8+XtBi8Uke35E
        g6H0G3Hlagel9GZwWMl1fgrS1+6CjDc=
X-Google-Smtp-Source: ABdhPJwJtbcigoaeKWEtEFXiBzP7gjqeiSVIQ6lsc7fVUI8gDCF5Dfp5CU1Pym4Ww1Gkbb67tfttag==
X-Received: by 2002:a17:90b:955:: with SMTP id dw21mr1859349pjb.28.1623277582016;
        Wed, 09 Jun 2021 15:26:22 -0700 (PDT)
Received: from [192.168.1.70] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id q12sm689666pgc.25.2021.06.09.15.26.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jun 2021 15:26:21 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 09/10] sigprocmask.2: Use syscall(SYS_...); for raw
 system calls
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210521232553.161080-10-alx.manpages@gmail.com>
 <20210524181947.459437-9-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <79d2ae67-5a5d-ea30-851c-3c9a78680102@gmail.com>
Date:   Thu, 10 Jun 2021 10:26:18 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210524181947.459437-9-alx.manpages@gmail.com>
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
>  man2/sigprocmask.2 | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/sigprocmask.2 b/man2/sigprocmask.2
> index a622e4c18..b82386f14 100644
> --- a/man2/sigprocmask.2
> +++ b/man2/sigprocmask.2
> @@ -37,12 +37,16 @@ sigprocmask, rt_sigprocmask \- examine and change blocked signals
>  .BI "int sigprocmask(int " how ", const sigset_t *restrict " set ,
>  .BI "                sigset_t *restrict " oldset );
>  .PP
> +.BR "#include <signal.h>" "           /* Definition of " SIG_* " constants */"
> +.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
> +.B #include <unistd.h>
> +.PP
>  /* Prototype for the underlying system call */
> -.BI "int rt_sigprocmask(int " how ", const kernel_sigset_t *" set ,
> +.BI "int syscall(SYS_rt_sigprocmask, int " how ", const kernel_sigset_t *" set ,
>  .BI "                kernel_sigset_t *" oldset ", size_t " sigsetsize );
>  .PP
>  /* Prototype for the legacy system call (deprecated) */
> -.BI "int sigprocmask(int " how ", const old_kernel_sigset_t *" set ,
> +.BI "int syscall(SYS_sigprocmask, int " how ", const old_kernel_sigset_t *" set ,
>  .BI "                old_kernel_sigset_t *" oldset );
>  .fi
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
