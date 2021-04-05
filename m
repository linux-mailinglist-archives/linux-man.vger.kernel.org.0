Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 734F6354734
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 21:48:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233014AbhDETs2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 15:48:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232942AbhDETs1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 15:48:27 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2FE8C061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 12:48:20 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id r14-20020a05600c35ceb029010fe0f81519so4649412wmq.0
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 12:48:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=tohiPdvW2ZOWsV5aF5RUxTBVcCjyomMYBC9MwEV0fh4=;
        b=CQ48aIs7NyalsTNuuhdvcSRFvpnWph+Y2KIXUqbCvIweneILkLekdrj3tg4G1qKpfX
         t5oCotn/Uj2YfGnY59vIZAThYO+ZZrfxcYX1p8BQJywWMrw2oAfaszM4eb4t8/lT0PIO
         IfywB5dGG98Gn1Gh6rnuPOZEugwsiPr4DFGdkfHTrqpBO1e9XlidTDHw8xIuRk/LI4m9
         1vc6e+VxJcS6z7uDa5LvaV2uLc8IKkl6CCxM3xn9jaHqhFwlu2cXq5sqvsplG/ygJd4X
         NMjddIAf0N1eJ85scHvGM1vnUHRVTaKYxgbYfb46dkv5t+86pnY8taHYETFjPFNfsRSp
         CMbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=tohiPdvW2ZOWsV5aF5RUxTBVcCjyomMYBC9MwEV0fh4=;
        b=W7xraeWl+0cYgDy0M4poNmN5tqfFtBC36pGXdNQPkZHJcXCp7MPk2S9+hiiSBkpeyM
         AgisVv3PTSS79jUSeB+HjdyzscFDYmuYNhB3/oi+lWmZDTHKop+X0FeqR5NLT1YE2DwJ
         qqyjXns0j5oSl0ssD/RqZtZSBDdd8ZXV6kQpCMV+gznqiZmm6aDs0V1k6EeHo4LwZfiQ
         Sx4tUFR9igO2kbBllBING7NkuZO09XjXJrdaY3+ClTD+ZLuupNMkWdYV9IPUaXD0K0Vs
         d5iofQmd+dZWbhgdW1jY1Nn6TpRMF4FSnXaoZvBBoDXfF8ZWBiBKPgdiDSkVCpz/ZsYT
         pa/g==
X-Gm-Message-State: AOAM530WzafQ9uIcnQhmzFrR5ZWGJjyoU4DbpE2kt84Cyy1ByTqYex/j
        aaAGMrY3VAG5/4hod6jXQ0iIyIvGesU=
X-Google-Smtp-Source: ABdhPJwH3Vq8cO34MjGn2lpnOMb3PkuO3ipaNSqHPJ1MASrsPuwN8lWyZgxjtyKiqKKOvyw4vVWogA==
X-Received: by 2002:a05:600c:49aa:: with SMTP id h42mr638941wmp.80.1617652098757;
        Mon, 05 Apr 2021 12:48:18 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id j30sm31996983wrj.62.2021.04.05.12.48.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 12:48:18 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Alyssa Ross <hi@alyssa.is>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 1/5] scanf.3: clarify that %n supports type modifiers
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210405131307.2892-1-alx.manpages@gmail.com>
 <20210405131307.2892-2-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0d38058f-5b74-e22c-5df5-f5bb7643ba9b@gmail.com>
Date:   Mon, 5 Apr 2021 21:48:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210405131307.2892-2-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex and Alyssa,

On 4/5/21 3:13 PM, Alejandro Colomar wrote:
> From: Alyssa Ross <hi@alyssa.is>
> 
> My initial reading of this was that type modifiers were probably not
> supported.  But they are, and this is actually documented further up,
> in the type modifiers documentation.  But to make it clearer, let's
> copy the language that printf(3) has in its %n section.
> 
> Signed-off-by: Alyssa Ross <hi@alyssa.is>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man3/scanf.3 | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/man3/scanf.3 b/man3/scanf.3
> index e6d00c9f1..bd49a6caf 100644
> --- a/man3/scanf.3
> +++ b/man3/scanf.3
> @@ -526,7 +526,9 @@ the next pointer must be a pointer to a pointer to
>  Nothing is expected; instead, the number of characters consumed thus far
>  from the input is stored through the next pointer, which must be a pointer
>  to
> -.IR int .
> +.IR int ,
> +or variant whose size matches the (optionally)
> +supplied integer length modifier.
>  This is
>  .I not
>  a conversion and does

Thanks. Patch applied.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
