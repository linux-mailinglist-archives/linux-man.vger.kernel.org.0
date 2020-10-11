Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB7AE28A753
	for <lists+linux-man@lfdr.de>; Sun, 11 Oct 2020 14:25:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387781AbgJKMZS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Oct 2020 08:25:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387744AbgJKMZS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Oct 2020 08:25:18 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0994C0613CE
        for <linux-man@vger.kernel.org>; Sun, 11 Oct 2020 05:25:17 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id h5so5674926wrv.7
        for <linux-man@vger.kernel.org>; Sun, 11 Oct 2020 05:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=LBVwc1TlhNUjNGMZjcuK2rOSgY/WP25weVY85MqOHxM=;
        b=jZuUgCJL4KDeQpz5ysd/mjORm9zPRu8x3l9JfQAJWIerVjxVmY3kbTc2x6QUH96Sc9
         0EcfhCPJ2iLXlndHF7PKYrVbIoIIVBZF3OpvQ0ORCztXBqrQsGzX5WzNr734XCW13tvC
         /GN1hypmdEohWtFTuP9S0JlttJXVlduLuU2l3uZx4dUVqYSxvoV+XLSVUjqo4JTHJ1h+
         Q3TdVeJA0LfECVurhudGtXnSk+Iu5mp4d4HokE54s/+tkGpvcwEzJWLRX48QI5eKEMw5
         hxPg3afEZYf2MML8D9bJ/5yJ0uvF3qp9hQ8pT8YpPRzaWSYCDeQkYnt9USJP9d5Fbbv6
         dVhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=LBVwc1TlhNUjNGMZjcuK2rOSgY/WP25weVY85MqOHxM=;
        b=bfh2RiCHjPnycuSPYNRcVyZR+ehhUyPhuPSFsKOfFoQpE4Ec+mj0PXCSD2VgBshmNw
         6QdbsYfUmArQyWTaVgfku1SNuApor7IS8AorgDnUs1nQ1tiA+R4hBioIkz7/2sHZVyVM
         IyxRKok7OtnxnzgKznIYnPl1SryMGLFldT14UWymSTInIixwdLVU6J0OJC0PNcRVzM4w
         a2lBQDkeX5J7/2YkIjiDauKTxmn1R6hi2GJloXPLb9i5N6J6VtFNeCRw6CuWa87PzQ9m
         NNh1MBqDTdQqsRmaXHmHsoy3eaZx7zHBsLJbujJas395+BeWtUzu0pSZu/kTYxXhCy7/
         w0XQ==
X-Gm-Message-State: AOAM533c68C/oHhBlPdgZE2cDaJbj+8WDuRovtQEjnvHyerhd854edrN
        emq58OpwmSBUZVBYxXgD7Ds=
X-Google-Smtp-Source: ABdhPJwpgArxG++ibOd3dGFHSjE2RbBWMPYDAsvEoJKZYM5xLcbnad1q2P2DBf4BwjyUl5cTOm6tcg==
X-Received: by 2002:a05:6000:1110:: with SMTP id z16mr8084215wrw.71.1602419115584;
        Sun, 11 Oct 2020 05:25:15 -0700 (PDT)
Received: from [192.168.1.10] (static-176-175-73-29.ftth.abo.bbox.fr. [176.175.73.29])
        by smtp.gmail.com with ESMTPSA id i33sm21711405wri.79.2020.10.11.05.25.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Oct 2020 05:25:15 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 1/2] system_data_types.7: Add 'regex_t'
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201011111525.9735-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <fcd7fc24-eb1b-7ce1-7cac-f24d3d3c5278@gmail.com>
Date:   Sun, 11 Oct 2020 14:25:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201011111525.9735-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/11/20 1:15 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man7/system_data_types.7 | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)

Thanks, Alex. Patch applied.

Cheers,

Michael

> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index a4a2e0ab8..8a894b2e0 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -786,6 +786,29 @@ and
>  .I ssize_t
>  types in this page.
>  .RE
> +.\"------------------------------------- regex_t ----------------------/
> +.TP
> +.I regex_t
> +.RS
> +Include:
> +.IR <regex.h> .
> +.PP
> +.EX
> +typedef struct {
> +    size_t  re_nsub; /* Number of parenthesized subexpressions. */
> +} regex_t;
> +.EE
> +.PP
> +This is a structure type used in regular expression matching.
> +It holds a compiled regular expression, compiled with
> +.IR regcomp (3).
> +.PP
> +Conforming to:
> +POSIX.1-2001 and later.
> +.PP
> +See also:
> +.BR regex (3)
> +.RE
>  .\"------------------------------------- regmatch_t -------------------/
>  .TP
>  .I regmatch_t
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
