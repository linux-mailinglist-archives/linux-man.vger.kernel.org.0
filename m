Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C49C278546
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 12:39:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727428AbgIYKjJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 06:39:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726990AbgIYKjJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 06:39:09 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FFC3C0613CE
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 03:39:08 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id l15so1584032wmh.1
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 03:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=17pv8MAQfR+hdztjlEQG0Kvo5UCRp0h8VBnJasTsEa8=;
        b=r6T/UWFWKvE11B2rhp05eCNsYz071m8fLEnaOKTqpx4YuRY6nRwAM0BgSoBQnvGfq1
         iUW8ffSwBbuKpcgOODfJY/wmbgdGsUgK6WgRYaxAZfeOZhJFev8y41lYhNmj0VRZsZyx
         kGS9NWszVq9uAcO+HhW5m4ioDcLNroaUB3HEencTjILVlmgFwhdNPtF3VZbFl15Of/sF
         02cL5ZM02bAKb4iUPJCJuFwsmj8nEyP6uQyEVFHDxQK/jmpY/QRfWwdKb4C8xuiKZOQf
         /Zu1LsY65TsI6Eu4UInYFPJ0zk1SMMiso9YdTHaDNn61SAld23+Jwzy5S916N4QueiBD
         3/VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=17pv8MAQfR+hdztjlEQG0Kvo5UCRp0h8VBnJasTsEa8=;
        b=rgZSNaH1jgZ3e8ERj4zIclx3ikpVjPgI+kJn1RdOm+pRsVIlKhZSVlQ1kgh7WytyRA
         DL+NuZ2dgG5ZRCBwBCM0LKBZVs8292ja4O+m23gkUVQiZRMnaB8mqfx8M7wOogNb2nnZ
         OHgLd7OYwPdI8lvfLl8kZ7Uj0nkxeRTZVYhOSy5r2DFl53Tbtc0Syl34/UhzTyE/gyb7
         0CcasAgTkQK876kqCTloldciJyYkSf4rQgxQ2ojPFLstKmqHvu2HnsD1RxPxj4VFsat8
         XaVQsClDqx7giFRdd/TM0b5dM7KV7u7PangTenVlwfe8sEpSoIlwaWERyuQA3N/obdwe
         E17Q==
X-Gm-Message-State: AOAM530pRwkmbG+UBN7I0atrgwLuGeR4S4XJsye1Q1cEfRKy/Efw47ft
        URFcTQomYCF+lzh1lGDe9kmWZBN3KwI=
X-Google-Smtp-Source: ABdhPJzdRgWqv4AhM2EBxgg/EovY59JEcFpzjYselTuLJpiar/h+C9w0nM7TzJyGf0EmahjN7j7NXw==
X-Received: by 2002:a1c:6607:: with SMTP id a7mr2415998wmc.142.1601030346631;
        Fri, 25 Sep 2020 03:39:06 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id m23sm2283364wmi.19.2020.09.25.03.39.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 03:39:06 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] system_data_types.7: srcfix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200925080330.184303-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c1fd242c-63a2-2714-4011-ea8d28ada05c@gmail.com>
Date:   Fri, 25 Sep 2020 12:39:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200925080330.184303-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/25/20 10:03 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man7/system_data_types.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 43e88942a..caca5bb3c 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -454,7 +454,7 @@ Used for a count of elements, and array indices.
>  It is the result of subtracting two pointers.
>  According to the C language standard, it shall be a signed integer type
>  capable of storing values in the range
> -.BR "" [ PTRDIFF_MIN ,
> +.RB [ PTRDIFF_MIN ,

Patch applied. I should have spotted that and told you earlier about
the right way...

Thanks,

Michael

>  .BR PTRDIFF_MAX ].
>  .IP
>  The length modifier for
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
