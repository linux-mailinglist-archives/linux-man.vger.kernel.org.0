Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C51A354137
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 12:44:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232792AbhDEKlG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 06:41:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232807AbhDEKlE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 06:41:04 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E36BAC061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 03:40:58 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id n2so9957361ejy.7
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 03:40:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jqz1mZ97pqAxO3A6Nh9FPYYSSVCBfyzA8/UBS37vfQ4=;
        b=ZUjCD56pWmenhACvsWzzR4hpu/qX0Kcpj6LJg75LvTO/NA0dM5qQfDj9OPSTKiCH16
         J1hqH+Gah6HU6SFkejjhXmSTiaLP2H4xtHx/NvYkDgOmP7mOZJcZ3t1psGvJ5aw9pziM
         NkOTeS4H3di4pHeBSgSJJoCpvsCaMtTFeuN9vTjElbrq3vEQjslSWS8GuAkicdRbqYs7
         sJKMqNedM8YA5Wh7pnT5ZJ1RO2kVWsUt+pASQw03vjwO4ONO6ZYFNTGYVVftfcxSfgam
         TCl6sGkjT/+Wrv15RU/C/nPGAaat8DjODosuTa43s8BNmOBcGbKONeotzFlKl1WL+Sar
         MnvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jqz1mZ97pqAxO3A6Nh9FPYYSSVCBfyzA8/UBS37vfQ4=;
        b=rwfIgVqNKBLz+STapudDPqb8QFhwFpjra8kBS2261xgUcqukeZkB6eh3RNk8kYqo+s
         miEB5mVvxqFwdbX/DUG/nPE0tLoNHhuyotsshga5HUqwPD7S6k5aFKrCwbg0+sWdoDRc
         iYIs6/SRXB/At6QlGfcma2+Z/l3chaJHEPhNWlEdurzkv8MdpIom6u9COphEw2tyAlWi
         NaOwyixktO8N06nqfbY3nCwRoMmtEcesUC4xGRA2ojrTL6BUEJRYUfr8QEHDGsFnFejk
         IEFPhpXVXd0n/GfCIlcd2Og3aBEPuymILxV4s0rcb+sYzDqXwbzG7V8JUfpV1k/2HWIS
         XQtQ==
X-Gm-Message-State: AOAM532FPLHP99bQdVU13ZFsqBvnzkBeVDZOgFen46KmejW+01XcH95t
        1CzLZ/qE30S7bQpv2cVZRW0=
X-Google-Smtp-Source: ABdhPJxxHJ2WlE1nAcUDw804U0e5akW4z9swRW+5jytOGuQiuIwcg5ChJZIQS0jrLfSG64tZg+imPQ==
X-Received: by 2002:a17:906:4a52:: with SMTP id a18mr820291ejv.194.1617619257128;
        Mon, 05 Apr 2021 03:40:57 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id u24sm8472391ejn.5.2021.04.05.03.40.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 03:40:56 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 03/35] system_data_types.7: Add 'socklen_t'
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-4-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <89fad7a7-1634-aa8f-ffc3-eb1b43ceac7c@gmail.com>
Date:   Mon, 5 Apr 2021 12:40:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-4-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 4/4/21 1:58 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man7/system_data_types.7 | 28 ++++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)


Patch applied.

Thanks,

Michael


> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 93c723a2f..e038aab1e 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -1251,6 +1251,34 @@ POSIX.1-2001 and later.
>  .BR getsockname (2),
>  .BR socket (2)
>  .RE
> +.\"------------------------------------- socklen_t --------------------/
> +.TP
> +.I socklen_t
> +.RS
> +.IR Include :
> +.IR <sys/socket.h> .
> +Alternatively,
> +.IR <netdb.h> .
> +.PP
> +Describes the length of a socket address.
> +According to POSIX,
> +this shall be an integer type of at least 32 bits.
> +.PP
> +.IR "Conforming to" :
> +POSIX.1-2001 and later.
> +.PP
> +.IR "See also" :
> +.BR accept (2),
> +.BR bind (2),
> +.BR connect (2),
> +.BR gethostbyaddr (2),
> +.BR getnameinfo (2),
> +.BR socket (2)
> +.PP
> +See also the
> +.I sockaddr
> +structure in this page.
> +.RE
>  .\"------------------------------------- ssize_t ----------------------/
>  .TP
>  .I ssize_t
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
