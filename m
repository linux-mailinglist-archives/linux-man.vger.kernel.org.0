Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 42255296675
	for <lists+linux-man@lfdr.de>; Thu, 22 Oct 2020 23:20:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S372248AbgJVVUp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 22 Oct 2020 17:20:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S372247AbgJVVUo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 22 Oct 2020 17:20:44 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7458EC0613CE
        for <linux-man@vger.kernel.org>; Thu, 22 Oct 2020 14:20:44 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id a72so5193341wme.5
        for <linux-man@vger.kernel.org>; Thu, 22 Oct 2020 14:20:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Cc8UzWrF7uC+3SC38tR6Y1OU8Tz0bT03sWDVXaURAqQ=;
        b=jWngfX03ydpHbDDELVkxBmdi+xbKDfk6MJ+QVQlxz2ThkW50SasAoieU4ymxjl3UlL
         vDO4OfjBRm+txe8UYf0nT4o9syqVD86Rs2mPErGaqmX6XDzE26gtPjfXt2jYBHeZepih
         0nGNAsXL4ochXdFsJkcPpgzJZH2rzbQNNdbYDY/EJAMYUu4pv0wlqCqOIvtMDXgG9119
         l5eALOLLQg3dvLoxTa7S+hgTilQXHlGKgFs1BGTPdwE+zAnn2Ar4HkyyTtqgBCP+0gJp
         unds8WepaTgZIzDlnmtTdM1Okp9bkjVNZ9Ha1ckEJi5c8zqy0V4Ob7IwlXyPrJYRicwQ
         LF8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Cc8UzWrF7uC+3SC38tR6Y1OU8Tz0bT03sWDVXaURAqQ=;
        b=Lfz61lMcYuUFKCbIosNbDHRyub0Mari7RRn3MFiwATDEoGCroTwxxE0adPn+fIejPH
         K2hvasXD+njLpbsLsjlJJW/RuhxVgFa/R6R3GAJ789+5pbI0ukIl8tZA7E5RzZjrJU69
         +sfJpmTm/L/i6qVMY7t+YcrV45+2VKvjGGXzvYkeHDciMtWV7zKdpCzD1afa/NOlDIFX
         K88aVoCwUiiOsRAXtDxx8BqOQP73nD7mRXRiSOzZwxGQz8sXWfntMCc8kQ93uazh6SM+
         xFk9mjr500IwhCcjV8APFPMU3UBq3U4OIB0YIfKJyVoq5mzkMLphEIONVSaiRQ+hm7zO
         /MFA==
X-Gm-Message-State: AOAM530QNm6sfwOsR7mdkf9YvGCBHkx6h599oi++lyVQFHESjux1NCrH
        JJ+mX9xPNWtLPLQCAy9lBnRTGYF80G8=
X-Google-Smtp-Source: ABdhPJwlEw/153yH5tiiRjkdbPqLENFKyjyPQkqjCWrcD4wofVi6TMq+yfoRCsSaJqh6/T+evmZY/A==
X-Received: by 2002:a1c:e1c2:: with SMTP id y185mr4117621wmg.81.1603401642951;
        Thu, 22 Oct 2020 14:20:42 -0700 (PDT)
Received: from ?IPv6:2a01:e0a:597:6d00:9446:7902:22d6:6f78? ([2a01:e0a:597:6d00:9446:7902:22d6:6f78])
        by smtp.gmail.com with ESMTPSA id 78sm5441278wmb.32.2020.10.22.14.20.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2020 14:20:42 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] openat2.2, loop.4: tfix: s/non-zero/nonzero/
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201022204324.45262-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8000eb43-b6db-da34-439a-8b96f9d9879f@gmail.com>
Date:   Thu, 22 Oct 2020 23:20:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201022204324.45262-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 10/22/20 10:43 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
> 
> Hi Michael,
> 
> I saw your tfix and found a few more instances of non-zero.

:-)

Thanks! Patch applied.

Cheers,

Michael

> Best,
> 
> Alex
> 
>  man2/openat2.2 | 6 +++---
>  man4/loop.4    | 2 +-
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/man2/openat2.2 b/man2/openat2.2
> index 53056ee6d..ff5204040 100644
> --- a/man2/openat2.2
> +++ b/man2/openat2.2
> @@ -169,7 +169,7 @@ contains bits other than
>  .IR 07777 .
>  Similarly, an error is returned if
>  .BR openat2 ()
> -is called with a non-zero
> +is called with a nonzero
>  .IR how.mode
>  and
>  .IR how.flags
> @@ -427,7 +427,7 @@ An unknown flag or invalid value was specified in
>  .TP
>  .B EINVAL
>  .I mode
> -is non-zero, but
> +is nonzero, but
>  .I how.flags
>  does not contain
>  .BR O_CREAT
> @@ -535,7 +535,7 @@ is aware of but which the kernel does not support.
>  Because any extension field must have its zero values signify a no-op,
>  the kernel can
>  safely ignore the unsupported extension fields if they are all-zero.
> -If any unsupported extension fields are non-zero, then \-1 is returned and
> +If any unsupported extension fields are nonzero, then \-1 is returned and
>  .I errno
>  is set to
>  .BR E2BIG .
> diff --git a/man4/loop.4 b/man4/loop.4
> index 1b5d05666..b7f82e5d4 100644
> --- a/man4/loop.4
> +++ b/man4/loop.4
> @@ -174,7 +174,7 @@ it can be used to open backing file.
>  The (third)
>  .BR ioctl (2)
>  argument is an unsigned long value.
> -A non-zero represents direct I/O mode.
> +A nonzero represents direct I/O mode.
>  .TP
>  .BR LOOP_SET_BLOCK_SIZE " (since Linux 4.14)"
>  .\" commit 89e4fdecb51cf5535867026274bc97de9480ade5
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
