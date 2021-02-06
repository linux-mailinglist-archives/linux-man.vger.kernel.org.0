Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 780F1311FFD
	for <lists+linux-man@lfdr.de>; Sat,  6 Feb 2021 21:40:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229506AbhBFUkQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 6 Feb 2021 15:40:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229590AbhBFUkK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 6 Feb 2021 15:40:10 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48D6AC06174A
        for <linux-man@vger.kernel.org>; Sat,  6 Feb 2021 12:39:30 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id v15so12223464wrx.4
        for <linux-man@vger.kernel.org>; Sat, 06 Feb 2021 12:39:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=yT+ygsaF7/6hbu5UzzelLwC/ylRQ6xX3gt9TZWtQ5DU=;
        b=jpVf4Go6ldaenoQU6gi0XxMUVemgLxBtPJwPtiskJ1XC4UU68NvrbFEkAPOdPYDMrT
         4BSUCfTRYiAhLRV3PtCWsGz3m8yBlEgWg4cNSGK3Uq1PP3wAZay39ufn9QSvJ4jZRYp6
         QFksqG29Uxb/vONmcZCXDc0a3mMIWozVA0XAOjYhZ46wvEnG1SIV7TAXhqYBM/HaZjnD
         +isws8bVI+tIIcZwI9Ef1qE0iVZq/P9TDbSRDhmK+ivFVBQhMVBaMnqR5kh1tETJy0XV
         5RsEbig+uqb1B69AqrgylfqA/tlrsSLNXJFtR1iIBfojtDCR9TU/augAG/pOClLkOgoR
         bStg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=yT+ygsaF7/6hbu5UzzelLwC/ylRQ6xX3gt9TZWtQ5DU=;
        b=UWRC0WOs62chgjyb1npjw+De+ZA7FOQ1uN69BZaMU1FG7a4UMuAuTnHFoyR7o99Wa0
         2FqteesPwJuA1ot8ErHUhGHs+XsC087qBnYuu3tELcf17ZXsGrYVdB1mgmf8syz2nC0g
         DqzZEFTHO5awpBsTebM+My5nN28vcb8IVVRsCQ4PCV0FX2SmYb/LaiOaDBP2RptH+R/D
         d+Bn2obszd01un4m3GKrHa6M79PZJtHeNyePf+gTluBwzyxjCIel4D05elj1aQdTG/+v
         JO4oM35l+VTo8T9wiHHvxVYVcD6RUCFNqsUdeWmixHtYTVUDLtZGpji++NAH1K52Jrfq
         42bg==
X-Gm-Message-State: AOAM532Ern3N5HzNKyEmS2bigaoC4vgkTJBbR4S9kr7gSjGZw/wdhNfP
        ohjHpLjUzniXgQ3tqtlICBAga2xpnTM=
X-Google-Smtp-Source: ABdhPJwc13DfMbEAIHoUYv+ENiQ82WqGWu5gMuEIqQQ6XH1Jy2yqTAMywqxw53KR0dBcFFcmWh+1Nw==
X-Received: by 2002:adf:f9d0:: with SMTP id w16mr11780273wrr.137.1612643969065;
        Sat, 06 Feb 2021 12:39:29 -0800 (PST)
Received: from ?IPv6:2001:a61:2542:b001:294f:8948:78a8:d929? ([2001:a61:2542:b001:294f:8948:78a8:d929])
        by smtp.gmail.com with ESMTPSA id s6sm12315854wmh.2.2021.02.06.12.39.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Feb 2021 12:39:28 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH] gettimeofday.2: Use restrict in prototypes
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210203215206.170532-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e8cfc3e4-0b84-7292-7b06-a3a0f93923ba@gmail.com>
Date:   Sat, 6 Feb 2021 21:39:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210203215206.170532-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/3/21 10:52 PM, Alejandro Colomar wrote:
> POSIX specifies that the parameters of gettimeofday() shall be
> 'restrict'.  Glibc uses 'restrict' too.
> Let's use it here too.

Thanks. Patch applied.

Cheers,

Michael

> 
> ......
> 
> .../glibc$ grep_syscall_wrapper gettimeofday
> time/sys/time.h:66:
> extern int gettimeofday (struct timeval *__restrict __tv,
> 			 void *__restrict __tz) __THROW __nonnull ((1));
> .../glibc$
> 
> function grep_syscall_wrapper()
> {
> 	if ! [ -v 1 ]; then
> 		>&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
> 		return ${EX_USAGE};
> 	fi
> 
> 	find * -type f \
> 	|grep '\.h$' \
> 	|sort -V \
> 	|xargs pcregrep -Mn \
> 	  "(?s)^[^\s#][\w\s]+\s+\**${1}\s*\([\w\s()[\]*,]*?(...)?\)[\w\s()]*;" \
> 	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
> }
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
> 
> Hi Michael,
> 
> Actually, both POSIX and Glibc specify the 2nd parameter of gettimeofday()
> to be 'void *restrict' and not 'struct timezone *restrict'.
> However, I didn't fix that for now.
> You may want to have a look at that.
> 
> Cheers,
> 
> Alex
> 
>  man2/gettimeofday.2 | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/man2/gettimeofday.2 b/man2/gettimeofday.2
> index 085b86ad0..7e2726ed9 100644
> --- a/man2/gettimeofday.2
> +++ b/man2/gettimeofday.2
> @@ -44,9 +44,10 @@ gettimeofday, settimeofday \- get / set time
>  .nf
>  .B #include <sys/time.h>
>  .PP
> -.BI "int gettimeofday(struct timeval *" tv ", struct timezone *" tz );
> -.BI "int settimeofday(const struct timeval *" tv \
> -", const struct timezone *" tz );
> +.BI "int gettimeofday(struct timeval *restrict " tv ,
> +.BI "                 struct timezone *restrict " tz );
> +.BI "int settimeofday(const struct timeval *" tv ,
> +.BI "                 const struct timezone *" tz );
>  .fi
>  .PP
>  .RS -4
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
