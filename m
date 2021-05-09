Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BFAD0377948
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 01:31:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229882AbhEIXdA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 19:33:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229847AbhEIXdA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 19:33:00 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD251C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 16:31:55 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id n16so8224232plf.7
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 16:31:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=blnYg9ijVZCecK4dJs7bXriELTJsnD6e2PHECLlF6zU=;
        b=cQj19PzbhqS8e0Ameu+wSd0qEjMOpw0kdVqA1wUbZsdJ6wFcRr4sOsI/j+GvZSaRdG
         bGv2nsFgYSmM0fLasaXXXhc0yTzyasawZxZF916qe2Aoae+zukk/KtvzyGPvzBxJN2rl
         N1zAAVGe8LmwPZUFkJByRPnealesTKSD1VUv9Suy2iu7uIyGIPfQVo0tiDBObeYb2wM4
         JBSTVytYgxZXUYKG4EVW6VMJhHuaBB/xyVrfKQHxmf1GEC5vik6nlhLN4zB/WdsJChCo
         jVUURU5Ep9bzUG+93nwBJvXYpWlV9UVVLTR2NQDmJ/bR7VaG9zjwtVeLrTL5VnPnpgKd
         Nc7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=blnYg9ijVZCecK4dJs7bXriELTJsnD6e2PHECLlF6zU=;
        b=dtiXUO3y3dFBQgn+4cNsK+6BnM/kq6iJxFfKHjzrb+gla/34ZdWsyYroMvQz02SOio
         dTcqUfnYt3bSt5YDUG074HBxzMd8QBvHPhH6FLQ5xaiwAfJ8AUTxaRnGET6lDwClHP7F
         mCpdlIx6tnM9NLKaJT/birvvyjSo2CQvR4Z1EuElZOD2jKRXOgNwC0IxsN3iLghVcCgx
         u2dkDTLNIRtb1+sfuKeCpYG0UkCaUrIf+U0Yqq2dhntkYVvnr+XPbDC2UNoXLqLuLcLc
         JLuJmvMRAV0O9HvGHt/RC5Ikq9eg3NIdRUp7ldfRlUv8PwesS1sfLI0TyIBsf2Y24EpD
         t5dA==
X-Gm-Message-State: AOAM532sv5pOyzq+TBiFAjk338VQGGDgYaWqzDXRl+l2iIteG1YtGI9a
        g4N4uwDdBHeXbiJdG3J+t/qyqM4HbR8=
X-Google-Smtp-Source: ABdhPJyN6gBVUqwpWS317H3oaTT+mjH+56jPsni1PHHwmRBawi0DavZdItpCrZL/mX55eXpuYdFOYg==
X-Received: by 2002:a17:902:9001:b029:ee:f24a:7e7d with SMTP id a1-20020a1709029001b02900eef24a7e7dmr21966109plp.42.1620603115330;
        Sun, 09 May 2021 16:31:55 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id f12sm9274676pfv.155.2021.05.09.16.31.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 16:31:54 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH] scripts/bash_aliases: man_gitstaged(): Script around a
 porcelain git command
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-3-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <08bd8ab7-8666-a530-e83d-95815f584ede@gmail.com>
Date:   Mon, 10 May 2021 11:31:51 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-3-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/10/21 9:38 AM, Alejandro Colomar wrote:
> The output of 'git status' is not stable.
> 
> The more stable 'git status --porcelain' is more complex,
> and scripting around it would be more complex.
> 
> However, 'git diff --staged --name-only' produces
> the output that we were lookiong for.
> 
> Reported-by: Jakub Wilk <jwilk@jwilk.net>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>


Applied.

Thanks,

Michael


> ---
>  scripts/bash_aliases | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/scripts/bash_aliases b/scripts/bash_aliases
> index 8cedc4efc..d9b6047d1 100644
> --- a/scripts/bash_aliases
> +++ b/scripts/bash_aliases
> @@ -153,13 +153,11 @@ function pdfman()
>  
>  function man_gitstaged()
>  {
> -	git status							\
> -	|sed "/Changes not staged for commit:/q"			\
> -	|grep -E "^\s*(modified|deleted|new file):"			\
> -	|sed "s/^.*:\s*/, /"						\
> +	git diff --staged --name-only					\
> +	|sed "s/$/, /"							\
>  	|sed "s%man[1-9]/%%"						\
>  	|tr -d '\n'							\
> -	|sed "s/^, //"
> +	|sed "s/, $//"
>  }
>  
>  ########################################################################
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
