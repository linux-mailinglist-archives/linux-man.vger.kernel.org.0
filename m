Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D6B96278219
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 09:59:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727697AbgIYH7V (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 03:59:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727556AbgIYH7V (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 03:59:21 -0400
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com [IPv6:2a00:1450:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17713C0613CE
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 00:59:21 -0700 (PDT)
Received: by mail-ej1-x641.google.com with SMTP id u21so2414562eja.2
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 00:59:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=o0eoIsnaIrCrXFIQEI0SvNrPDP533Xgag8Qxt1cH7qA=;
        b=VGKYvnfhMAM/ijpGQai7krB7Ew0I0bxqCbIybicTlwom6Ke8RzvCIF6BtfZfyTIKjk
         MEBCj9vMEDy/ou7jJp2Tfp0AZdByXzmP71uSw6e0gTwesHrn4sNdxQ916dC1LWwT7yyc
         2FxMxjN4y4CwAwX7VJ9wxjBDeoD/SHq6odJxGdG1cibs3e7TlBJOn3DWZ1ImE7XznBId
         S0bf9yV/TW3x87+/H+lNMFFrtOyD/8FIoRhqWPhq+v/IWlJKVyCCBRbv923UidQbbb5X
         ou+/50bQHE/iAQb5mL4+TSI2d8i1k+LnjiVvvfkqFmsYwyB62/qI/7ObNLPacScwlIsu
         h1lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=o0eoIsnaIrCrXFIQEI0SvNrPDP533Xgag8Qxt1cH7qA=;
        b=YqB3HNXboS9cpthwCeUF6jPe+znex1UVWKhsNDZ0pI8Hcc2g78W6z6AYIzTA2rTS0s
         bpDY3wnxcVHJu0PIoAy0i2YU9oZ8tf/gerx0mDSTnVygSr+oCkR9SGkXVz+vHAywueG6
         MRYewt0Y4i9z8Al+sE8G0YG0PCBGJJQXfCeJB8KQ4CMBxPpd94jnldvIQsIRxDg0WtGP
         b+Z8NYKI3glUI2kj4PtmM/Q+3B1iwHP7mChLNZfZPsJ2/39qy2jhgzJM9PHkk32pBTfE
         0q8+q4AvLp1wIhsJDZgKNz5vxyIYBYRemvr29DezKNX3ii/tSMmq7egxeTVZfA1o5ut2
         IJKw==
X-Gm-Message-State: AOAM5316MZdlJDOD7fy4NyXlDXFpmnurJwCJ+SmsIHijCYr5XXs7noK8
        D3LcM4wiLiwyGocRnxev+sE=
X-Google-Smtp-Source: ABdhPJz4Ecwm7qpELvmICjRBF1+mp6SnRO6HwCssR719UBKhj5XgvVFBAr8qzuoOF516IatakGxWwg==
X-Received: by 2002:a17:906:ce30:: with SMTP id sd16mr1487293ejb.53.1601020759789;
        Fri, 25 Sep 2020 00:59:19 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id p20sm1332647eja.18.2020.09.25.00.59.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 00:59:19 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 02/10] system_data_types.7: Add lconv
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200925073140.173394-1-colomar.6.4.3@gmail.com>
 <20200925073140.173394-3-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <70007f35-8b0b-bfae-ac78-9f2a6cd536d9@gmail.com>
Date:   Fri, 25 Sep 2020 09:59:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200925073140.173394-3-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/25/20 9:31 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Patch applied. Thanks, Alex.

Cheers,

Michael


> ---
>  man7/system_data_types.7 | 47 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 47 insertions(+)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 095a20f6d..b04457bbf 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -226,6 +226,53 @@ Conforming to: C99 and later; POSIX.1-2001 and later.
>  .IP
>  See also:
>  .BR imaxdiv (3)
> +.\"------------------------------------- lconv ------------------------/
> +.TP
> +.I lconv
> +.IP
> +Include:
> +.IR <locale.h> .
> +.IP
> +.EX
> +struct lconv {                  /* Values in the "C" locale: */
> +    char   *decimal_point;      /* "." */
> +    char   *thousands_sep;      /* "" */
> +    char   *grouping;           /* "" */
> +    char   *mon_decimal_point;  /* "" */
> +    char   *mon_thousands_sep;  /* "" */
> +    char   *mon_grouping;       /* "" */
> +    char   *positive_sign;      /* "" */
> +    char   *negative_sign;      /* "" */
> +    char   *currency_symbol;    /* "" */
> +    char    frac_digits;        /* CHAR_MAX */
> +    char    p_cs_precedes;      /* CHAR_MAX */
> +    char    n_cs_precedes;      /* CHAR_MAX */
> +    char    p_sep_by_space;     /* CHAR_MAX */
> +    char    n_sep_by_space;     /* CHAR_MAX */
> +    char    p_sign_posn;        /* CHAR_MAX */
> +    char    n_sign_posn;        /* CHAR_MAX */
> +    char   *int_curr_symbol;    /* "" */
> +    char    int_frac_digits;    /* CHAR_MAX */
> +    char    int_p_cs_precedes;  /* CHAR_MAX */
> +    char    int_n_cs_precedes;  /* CHAR_MAX */
> +    char    int_p_sep_by_space; /* CHAR_MAX */
> +    char    int_n_sep_by_space; /* CHAR_MAX */
> +    char    int_p_sign_posn;    /* CHAR_MAX */
> +    char    int_n_sign_posn;    /* CHAR_MAX */
> +};
> +.EE
> +.IP
> +Contains members related to the formatting of numeric values.
> +In the "C" locale, its members have the values
> +shown in the comments above.
> +.IP
> +Conforming to: C11 and later; POSIX.1-2001 and later.
> +.IP
> +See also:
> +.BR setlocale (3),
> +.BR localeconv (3),
> +.BR charsets (5),
> +.BR locale (7)
>  .\"------------------------------------- ldiv_t -----------------------/
>  .TP
>  .I ldiv_t
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
