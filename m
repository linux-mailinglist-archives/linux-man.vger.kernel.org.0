Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 289B7270713
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 22:30:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726205AbgIRUaD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 16:30:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726200AbgIRUaD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 16:30:03 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5D4EC0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 13:30:02 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id m6so6859628wrn.0
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 13:30:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=zw65jMXe14A/8utZhY2Y5VC7BoNGw/niy5sBVlEGmwE=;
        b=UFvXv3B/uQXlWE1u1fM5OqyDChPHMG/ep+iPbAsuHhpS6diyOTIC2jYWDy5M57JD1o
         bD1VUGjv1o5b+wT8NXmmtwl4VFxOxNNc3CN3LXt9V6nMtX9ajb26ZMkp0Ewhl7Gy///U
         B6YAFY6g2d1Req1rV+NTu1Za1q/4vbX38E47iBbGL8id+5ioCNG0Lee/zbvf5xsgiq1W
         qYHvUMAUOe5vJ2ZQoym0N6efUnFX2qtFrK8YL3/uCu9UwtsE4qzaInirIptYJvsKH3nu
         S05o5PIqcNUJrJW80yBbekaMyCKXTJM8IKnSD65ni4tYtvySV4Upg4tOwVR0aS83C1v2
         451A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zw65jMXe14A/8utZhY2Y5VC7BoNGw/niy5sBVlEGmwE=;
        b=R0RZBsZyrzJPf49R8vtVhesSoCBzORFaDeBXheognzLq4YPRsf2n5jFwHMm4E32jXk
         TVYcpE5kJc09L+hU4WfYjsCjeOJ+FX/V47Ux7cSh6HJlHruxXu1Xq4dRF5hWF2ZuPH0j
         NHx5KDDA/OxMgor9iTEZA8/3yFcuDn3CILfYXECLeBCl3rAerw8vbz3DfKTBHLdGoXHg
         xNzOFCNyTDnOT/3syMYm0FBsaro/m0NnP2RR5eQ9VeQqZ1iWBRDOi+5ty6awT1gH8kFT
         d6iOI99/55nc1iWfu4yNV90OacnLQJICFqN10CWIRpPKXG8/4ggZ0HVYGj2jn9RcqahV
         kv3g==
X-Gm-Message-State: AOAM530682A2Y83qXb6wSHOza14TNINWbQoUrDtuCTEzzhW0hNRMcGem
        tK+ikjvMDc56nPudW6L48po=
X-Google-Smtp-Source: ABdhPJzqKjUAzj85g2pLh15HpXZ0GEtNI7APLW3hxVew2SEQjVGhPVcDru9RAniyqodhxEBVucvOFw==
X-Received: by 2002:a05:6000:11cd:: with SMTP id i13mr38032373wrx.140.1600461001564;
        Fri, 18 Sep 2020 13:30:01 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id i16sm6953960wrq.73.2020.09.18.13.30.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:30:00 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 2/4] system_data_types.7: Document regoff_t
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200918124554.46308-1-colomar.6.4.3@gmail.com>
 <20200918124554.46308-3-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9f933991-35d4-e1f1-41a2-475df1e05545@gmail.com>
Date:   Fri, 18 Sep 2020 22:30:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200918124554.46308-3-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/18/20 2:45 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man7/system_data_types.7 | 30 +++++++++++++++++++++++++++++-
>  1 file changed, 29 insertions(+), 1 deletion(-)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 8969ee966..d96703b1d 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -77,12 +77,40 @@ capable of storing values in the range
>  Conforming to: C99 and later; POSIX.1-2001 and later.
>  .IP
>  See also the
> -.\".I regoff_t ,	FIXME: uncomment when regoff_t is documented.
>  .I size_t
>  and
>  .I ssize_t
>  types in this page.
>  .TP
> +.I regoff_t
> +.IP
> +Include:
> +.I <regex.h>.
> +.IP
> +According to POSIX, it shall be a signed integer type
> +capable of storing the largest value that can be stored in either a
> +.I ptrdiff_t
> +type or a
> +.I ssize_t
> +type.
> +.IP
> +Conforming to: POSIX.1-2001 and later.
> +.IP
> +Notes: Prior to POSIX.1-2008, the type was capable of storing
> +the largest value that can be stored in either an
> +.I off_t
> +type or a
> +.I ssize_t
> +type.
> +.IP
> +See also the
> +.\".I regmatch_t	FIXME
> +.\"structure and the
> +.I ptrdiff_t
> +and
> +.I ssize_t
> +types in this page.
> +.TP
>  .I sigval
>  .IP
>  Include:
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
