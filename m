Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE641318F2E
	for <lists+linux-man@lfdr.de>; Thu, 11 Feb 2021 16:54:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229544AbhBKPwn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Feb 2021 10:52:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231377AbhBKPt6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Feb 2021 10:49:58 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECACBC061756
        for <linux-man@vger.kernel.org>; Thu, 11 Feb 2021 07:49:17 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id u14so6218908wmq.4
        for <linux-man@vger.kernel.org>; Thu, 11 Feb 2021 07:49:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3n/Ad3LzJTtFNwtt4T61W+KDNI8YcvgHE/zEv7iMUdY=;
        b=s9g1Qo1s12Ipondub+JhJKTY6Lv6kPZZralP4fmNR2Fe7vfUbqKBPkX4h2xakaOqQh
         IHWRFPmAhUk22Fz899LR1GLcAv6omui9W42zdHbAaKp58DsBWHztWDRTAs21Ik+HDVnz
         oQ2mOuEAByQCCUa8eAzm2KbOybNBm4mF8j4iwVvh+EZnRlYUHAJvJo4riduB6OquDSDz
         1+6TYzm0/ZstXFWWgDVZN560IVRg4gVp6e/Odpbj3fEe7iM8d9sOdfLXCSsOUYVD+wCD
         6DmCWME5Ljbpe5VKmVWYBujLmhu16xINXSbj02rbZNBYbZf/FfSzFrYOfbfrOe9ykU24
         ScCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3n/Ad3LzJTtFNwtt4T61W+KDNI8YcvgHE/zEv7iMUdY=;
        b=Ojbk5WDPLdJLmxeQX08O6i9yOTB7XALbzDwMXzs3cA6smCtfS+5X+6ZQvfvd8hOiVC
         YoqN1hhCBLFVFkkljn7C1svH6vTdeRl6E2p7KxZbsXhw6U7AwbkepeLZrTLypGgdG+eo
         fYM1IU8OcNnn3OuFzTofXUvOYuuQwKDMV3kvE2zGOfGzLcAYmdDEJE93rLqxXOtMEgZT
         GsAeRVDu0snKnXc/+Gjblnu35An+10pdw+e3E3AKNQTCrMUhirw8fz705dONQOV10pzj
         rL/iKVg23R7xFbpWYbyXTaHmtyYfuBqr4w60q1UfMpz96F0mMTAO+KPKBfKkuW6koiad
         7REg==
X-Gm-Message-State: AOAM530QVf+K55ej+KepizYjuw0SWOcUj4GHc04Uylz5fuWwozaOGKkw
        ZmNc0trsTR9pSxxj/0eEFKY=
X-Google-Smtp-Source: ABdhPJyW1eDEFhVfAOqFJNRYoHN57Sm3G9G7wkISkUI6SHKKthIbZ+qgIqWwgEUbQMr8jcgCOhuOWw==
X-Received: by 2002:a7b:cb4f:: with SMTP id v15mr5861743wmj.162.1613058556674;
        Thu, 11 Feb 2021 07:49:16 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id r124sm10952016wmr.16.2021.02.11.07.49.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Feb 2021 07:49:16 -0800 (PST)
Subject: Re: expm1(3p): Mathematical error in given example
To:     xenoantares@gmx.net
Cc:     linux-man@vger.kernel.org, Walter Harms <wharms@bfs.de>,
        mtk.manpages@gmail.com
References: <1169008777.20210211105918@gmx.net>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <2c78f3a8-170a-d7dd-929e-e950d5920dd9@gmail.com>
Date:   Thu, 11 Feb 2021 16:49:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <1169008777.20210211105918@gmx.net>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi XA,

On 2/11/21 10:59 AM, xenoantares@gmx.net wrote:
>   Hi there!
> 
> In the APPLICATION USAGE section of expm1(3p)[1] the given example is wrong:
> 
> ===8<=== Snip =========================================
> 
> [..] calculations of ((1+x)n-1)/x, namely:
> 
>            expm1(n * log1p(x))/x
> 
> ======== Snap ====================================>8===
> 
> Actually, both expressions are not equal, rather
> 
>  expm1(n * log1p(x))/x = ((1+x)**n - 1)/x
> 
> (with a fictional ** as power infix-operator) would be.
> 
> 
>   Best regards
>           -- XA
> 
> ____
> [1] As of version to be found at
>     https://man7.org/linux/man-pages/man3/expm1.3p.html
> --
> XenoAntares
> 

We don't maintain the source of the POSIX manual pages.  You could file
a bug to the Austin Group.  I checked that in expm1(3) that doesn't happen.

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
