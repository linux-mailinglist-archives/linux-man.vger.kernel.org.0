Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B2934279C4D
	for <lists+linux-man@lfdr.de>; Sat, 26 Sep 2020 22:13:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726382AbgIZUNZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 26 Sep 2020 16:13:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726311AbgIZUNY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 26 Sep 2020 16:13:24 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B9B9C0613CE
        for <linux-man@vger.kernel.org>; Sat, 26 Sep 2020 13:13:24 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id e17so2585353wme.0
        for <linux-man@vger.kernel.org>; Sat, 26 Sep 2020 13:13:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6qS3WODrDYxU9Gz7fwTM5W9bMqjSjWCP3ctXVfTIJ/4=;
        b=eTHj96+NTDr4PM+Ci1W74Lpbq53j24auCYzOuKsgpTj8Y1pQhcyBLzYjFPL2ww4j3+
         HDH2ing13h26MxuYhzeasOnsWOwPVFOcluFdwp4AkeKXzWHt3BFvSfr0fZcjHWm9L15b
         BnEKrK3DDaoOtX60aPCvB3PU1KuYP5zv9HErFSAfcfbEhQ+FPAPwb4xtC5TPtOZImKgC
         pgtIBs6JZnS9POYfi23MqaCzy4N+bL1yDN4EJY5ykv1x0Bg1H8ebaWsN5SKBzBZHFm3x
         /TzfVb6gqbbRW924cjgchwe2TEvS0Im8sziRbCHjnwZNZU/LyXpH+d/o8guex5PKszyr
         XYbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6qS3WODrDYxU9Gz7fwTM5W9bMqjSjWCP3ctXVfTIJ/4=;
        b=UUtH9UoUzckE64wJcbIcHAie3QlEDvc+DxSb4By/YqNEuTMVE3thygoQEpk0x7PfO1
         Mrb3Nx5SAgKK03DKNKooJqaQ/niX4u/ZVsevesFEA5xA4ijgp49S3aMkOg7k5yhacVSF
         WC1luVPLIoyoLh/D3ib07Qx7LynjgRR6dkktJnzP/5vrXPGzt3nfAjkp41JevxKb2CT7
         P7jlFFH6zlRKD4/Y2tJiore1e056jqyg0efOBAmho3sed9AzKDjB247bIsNj3ZF7/IKV
         ZxCEOlDk2xWXD0AoxPGuKxFbKHOO4BRzKKsEy6D4WsCOBeuL2oLqk4kem5PihsVOvafN
         hLVw==
X-Gm-Message-State: AOAM530TvnmhiV852rardQ+tW4GPE+C4Ts/bK0TfUZ1Le4H/Sww/D0kN
        gtkQtOY8oj2v3A9hVqLdctk=
X-Google-Smtp-Source: ABdhPJwxJ1wm2VzuXZOYeyIS1/UddvOHDczrT5Xby9CMVWiKVj+qEnD1U1VgYU86sD3VKIhEA6piSQ==
X-Received: by 2002:a1c:23c8:: with SMTP id j191mr3734431wmj.64.1601151203028;
        Sat, 26 Sep 2020 13:13:23 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id u13sm7441275wrm.77.2020.09.26.13.13.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Sep 2020 13:13:21 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 1/2] system_data_types.7: Add va_list
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200926170814.2121307-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <711d1189-7383-6c0b-4f46-c0b4d28e664f@gmail.com>
Date:   Sat, 26 Sep 2020 22:13:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200926170814.2121307-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/26/20 7:08 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man7/system_data_types.7 | 31 +++++++++++++++++++++++++++++++
>  1 file changed, 31 insertions(+)

Thanks, Alex. Patch applied.

Cheers,

Michael

> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index ae8fb6493..361e8d411 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -1116,6 +1116,37 @@ See also:
>  .BR getpwnam (2),
>  .BR credentials (7)
>  .RE
> +.\"------------------------------------- va_list ----------------------/
> +.TP
> +.I va_list
> +.RS
> +.PP
> +Include:
> +.IR <stdarg> ;
> +or
> +.I <stdio.h>
> +or
> +.IR <wchar.h> .
> +.PP
> +Used by functions with a varying number of arguments of varying types.
> +The function must declare an object of type
> +.I va_list
> +which is used by the macros
> +.BR va_start (3),
> +.BR va_arg (3),
> +.BR va_copy (3)
> +and
> +.BR va_end (3)
> +to traverse the list of arguments.
> +.PP
> +Conforming to: C99 and later; POSIX.1-2001 and later.
> +.PP
> +See also:
> +.BR va_start (3),
> +.BR va_arg (3),
> +.BR va_copy (3),
> +.BR va_end (3)
> +.RE
>  .\"--------------------------------------------------------------------/
>  .SH NOTES
>  The structures described in this manual page shall contain,
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
