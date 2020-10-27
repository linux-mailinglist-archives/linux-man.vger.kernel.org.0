Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9675C29A44C
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 06:49:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2506105AbgJ0FtO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 01:49:14 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:37332 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2506104AbgJ0FtO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 01:49:14 -0400
Received: by mail-wm1-f68.google.com with SMTP id c16so179725wmd.2
        for <linux-man@vger.kernel.org>; Mon, 26 Oct 2020 22:49:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Aft1acI66pRI9Y2YbvyYheUKZJytZ44xJ+1jCA2nE4k=;
        b=kqYwBxYrL2y0TOQXKZ7OSlpvSse2GKCeVu3Lzi/BQTHtdiC6xlH/145gczTkW2NXJC
         23MP8as0KRaFwap1CjSkZZKllr5S7kTPc9d6Ihz+1lQmxt3BwK12ecAMlgj9zMBoTAKQ
         ngN9gBHbz+hTVPeEf9k4ACJV0pcbJV6VwV+KQ1l8nM8LgwLj+/qBoBl9pL1grLQ70W45
         BkCIIBm5Xb8KD1O+8DbAskziNbC5pskbBqghr3cf1xGZK7nQCY72vp4JhgWKOPUPmIBf
         GjagAKzsYsUoxLvUkRZDjiOUffjAu0cheY1Q9rwaupfXYKRh8JIXUlkoCzHr2m0ephsx
         l1yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Aft1acI66pRI9Y2YbvyYheUKZJytZ44xJ+1jCA2nE4k=;
        b=rhsdCW0i8b4goK6kPJSCWZCKWIOcTNeCMVSlOlSV3Fh6stgDdOvG1OKkB7eIGbAsnK
         RprAfY8Ckc6EeqokAsCW79JcreCro0GlccwYLoJdvhTCjGmdjxSRg04t0DB+jWOZwtnv
         6VDlgutcLLSKbhTUaoAPqqYCH7LHesttnkI4bhArAX7ZEVDmzvB+/waJsXQfNvNmwDOl
         WHNMyfutWG6+HEMRP5lUaR7mLmNSmH8RTsUaTlW/Y/UY57dKZxmb4giVqWnC25DY3u28
         EgqPBsVm0P3WIsBt5U35f/jLPtl2ANwR//mAMksgCiPzvrfLzAAbwJcHaQn4VXk8dZMm
         xE+A==
X-Gm-Message-State: AOAM533DrSKYwDFmSazSlgIaosR1aSWqYtP4YpVmNryRX1W1iHmfqllj
        /V8OwgP52a+d5lhXIYRyFXs0vrpDw6E=
X-Google-Smtp-Source: ABdhPJzLBqpVDeoOryIMwHd4PwbG2LXbNR2qhloibtg3GznuYcvKeDSSb3U+Et5wO6xKIe5eL7RU0A==
X-Received: by 2002:a7b:cc09:: with SMTP id f9mr726287wmh.93.1603777751734;
        Mon, 26 Oct 2020 22:49:11 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id t12sm516159wrm.25.2020.10.26.22.49.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 22:49:11 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, jg@jguk.org
Subject: Re: [PATCH v2 1/2] system_data_types.7: Add 'error_t'
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201026221622.24879-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <12701238-4167-261c-ccce-440233d01e39@gmail.com>
Date:   Tue, 27 Oct 2020 06:49:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201026221622.24879-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 10/26/20 11:16 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man7/system_data_types.7 | 39 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 49ca2d8e1..4930aac8b 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -199,6 +199,45 @@ See also the
>  .I float_t
>  type in this page.
>  .RE
> +.\"------------------------------------- error_t ----------------------/
> +.TP
> +.I error_t
> +.RS
> +Include:
> +.IR <argz.h> ,
> +or
> +.IR <envz.h> .
> +Alternatively,
> +.IR <errno.h> .
> +.PP
> +An integer type
> +used for error reporting.
> +A value of 0 means success, and nonzero means failure.
> +Portable programs should use
> +.I int
> +instead.
> +.PP
> +Conforming to:
> +Present in glibc.
> +It is not standardized by the C language standard nor POSIX.
> +.PP
> +Notes:
> +C11 standardized a similar type as an optional extension:
> +.IR errno_t .
> +However,
> +.I errno_t
> +is not present in POSIX.
> +.PP
> +.I <errno.h>
> +defines this type if the macro
> +.B _GNU_SOURCE
> +is defined before including the header.
> +.PP
> +See also:
> +.BR argz_add (3),
> +.BR envz_add (3),
> +.BR feature_test_macros (7)
> +.RE
>  .\"------------------------------------- fd_set -----------------------/
>  .TP
>  .I fd_set


So, I must say that I am skeptical about adding this type to the page.
There is a trade-off between having useful info and creating a page
that becomes so large that it becomes unwieldy.

error_t is an obscure [1], nonstandard type used by two API sets
(one of which is roughly a special case of the other). I'm so far
unconvinced of the value of adding this typr to the page.

Cheers,

Michael

[1] Before Jonny Grant's mail yesterday, which I presume was 
the inspiration for this patch, I had either neither heard of
the type or at least long ago forgotten about it.

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
