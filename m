Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C5C2046AA77
	for <lists+linux-man@lfdr.de>; Mon,  6 Dec 2021 22:30:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351729AbhLFVeG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Dec 2021 16:34:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351736AbhLFVd5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Dec 2021 16:33:57 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6F80C061746
        for <linux-man@vger.kernel.org>; Mon,  6 Dec 2021 13:30:26 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id d24so25321527wra.0
        for <linux-man@vger.kernel.org>; Mon, 06 Dec 2021 13:30:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=5vNh4i9C/TNbBiPsp2Xhguf+tR4I9znR/CM2Qn2ZiRk=;
        b=ptkdS5bwAYnNXaSu4+8mDMbXgSSHfxxuBiHlKzrLbhj4b2dW7xzQa9hz1OwW5ND+iZ
         JF/u6Tj0anhEaffW/sehvR+DDvfMpzik6yu4ICPQ5/5vvh5rJzHCnBa9Im2YNh9xyJFe
         Xi++nL2QG2RsjDkuBRCu8/vyRxHrvaXnZFFhSzzkUvIBwIIH7ZHub9827rqHcBhfkEUD
         ZCZ7kIuzsH+UQN/0bPrz1oCWP6ss6gq+UBDLZeVzl2RMZYUAYsqR9u5WHp8/IavY5xMh
         pNjyOds4GQyZJSoLdNNvKoo9RAjqMNGy3Mi1U+sRE2oE/Ikm6yocp14Wm19jyEHqjbmz
         X7rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=5vNh4i9C/TNbBiPsp2Xhguf+tR4I9znR/CM2Qn2ZiRk=;
        b=2QyZ3Z12PWVgejaOkE7+xX5YQsNVsSLDmcx5N/h19hhVsXsH57/LT19swXcyMOftWG
         t1SWQ6XTgH1XWTccojpRAdaG0mJA2eFETSW8hWhVX9fPWhQ8PpxhnhlJq8sniq9sM+tj
         Choq5Er5i6BM4Mbzq0KZDv2tXi01box4aOwSD2aishMbtch0kQopyMjnhaqGlztI5tGi
         R0oVgitPpg+ijfI/94aQHCla3Wnj4Nvhw+CdhC091w8rM/xW5sICLxJe5RrFOUJNJrSK
         pysReGQlmKob1xxSl+bfHZKLAzP8MZVZIDep9p2VUvn3Te+94gkcNBK13DjxG+nGIUks
         wH7Q==
X-Gm-Message-State: AOAM5304HdvMf66oQs4P5RRVrLDVlPKQEal0y+pJkc935Pzv++bH5n5Y
        CYswIu0cUzeY+LqJ7/cHK6djPHNXUA0=
X-Google-Smtp-Source: ABdhPJwAWyowtrn1tB54lZdJQKHZY9FjlTNuiDfLfviS2YBruABuOtQTMW11B+Fru6xAWvL3d7jZHw==
X-Received: by 2002:adf:d22a:: with SMTP id k10mr47698300wrh.80.1638826225425;
        Mon, 06 Dec 2021 13:30:25 -0800 (PST)
Received: from [10.8.0.6] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id d15sm16511388wri.50.2021.12.06.13.30.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Dec 2021 13:30:25 -0800 (PST)
Message-ID: <a6f79435-1d9c-2c12-168b-035164a3b938@gmail.com>
Date:   Mon, 6 Dec 2021 22:30:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH v2 3/4] system_data_types.7: correct struct
 timespec::tv_nsec type for x32
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
References: <8d80e54b-6881-ee5e-0d14-305b510a28b1@gmail.com>
 <cover.1638821152.git.nabijaczleweli@nabijaczleweli.xyz>
 <8e968437b301aa7487e84cce21822b56072e9217.1638821152.git.nabijaczleweli@nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <8e968437b301aa7487e84cce21822b56072e9217.1638821152.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi наб,

On 12/6/21 21:12, наб wrote:
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 1e6a3f74c..80679b180 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -1544,7 +1544,11 @@ or
>   .EX
>   struct timespec {
>       time_t  tv_sec;  /* Seconds */
> +#if !(__x86_64__ && __ILP32__ /* == x32 */)
>       long    tv_nsec; /* Nanoseconds [0 .. 999999999] */
> +#else
> +    long long tv_nsec;
> +#endif

I prefer showing there the (simple) POSIX definition, and then in Notes 
add a message that glibc uses a different type on most systems. 
Otherwise, we're loosing the information that non-glibc systems use long.

How about something like the following?:

Notes: glibc uses long long instead of long for tv_nsec in some 
architectures:

	#if !(__x86_64__ && __ILP32__ /* == x32 */)
		long      tv_nsec;
	#else
		long long tv_nsec;
	#endif


BTW, I don't understand why long long, if long can perfectly represent 0 
.. 999999999.  If you know the rationale for such extension, it would be 
a great addition to Notes too.

Thanks!

Alex

>   };
>   .EE
>   .PP
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
