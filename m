Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DB7FE2802BB
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 17:27:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732573AbgJAP1E (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 11:27:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730534AbgJAP1E (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 11:27:04 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6447C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 08:27:02 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id k18so3575046wmj.5
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 08:27:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=UZA4P/vWJZIyuaHU2mQy7+/MYFKglhwGsivmO2a5hyc=;
        b=U/OxxO9O6TqqtYG4TQ25mdt4FAbfzJreREl7MgWytIoFtcJtFTmXyyr0DhRMOzPKsD
         aurFnE2PSnnGfUGEiIpTnhp7UHK6/IMIpqkL0IRROYH8Gw86HmEisukCt9/lCC/kM+pV
         Xa4wEjutlp2UWoKzxLZEO9hKoMDyyMgA+NrZC2v17RiceadpIQRfiuxV0gOyXQpWHIz0
         4cX0tPF2u64NdKoffSRdVZ2f+EIoXMHymDaDqjQmtOtncM0uiFXpH45nYw2PUtWtDEz2
         T+Me5Dw9IUovE0OI2tqmCD2RZ33+Uu713DQaVOnXOwhaGP2WKJWiRKIk15qwIVfiUHAa
         YWiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UZA4P/vWJZIyuaHU2mQy7+/MYFKglhwGsivmO2a5hyc=;
        b=bl/8GXc2zYVNh9jy9/lBN0OfVjMkRUr+5XtNsueJzTO3dujfvQpJ4ArAIZeG6SHNtz
         aOgLQ2Zn/BB4tSZlyl24wS9YQubijoQYMmFCVCiLMZXCF6BCNqVyYQTp8hPt1YqnjyXC
         ckElt0nkUbqlKZNhY1fRXib+sNov02GfMIJKt3OAot/wVBkVAlJIw1myMEj0NhuI/7SE
         INMy9IbjxUnAgXNQT9IuyFvhlVZxPLGw5/atHoz2u/Qv7PqbN+ys8MTXQdsecAfEtZAK
         spxtel87H68WGN85b9v3KxKDzIlqb76gzC56SYQDH15c7AID1llECKuBIVZ3WKusIFue
         QzCQ==
X-Gm-Message-State: AOAM531F+PM1TUVQFk5N68iXZrw7dbVOnnpJ7W5A2Yzh+fGQUmNFONvG
        djkGuP0aeuMGCvxPgMFUmBo=
X-Google-Smtp-Source: ABdhPJwGY0V2xah7adb1Dc2Tac3ZZiahjcsoj0KnnTk6KFiJREAh0fZcK7lzawB+p2rMfYJBleWohA==
X-Received: by 2002:a1c:2903:: with SMTP id p3mr580668wmp.170.1601566020958;
        Thu, 01 Oct 2020 08:27:00 -0700 (PDT)
Received: from [192.168.178.63] (dynamic-077-009-049-048.77.9.pool.telefonica.de. [77.9.49.48])
        by smtp.gmail.com with ESMTPSA id v204sm482165wmg.20.2020.10.01.08.26.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 08:27:00 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v2 4/4] uint_least8_t.3, uint_least16_t.3,
 uint_least32_t.3, uint_least64_t.3, uint_leastN_t.3: New links to
 system_data_types(7)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201001143535.98990-1-colomar.6.4.3@gmail.com>
 <20201001143535.98990-5-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4aceca9b-a721-5d77-e67a-eb74e8e26a4c@gmail.com>
Date:   Thu, 1 Oct 2020 17:26:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201001143535.98990-5-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thanks, Alex. Applied.

On 10/1/20 4:35 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/uint_least16_t.3 | 1 +
>  man3/uint_least32_t.3 | 1 +
>  man3/uint_least64_t.3 | 1 +
>  man3/uint_least8_t.3  | 1 +
>  man3/uint_leastN_t.3  | 1 +
>  5 files changed, 5 insertions(+)
>  create mode 100644 man3/uint_least16_t.3
>  create mode 100644 man3/uint_least32_t.3
>  create mode 100644 man3/uint_least64_t.3
>  create mode 100644 man3/uint_least8_t.3
>  create mode 100644 man3/uint_leastN_t.3
> 
> diff --git a/man3/uint_least16_t.3 b/man3/uint_least16_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/uint_least16_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> diff --git a/man3/uint_least32_t.3 b/man3/uint_least32_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/uint_least32_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> diff --git a/man3/uint_least64_t.3 b/man3/uint_least64_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/uint_least64_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> diff --git a/man3/uint_least8_t.3 b/man3/uint_least8_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/uint_least8_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> diff --git a/man3/uint_leastN_t.3 b/man3/uint_leastN_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/uint_leastN_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
