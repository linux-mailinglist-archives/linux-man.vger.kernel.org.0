Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE9283DCB8E
	for <lists+linux-man@lfdr.de>; Sun,  1 Aug 2021 14:16:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231749AbhHAMQ3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Aug 2021 08:16:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231527AbhHAMQ3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Aug 2021 08:16:29 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43536C06175F
        for <linux-man@vger.kernel.org>; Sun,  1 Aug 2021 05:16:20 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id u15so8751092wmj.1
        for <linux-man@vger.kernel.org>; Sun, 01 Aug 2021 05:16:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=h7ZIT2TpGibvOJ6mM6yxw5lix2Pdj8T4GvLxJb4B+CY=;
        b=tDmARpFTSO/uANIeRB3ldRfE7QeVs4m12mKdsHELuVaZGFpw7RtkJVvCfwImT6sA5F
         KDBXJkgZxlOnjhL2DJLPP4qJHrxm3OkS8sWRMFIRaELw6KFGpAzB7CUEsE6wAok0zETq
         /xvpEm8o5rShMJ73qMWOaMrdTHm7urJeETRbQkWP1hWyLyhUkQxwVvRl254Wm2LAOiap
         JcfamQjp/ZnbrxTtel/KpQcR5X9N8rDCaLO7qhJj+bk1KIDLg2Miya8jD/QlMIOtfsFf
         fGrbT5nst7D3C33h8xQOKqF44dmL7KNuTCtoXpM33uGOEfLxFoop1f31LoqtGb9c/GIS
         4Jew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=h7ZIT2TpGibvOJ6mM6yxw5lix2Pdj8T4GvLxJb4B+CY=;
        b=J9QVPRjvRKIXXHsiYLViaaaLto4gnK6CfkZL1UYMmTIwCzyGLauLg/XRfcgf+SbQeo
         nBymSeRk1K0VUciAlj3oOYuWUJR5abTfzB0VuqgNwJndI7YG7+kySk7zEAvYF8zP3/pK
         XyR7Z9b4sovdOhyEeniLI5eiovbrFBAFSScYTzuzzl04zBwKo6HIPzA+mZ8IQG8Pg6nh
         HDGQOW46Ny+J6ge4bNdG6rfVtbjLNWGZVuW+3wdQ62VL/coL7DlBkvhKF3fcUoWBw/GA
         PpJv9tvtddcdTTZxjF3bBt/hpZu3f/PgJTM2rzZRcq2pVks/BziPIF1D2bhjqbEzstGC
         MSaw==
X-Gm-Message-State: AOAM531/+tC6Zr0Lkm9ZEUXIkMMV+6wDm3+ULJnEaWmJkNa4IFi+jpbU
        Y6FmVvDOj/Z/cgU6e5ACwEpL2fsn8+0=
X-Google-Smtp-Source: ABdhPJzLUodSB7KjGlwjoTBQZx4FWEuAV+sEeBjxIwIPVPyirAH91b2AmNeeji0rVfQNJe1nfryf/g==
X-Received: by 2002:a05:600c:2f08:: with SMTP id r8mr11806454wmn.172.1627820177265;
        Sun, 01 Aug 2021 05:16:17 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id l24sm3358847wmc.22.2021.08.01.05.16.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Aug 2021 05:16:17 -0700 (PDT)
Subject: Re: [PATCH v2] termios.3: SPARC architecture has 4 different Bnnn
 constants
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210731145501.9944-1-pali@kernel.org>
 <20210801113535.11402-1-pali@kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <b8c1cbcd-15de-7543-40ae-56274f30e08f@gmail.com>
Date:   Sun, 1 Aug 2021 14:16:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210801113535.11402-1-pali@kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Pali!

On 8/1/21 1:35 PM, Pali Rohár wrote:
> SPARC is special, it does not have Bnnn constants for baud rates above
> 2000000. Instead it defines 4 Bnnn constants with smaller baud rates.
> 
> This difference between SPARC and non-SPARC architectures is present in
> both glibc API (termios.h) and also kernel ioctl API (asm/termbits.h).
> 
> Signed-off-by: Pali Rohár <pali@kernel.org>

Patch applied!

Thanks,

Alex

> ---
>   man3/termios.3 | 23 +++++++++++++++++++++++
>   1 file changed, 23 insertions(+)
> 
> diff --git a/man3/termios.3 b/man3/termios.3
> index 7b195c95912b..500cf0713e4d 100644
> --- a/man3/termios.3
> +++ b/man3/termios.3
> @@ -953,6 +953,24 @@ to by \fItermios_p\fP to \fIspeed\fP, which must be one of these constants:
>   	B1152000
>   	B1500000
>   	B2000000
> +.ft P
> +.fi
> +.PP
> +These constants are additionally supported on the SPARC architecture:
> +.PP
> +.nf
> +.ft B
> +	B76800
> +	B153600
> +	B307200
> +	B614400
> +.ft P
> +.fi
> +.PP
> +These constants are additionally supported on non-SPARC architectures:
> +.PP
> +.nf
> +.ft B
>   	B2500000
>   	B3000000
>   	B3500000
> @@ -960,6 +978,11 @@ to by \fItermios_p\fP to \fIspeed\fP, which must be one of these constants:
>   .ft P
>   .fi
>   .PP
> +Due to differences between architectures, portable applications should check
> +if a particular
> +.BI B nnn
> +constant is defined prior to using it.
> +.PP
>   The zero baud rate, \fBB0\fP,
>   is used to terminate the connection.
>   If B0 is specified, the modem control lines shall no longer be asserted.
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
