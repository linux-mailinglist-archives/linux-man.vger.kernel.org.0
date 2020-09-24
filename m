Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D286276F44
	for <lists+linux-man@lfdr.de>; Thu, 24 Sep 2020 13:05:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726738AbgIXLFe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Sep 2020 07:05:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726303AbgIXLFe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Sep 2020 07:05:34 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0072C0613CE
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 04:05:33 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id p9so3884964ejf.6
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 04:05:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+ROdICfFN5UUUl/ft7qeZbNDC6NufQYHMz56eGl2GNQ=;
        b=tjQd6m/hiz3yP4/2jbL242JpIoSIev7tLxIqFI9wSpKkmMx10wPp1m2qsl5sKoWNy5
         q66FYegMKaxSdwxsCQkp5tKG2I2cI59VPsMvintXSpAlIYB4w66AJ9PaIRt2nw19pQCS
         8J1EsuuRFg/YweKdlQHrwwS0OIjQBQVGnHI2JWFAlZD+yxgM7mzYO9wF21oqRD/UHmzN
         Dhq0MQnP8fhOU4BoH47sggH7N61H45lim6osS6TKddq7dT77ck03wtk+5JXNelWffSOz
         koEDBUSbKzuEMgro8eA0KiHk/sqEbq9AIeTZnY2yOKJfXGxOaKPK2Cbt2rC03fiSMuzp
         /GZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+ROdICfFN5UUUl/ft7qeZbNDC6NufQYHMz56eGl2GNQ=;
        b=Oi30N0i8ORbpJzH1zthPJmBZyVbDhMlojljsnjBeTuJE5wi66hw5CbIjbgaZmfr/v/
         0Q0r6ey4LhasnTvVPcIE4VxJzUuZmDx2mQeJatomSct5su09mS6ajgBVr6blIaNV3RjZ
         mJsom1XySTRoe5DKIuPFaAprKGp5wfQ+N4oyGX7R7tN9ZvfsUvJ6efRXdij0V25Pw+3U
         HoSOWVTURQ777iP4kg6wt8ATiw3MB2u/TFMwlHCZdAHSwP/RjJNOjb/T0T+7aPi+Oa2r
         7A2zqgfWfLq8n/jxoI9vWrAtCP3EwBf1+Ev+cFkfM4v4j+5f/qa3UFdQF8sndgdAjQse
         SOsg==
X-Gm-Message-State: AOAM533cSI+o1ek04wKaj+vCd0mVvwryvVefrf24abnC+TczKJn9B4KD
        2909yOshqtX/ZpAM1AZsRYHMrfNDfdc=
X-Google-Smtp-Source: ABdhPJyxLDh+kR0L/qs/7M+mdcy7dTrqtUBabd2NUhOg6ocrrDJj3sQo1R/iLQpiOvNnSTnsoBk0uQ==
X-Received: by 2002:a17:906:4956:: with SMTP id f22mr408854ejt.62.1600945532069;
        Thu, 24 Sep 2020 04:05:32 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id jo2sm2094912ejb.101.2020.09.24.04.05.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Sep 2020 04:05:31 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/6] system_data_types.7: Add div_t
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200924101308.78204-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <85231065-a227-4e42-2f02-c962bbcf1cc7@gmail.com>
Date:   Thu, 24 Sep 2020 13:05:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200924101308.78204-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/24/20 12:13 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man7/system_data_types.7 | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index c00345741..077d669b4 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -95,6 +95,28 @@ See also:
>  .BR aio_suspend (3),
>  .BR aio_write (3),
>  .BR lio_listio (3)
> +.\"------------------------------------- div_t ------------------------/
> +.TP
> +.I div_t
> +.IP
> +Include:
> +.IR <stdlib.h> .
> +.IP
> +.EX
> +typedef struct {
> +    int quot; /* Quotient */
> +    int rem;  /* Remainder */
> +} div_t;
> +.EE
> +.IP
> +It is the type of the value returned by the
> +.I div (3)
> +function.
> +.IP
> +Conforming to: C99 and later; POSIX.1-2001 and later.
> +.IP
> +See also:
> +.BR div (3)
>  .\"------------------------------------- fenv_t -----------------------/
>  .TP
>  .I fenv_t
> 

Applied.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
