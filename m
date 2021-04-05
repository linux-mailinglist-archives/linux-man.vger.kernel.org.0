Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2603C354198
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 13:36:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234324AbhDELgQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 07:36:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234102AbhDELgQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 07:36:16 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67B06C061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 04:36:10 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id l18so12213771edc.9
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 04:36:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Ah0La5RXp8PePxlC5LJJZQ4yFjpicBcGVwP4H0A0NZU=;
        b=hLKPy/ffMaCCAJh99rIEnMdgJy2NcaW5WRpg7FcaRAv8Tq4xtjwzOpgY3UdnudKwxL
         P6ZzTFqA4iD1+vqKEk0nrhe5ogFS+4pJroE1IOI6eb8q4SCJu2+8ag+UbE9tpoMZPfg4
         jP4DeEYvFY9GqoOEhXE0sdMz4Wve8LAOiYbjXKXHSEL+Z+He+v2jQh8oRrpiLCqMrtD8
         YOWuWxuK6/Rm34JWfB/hz6oaH3/rV8gkbffz1ol3hToV6qViBtT+k5BgYaxuDatKq4HQ
         REyLIcReLHIUQZtR63Q3hnUixrsqP37ipntqXqEqtEG4/U0h5slaGDmdxd5GzXG6vMPS
         lOWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Ah0La5RXp8PePxlC5LJJZQ4yFjpicBcGVwP4H0A0NZU=;
        b=RKcabtuXh5YVy3wZfpPn9zmYKgFh4y2sagy0AIzOvgXKkTYi8QDfjjTlL91ULE7l0M
         BoCbnKzBni6mHUvC/aPLEPQqrDeeL/WpqKZH4o3MyNysE/9znpSoUnEHrufH8sEKSEVj
         yWmnuUHhUzfATukLiRTF4TTrUj4HaSqKEqntWgW64WFIx7JVuzWyO92B3vAeJHf8W2Eu
         JSIKQMz/+0WQwegmj3/x2QwpCT51OZenQKDi8jxBjCm9aEgNTH7+kTOnV3P3m85sWiVU
         dJLn2iqzj5PTTK6/zrZkRjPLuz7huU+uY9Q15ciw7zebH3vTA0WNKzvIlOMyJR0oJYqH
         m0NQ==
X-Gm-Message-State: AOAM531N7cB+qx3nKGnYkUA5gUGqe5eOhNBYGEk1Xz/foHH6nHK2g4wh
        nXG3DvidUefzF0eZi5ZwbLU=
X-Google-Smtp-Source: ABdhPJyhf3BOcJWxwqv9eldsPzMOtTYyrxjw11tNfBWzQxkRUpaul42gh4YmvcUl/hoYYzkgEPhAeQ==
X-Received: by 2002:a05:6402:4407:: with SMTP id y7mr30971933eda.247.1617622569164;
        Mon, 05 Apr 2021 04:36:09 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id h13sm10936168edz.71.2021.04.05.04.36.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 04:36:08 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 16/35] exit_group.2: Use syscall(SYS_...); for system
 calls without a wrapper
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-17-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <80bace2e-83fa-b64e-3657-78d9b1905eab@gmail.com>
Date:   Mon, 5 Apr 2021 13:36:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-17-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 4/4/21 1:58 PM, Alejandro Colomar wrote:
> <linux/unistd.h> is not needed.  We need <unistd.h> for syscall(),
> and <sys/syscall.h> for SYS_exit_group.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Patch applied.

Thanks,

Michael


> ---
>  man2/exit_group.2 | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/exit_group.2 b/man2/exit_group.2
> index 4fd314262..b512927d4 100644
> --- a/man2/exit_group.2
> +++ b/man2/exit_group.2
> @@ -27,9 +27,10 @@
>  exit_group \- exit all threads in a process
>  .SH SYNOPSIS
>  .nf
> -.B #include <linux/unistd.h>
> +.BR "#include <sys/syscall.h>" "       /* Definition of " SYS_* " constants */"
> +.B #inlcude <unistd.h>
>  .PP
> -.BI "noreturn void exit_group(int " status );
> +.BI "noreturn void syscall(SYS_exit_group, int " status );
>  .fi
>  .SH DESCRIPTION
>  This system call is equivalent to
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
