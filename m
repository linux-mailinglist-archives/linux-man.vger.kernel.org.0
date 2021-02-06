Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 40451312002
	for <lists+linux-man@lfdr.de>; Sat,  6 Feb 2021 21:41:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229537AbhBFUlK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 6 Feb 2021 15:41:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229590AbhBFUlK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 6 Feb 2021 15:41:10 -0500
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FC29C06174A
        for <linux-man@vger.kernel.org>; Sat,  6 Feb 2021 12:40:29 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id y9so18505418ejp.10
        for <linux-man@vger.kernel.org>; Sat, 06 Feb 2021 12:40:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/7SkTZVlDRjul58Yo3Ld/SAOoTLrYRFfv+mQFg3O5rI=;
        b=U4fppOZOaQe68461y057+j6B07YM3/ChwamiLOBLO/0LxA05FF27qJ5bnIOlvdymOL
         o0riz8Xp9PJKRWaPaIYtRXSTp0gCSv3M4XmGyPyC8EEcbnfbxYm3WHcHq+bcMdcGt7Uw
         COlFW/McWyLATdaamqg1ux/3lEcOD0B/RHOJ6MyWAMzX9ZjjH9Jnrdnkhcs+YKUpJS5P
         6rasZez0ysU4HUSfPxsqCtQ8gO2J2iw7NyV8/Y56D56zqH1O5+iCmhYPV4xAwwesXISs
         LGwXzb6aprxM5JX4xB2gqrMdmV3rzwvxfLU037bEPsGOuqmYdQOncABt+nXV/7T5lgG3
         ttBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/7SkTZVlDRjul58Yo3Ld/SAOoTLrYRFfv+mQFg3O5rI=;
        b=Z6wIuUWVVfw3iCRO1mGpebC7ccMnV3bYom1kZIqyd+Sp+hDGbZRun6Z1dUQYDPxZf+
         LVmlyjlWOOwQrKgQgHPN1xHJ5QWReB45B5/K5extkZH3GNnmvD1UganYLcU7H9wfz5Dm
         7c9uwVqaW3MHFaj+Krq6hYWnWtdRGoShHGn+uNTmCf2WEVzJBaUkeSzXrAhyeMd+RhGk
         SggrtWOKOihTWvquTLFbheYXzC2j9F4bbWTkGfLUySwRGyhbIraHYF8JTShi/EAFtYV/
         9IlqGgv7vwP+e3SGp0Vybi/czBsXjOgvRcLvTdWokAnPloJQecGRDSIpXVQbjIVl9zHB
         QTVg==
X-Gm-Message-State: AOAM5337uaR6qEg9yc+Td4mTGmz3q3tITj6UFAiJjBupKRP3frzTAS3+
        HM2jo33e29gz+8uFoJuZe/k=
X-Google-Smtp-Source: ABdhPJwL+e4sDEWZjZg8Mk1wjLWT0+pbooOrDaevFtjRQ4s0HUqvBb49ANCo1R7UPxHqxPXSK22/og==
X-Received: by 2002:a17:906:2898:: with SMTP id o24mr10010724ejd.215.1612644028256;
        Sat, 06 Feb 2021 12:40:28 -0800 (PST)
Received: from ?IPv6:2001:a61:2542:b001:294f:8948:78a8:d929? ([2001:a61:2542:b001:294f:8948:78a8:d929])
        by smtp.gmail.com with ESMTPSA id r11sm5936566edt.58.2021.02.06.12.40.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Feb 2021 12:40:27 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: Re: [PATCH v2] getsockname.2: Use restrict in prototypes
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <07cd0609-31d8-adbd-2549-dc4ad54bbd34@gmail.com>
 <20210203213559.165019-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1b3b8d22-e8e8-e7b9-a60e-4963e562742c@gmail.com>
Date:   Sat, 6 Feb 2021 21:40:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210203213559.165019-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/3/21 10:36 PM, Alejandro Colomar wrote:
> POSIX specifies that the 2nd and 3rd parameters to getsockname()
> shall be 'restrict'.  Glibc uses 'restrict' too.
> Let's use it here too.

Thanks, Alex. Patch applied.

Cheers,

Michael

> 
> ......
> 
> .../glibc$ grep_syscall_wrapper getsockname
> socket/sys/socket.h:116:
> extern int getsockname (int __fd, __SOCKADDR_ARG __addr,
> 			socklen_t *__restrict __len) __THROW;
> .../glibc$ grep -rn '# *define __SOCKADDR_ARG'
> socket/sys/socket.h:58:
>  # define __SOCKADDR_ARG		struct sockaddr *__restrict
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
> v2: Add restrict to 2nd param.
> 
>  man2/getsockname.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/getsockname.2 b/man2/getsockname.2
> index 55db4b84c..bf36e260b 100644
> --- a/man2/getsockname.2
> +++ b/man2/getsockname.2
> @@ -44,8 +44,8 @@ getsockname \- get socket name
>  .nf
>  .B #include <sys/socket.h>
>  .PP
> -.BI "int getsockname(int " sockfd ", struct sockaddr *" addr \
> -", socklen_t *" addrlen );
> +.BI "int getsockname(int " sockfd ", struct sockaddr *restrict " addr ,
> +.BI "                socklen_t *restrict " addrlen );
>  .fi
>  .SH DESCRIPTION
>  .BR getsockname ()
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
