Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A8AB52F952F
	for <lists+linux-man@lfdr.de>; Sun, 17 Jan 2021 21:41:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730284AbhAQUlb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 17 Jan 2021 15:41:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730279AbhAQUl0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 17 Jan 2021 15:41:26 -0500
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09B10C061573
        for <linux-man@vger.kernel.org>; Sun, 17 Jan 2021 12:40:35 -0800 (PST)
Received: by mail-ej1-x634.google.com with SMTP id g3so1470923ejb.6
        for <linux-man@vger.kernel.org>; Sun, 17 Jan 2021 12:40:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3gM6ME44RgBiotCtdAT3yrbQQ6Pc44CYgYHjW1lGlI0=;
        b=tvPJr81RrScm+NPQCS64GdMtyHUcGCOa+3II2a1bvkMNoMe5CQto00k/xbgyZym94O
         D/X2nbj7NWPy8Gov8Io9Ah1BMRar+sQn+lvvn13lqXXs0EeeC0tOso8/b8ZMGFK5xJLA
         qJyHEvii0JWRVG7VvBPv8EkvNYxrU38Q1MgOiRGuyrRtApPSH88Qmwl9u4gh5jFtf0a5
         0kbdRt8aPEP1ENfP2J4io4khmF/6l5Z1KET9lIQiXK3ayM0cTuzntqu+kqASzrBXMUll
         t+fpNEWsEEttzdJrP4B6igiJ8jTgGgQqT38+ab3+NN+G7135kzaycXM7c1bXGVR7349E
         ATVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3gM6ME44RgBiotCtdAT3yrbQQ6Pc44CYgYHjW1lGlI0=;
        b=RpI8WyJKKDiAe5tgQhBX7VDLwr7RO3q2mqBckb/EZSUErcuj4Q8kr6n8b4tOBFpW7v
         b73Sb4ltVYuezByXYqvAaJpbvAr+Gpa65/4r59WFd/OJNlygNff8cJTstjPUlGa71jPT
         LRNPEvOhFPVQA5zHFij9hTjMiPQIKzYH4EJIYLhczKs/We1iEY/u5uXMPOG+YT1RoaIj
         Dl5Ks9JWP53WKlluWpEQY7/EemlzVRpF3qdTRE7EjysW0NejMZx36tyQK9PDvNQ22NsV
         lt/4qC/ej8n9lVlLAZAP6wTohNsY+FxZo8qRZwgWk0zqh9WtgZ0UCRgh/94gZvyHOOjJ
         aCuA==
X-Gm-Message-State: AOAM530DjD0v6oetI8cxb1eJ+i5HJ7CHzrJWFAhj14wXy1RU3x6ngGPQ
        XZfObRD4ugRHFUaejgpMxpHOz3oUMzg=
X-Google-Smtp-Source: ABdhPJx5JtmgaXniZp+Ecw2da0Tp5vHy/68LLPW9Hs9nqet93943Qfa2lxIyU59f/uzzHxnhWAAY4g==
X-Received: by 2002:a17:906:a106:: with SMTP id t6mr15760315ejy.63.1610916033462;
        Sun, 17 Jan 2021 12:40:33 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id z25sm8580497ejd.23.2021.01.17.12.40.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Jan 2021 12:40:32 -0800 (PST)
Cc:     mtk.manpages@gmail.com, Alyssa Ross <hi@alyssa.is>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] ulimit.3: tfix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210116150103.7846-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <51c3d290-ed54-8170-69eb-97d681afd20a@gmail.com>
Date:   Sun, 17 Jan 2021 21:40:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210116150103.7846-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex and Alyssa,

On 1/16/21 4:01 PM, Alejandro Colomar wrote:
> From: Alyssa Ross <hi@alyssa.is>
> 
> The parentheses here make it look like a function rather than a
> command.
> 
> This was a typo introduced by a script-assisted global edit.
> 
> Signed-off-by: Alyssa Ross <hi@alyssa.is>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied. 

@Alyssa: nice catch, because I introduced that typo 15 years ago!

Thanks,

Michael

> ---
>  man3/ulimit.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/ulimit.3 b/man3/ulimit.3
> index b6d0b3250..be70e4f8c 100644
> --- a/man3/ulimit.3
> +++ b/man3/ulimit.3
> @@ -42,7 +42,7 @@ and
>  .BR sysconf (3)
>  instead.
>  For the shell command
> -.BR ulimit (),
> +.BR ulimit ,
>  see
>  .BR bash (1).
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
