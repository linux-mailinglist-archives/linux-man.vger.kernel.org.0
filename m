Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 20E7C9D73D
	for <lists+linux-man@lfdr.de>; Mon, 26 Aug 2019 22:11:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730001AbfHZUL1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Aug 2019 16:11:27 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:46184 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729777AbfHZUL1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Aug 2019 16:11:27 -0400
Received: by mail-wr1-f66.google.com with SMTP id z1so16510633wru.13
        for <linux-man@vger.kernel.org>; Mon, 26 Aug 2019 13:11:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=5xwQUAuX46xWnuPZxy6Kf46mfNQQWkAMWlFnQy3Fn/g=;
        b=NPO+9wkZ5fteK80aN8o4ZHS7F76I+oZAuTlxTh0pRxKIlilUuYJv7DcvTMRrxbhhDN
         x8y4ENSTPStIAcn4WDaz2rlfiwQK1elDgYFB1Y1K+rhY78/SQfebpLtBsUrU0jYHabfr
         YofegBviRX7htTBOSNjV9EVQA3WKPiP1WSm+nzD98Mg4y07nzAldP2s0NAG8pKhRIa8v
         PGgPxymgJT0yCdVUkScR4RfaRKQ2w4JS1PdpTNJ+BoXuO9kVMk2N9OcMAITc7jBVds3c
         j2xYnJWPUMKmcG5wJxdI1xAVtljGH0GjjnIMdcau0kvcQoJLkEuPP8uluT/jIBgGCXkB
         2COQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=5xwQUAuX46xWnuPZxy6Kf46mfNQQWkAMWlFnQy3Fn/g=;
        b=LmbYNSC3WWPk2bh/SUJyJFOkxEEWtLaJFa5nURi626PuHq67vRHyf7SLLOVwoPZPdO
         X5POX+4vIPpH11zZ7BrHsYMdM3jg/avI9PzxokZF44cS+oHbYGLa35kJUJaf4taECYzl
         3AZcjE4E9xFcODinrxO58TbvqsRIb0qYI8hqaHrKKwuibN45qbGzYNTnOoCo5unyA22f
         jl9pe7d3i8f4ZGLCmcpUhAkBON6sHlOvQfTy0oBh7azjQUw4Hkss7FNFR9mgXfqRUDUn
         +hGmABlgJXAhFwYDGIafA6PLEF2GG6Yi6lEi6yt8GTggJEBmFLE/GdW3j8OFlSY9im1j
         eprw==
X-Gm-Message-State: APjAAAV94l739x7CsbVdQtWzDgwXItNBULBztgz0HBacmvS9dEFB9yLD
        7gWesxK7lLcAl+IZIFVtx7JU5ls4
X-Google-Smtp-Source: APXvYqyDFUYQr/OnnfFlaooRi7GXJ1M2vWxnaByDbWezmAJM7ZyozSujGM2erdfNtCk4NlxunWjbbw==
X-Received: by 2002:a5d:404d:: with SMTP id w13mr24624511wrp.253.1566850284683;
        Mon, 26 Aug 2019 13:11:24 -0700 (PDT)
Received: from ?IPv6:2001:a61:257e:2f01:31ee:f41e:c688:df4? ([2001:a61:257e:2f01:31ee:f41e:c688:df4])
        by smtp.gmail.com with ESMTPSA id i30sm811041wmb.20.2019.08.26.13.11.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2019 13:11:23 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] ld.so.8: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20190826161921.9860-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0b142cb7-d92b-7f2b-5f54-a82fc2093d01@gmail.com>
Date:   Mon, 26 Aug 2019 22:11:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190826161921.9860-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jakub,

On 8/26/19 6:19 PM, Jakub Wilk wrote:
> Escape hyphens.
> 
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Patch applied.

Thanks,

Michael


> ---
>  man8/ld.so.8 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man8/ld.so.8 b/man8/ld.so.8
> index 3747a1ab3..2dce42a67 100644
> --- a/man8/ld.so.8
> +++ b/man8/ld.so.8
> @@ -428,7 +428,7 @@ loading a new shared object, resolving a symbol,
>  or calling a symbol from another shared object\(emby
>  calling an appropriate function within the audit shared object.
>  For details, see
> -.BR rtld-audit (7).
> +.BR rtld\-audit (7).
>  The auditing interface is largely compatible with that provided on Solaris,
>  as described in its
>  .IR "Linker and Libraries Guide" ,
> @@ -783,7 +783,7 @@ mtrr, pat, pbe, pge, pn, pse36, sep, ss, sse, sse2, tm
>  .BR getauxval (3),
>  .BR elf (5),
>  .BR capabilities (7),
> -.BR rtld-audit (7),
> +.BR rtld\-audit (7),
>  .BR ldconfig (8),
>  .BR sln (8)
>  .\" .SH AUTHORS
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
