Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4070B2FA559
	for <lists+linux-man@lfdr.de>; Mon, 18 Jan 2021 16:59:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2404141AbhARPqq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Jan 2021 10:46:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2393522AbhARPp5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Jan 2021 10:45:57 -0500
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F2DDC061574
        for <linux-man@vger.kernel.org>; Mon, 18 Jan 2021 07:45:17 -0800 (PST)
Received: by mail-ej1-x62f.google.com with SMTP id b5so7867199ejv.4
        for <linux-man@vger.kernel.org>; Mon, 18 Jan 2021 07:45:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=GM2qZFykahpv325NhYSntg+XRbBeYcauyMG2hQTodOQ=;
        b=enlThKinJf0pMkc4zctqKRqbJKGhXOVY/fejQp0ujvibH3ucbDxWwQhcBajimbKv8l
         7iYuxiPY4Ybqx+JTWB2e4RaGjzR8S7yw9YZspDsoI5Sir/ydFwY8Ypa/1z7wtbl/CLrw
         /ITL+AIsrPweShewPHT44uVp3rHpsl2gKyORyGJmhkW5ZnDlc4LwruMiKaXh0wwSmT6p
         QKuZASYI//Htg48tfV+1Hj4XlOIE1VPeEvlj1lYmZYVm7BN+lQmklFuNJR86VC+HgSsC
         Ze3/ru7lUF8oeA+ePR8FyoagsALDpdd6wOohwyLoQTlxADojVFu0pyKcppg0vt/YkU5R
         +93Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=GM2qZFykahpv325NhYSntg+XRbBeYcauyMG2hQTodOQ=;
        b=B/X1SpMq112qeRGCpRynvdi3J2ttIvLwDePv7aaoTGXMfxtwVQmQ2njFSqmMGl7DE5
         tS1j9kMYM58qs3MkiSmfqwmbkvFOC3ustHUqCBTEL7KxrVQsSrNXP0H1SnpUMrYqWQH+
         u6SNsf1TMrWFimTvQ8Jj2ZuR7wU8TRdRDynFy6auMk70zM9BnCyATteOOU2qxMoMDOoi
         xHPCh5W9Lh63r9lmPvZWQw+DWgHhY/dMkAzkLdHC/13p+rtt4KpeJiFWRqNjYVViZJ4j
         gko5mkSU71AEAXwKlGZ+EtXCqbR4ucMBkpYLwto5KdpzFYacoMCn5zLdCdcZV4L89aMD
         6UxQ==
X-Gm-Message-State: AOAM531Hc+QnoDxYtHMFFVN8/LiVMr8u+21rrDR0AURygcUfXEGUfqIo
        K+QEWsuWkCE5N4k4XVA6QHQ=
X-Google-Smtp-Source: ABdhPJzJaJSj8jB8ZQaSbdzab+pPH9cc9/RcKKUJ8WqHP5+wRUWm/0wWCZE1dImVAdZCGMJNJExmMw==
X-Received: by 2002:a17:906:f0c4:: with SMTP id dk4mr195534ejb.225.1610984716268;
        Mon, 18 Jan 2021 07:45:16 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id jt8sm8026471ejc.40.2021.01.18.07.45.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jan 2021 07:45:15 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: Re: [PATCH 1/2] cacheflush.2: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20210118090811.6495-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <30f96038-c892-2f3a-a6fa-ae1a9ceffcdd@gmail.com>
Date:   Mon, 18 Jan 2021 16:45:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210118090811.6495-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/18/21 10:08 AM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Alex, you grabbed the 2/2. What about this 1/2?

Thanks,

Michael

> ---
>  man2/cacheflush.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/cacheflush.2 b/man2/cacheflush.2
> index 12be4c94a..44fc064a8 100644
> --- a/man2/cacheflush.2
> +++ b/man2/cacheflush.2
> @@ -27,7 +27,7 @@
>  cacheflush \- flush contents of instruction and/or data cache
>  .SH SYNOPSIS
>  .nf
> -.B #inlcude <sys/cachectl.h>
> +.B #include <sys/cachectl.h>
>  .PP
>  .BI "int cacheflush(void *" addr ", int "nbytes ", int "cache );
>  .fi
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
