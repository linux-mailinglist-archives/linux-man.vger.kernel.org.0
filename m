Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 09F162802B9
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 17:26:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732563AbgJAP0v (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 11:26:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730534AbgJAP0v (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 11:26:51 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFF20C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 08:26:50 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id s12so6283899wrw.11
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 08:26:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=qGGCmOO9+WF9yYEP4+UIXNfiVgGq+puKhAGEaGIj+pc=;
        b=es66hWFWCIlMOafVNGCfREChmasnyPtyzf7Peb0x3LJV3EprReYc8J5uQIsL9lKIr3
         rc9gAXgVAkqOPGSjwvHa+gttgahMQ92jBBdTvDZws5uGlYMCGk5a0VeVBM+ircrYBU7I
         slxzHEIbB8V6VzHEQfe3vHffUmakBS+SGpegekGYHoBN3gmBmYK5d0JFIj3a83mfbsqq
         yDikzBn13dn9VKGmDDW0WI/RvLpvpDqlD/mvmL+pKIbpsAFf4R+9nHqTvmHYwz3eKd5k
         lJBPYcmVVconixWpVaesEBc7RciKGsn6uYaFmdzljX9Ji7/N5k/37LgKj48T2yywimsb
         +fqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=qGGCmOO9+WF9yYEP4+UIXNfiVgGq+puKhAGEaGIj+pc=;
        b=ChfbvkfunBzdXRjX3tkKB5XO6H2msScqE5Rf1cYqMdR3D7mvpgXEP4AtY+RVwr9f6p
         /awSnQk+6w3VXrSpgVIMjQkS9/bvib88Row1cYO6ECMWpwFhmMegr2vRZAwAb0C+M2ot
         wcJCoF54FfOzGUkInqjZVEuY75EB+/Vm9vEx27t9XBImd93GntWpxovyQDGKBEXsHwKq
         XOBemuGjXCUXuX1N6UUSpAPnF0Oixt2cAQr/n1QjDAifWwc/yGbqsAALp2IeTPDfga62
         oIjQFUftjD83tle8xnvzZoqge9UbyQpxgc2k+w/oYy/JvJwzLbCJuYc5OUTD90R6DMDg
         ScVA==
X-Gm-Message-State: AOAM530CjJYrzKds3XCvSBxFqW7gqKLZPpBA8Z6eb9SSIALyTOUxhBoR
        svelQ9p6Km/AlO1gRHyC54Y=
X-Google-Smtp-Source: ABdhPJz89Y7r1eheugWH1m1NKlc2A/T4isteiZo7B/gzZZEmJmfnfn7LEOTpLYrqTi+qk8gRQ1PhDw==
X-Received: by 2002:a5d:522d:: with SMTP id i13mr10268472wra.296.1601566009505;
        Thu, 01 Oct 2020 08:26:49 -0700 (PDT)
Received: from [192.168.178.63] (dynamic-077-009-049-048.77.9.pool.telefonica.de. [77.9.49.48])
        by smtp.gmail.com with ESMTPSA id f14sm10564742wrv.72.2020.10.01.08.26.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 08:26:48 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v2 2/4] int_least8_t.3, int_least16_t.3, int_least32_t.3,
 int_least64_t.3, int_leastN_t.3: New links to system_data_types(7)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201001143535.98990-1-colomar.6.4.3@gmail.com>
 <20201001143535.98990-3-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <292d988e-7661-da62-c9b1-35d54c4f15ad@gmail.com>
Date:   Thu, 1 Oct 2020 17:26:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201001143535.98990-3-colomar.6.4.3@gmail.com>
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
>  man3/int_least16_t.3 | 1 +
>  man3/int_least32_t.3 | 1 +
>  man3/int_least64_t.3 | 1 +
>  man3/int_least8_t.3  | 1 +
>  man3/int_leastN_t.3  | 1 +
>  5 files changed, 5 insertions(+)
>  create mode 100644 man3/int_least16_t.3
>  create mode 100644 man3/int_least32_t.3
>  create mode 100644 man3/int_least64_t.3
>  create mode 100644 man3/int_least8_t.3
>  create mode 100644 man3/int_leastN_t.3
> 
> diff --git a/man3/int_least16_t.3 b/man3/int_least16_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/int_least16_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> diff --git a/man3/int_least32_t.3 b/man3/int_least32_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/int_least32_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> diff --git a/man3/int_least64_t.3 b/man3/int_least64_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/int_least64_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> diff --git a/man3/int_least8_t.3 b/man3/int_least8_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/int_least8_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> diff --git a/man3/int_leastN_t.3 b/man3/int_leastN_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/int_leastN_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
