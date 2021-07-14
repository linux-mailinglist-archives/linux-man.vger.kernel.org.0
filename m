Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 559363C9200
	for <lists+linux-man@lfdr.de>; Wed, 14 Jul 2021 22:22:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234657AbhGNUZQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Jul 2021 16:25:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234858AbhGNUZM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Jul 2021 16:25:12 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EF01C06175F
        for <linux-man@vger.kernel.org>; Wed, 14 Jul 2021 13:22:20 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id f9so4747172wrq.11
        for <linux-man@vger.kernel.org>; Wed, 14 Jul 2021 13:22:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=pawSHoztSGyASUnCowv3/1yT98sgwBVrWTpfeia2tsk=;
        b=rQWaagjz9K03Po+i2Nkf5bLi3/Z8d5yDeNWKVpo06LWQKC3N73ccEtjNyu8qPwVJPl
         w7izBLZLwQaOVd+tLkhsqVWZoD7HgrNsb5tetdob0cJOXBZAcAb7RCiXdUSt4GrKnPWh
         PoxzJl6erNlO81YeQ4lrAfesQwfs58IJTzkekhwGL8EWBqVfA7f3fWrVnjVZG54rKHZa
         fiJIYIY8J3LsD03ixGfjN6iMKSF1H5qfxbfIZ1KWoXg0aUAJGf5Dwv7OFPL09qCaHOyO
         JQxgY2m8qjEOHTIaCt+EPQ6/Pctr0PZcWcW4ajUiwjGTsJq8knAXGVpZhLjj9pPI+wd+
         7eTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pawSHoztSGyASUnCowv3/1yT98sgwBVrWTpfeia2tsk=;
        b=lswePRLKkTvTGpWSZnIgWjQDCRl7VQieaoIgcEaJuRR9NU2LX186mnJUqfHl3ZErYM
         FATW8WWmsXZSpNpblfmNTGAxtiCGY4wp8F1DSSeNlYcfv+ePUbB5iJ64CCWT/fGJNyFB
         18hGXsMUMy4dn9qr6v8H/Sk5+tWWfg5t/5AK6z3pNoqZQT/lp0DxIqV6HJhS+x1Bbwvi
         IW6l8AVpQRxTYwna0u4ALS8Nj8cAAAtISCJPiUyBJEhNuOI3ceo6SvTJXgD6GAzmYJN2
         e2AGagDk4RjPPz0s0fYq1UjHZwOVpIoAAMK6BTZkzxAbPht6RQyTKrhBaN95k8EOSynp
         Dduw==
X-Gm-Message-State: AOAM532WYiK9IP50vKdbs7B+kgZqbrUn3UzJKvOxdBETWxHM4lfXyA9h
        J8TZFxTXQVoaZRf/MBg8jTgHcdygVgU=
X-Google-Smtp-Source: ABdhPJzIYp9OoO26HtFwMMx1qVuGGClzRxRHTG4S31NnqnTBGh/6OzJHqUblWdGMd2+JL0OKhCWCpQ==
X-Received: by 2002:a5d:544f:: with SMTP id w15mr15202136wrv.151.1626294139039;
        Wed, 14 Jul 2021 13:22:19 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g18sm3021540wmk.37.2021.07.14.13.22.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jul 2021 13:22:18 -0700 (PDT)
Subject: Re: [PATCH] namespaces.7: fix confusion caused by text reorganization
To:     =?UTF-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@gmail.com>,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210713192608.3804441-1-stepnem@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <3fc2595b-0118-904b-1f46-a74465b8b6c8@gmail.com>
Date:   Wed, 14 Jul 2021 22:22:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210713192608.3804441-1-stepnem@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Štěpán,

On 7/13/21 9:26 PM, Štěpán Němec wrote:
> Since commit ee81d7e41852, the flags list has been (only) above, not
> below, these references.
> 
> (The flags table was added even before that, in commit
> 0b497138b908 ("namespaces.7: Add table of namespaces to top of page"))
> 
> Fixes: ee81d7e41852 ("namespaces.7: Include manual page references in the summary table of namespace types")
> Signed-off-by: Štěpán Němec <stepnem@gmail.com>

Patch applied!  Thanks!

Alex

> ---
>  man7/namespaces.7 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man7/namespaces.7 b/man7/namespaces.7
> index d35c2d383e32..0ac32c77e21c 100644
> --- a/man7/namespaces.7
> +++ b/man7/namespaces.7
> @@ -97,7 +97,7 @@ If the
>  .I flags
>  argument of the call specifies one or more of the
>  .B CLONE_NEW*
> -flags listed below, then new namespaces are created for each flag,
> +flags listed above, then new namespaces are created for each flag,
>  and the child process is made a member of those namespaces.
>  (This system call also implements a number of features
>  unrelated to namespaces.)
> @@ -119,7 +119,7 @@ If the
>  .I flags
>  argument of the call specifies one or more of the
>  .B CLONE_NEW*
> -flags listed below, then new namespaces are created for each flag,
> +flags listed above, then new namespaces are created for each flag,
>  and the calling process is made a member of those namespaces.
>  (This system call also implements a number of features
>  unrelated to namespaces.)
> 
> base-commit: 33248cfe50ebb8762208e7ef3264676dad71b016
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
