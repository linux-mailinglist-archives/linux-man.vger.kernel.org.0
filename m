Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 68D6E40CD6A
	for <lists+linux-man@lfdr.de>; Wed, 15 Sep 2021 21:49:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231652AbhIOTvR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Sep 2021 15:51:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229732AbhIOTvR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Sep 2021 15:51:17 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C248DC061574
        for <linux-man@vger.kernel.org>; Wed, 15 Sep 2021 12:49:57 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 70so174593wme.5
        for <linux-man@vger.kernel.org>; Wed, 15 Sep 2021 12:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+PLOoqQr7OGbZBPBpylImc273vd9GiLrE00szh28tTY=;
        b=LrMjG9UC3ZCUn3mdcbGQcakScwNGemIgAdVTq0EXy8P39m2liqk9KRDv+f2WPgw0W9
         XjQGibpflNEfrPFBAdD+FVjJ/zfjKaUPQJmLm5IdFeqoD4RSFPrMFwzNgeZs8BUlP2uu
         7PLmzug/R6ZkRBqOMUVpoa9RzEHVJM5tMhORotT4YyOFbsr2pH3Ei/oXiIfEdtpk8Scb
         kO2JZcXFV2K1h/8NeHUKfDX/CxAkpq/Lj4yhGz7VLdp8U59DYsB3ooMBEGDuJBmujF9U
         nAyxdFGMh4cenQz00tLcehbXZ2wyUbI+W5rQHmpavYs+KwJLQ0cr3ioAZ7QgaV4vU1fC
         mwmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+PLOoqQr7OGbZBPBpylImc273vd9GiLrE00szh28tTY=;
        b=VQQugv8ySiiztxqi11WHI0M6lSB80T1WlQzM7nt1Wt6fy5Tvkj9DUC+0cF3bvezknT
         oEbYh5eJ00VM4xSwwnyQ1YnpSgN3/VCSpFd5M9tdf89lVdijSqGJCVS54boMGo/ehbzz
         QC21PSI659o62iV1/IF65YHuHQMdiFvaAWSLggdNIvjnbQX72pWj9J8qi0m8B6gF5QOl
         kLgt3okF2h6UC0w95BNK+oYvwWTRdCQEHri1EbCT2onq64BV4vd7D8sLZPbEr7J2KxsX
         r1/LWslKccfO8vqxqWAd+5qUFNOuE09kQh/ABeLGok8FFlTn6sUKIxpiHQGnO5bdnKYb
         DuEw==
X-Gm-Message-State: AOAM530oYE4hDt+GeI3bbz6efm0wVYp5Jnzf1ezPGPZVA5+3NK5+dV+p
        nloRUQIJfRba8q9kgJkm1wU=
X-Google-Smtp-Source: ABdhPJy2A6oO/F29zkzsa/E9UU5BPsC1wSBApsnqY1rlBNVfPwbp4gJzJkNORgPv90IGV9Nl9tIQgw==
X-Received: by 2002:a1c:1cc:: with SMTP id 195mr6324748wmb.188.1631735396371;
        Wed, 15 Sep 2021 12:49:56 -0700 (PDT)
Received: from [10.8.0.26] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id a3sm890786wrt.28.2021.09.15.12.49.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Sep 2021 12:49:56 -0700 (PDT)
Subject: Re: [PATCH v2 2/5] alloca.3: clarify origins in CONFORMING TO
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
 <a14e365450f9a28840dc4f2ae93ddc1f135294b8.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <98968f7d-1de1-64ac-4e36-2fd6231f5197@gmail.com>
Date:   Wed, 15 Sep 2021 21:49:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <a14e365450f9a28840dc4f2ae93ddc1f135294b8.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/14/21 2:41 PM, наб wrote:
> alloca() is supported by PWB/UNIX[1] (V6) and UNIX/32V[2] (V7),
> for the PDP-11 and VAX, respectively; the former trickles into
> UNIX System III[3], and the latter into 3BSD[4] and later[5]
> 
> 1: https://ftp.okass.net/pub/mirror/minnie.tuhs.org/Distributions/USDL/spencer_pwb.tar.gz
>     sys/source/s4/util/alloca.s
> 2: https://ftp.okass.net/pub/mirror/minnie.tuhs.org/Distributions/USDL/32V/32v_usr.tar.gz
>     usr/src/libc/sys/alloca.s
> 3: https://vetusware.com/download/UNIX%20System%20III%20Source%20Code%20SYSIII/?id=11576
> 4: https://ftp.okass.net/pub/mirror/minnie.tuhs.org/Distributions/UCB/
> 5: https://archive.org/details/The_CSRG_Archives_CD-ROM_3_August_1998_Marshall_Kirk_McKusick
> 
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>

наб, patch applied!

Cheers,

Alex

> ---
>   man3/alloca.3 | 5 +----
>   1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/man3/alloca.3 b/man3/alloca.3
> index 5bceeabe1..71348e609 100644
> --- a/man3/alloca.3
> +++ b/man3/alloca.3
> @@ -84,11 +84,8 @@ T}	Thread safety	MT-Safe
>   .SH CONFORMING TO
>   This function is not in POSIX.1.
>   .PP
> -There is evidence that the
>   .BR alloca ()
> -function appeared in 32V, PWB, PWB.2, 3BSD, and 4BSD.
> -There is a man page for it in 4.3BSD.
> -Linux uses the GNU version.
> +originates from PWB and 32V, and appears in all their derivatives.
>   .SH NOTES
>   The
>   .BR alloca ()
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
