Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A34E0213987
	for <lists+linux-man@lfdr.de>; Fri,  3 Jul 2020 13:44:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726147AbgGCLoz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 3 Jul 2020 07:44:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725984AbgGCLoz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 3 Jul 2020 07:44:55 -0400
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com [IPv6:2a00:1450:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54130C08C5C1
        for <linux-man@vger.kernel.org>; Fri,  3 Jul 2020 04:44:55 -0700 (PDT)
Received: by mail-ed1-x544.google.com with SMTP id a8so26230048edy.1
        for <linux-man@vger.kernel.org>; Fri, 03 Jul 2020 04:44:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=FV4puqrLvvh7vWvJSadUEPvduW3MaEKPGhjCIKQUB5A=;
        b=lmI3jSvWhyxonl1rEvjmmNK++MXP6qJNg3H625sY83L6pBXPhjZjDC1/ngO5bJdaur
         SCBf2LiXpAFOknGLrLY4YDspblOdzLh539KGx6UIizRIfUxyLuoe1scIpQpqD61ZTv8i
         /yMZahTE09JdzDM6D9tao9r+PC7obIMEx2RJmFxuV2PyrG58rvkbbjsWfmsc7nXl5RtM
         Hvkk54Oz2HhXy9TAg4djlaALxXcsDLxKGbJSfT/p4pc/rqMSzRrfn2akJ7rzeqDdYmMI
         lj8ODkXTl98a/pT6oPILTYCCY8Oz6WhbcJgTQUiJGijT8FUWti3DCcDQWRxTmiXUyJOu
         dGEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=FV4puqrLvvh7vWvJSadUEPvduW3MaEKPGhjCIKQUB5A=;
        b=Y012hAQEgRJoaEcmZKHBqhaCreCuJlm6FYkd1nVyWnrvYrQSxjjBqV6+WqYCbRT70u
         WGq/Bcx7uWK5/otBAereAa0azFE44UW8yO3QTda6Fo383zZhoyXP3MuZPvHFavlako1k
         e/9yNBEmCLE9WhkxwK95ENS29f8eEP/eNTmae2ZIShOHhgeOtLfJ0iz1I3VKHma6xsJu
         Ttxwj+Ew/smDrsP3jHMLi1wMGzGT5FQBy0nr7wBYCCNBC7Q/JbSOlEpeUAn1FQzV0UVR
         wL2Qu+1+UacoC35Cs02b7CAziJ/j4+hJXq0PeynlBeR8MDSp9LDuhjWLfFygbBJik+S1
         1V1Q==
X-Gm-Message-State: AOAM531HNJCOLGUVpljgj3RwfXzJtnowtiawo//uRyBaFAOnwmxkT7x4
        0Vkj28cIijVtlpW8Tgw2ndbtlYei
X-Google-Smtp-Source: ABdhPJw/Ns+L8z0y/4jtOfUOi1eEvP6QLUh6miGDFnolHGznkkfCWve+ADZrq9q4+pPfiR/DfBpZHA==
X-Received: by 2002:a50:b084:: with SMTP id j4mr40449855edd.131.1593776693967;
        Fri, 03 Jul 2020 04:44:53 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id t2sm12558550eds.60.2020.07.03.04.44.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jul 2020 04:44:53 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] send.2, recv.2: add msg_iovlen POSIX note
To:     Alyssa Ross <hi@alyssa.is>
References: <20200703012540.19730-1-hi@alyssa.is>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <03214748-5ff4-6edc-e119-afd8f6669948@gmail.com>
Date:   Fri, 3 Jul 2020 13:44:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200703012540.19730-1-hi@alyssa.is>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alyssa,

On 7/3/20 3:25 AM, Alyssa Ross wrote:
> msg_iovlen is incorrectly typed (according to POSIX) in addition to
> msg_controllen, but unlike msg_controllen, this wasn't mentioned for
> msg_iovlen.
> 
> msg_iovlen being incorrectly typed hasn't been reported as a GCC bug,
> but there's no point since it is caused by the same underlying issue.
> 
> Sources: POSIX.1-2017 (<sys/socket.h>), Linux (include/linux/socket.h)
> 
> Signed-off-by: Alyssa Ross <hi@alyssa.is>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man2/recv.2 | 13 +++++++++----
>  man2/send.2 | 13 +++++++++----
>  2 files changed, 18 insertions(+), 8 deletions(-)
> 
> diff --git a/man2/recv.2 b/man2/recv.2
> index 78ae86e52..7c4b70c7a 100644
> --- a/man2/recv.2
> +++ b/man2/recv.2
> @@ -533,13 +533,18 @@ field of the
>  .I msghdr
>  structure should be typed as
>  .IR socklen_t ,
> -but glibc currently types it as
> +and the
> +.I msg_iovlen
> +field should be typed as
> +.IR int ,
> +but glibc currently types both as
>  .IR size_t .
> -.\" glibc bug raised 12 Mar 2006
> +.\" glibc bug for msg_controllen raised 12 Mar 2006
>  .\" http://sourceware.org/bugzilla/show_bug.cgi?id=2448
>  .\" The problem is an underlying kernel issue: the size of the
> -.\" __kernel_size_t type used to type this field varies
> -.\" across architectures, but socklen_t is always 32 bits.
> +.\" __kernel_size_t type used to type these fields varies
> +.\" across architectures, but socklen_t is always 32 bits,
> +.\" as (at least with GCC) is int.
>  .PP
>  See
>  .BR recvmmsg (2)
> diff --git a/man2/send.2 b/man2/send.2
> index 0dd35d783..de224b307 100644
> --- a/man2/send.2
> +++ b/man2/send.2
> @@ -441,13 +441,18 @@ field of the
>  .I msghdr
>  structure should be typed as
>  .IR socklen_t ,
> -but glibc currently types it as
> +and the
> +.I msg_iovlen
> +field should be typed as
> +.IR int ,
> +but glibc currently types both as
>  .IR size_t .
> -.\" glibc bug raised 12 Mar 2006
> +.\" glibc bug for msg_controllen raised 12 Mar 2006
>  .\" http://sourceware.org/bugzilla/show_bug.cgi?id=2448
>  .\" The problem is an underlying kernel issue: the size of the
> -.\" __kernel_size_t type used to type this field varies
> -.\" across architectures, but socklen_t is always 32 bits.
> +.\" __kernel_size_t type used to type these fields varies
> +.\" across architectures, but socklen_t is always 32 bits,
> +.\" as (at least with GCC) is int.
>  .PP
>  See
>  .BR sendmmsg (2)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
