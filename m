Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D9052EBD02
	for <lists+linux-man@lfdr.de>; Wed,  6 Jan 2021 12:07:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725903AbhAFLHn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 6 Jan 2021 06:07:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726211AbhAFLHn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 6 Jan 2021 06:07:43 -0500
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB08FC061357
        for <linux-man@vger.kernel.org>; Wed,  6 Jan 2021 03:07:02 -0800 (PST)
Received: by mail-ej1-x633.google.com with SMTP id t16so4384433ejf.13
        for <linux-man@vger.kernel.org>; Wed, 06 Jan 2021 03:07:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ARvFWxfnRpmi2b957C0rJJxy+zjTeK8vWDZlfsi6zGY=;
        b=jPwe8FprQCx3f8rSUTkt55BstoroedDyWud2XDnBNTo3oox7AQ7n7NRJ9uiCGAuWS7
         WgLIMh5leCqfCZL9p9OBWXeQ7AkEn/X8X2YkmKFFaos1wU/MJzC9ItlJtRnKK4GvxtEk
         5svhKQpk8Xwat6tG/2np4eiR0DX31H9BEZRaPeaEtf1SLZyFYFgpJPIDmly3VdR4oZ5t
         9EYFRhF4/3Pg3k9ht0Mr7tY1/rpI4iBfvv69ddkKMEISBtONYB0W3c0s2EdAFQQqbw/r
         EjeRT0L8hhdssIqsw7d1z7jFhGKNEKC09Gk/QaI59dkKaW9JcdunEu3i5PNVa2RvyI/Q
         Colw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ARvFWxfnRpmi2b957C0rJJxy+zjTeK8vWDZlfsi6zGY=;
        b=THInNaCYxZbykR2xn0yiv9yqmDrjjLBlrLqQ1zMyfAi+G5p/Nz6556fG1daW1Wvspu
         4okWUvBSbcG7csU2+Js1ariYvA2fUW5vDPPqo7A6yzWgjihOSZz+GyRGxc57RaYRp3kf
         l9KXCUqWEUZ9gmmFR+iCDyxCXBvzTQ/tXT1uiFxlS8hHnD1Dv9OzGxr9Saph5jWII3+J
         QmRcGdsX1OmTK+t/DU/CqJEQWdeeYpFjULYRJVeMMwuc+n3vSagh2Y5xpMlhSta/6o8r
         lqxLX0DJbONNfFAx2iAJWHniPqOVNlM1TjeP0musSyqivm1kFCTG03V773pJdNtNzUw1
         jahA==
X-Gm-Message-State: AOAM533AUAboZK4Y8COKsDJb42y7f1yMVcUF4Z3XHz5fjyJNtIZVHrLX
        4fkHCLvakx5fxp043st/vFI=
X-Google-Smtp-Source: ABdhPJy44kwAzcdYDNOOwc23uZtMaa/09RMINGo9ZnCAGVFBjxckFpGhGvM2ytQRGA5rDjkN3LyqnQ==
X-Received: by 2002:a17:906:1a4e:: with SMTP id j14mr2443338ejf.507.1609931221536;
        Wed, 06 Jan 2021 03:07:01 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id u19sm1105120ejg.16.2021.01.06.03.06.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jan 2021 03:07:00 -0800 (PST)
Cc:     mtk.manpages@gmail.com
Subject: Re: [patch] resolv.conf.5: tfix
To:     John Morris <john@zultron.com>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
References: <a016d1d9-2905-3e0b-f1a5-0b40a0115cc3@zultron.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5df5619c-94c2-5e0a-e425-670c4a70bf25@gmail.com>
Date:   Wed, 6 Jan 2021 12:06:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <a016d1d9-2905-3e0b-f1a5-0b40a0115cc3@zultron.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/6/21 6:52 AM, John Morris wrote:
>  From 20b6c1a6cfe2d2a3b199bf1e869db256355bbeb1 Mon Sep 17 00:00:00 2001
> From: John Morris <john@zultron.com>
> Date: Tue, 5 Jan 2021 23:30:10 -0600
> Subject: [PATCH] resolv.conf.5:  tfix

Thanks, John. Patch applied.

Cheers,

Michael

> Change `RES_USE_EDNSO` to `RES_USE_EDNS0`, defined in
> `resolv.h`.  (This is written correctly in `man3/resolver.3` in this
> same repo.)  Helps with grepping and internet searches!
> 
> Signed-off-by: John Morris <john@zultron.com>
> ---
>   man5/resolv.conf.5 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man5/resolv.conf.5 b/man5/resolv.conf.5
> index c1b3d017a..8ed958932 100644
> --- a/man5/resolv.conf.5
> +++ b/man5/resolv.conf.5
> @@ -264,7 +264,7 @@ these options were removed in glibc 2.25.
>   .TP
>   .BR edns0 " (since glibc 2.6)"
>   Sets
> -.BR RES_USE_EDNSO
> +.BR RES_USE_EDNS0
>   in
>   .IR _res.options .
>   This enables support for the DNS extensions described in RFC\ 2671.
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
