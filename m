Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A7DA02802AF
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 17:25:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731917AbgJAPZM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 11:25:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731885AbgJAPZM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 11:25:12 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC6B2C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 08:25:11 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id v12so3578135wmh.3
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 08:25:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/l4raE15I7seklUKqoEtRAWqAq8t3qiAzLlUeok2fYE=;
        b=X6+G0LAqqtDoH8GWe8aU2yjorcZHpml4ZMV65HS/3WpOwKXOzl+MrYXHf40peLSBcH
         XKxPn/Ep+gRLqgSfKBmdRnniwBNVIoAF5RMeyG3g7ioLBesCrz0iEKdubF7Rtavv//Ch
         +26K6E5W+ouZBx4Kv3+D0nqk7AuKhoxTbnojVduud7E+KlRIRPWipq6OCKJ4viH/QiNZ
         XxS4DdgNdmTe2Y9XkafKgexxtoSP0SizNAZpghKIsnDKAdCZ4Tz2998p+6hEs+jQHOL7
         CGYLjwErwqxvoFzl2IQ/wL/PuYqlt0LVhgOCsne0MiMxZtHlVteCYfJpjrNDcEm2G/xG
         6T4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/l4raE15I7seklUKqoEtRAWqAq8t3qiAzLlUeok2fYE=;
        b=Nkr4+brgE9rBAmSl74Y6wjktyqMJ+9ZMKR9CEBZL2ewRJ6iQaW1pEWINyOcAChCTT7
         YxiWEQtXmoxbJHD4AXT6apzZsUCZdx+3O6PvuzGNEBvVPOmywsSSh4He2sufiB1UVfCF
         bHAu/al9EYN6imhI7IFcwKKEBxlOr/em0ED9l2rOn4chOTqxT/wUvsPuxMky+h8/H7jb
         NM4VOCwuhGnGyABusClrYQVPOxJ8RxC59mS+W7EMTEuRhTCkpfsbRtrjqDXroM4fn9cI
         vV13mav/JkzUyKV1D4DMNgXVWSJ/8pRw2MgnHQkP/xaNYpjlwgryKR93BLPw3doF+fbY
         KiYg==
X-Gm-Message-State: AOAM53098cBHpkyfIDUBlpGIjq29TiPfAmME3ERh+2iK08TRPiJeXO1Z
        440yvhWhYpQgYDX1DXyVF1BEW9fGgB4=
X-Google-Smtp-Source: ABdhPJx2qe8Lu7QGH8clUFYc3LO2UUZxNxxeCdLgUhY8+Nw4rm2V/efmuHgJRWr2VMnpQMmR4T1YOw==
X-Received: by 2002:a7b:c843:: with SMTP id c3mr548960wml.67.1601565910614;
        Thu, 01 Oct 2020 08:25:10 -0700 (PDT)
Received: from [192.168.178.63] (dynamic-077-009-049-048.77.9.pool.telefonica.de. [77.9.49.48])
        by smtp.gmail.com with ESMTPSA id i14sm415914wml.24.2020.10.01.08.25.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 08:25:09 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v2 4/4] uint_fast8_t.3, uint_fast16_t.3, uint_fast32_t.3,
 uint_fast64_t.3, uint_fastN_t.3: New links to system_data_types(7)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201001143203.98803-1-colomar.6.4.3@gmail.com>
 <20201001143203.98803-5-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f1ffd65e-7c04-e0bf-678a-a28b18cc0f3d@gmail.com>
Date:   Thu, 1 Oct 2020 17:25:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201001143203.98803-5-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thanks, Alex. Applied.

On 10/1/20 4:32 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/uint_fast16_t.3 | 1 +
>  man3/uint_fast32_t.3 | 1 +
>  man3/uint_fast64_t.3 | 1 +
>  man3/uint_fast8_t.3  | 1 +
>  man3/uint_fastN_t.3  | 1 +
>  5 files changed, 5 insertions(+)
>  create mode 100644 man3/uint_fast16_t.3
>  create mode 100644 man3/uint_fast32_t.3
>  create mode 100644 man3/uint_fast64_t.3
>  create mode 100644 man3/uint_fast8_t.3
>  create mode 100644 man3/uint_fastN_t.3
> 
> diff --git a/man3/uint_fast16_t.3 b/man3/uint_fast16_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/uint_fast16_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> diff --git a/man3/uint_fast32_t.3 b/man3/uint_fast32_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/uint_fast32_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> diff --git a/man3/uint_fast64_t.3 b/man3/uint_fast64_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/uint_fast64_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> diff --git a/man3/uint_fast8_t.3 b/man3/uint_fast8_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/uint_fast8_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> diff --git a/man3/uint_fastN_t.3 b/man3/uint_fastN_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/uint_fastN_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
