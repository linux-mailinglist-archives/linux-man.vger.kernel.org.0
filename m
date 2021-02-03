Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8AD1C30E4FB
	for <lists+linux-man@lfdr.de>; Wed,  3 Feb 2021 22:32:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231318AbhBCVbx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Feb 2021 16:31:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230139AbhBCVbw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 Feb 2021 16:31:52 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD89AC061573
        for <linux-man@vger.kernel.org>; Wed,  3 Feb 2021 13:31:09 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id c4so936278wru.9
        for <linux-man@vger.kernel.org>; Wed, 03 Feb 2021 13:31:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6F4siZJxKQ3DkAo6krYsbG7sZzRpHMzfQO0FgWwFnPs=;
        b=N4ND9bcScMZTuODwMwHl/1DFYykwa+UDoAIAreDVhzA692IK1pT/HdBngEawm+4ixs
         /pWOWl9rWEYVnQYZpvylviDYDR/TK9Og5arOk/ex1vrUONh2S8JtwML0cxMpcSd4idsC
         S/DaF2wMChtFL38Xhs3lDCkzrpWMzKAsH1a7XMGI3nzIPsGgnfwC9mY7Yvi6CV6zB3KI
         s4LH8K7G2J+995MOq1FSitXQggLApt3i9pX+nImyTPKahWeOjfLSRLg9pttuF15fXsLD
         0uPZXMbwjzCjQH04mlI8xReo/6GB8ARiV9ZowuLYqOuu6zVh7ZqDUI3xkLsUVIxsiEQ8
         u7Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6F4siZJxKQ3DkAo6krYsbG7sZzRpHMzfQO0FgWwFnPs=;
        b=MtqRPAezKEWk7YGiB2gvziWB0s601OUKbALXFGAjq6SsRvkcdzqdT3U0xl9BGH/MZn
         1DlGlNXIhro68LtaxovDrMui75wyf7yY+kF81u+z8KWjGwzOilRQSS1sAQbzbWn45eh/
         8MLtngXl/evG/+dPsbfpTxuMR8E1gU6V+6O+DRzOPnZY72s4NbWLg4Hj5g0FC8Cy7VkO
         kh9rrn/XE5GqDVt+g/mtrgQvlnZz0VepyrQbRnOX5RkAXVXUxdA+zrdnrEblVSSxC308
         /2TFTLKQKtfZEQo7H4k4thTCr6LjmaUnJYZF5xnZGs19iL+CuV4BfeNAM6GlYxD9SXdf
         Yk5g==
X-Gm-Message-State: AOAM531Fi0GlZ87WEcyajVphHWOOnf4kgdrBtdOf65Rotfd5m/RqRf51
        0oWMWi3Eo+UEKyWOHfX/c6w=
X-Google-Smtp-Source: ABdhPJxQReQDAjdiX6Iku66dDtAMDqXhXeamY2Z3A7uC1Xw8zx8r+Ii95bKINq9INW+I+2J1s6V5Kw==
X-Received: by 2002:a5d:68c1:: with SMTP id p1mr5698776wrw.325.1612387868525;
        Wed, 03 Feb 2021 13:31:08 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id r15sm5238875wrq.1.2021.02.03.13.31.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 13:31:08 -0800 (PST)
Subject: Re: [PATCH] getsockname.2: Use restrict in prototypes
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Heinrich Schuchardt <xypron.glpk@gmx.de>
References: <20210203212508.162239-1-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <07cd0609-31d8-adbd-2549-dc4ad54bbd34@gmail.com>
Date:   Wed, 3 Feb 2021 22:31:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <20210203212508.162239-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/3/21 10:25 PM, Alejandro Colomar wrote:
> POSIX specifies that the 2nd and 3rd parameters to getsockname()
> shall be 'restrict'.  Glibc uses 'restrict' too.
> Let's use it here too.
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

Hi Michael,

I forgot to actually add restrict to one of the parameters.
Wait for v2 :)

Cheers,

Alex

> ---
>  man2/getsockname.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/getsockname.2 b/man2/getsockname.2
> index 55db4b84c..034c9d4ac 100644
> --- a/man2/getsockname.2
> +++ b/man2/getsockname.2
> @@ -44,8 +44,8 @@ getsockname \- get socket name
>  .nf
>  .B #include <sys/socket.h>
>  .PP
> -.BI "int getsockname(int " sockfd ", struct sockaddr *" addr \
> -", socklen_t *" addrlen );
> +.BI "int getsockname(int " sockfd ", struct sockaddr *" addr ,
> +.BI "                socklen_t *restrict " addrlen );
>  .fi
>  .SH DESCRIPTION
>  .BR getsockname ()
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
