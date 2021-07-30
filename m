Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE0783DBE46
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 20:22:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229921AbhG3SWh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 14:22:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229773AbhG3SWh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Jul 2021 14:22:37 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D82CC061765
        for <linux-man@vger.kernel.org>; Fri, 30 Jul 2021 11:22:31 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id b128so6532456wmb.4
        for <linux-man@vger.kernel.org>; Fri, 30 Jul 2021 11:22:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=+Ny1JHWFDSCMUHB2DFoPRoB0XkAacAO1eJ1xNjl87ZI=;
        b=crQdI0OE0tPGMXm3Ow/8HBaCVBWBpcOTxK5aEMUjWYoUd71nlD4RFcWuGjfUYgDWlV
         sjiAdQ87wFZRcnUyiWQDXCoGntDo6dWS5hwhxwW/vVAOyDXjMSHJE/FebNXPTcbFcR+5
         J+2a/KlKtgZEFsvvVGpHTpdsAfi3c56ufX0mIlSB9UbnhCU+kcCJ1rES7rMK0pcybSi/
         rLVUWGcKjQ0ecAzhbWjqdW0AwlLKoi/T2/rtEOeXuasptcBsm8661hgqU8ELkm2DZQUu
         HFFVxEa3s7seo9EJVHWUQNsj4AwuESID9TLNn6ET/8bE0AZSQaUWXRDjKh5xhwbnup7d
         pmUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+Ny1JHWFDSCMUHB2DFoPRoB0XkAacAO1eJ1xNjl87ZI=;
        b=otPoh3EqrFRF23yzpTOmIV/XEllALsDDbluU3SZyPfBwAnrZUwq9Uxcflu+vJCK2+K
         CsLek51a+sYo5iy7akHqCkvdQWEeodWAOAoA9irjPMUKdBUFGUwD3ieEbV2lxwx1eeMV
         nF052roz4RYZ7Uyx96vE9+5gQMg2RBBkMTw4FnwOjRE4JIGbjnXGe+HybH0a3UjOeHNd
         6MYqrtFFlYgzWSmLhL6ZpA/HEyux/1oVMAOWc4KebI8rsrjlJl6kEofZ3XqDFc/WCY8O
         ArrCVO44sd8NdKu1yC/65ySXzr13u9CWTZ1rUdEgztLyoXE94KfGL6GeiCYvuWevPR3d
         gZ6A==
X-Gm-Message-State: AOAM531ZIXsRduqLYslKrXcaz06tZCQURvpUJ4Q5eCe6nv0wkbp4xQ1x
        bSMJs/rgHgynHzVAPkUVLcYSFl65KlU=
X-Google-Smtp-Source: ABdhPJy6Gq6J96LiAAhMcGbZMCaqyumOlDR6rWDSU0ds218lup82acixmlKQOKXw8JMgWdqF5dHdMA==
X-Received: by 2002:a1c:6a0c:: with SMTP id f12mr4249478wmc.82.1627669350232;
        Fri, 30 Jul 2021 11:22:30 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id u11sm2616373wrt.89.2021.07.30.11.22.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 11:22:29 -0700 (PDT)
Subject: Re: [PATCH] ioctl_tty.2: Update DTR example
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210730105444.10483-1-pali@kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <1ac4e6e1-3336-a98e-b768-9b8ff25e7fba@gmail.com>
Date:   Fri, 30 Jul 2021 20:22:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210730105444.10483-1-pali@kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Pali,

On 7/30/21 12:54 PM, Pali Rohár wrote:
> Do not include unused (and incompatible) header file termios.h and include
> required header files for puts() and close() functions.
> 
> Signed-off-by: Pali Rohár <pali@kernel.org>

Patch applied.  Thanks,

Alex

> ---
>   man2/ioctl_tty.2 | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
> index 91aceddb7828..b5356738d4bb 100644
> --- a/man2/ioctl_tty.2
> +++ b/man2/ioctl_tty.2
> @@ -743,7 +743,8 @@ Insufficient permission.
>   Check the condition of DTR on the serial port.
>   .PP
>   .EX
> -#include <termios.h>
> +#include <stdio.h>
> +#include <unistd.h>
>   #include <fcntl.h>
>   #include <sys/ioctl.h>
>   
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
