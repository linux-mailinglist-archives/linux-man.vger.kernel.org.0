Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A049731E746
	for <lists+linux-man@lfdr.de>; Thu, 18 Feb 2021 09:10:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231260AbhBRIGP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 Feb 2021 03:06:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231422AbhBRIDo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 Feb 2021 03:03:44 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0063BC061756
        for <linux-man@vger.kernel.org>; Thu, 18 Feb 2021 00:03:03 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id m1so2126535wml.2
        for <linux-man@vger.kernel.org>; Thu, 18 Feb 2021 00:03:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=rw1KGgujr0jRV+6BoJkA+oZCZeyRdcE37cUL0MrTk7c=;
        b=NnVlLJtj67jrQ0lQsbQp4lSjL2Uu0esimTJJU5EC0OWnEKch4rjhtFvpaLw/RdJPcg
         gxZj6MVVdMg8q/OVZAXfEg6+1yK0XPz7LNiiVUgJWxO/bhGh8aQGxaRZVFacHIA0mnPr
         y77grO/AjdhUedF5cVKJfenYMQDFM4kM5YU45RADKMrN9U61Jyts0rsXmQ85zuS6hZ07
         qmS75gLawyN+o0MDhX7/QhzEql1YnKoXLQEU/lrfcDyqFRXHx2WaYSg7NocqqEhPscav
         Z87NGSYH8lEfeaypKWHPHmj6ccw6ey7yIJwXnRcvefCRLmBTW6IVXltGTyXDwGV2wYRi
         WVZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=rw1KGgujr0jRV+6BoJkA+oZCZeyRdcE37cUL0MrTk7c=;
        b=Sr3ReZk/dgMMOzKmWE5XAms+7sqLsemnCnvXHh9tL/yP8ITJOjT7cAVNeVeFB46aXv
         K/8z5cqTwlBjx/oOg1wueaCUfz3S+/masThcDh3PGzydTV74zlNqT6YAB7OLoDo57loc
         YcNiBEE+8PmuBdGRtdJB5xtVfrzqF63ZpENQWhMUPHV13lGyzExLn5AKkyTAeulinXO4
         CdPZVw58/JEypyUjgQ2WQy+I4lpdkJZfml64WwiTvKfUouZ29g2jXCi0fe1gYK12nQ2R
         Pj8TMFGVbFljXiUwKWHkOBvu5CQwIG5EG1kdxlQz5g1STeQCVyadLR2WLX7u2hhIS97+
         xklw==
X-Gm-Message-State: AOAM532bARxZkvEdBQg/w7Qjoa9mjf8P6bJ0QXR+xQOtBV3gGs/XKYxH
        gegZ3Oaofg6hK6grELtDGQzi7llh5aMCsA==
X-Google-Smtp-Source: ABdhPJzndIeUokBUvnvhrTMr9FC7i6fwI5HYJqkyxg26+FJeNwW1ZoXTw1WT2GhHHJ7hrFlZi8Rn8g==
X-Received: by 2002:a1c:b783:: with SMTP id h125mr2438715wmf.186.1613635016087;
        Wed, 17 Feb 2021 23:56:56 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id w25sm6195021wmc.42.2021.02.17.23.56.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Feb 2021 23:56:55 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] epoll_wait.2: tfix
To:     "Dmitry V. Levin" <ldv@altlinux.org>
References: <20210217080000.GA21832@altlinux.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <922c47c5-42ab-8344-97b2-aba0aa9bfa79@gmail.com>
Date:   Thu, 18 Feb 2021 08:56:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210217080000.GA21832@altlinux.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Dmitry,

On 2/17/21 9:00 AM, Dmitry V. Levin wrote:
> Mention epoll_pwait2 in "CONFORMING TO" section.
> 
> Complements: ba47eb5e3 "epoll_wait.2: Add documentation of epoll_pwait2()"
> Signed-off-by: Dmitry V. Levin <ldv@altlinux.org>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man2/epoll_wait.2 | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/epoll_wait.2 b/man2/epoll_wait.2
> index f941023c2..af4180df0 100644
> --- a/man2/epoll_wait.2
> +++ b/man2/epoll_wait.2
> @@ -248,9 +248,10 @@ Library support is provided in glibc starting with version 2.6.
>  .BR epoll_pwait2 ()
>  was added to Linux in kernel 5.11.
>  .SH CONFORMING TO
> -.BR epoll_wait ()
> +.BR epoll_wait (),
> +.BR epoll_pwait (),
>  and
> -.BR epoll_pwait ()
> +.BR epoll_pwait2 ()
>  are Linux-specific.
>  .SH NOTES
>  While one thread is blocked in a call to
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
