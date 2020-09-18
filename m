Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2AB472707EC
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 23:14:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726241AbgIRVON (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 17:14:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726201AbgIRVON (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 17:14:13 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 596EFC0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 14:14:13 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id b79so6867309wmb.4
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 14:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=08QTdjWPCEAHOx3U7gDE8ob45cjTvFJvaQdtE7c3Mk8=;
        b=s4PTX94Ow6yjYapAWAENMCc6IQgBu0t0HxOHYP9j/5fVaYm2ROXNE4Z+BjHBOuRrm3
         ZDfL9Mql7d+bpVz4FAy3bzXtu7ACPZ+mazy2iKdAK/ZuCYeOOsZvVgRVIFUw/g6n6zIz
         MqGmmv3no5v1uVcn03EiUaxp0gI3Ggb1/p2T+POb7GpiNWUFbMkhIeGtf0R4mL5Mw+4w
         r5lPguZcy6IxGY75Z4kgXbPhxb9onL5sRkWVlSXJ6NWh0PW0gIeX3p7P5tlShzhv4HCa
         hDy0N4DzUWnkQQzSuCmrEFjiVIrhXvjzRH+JPDmca57LvbnE2SCl5cofPHwGB9eDCVaI
         32Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=08QTdjWPCEAHOx3U7gDE8ob45cjTvFJvaQdtE7c3Mk8=;
        b=hmI+l5rsIpoIvAble5MEAPx9fK2NEyALyRquFCYFJU2QgxnsKscEXxpkryCbE3/RJL
         Q78hRB2L+gS7kyxeIJpLTFN5uvw+Mm13cuOS5peLMiPYNrslWAloWIBu2EN9mkuv6V6W
         A0RyiO0WHczdF07ekIgKekNvUweiZ1wGdFf23TNngTgr4NUt+19S8ZyP2EbxeY682ghL
         rQLEVbiKPb1k5bw2pT79upFCxQe0yqzZvFjdJfr/V/DII9rXvDTgl9F6bQxeGHSiXYoq
         pihnvMkVopyGZT8M8gBiVyLCiIo5/ZeQ3zD93P4kij3H7B45y9hWNn5/NWylL5VJKIaB
         GPVw==
X-Gm-Message-State: AOAM532tt+rVZpKqq1M3TpGgHUuQHzat6elfNFK8uz+sIgnRQPV1wwe1
        vip2UJCuu8RhFqHy/KhKx5/eN6IBzIs=
X-Google-Smtp-Source: ABdhPJyrzsMzLuZTS0e7aZKSlN82IWRLMG7le3yLaKhVbS7G8c8xiPkCcpnHJ/nB9QNfZeIsTy0ubg==
X-Received: by 2002:a7b:cd06:: with SMTP id f6mr18201790wmj.66.1600463652062;
        Fri, 18 Sep 2020 14:14:12 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id 185sm7949141wma.18.2020.09.18.14.14.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 14:14:11 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 5/9] system_data_types.7: srcfix: cosmetic: Visually
 sparate types
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200918170442.94920-1-colomar.6.4.3@gmail.com>
 <20200918170442.94920-6-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <71a5a790-3c19-2039-346b-a66056bb1449@gmail.com>
Date:   Fri, 18 Sep 2020 23:14:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200918170442.94920-6-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/18/20 7:04 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>


Thanks, Alex. Good idea. Patch applied.

Cheers,

Michael


> ---
>  man7/system_data_types.7 | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 53c289e31..8c0c78954 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -61,6 +61,7 @@ system_data_types \- overview of system data types
>  .\"		* Notes (optional)
>  .\"
>  .\"		* See also
> +.\"------------------------------------- ptrdiff_t --------------------/
>  .TP
>  .I ptrdiff_t
>  .IP
> @@ -81,6 +82,7 @@ See also the
>  and
>  .I ssize_t
>  types in this page.
> +.\"------------------------------------- regmatch_t -------------------/
>  .TP
>  .I regmatch_t
>  .IP
> @@ -103,6 +105,7 @@ Conforming to: POSIX.1-2001 and later.
>  .IP
>  See also:
>  .BR regexec (3)
> +.\"------------------------------------- regoff_t ---------------------/
>  .TP
>  .I regoff_t
>  .IP
> @@ -132,6 +135,7 @@ structure and the
>  and
>  .I ssize_t
>  types in this page.
> +.\"------------------------------------- sigevent ---------------------/
>  .TP
>  .I sigevent
>  .IP
> @@ -177,6 +181,7 @@ See also:
>  .\"See also the
>  .\".I aiocb	FIXME
>  .\"structure in this page.
> +.\"------------------------------------- sigval -----------------------/
>  .TP
>  .I sigval
>  .IP
> @@ -206,6 +211,7 @@ structure
>  .\".I siginfo_t	FIXME
>  .\"type
>  in this page.
> +.\"------------------------------------- size_t -----------------------/
>  .TP
>  .I size_t
>  .IP
> @@ -301,6 +307,7 @@ See also the
>  and
>  .I ssize_t
>  types in this page.
> +.\"------------------------------------- ssize_t ----------------------/
>  .TP
>  .I ssize_t
>  .IP
> @@ -343,6 +350,7 @@ See also the
>  and
>  .I size_t
>  types in this page.
> +.\"------------------------------------- suseconds_t ------------------/
>  .TP
>  .I suseconds_t
>  .IP
> @@ -362,6 +370,7 @@ Conforming to: POSIX.1-2001 and later.
>  See also the
>  .I timeval
>  structure in this page.
> +.\"------------------------------------- time_t -----------------------/
>  .TP
>  .I time_t
>  .IP
> @@ -402,6 +411,7 @@ See also:
>  .BR time (2),
>  .BR ctime (3),
>  .BR difftime (3)
> +.\"------------------------------------- timer_t ----------------------/
>  .TP
>  .I timer_t
>  .IP
> @@ -422,6 +432,7 @@ See also:
>  .BR timer_delete (2),
>  .BR timer_getoverrun (2),
>  .BR timer_settime (2)
> +.\"------------------------------------- timespec ---------------------/
>  .TP
>  .I timespec
>  .IP
> @@ -457,6 +468,7 @@ See also:
>  .BR nanosleep (2),
>  .BR timerfd_gettime (2),
>  .BR timer_gettime (2)
> +.\"------------------------------------- timeval ----------------------/
>  .TP
>  .I timeval
>  .IP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
