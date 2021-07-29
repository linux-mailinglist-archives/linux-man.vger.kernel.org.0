Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 99FCF3DA1E8
	for <lists+linux-man@lfdr.de>; Thu, 29 Jul 2021 13:15:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236776AbhG2LPx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 07:15:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236611AbhG2LPx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Jul 2021 07:15:53 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE8DBC0613C1
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 04:15:49 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id p5so6464160wro.7
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 04:15:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ROU2lzf9BznjpAqdPwlvv/gQ4c+xLP7XelCg34JBBXo=;
        b=mhVThJfm3QKtZNbc/jTovJmeyv352ayFhQ8+mW957dPe1U0SF71TCVO7SHgn5eKVrc
         a5WCz3Shy/6fKM2DYt5wMG0J3UlYsZn27SZh8gTBZPms/lYFxh/4j5uO4Bs/KLC9r/21
         Nu9PQE3VgWFG3CtC0DCf8BXxX4+To23JtJ9p2n1bjmU3NhnpEeIFDYSuhtesC7pxwu7E
         XVxTSfCcX/KYYW5JwOKQsVRT6waDEw1Y4/09+8m1ROzSqc6koguyO7nsjLHDWA2/88cw
         JeRI5KUfswDBxcA3eNALssaFEBrfumIDqvuVI6+yFmf1+c70oNowSd69ChOGH6wJhvvv
         605g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ROU2lzf9BznjpAqdPwlvv/gQ4c+xLP7XelCg34JBBXo=;
        b=OSuAGdlmyFLJ3AKKjEN2nHyUPD+/FyUFh/4lG8YZxrGcnmIZITG2rLnVPxOoz5HsjV
         KYWpw74ZhwnlWa/PeygxWZlg7IzGKnee0kKUO1Ji1qPdeQjfP+uYxonry761NCCJt0aL
         Himc1JORYKFs5RX5/AgK9CETObVSZ2lykDEHQdNPnxNwe4eR3o9OnSRXm0z4An1pd0Mj
         lJ0etePKnxq2qq6AG52Uxsp901vQ1lmp0r78PeNTslfbYlgeLvyhRiTavDezljo6xF/d
         MJbAtUKfiOSmYN0Lc9917+vXH6jqnxOzy3tjHOJ/3vJNQFLvXrzX+xqcQgSt2wF5O9cM
         hbdw==
X-Gm-Message-State: AOAM531HQL/iHHPDQx5LU59fe2HaFFpklgiFSjCQPs5cd74EdkmXAG+C
        gqOCkIU/4CwsiTrTLJjnhfos2Yc8tf8=
X-Google-Smtp-Source: ABdhPJy9mOubroL48zjd1THSa0gOjpNIyLFOcRi3ecYrwa8SuatiDLdW01rC6JHwvUNPPuk9D3wyWw==
X-Received: by 2002:a5d:4b48:: with SMTP id w8mr4335158wrs.109.1627557348605;
        Thu, 29 Jul 2021 04:15:48 -0700 (PDT)
Received: from [10.8.0.150] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id v12sm3086995wrq.59.2021.07.29.04.15.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 04:15:48 -0700 (PDT)
Subject: Re: [PATCH 17/32] seccomp_unotify.2: Minor tweaks to Rodrigo's patch
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Rodrigo Campos <rodrigo@kinvolk.io>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-18-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <8645a038-809f-b24e-ca57-0e9d7f747c36@gmail.com>
Date:   Thu, 29 Jul 2021 13:15:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-18-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/28/21 10:19 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

I forgot to CC Rodrigo here.

> ---
>   man2/seccomp_unotify.2 | 32 +++++++++++++++++---------------
>   1 file changed, 17 insertions(+), 15 deletions(-)
> 
> diff --git a/man2/seccomp_unotify.2 b/man2/seccomp_unotify.2
> index 9bd27214f..ae449ae36 100644
> --- a/man2/seccomp_unotify.2
> +++ b/man2/seccomp_unotify.2
> @@ -740,16 +740,18 @@ use the file descriptor number specified in the
>   .I newfd
>   field.
>   .TP
> -.BR SECCOMP_ADDFD_FLAG_SEND
> -Available since Linux 5.14, combines the
> +.BR SECCOMP_ADDFD_FLAG_SEND " (since Linux 5.14)"
> +Combines the
>   .B SECCOMP_IOCTL_NOTIF_ADDFD
>   ioctl with
>   .B SECCOMP_IOCTL_NOTIF_SEND
> -into an atomic operation. On successful invocation, the target process's
> -errno will be 0 and the return value will be the file descriptor number that was
> -installed in the target. If allocating the file descriptor in the tatget fails,
> -the target's syscall continues to be blocked until a successful response is
> -sent.
> +into an atomic operation.
> +On successful invocation, the target process's errno will be 0
> +and the return value will be the file descriptor number
> +that was installed in the target.
> +If allocating the file descriptor in the tatget fails,
> +the target's syscall continues to be blocked
> +until a successful response is sent.
>   .RE
>   .TP
>   .I srcfd
> @@ -1149,14 +1151,6 @@ that would
>   normally be restarted by the
>   .BR SA_RESTART
>   flag.
> -.PP
> -Furthermore, if the supervisor response is a file descriptor
> -added with
> -.B SECCOMP_IOCTL_NOTIF_ADDFD,
> -then the flag
> -.B SECCOMP_ADDFD_FLAG_SEND
> -can be used to atomically add the file descriptor and return that value,
> -making sure no file descriptors are inadvertently leaked into the target.
>   .\" FIXME
>   .\" About the above, Kees Cook commented:
>   .\"
> @@ -1176,6 +1170,14 @@ making sure no file descriptors are inadvertently leaked into the target.
>   .\" calls because it's impossible for the kernel to restart the call
>   .\" with the right timeout value. I wonder what happens when those
>   .\" system calls are restarted in the scenario we're discussing.)
> +.PP
> +Furthermore, if the supervisor response is a file descriptor
> +added with
> +.B SECCOMP_IOCTL_NOTIF_ADDFD,
> +then the flag
> +.B SECCOMP_ADDFD_FLAG_SEND
> +can be used to atomically add the file descriptor and return that value,
> +making sure no file descriptors are inadvertently leaked into the target.
>   .SH BUGS
>   If a
>   .BR SECCOMP_IOCTL_NOTIF_RECV
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
