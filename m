Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2FB0825EDDA
	for <lists+linux-man@lfdr.de>; Sun,  6 Sep 2020 14:52:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726931AbgIFMwt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 6 Sep 2020 08:52:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725803AbgIFMwr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 6 Sep 2020 08:52:47 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22594C061573
        for <linux-man@vger.kernel.org>; Sun,  6 Sep 2020 05:52:46 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id x23so785020wmi.3
        for <linux-man@vger.kernel.org>; Sun, 06 Sep 2020 05:52:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=X40ftQPGBDU5rKPEgT4rtKmBqIVGExabMhl9qD8s7ts=;
        b=jQoDomugKvBTUKmnMfYtHBKIgLrJpw2iTp5JtQqGFgTcUYHmHRSowa0PYaz+amlVbo
         5F04EwhTyXxRGjjqkcWhyiclIlv2bPXTJ3wHtCwTHV1Mo1RUGhqAVLd+GJCzFc+tHToF
         pFNV97Gmg6L6V984HSLEj4UQw2DIptu+jPwI/lRcPhXQKWtldC0Nx1ZHCu0kwWykGN14
         X6r+RzmXPrMxcBZYa/qxSFpMJAT5SROZzigElcrQ7z++1dGHFrE4VzYNeRhWe/BVy9TF
         Sfd2Q14M6dmQrtOZ2gfayhR5Zr48R60jutVUDvY1ycvuLBZPQ0F6q14DUZLwg070S6I1
         LnmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=X40ftQPGBDU5rKPEgT4rtKmBqIVGExabMhl9qD8s7ts=;
        b=HWibmEddVGu71kDX8faN4GEk9AMauW9bBbSQV2rTXv6XIPWREN9+4CqaMrOB98eV8V
         MGAzLXjy5CDysRrfNge+NpHPxJRC3tbIGy9NwL2L1ctqFQ6tHU6HUyJrYVwd9D5qESwt
         dZyyPdPdXRis56AlMC2MiuEYlGItoOPsyaRZP3p2rbDPJHcD3IcpFyZgZviRveHePqNj
         TMa47jy6ozYxBpUYYMAYU+yj50Sjp13WwWnFGuZPyJ5e3XRtFkuR6Qfsr0ntjmEQpd6a
         nK7LLXHKKgFvy4Qwrv8OV8ls2VbA04PREr5KkXCgNx2E7HQfL851Gk28xAP+hMk5Y6WV
         fkKA==
X-Gm-Message-State: AOAM5328jj/Jb2n+ZQDogJ1OHG5FEZVhowTX2HFCLfJH6toIFA+3X6cC
        CsuTQasKVsc0E2m6dUglX5XYpVCNn9s=
X-Google-Smtp-Source: ABdhPJwOLAFlbXP5tmNL6Q8QX6cJmWcqxpORpkQ7G8XvhWL5QUwtFrhYBKSkBavyXct7P/m6rYlORg==
X-Received: by 2002:a7b:c308:: with SMTP id k8mr16085559wmj.90.1599396764451;
        Sun, 06 Sep 2020 05:52:44 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id u126sm28319753wmu.9.2020.09.06.05.52.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Sep 2020 05:52:43 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] stdarg.3: Declare variables with different types in
 different lines
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200905220934.1319354-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c6c34cfa-2a81-9cb6-4828-6ed9f40f710c@gmail.com>
Date:   Sun, 6 Sep 2020 14:52:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200905220934.1319354-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/6/20 12:09 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/stdarg.3 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Thanks, Alex. Patch applied.

Cheers,

Michael

> diff --git a/man3/stdarg.3 b/man3/stdarg.3
> index 4ca1247fc..662de73c0 100644
> --- a/man3/stdarg.3
> +++ b/man3/stdarg.3
> @@ -285,7 +285,8 @@ foo(char *fmt, ...)   /* '...' is C syntax for a variadic function */
>  {
>      va_list ap;
>      int d;
> -    char c, *s;
> +    char c;
> +    char *s;
>  
>      va_start(ap, fmt);
>      while (*fmt)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
