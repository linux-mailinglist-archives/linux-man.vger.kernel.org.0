Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 34E533E3A62
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 15:20:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230505AbhHHNUy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 09:20:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229608AbhHHNUy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 09:20:54 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7487EC061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 06:20:35 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id l11-20020a7bcf0b0000b0290253545c2997so9518428wmg.4
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 06:20:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=WDOSMvujaBe9xA+7t8igpPZqKhpH8UzDN/0bb6MzGhc=;
        b=sNhpwsejZhm8WrT0FwXJ4F7ClIc6LuHKw52fdqJCLjwQYrrbpeK+dauw3sjCT7Jh5J
         rXuBec1zV7V/InfbLE6syGnEajrSsxIVauPFdEfpLAf5ryeudIfyAkl6IgB1sHByprNd
         b8rjNQfaEHvPuVF8IH00/KEcGarYWrwg7KHoU0P7NbGhqHjYlt76lBOmKrIoG2WgFZuo
         9X4igX2RNnyia6zx20iLbsuUj0+Be6+WtIJnb+4KnHQVBXO+zHMiJWwDNMpGM3F1jjqj
         rTtTR54y5/GiHIRhdNRJuXJcyW74PGLP3eazcSRLTu5fxL/tAWSxHA3Qfv0x0yRED8hd
         2v0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=WDOSMvujaBe9xA+7t8igpPZqKhpH8UzDN/0bb6MzGhc=;
        b=TIqWm0lWIjQDk95wlo/CXu/MFcEwc+ft5f08bk1dfY2jYN7k5YLTy1+5c7grPAazLM
         NOYUWlAun5oGRtC6KXDyGZE+ZTx6NnbW3dELqp4hgHt38bPXD+qf3pzsw5j+rj2+KY9D
         HNYx7khYEEQCKzHvg8+DoLFEd87N1boSLXlGclWWWVKCnJJET9MQefI5vpsEvdEIgRua
         J/Rmo5ScGGqxW+5RE8KtJ2gMDCxfzZh5oaVeYG2ORFWcomEGgK8JaxlMOE6Cf4vAasTQ
         4B0GopHXc6G1T5fqs2vzPB6ojcrug8daEos7USlu4hSaU08d7S/lKV6dOluutTjfaHh3
         mLkw==
X-Gm-Message-State: AOAM533sXk7F+EjyTjvpbmOLrvriWAzqYKh0K46ozV2PPhHY936clQXI
        4k6kc3LL7dw2iHxEih+2R0FgljSjd6U=
X-Google-Smtp-Source: ABdhPJxOiX9wg5fSyTCWD49gmthtfOBjKZ7hA/8DcYvM1fFGiVLsWiATHfa5gmLVzVVA11s2ZAs90g==
X-Received: by 2002:a7b:c316:: with SMTP id k22mr28260165wmj.56.1628428834124;
        Sun, 08 Aug 2021 06:20:34 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j2sm16491068wrd.14.2021.08.08.06.20.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 06:20:33 -0700 (PDT)
Subject: Re: [PATCH 01/23] pipe.7: also mention writev(2) in atomicity section
To:     mtk.manpages@gmail.com
Cc:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        linux-man@vger.kernel.org
References: <20210808084133.734274-1-alx.manpages@gmail.com>
 <20210808084133.734274-2-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <3a033179-61da-eea0-2c34-a10307b838c0@gmail.com>
Date:   Sun, 8 Aug 2021 15:20:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210808084133.734274-2-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 8/8/21 10:41 AM, Alejandro Colomar wrote:
> From: наб <nabijaczleweli@nabijaczleweli.xyz>
> 
> writev(2) notes that buffers don't interleave with other process'
> (a reasonable question to ask), but points to pipe(7) for an exception.
> pipe(7) did /not/ mention "writev", "iov", "scat", or "gath", which are,
> in order, reasonable search terms: this was confusing at best and
> alarming at worst
> 
> By mentioning writev(2) in the heading, we clearly note that this sort
> of interleaving behaviour matches write(2)'s and isn't a concern
> 
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Oops, drop this one that I already sent in the previous set.

Cheers,

Alex

> ---
>  man7/pipe.7 | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/man7/pipe.7 b/man7/pipe.7
> index c3210320c..29f6cf6cb 100644
> --- a/man7/pipe.7
> +++ b/man7/pipe.7
> @@ -246,6 +246,8 @@ limits; see BUGS.
>  .SS PIPE_BUF
>  POSIX.1 says that
>  .BR write (2)s
> +and
> +.BR writev (2)s
>  of less than
>  .B PIPE_BUF
>  bytes must be atomic: the output data is written to the pipe as a
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
