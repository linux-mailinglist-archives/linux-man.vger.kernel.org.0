Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E8638311FFE
	for <lists+linux-man@lfdr.de>; Sat,  6 Feb 2021 21:40:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229541AbhBFUkX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 6 Feb 2021 15:40:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229522AbhBFUkW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 6 Feb 2021 15:40:22 -0500
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75D1BC061756
        for <linux-man@vger.kernel.org>; Sat,  6 Feb 2021 12:39:42 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id y18so13543647edw.13
        for <linux-man@vger.kernel.org>; Sat, 06 Feb 2021 12:39:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6AwHFpNHnZtpLdW0iG6hZCtJSUlRvaSr0mJxkQLslCA=;
        b=NJQ9jqNNHS2zB7p2Gpaf7Li04NAiBW/s76h3IZuInEwtG6RfsEPFvafF0dooMRIhVc
         IVaCxKXnF2oojeZoQ3F9yYMqYdEvDiZVCkylaGz+U6KoiixWtyMSLFUBOpjpRqsl36ri
         CqrLhh76jTs9ha5EHFMEF2lHZjWj7HUSG+RFPLeugWwhAnY68eYWkAYze0CNEOSJFl+g
         gkRuv1agNOJvWlTarEETXkRF7ELC5V9U66a/qwXhfPfzW5zNEA0fnYwaJkHA2ffiV1ct
         RM9c5YRQlIc/8xtTY2Fw9iXJHy6oyo7ejvPYvBvIpRaq8lqG1xMYi5LRIQUT0sCRq9dY
         x4sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6AwHFpNHnZtpLdW0iG6hZCtJSUlRvaSr0mJxkQLslCA=;
        b=rLk8Ih6MUZeWp+IJ5F+3DXLJiQeDPzv4kHYVxj51ZUzbF47coobJfLLff4L861bAFn
         HH2Tvt5hBJ2SyxuCCGOSoXT0QM63bgAW4dcWavz0cAqp5TOYcPoUaxqE94GFUGloawvt
         ud1j2Nt/oDZ0WERc1q1W4Xyu7y4XRdc606wUZSCh4S72PR9yE2Iw3l9gR3URapHy+NqK
         jSyzOaIw/0Td6hiyO1awdC7mXvaYr0T/kK2L4rXC65tHbm+QOOO+I7V7oFrOvm/CzvTE
         G6Qs0YMl7r5FkRndQvhpGbQT9sVon6EbTFcen/BMBDp3dvPWH8W3qle5b7sn5M+S9o48
         SfrQ==
X-Gm-Message-State: AOAM531wZ5YSVfSe03ihkdMhqnSyiUFcTvVw1GGD4789F+SWz8tSpZws
        dBOFfWWzyu9kHfN4rCEzOoI=
X-Google-Smtp-Source: ABdhPJwu5QRT74h9aqz7w41MDkL24ybjYpTiD3Ur07EvD0607SFd/8bBzKxuyZUKXa+vM+66o4DkLA==
X-Received: by 2002:aa7:c58f:: with SMTP id g15mr2664875edq.383.1612643981294;
        Sat, 06 Feb 2021 12:39:41 -0800 (PST)
Received: from ?IPv6:2001:a61:2542:b001:294f:8948:78a8:d929? ([2001:a61:2542:b001:294f:8948:78a8:d929])
        by smtp.gmail.com with ESMTPSA id c18sm5920730edu.20.2021.02.06.12.39.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Feb 2021 12:39:40 -0800 (PST)
Cc:     mtk.manpages@gmail.com, Florian Weimer <fweimer@redhat.com>,
        libc-alpha@sourceware.org, linux-man <linux-man@vger.kernel.org>,
        Willem de Bruijn <willemb@google.com>
Subject: Re: [PATCH v2] epoll_wait.2: Glibc doesn't provide epoll_pwait2() yet
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <CAKgNAkj6Kz=DGjrrX-NHKWRYjLZXED7TZyHFtTYpf0gAPmHSeg@mail.gmail.com>
 <20210206114303.4657-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0a0f61a7-31ed-875d-0077-54a853fed98b@gmail.com>
Date:   Sat, 6 Feb 2021 21:39:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210206114303.4657-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/6/21 12:43 PM, Alejandro Colomar wrote:
> I filed a bug against glibc
> requesting the wrapper for the new syscall.
> 
> Glibc bug: <https://sourceware.org/bugzilla/show_bug.cgi?id=27359>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
> 
> Hi Michael,
> 
> Yes, filing a bug is one better :-).

Thanks * 2. Patch applied.

Cheers,

Michael

> 
> Cheers,
> 
> Alex
> 
>  man2/epoll_wait.2 | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/man2/epoll_wait.2 b/man2/epoll_wait.2
> index f0e432478..f941023c2 100644
> --- a/man2/epoll_wait.2
> +++ b/man2/epoll_wait.2
> @@ -35,6 +35,9 @@ epoll_wait, epoll_pwait, epoll_pwait2 \- wait for an I/O event on an epoll file
>  .BI "int epoll_pwait2(int " epfd ", struct epoll_event *" events ,
>  .BI "               int " maxevents ", const struct timespec *" timeout ,
>  .BI "               const sigset_t *" sigmask );
> +.\" FIXME: Check if glibc has added a wrapper for epoll_pwait2(),
> +.\"        and if so, check the prototype.
> +.\"        https://sourceware.org/bugzilla/show_bug.cgi?id=27359
>  .fi
>  .SH DESCRIPTION
>  The
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
