Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F424307F68
	for <lists+linux-man@lfdr.de>; Thu, 28 Jan 2021 21:21:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231215AbhA1URm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 28 Jan 2021 15:17:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231201AbhA1UR3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 28 Jan 2021 15:17:29 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F160CC061573
        for <linux-man@vger.kernel.org>; Thu, 28 Jan 2021 12:16:48 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id e15so5562093wme.0
        for <linux-man@vger.kernel.org>; Thu, 28 Jan 2021 12:16:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=q5Upubo8gLFCg0mEQa/R7VAYdiuRJArbBfhYYwlo4ok=;
        b=AwsdAINnbKkkwbbc4EW+7an9SkQpoXnPfcwRD2mPhb3oa7UZuBDwPaYKu6DSs1aFIa
         vg9SaEtwvZubOaPpqpGi+HqMtGkslibXcPupnKD0Wwtk4M8o/j1y8gkQNMZ9Uo82Afzv
         5y4LR0P+ImFmbQqwEuTRHzvnH5/blZX1lFgf880RWF5GqrUGk/INe35ZKiAcdaD1HSC/
         OzYPWoTkwVYIw82g8bEgrO5+fw4oiDgFaLmqptGQIlHrhjSXdraUG+4o5kFhn6VqLzNg
         gIoIxbGHNEK9ZZUmtpCl1gr0odRHZNKqnA8C2m3LpVOhZYg1RllLr0mEOtiO9O2EQEP2
         gVog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=q5Upubo8gLFCg0mEQa/R7VAYdiuRJArbBfhYYwlo4ok=;
        b=d+hZHtA5A+Q5ZJbHv/Dpik4yCRRcypqa3vDTquQ2BBUpqw1GdiRCIMa4lJDD5u01sO
         rww3faHIW58/y1qb61OZdhKgeA16/7tz6oSuNS0Lg4RNn4sPHcVuKfnbYF6aT8ZiND1F
         y8auG3hY4oDO/UdpceRZqGDusVuzT8aaYPkAr4SLIa1JcY3O/+UsRhV3jpd/Ho+dv9bH
         Wq5XvCqipAE/11COI4D8umnZsqoxTalnT0PzxHxwL8g0MCam6GlE/24vnGK9dDdxhrA+
         jgmb/40aOmPL/vVwA56L8fLCTRsCh1jBdLRSFEfg0K8uS5wRs+euscAr7x+Hz7lI7JlC
         a0zg==
X-Gm-Message-State: AOAM53037IG9RSrEaDriPWnELvLxAh3/rkQEnKLsYbPn2HeFWgronnwg
        l+r5XoP8RUfJ2OJI6GTT96C30/KbFPA=
X-Google-Smtp-Source: ABdhPJxeqF4vdx/1wDWhJOHhKIbn4vFf5IfCR444k/qbx3glBrmU4PdJ/25xBtm+PEUQQ/1p9mNfjA==
X-Received: by 2002:a1c:4986:: with SMTP id w128mr821547wma.89.1611865007519;
        Thu, 28 Jan 2021 12:16:47 -0800 (PST)
Received: from ?IPv6:2a02:2455:e0:e000:3005:efab:c884:ced0? ([2a02:2455:e0:e000:3005:efab:c884:ced0])
        by smtp.gmail.com with ESMTPSA id c20sm6700850wmb.38.2021.01.28.12.16.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jan 2021 12:16:46 -0800 (PST)
Cc:     mtk.manpages@gmail.com, pali@kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] netdevice.7: Minor fixes to Pali's patch
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210128152430.314458-1-alx.manpages@gmail.com>
 <20210128152430.314458-2-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2263f2ae-6984-bc6d-d14a-285078aacbe3@gmail.com>
Date:   Thu, 28 Jan 2021 21:16:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210128152430.314458-2-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 1/28/21 4:24 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man7/netdevice.7 | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/man7/netdevice.7 b/man7/netdevice.7
> index bdc2d1922..4acf05c10 100644
> --- a/man7/netdevice.7
> +++ b/man7/netdevice.7
> @@ -390,12 +390,12 @@ flag set can be found via
>  .IR /proc/net/dev .
>  .PP
>  .B AF_INET6
> -IPv6 addresses can be read from
> +IPv6 addresses can be read in
>  .I /proc/net/if_inet6
> -file or via
> +or via

I made a different fix. "read from" is a little better than
"read in", but it needs to be either "read from the ... file"
or "read from ...". I chose the latter.

Thanks,

Michael


>  .BR rtnetlink (7).
>  Adding a new or deleting an existing IPv6 address can be done via
> -.BR SIOCSIFADDR " / " SIOCDIFADDR
> +.BR SIOCSIFADDR / SIOCDIFADDR
>  or via
>  .BR rtnetlink (7).
>  Retrieving or changing destination IPv6 addresses of a point-to-point
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
