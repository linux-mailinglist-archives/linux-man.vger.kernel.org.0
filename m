Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BCEB7276E33
	for <lists+linux-man@lfdr.de>; Thu, 24 Sep 2020 12:08:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727189AbgIXKIV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Sep 2020 06:08:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726818AbgIXKIV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Sep 2020 06:08:21 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F23B2C0613CE
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 03:08:20 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id k18so2948309wmj.5
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 03:08:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=WokqrUo2BINSdoCCBoJqwbeq2JI2O0U/oJnAciIk4kk=;
        b=X4TBBa/ohqOVzduy8SLOiqp1IDq8LnOyb4ehF4ReBjq/pMghvu9g5QTK/FhPsRloJE
         yjtFvvZ7NMEXlaCEF6hf2imJuHrBvEzns0Grxm2P1LFhmHT4HmbrQv7LnK+T3c8PR7uv
         iDom7EuIL6HHjdvXuPztum0Fwx52CSLoxUOp8ZbLK8F/dKrYwOchNDAaojWwsHD0U975
         Uf7l6KhfeFOwUWKC8w5xaO6e3IltpGGcEwF8iWqnluDfWswVzUfdysXuj1KRlBNEU/aL
         aBxaIrqwi9tvWcwaYaa7hJznGe3kRdw1+K8YiNIcnR2tzmeGlyO5srM9sa7uweqmMRTc
         ha0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=WokqrUo2BINSdoCCBoJqwbeq2JI2O0U/oJnAciIk4kk=;
        b=Ulz+8RlOIhBpJadQh5ZrWGJ8mh9qGTN+0geudhPeN2nT9y4uN82M3yACFhK6uNmsOE
         MGOChmLCSSx2QARJG4p4pUFnbj3jCb05Ub3mriguGrYPx4WXgwvPnFw28PBN358tdx8U
         +0XZ9SmvEcgXCxIpXISCIcVIFy+9qVhlW8PK0BbL2O8b8hPe2qe2FybFQEEs6urkrjjQ
         7dk2NOgbelVI8t/9wE9jiA0cKYTnpTseQdNwhh+MJW21Na/tljFrVrUBjA4U2FrKnd2s
         G/sWkPprL8wwaDxEOwy6XruQBRw5JrgghNI0abg60AhGdM6qICF+MMERVPCAaTFyBiec
         /+1Q==
X-Gm-Message-State: AOAM532QYQ+QMmY8OM+8mBjE+1NbIJe2kZjJCHEdf3YHpM8Hx9etLOoN
        uO2U3hh8UJ+w0Tgu3PH7VjbeAyHYrOs=
X-Google-Smtp-Source: ABdhPJxP0md+lHcJqQ31CghTdgsH5atLstupSNXikKizJynFNLqeMy+PMdoYpmuUukoXHR+9x9MIHg==
X-Received: by 2002:a1c:750d:: with SMTP id o13mr4195703wmc.54.1600942099458;
        Thu, 24 Sep 2020 03:08:19 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id b84sm3279944wmd.0.2020.09.24.03.08.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Sep 2020 03:08:18 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] system_data_types.7: Add imaxdiv_t
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200924095854.77221-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c74b40c6-03c6-86d3-74b7-0697528f357a@gmail.com>
Date:   Thu, 24 Sep 2020 12:08:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200924095854.77221-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/24/20 11:58 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man7/system_data_types.7 | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)

Thanks, Alex. Patch applied.

Cheers,

Michael


> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index ea3e25175..c00345741 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -182,6 +182,28 @@ Conforming to: POSIX.1-2001 and later.
>  See also:
>  .BR getpriority (2),
>  .BR waitid (2)
> +.\"------------------------------------- imaxdiv_t --------------------/
> +.TP
> +.I imaxdiv_t
> +.IP
> +Include:
> +.IR <inttypes.h> .
> +.IP
> +.EX
> +typedef struct {
> +    intmax_t    quot; /* Quotient */
> +    intmax_t    rem;  /* Remainder */
> +} imaxdiv_t;
> +.EE
> +.IP
> +It is the type of the value returned by the
> +.I imaxdiv (3)
> +function.
> +.IP
> +Conforming to: C99 and later; POSIX.1-2001 and later.
> +.IP
> +See also:
> +.BR imaxdiv (3)
>  .\"------------------------------------- pid_t ------------------------/
>  .TP
>  .I pid_t
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
