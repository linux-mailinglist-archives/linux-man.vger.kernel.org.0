Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C03327073B
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 22:43:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726157AbgIRUnO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 16:43:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726154AbgIRUnO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 16:43:14 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CA7DC0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 13:43:14 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id k18so6815725wmj.5
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 13:43:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=VvR69jl4qBEvJ9KRdmvm1Z3kfaJHImlpqHIqNjCqq0w=;
        b=oBzxX22QlsB0DZP7i7Bc3EQs8ympfAu7hWUj2ec8v1csNSItVuR5AV8MnGAbr6E8Zd
         7+KGpJZoJxL8oGTy1KkuWpkucEfd6MLKAe2EKxSznRuuWl9HMTQ7532Hr9IWG0YK3kLU
         2eAqXv3FwoiMveThsEA1wFyV6f9CvHc6nbKFkqPb9kexTkV4zqNXojbXtbTVT5NCF41p
         Rw3B6twg6erRSBpwkw2G0ug2DEDbf7KmiPc069DBh4Toc1wZMIO1ZFTSuxsTE4lNOc9N
         fozuu0OFgJT3jHuVC/ZKdmxH/gO9fGMsXswOpgZZh02KfYX0H+M2lhVqT079nRElJk5B
         MLIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=VvR69jl4qBEvJ9KRdmvm1Z3kfaJHImlpqHIqNjCqq0w=;
        b=o4FTzbOCV1e7Zd2CA3XzgeUakpcnUBN/VmthHatPE6p1hdpT1R2Jkm+bmqxyyw4XDf
         jwdj/aRcnMO+s6Szb7enTFJZy4OC1XaDaIn7bSt5rYoqp1xwXhAJRYRVSLQWkk87/kdR
         eRq4mUFjCarvR0ptwhdvFriz/aEJhVi/7b98KVv1w4NWDskNY4XQJD1UUOg/ayy1rY9M
         mvArT4KvX9byrrXopuiqNkfHPyabraTx/A3jYtG2KTv7I7jUvUQLaDMo/vhxUInyfJB8
         4IfKkfQfrotUuv0sKSchtvP8nLI1QoQnb3DGB+/Pdn+gTW3aw+MTKcBeTS75xudlWuSA
         Fuug==
X-Gm-Message-State: AOAM532ImgBzttx+NFrcfTq5+UYF2/1KiniAOeS+LYpF5ShrNdqlQ+10
        EZ1oyPlqRnDOK4a3XqPNu9x6mRLR7Uo=
X-Google-Smtp-Source: ABdhPJxnrLDd43O7fTJ+4/LUagxWG+lSl6JLIzd06Mss/xoDJHeflEEhPSaqViIUt6jgy9vRw3E1Ew==
X-Received: by 2002:a1c:f20b:: with SMTP id s11mr17924372wmc.144.1600461792953;
        Fri, 18 Sep 2020 13:43:12 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id 189sm6842841wmb.3.2020.09.18.13.43.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:43:12 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 2/3] system_data_types.7: Document regmatch_t
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200918132943.55424-1-colomar.6.4.3@gmail.com>
 <20200918132943.55424-3-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d0db5fc9-25f1-8be0-1f5b-fb0c94cf2dd7@gmail.com>
Date:   Fri, 18 Sep 2020 22:43:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200918132943.55424-3-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/18/20 3:29 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com> ---
>  man7/system_data_types.7 | 23 +++++++++++++++++++++--
>  1 file changed, 21 insertions(+), 2 deletions(-)


Thanks, Alex. Patch applied.

Cheers,

Michael


> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 2ccbfe817..d3dee2747 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -82,6 +82,25 @@ and
>  .I ssize_t
>  types in this page.
>  .TP
> +.I regmatch_t
> +.IP
> +Include:
> +.IR <regex.h> .
> +.IP
> +.EX
> +typedef struct {
> +    regoff_t    rm_so; /* Byte offset from start of string
> +                        * to start of substring */
> +    regoff_t    rm_eo; /* Byte offset from start of string of the
> +                        * first character after the end of substring */
> +} regmatch_t;
> +.EE
> +.IP
> +Conforming to: POSIX.1-2001 and later.
> +.IP
> +See also:
> +.BR regexec (3)
> +.TP
>  .I regoff_t
>  .IP
>  Include:
> @@ -104,8 +123,8 @@ type or a
>  type.
>  .IP
>  See also the
> -.\".I regmatch_t	FIXME
> -.\"structure and the
> +.I regmatch_t
> +structure and the
>  .I ptrdiff_t
>  and
>  .I ssize_t
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
