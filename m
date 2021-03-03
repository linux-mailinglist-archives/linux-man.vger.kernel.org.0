Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C870932C759
	for <lists+linux-man@lfdr.de>; Thu,  4 Mar 2021 02:10:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1383743AbhCDAbj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Mar 2021 19:31:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1388152AbhCCVFt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 Mar 2021 16:05:49 -0500
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3D73C061760
        for <linux-man@vger.kernel.org>; Wed,  3 Mar 2021 13:04:56 -0800 (PST)
Received: by mail-ej1-x631.google.com with SMTP id hs11so45025555ejc.1
        for <linux-man@vger.kernel.org>; Wed, 03 Mar 2021 13:04:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=EpzJpKjsZIFmPzU5o7zUoix1DtnbOE9YewyFdahkW0g=;
        b=GBHo8roCNoiWnp8gM6Vq709+q9MXXrl2Agz0qblho1STRwVdqTR221cK3nyqgXpyPO
         crAff2hiT/qjAqMV1dD2Je3eULQr3XNAzvGZWxJv5CO2cFU3H0IIG4IPjwMdKomLsBtz
         zaKwCG9Et0RMbS3ImatB6qXS8OwRcMV5n3Oj/WorU1QmHTTUw+uiXvfu4mkYYE4djwQB
         9WjvduCWZtp7xXhp0Do/N7ExqU+lYY4g7KzH5wQyPtRxkRqhMWe1GS8KIkmJtM02K2Oy
         hywootLrvHhPVaLNRZaR1q7PH7jHgBEJoHlqblz1M5UcIwdhPklKlzNBpzoTOYgceR6M
         Wa8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=EpzJpKjsZIFmPzU5o7zUoix1DtnbOE9YewyFdahkW0g=;
        b=nv469OdZhI8AjiWbaJ+J5Bdz1WuTABFr1sLoW5A/z5tQwGNZBiNeG+WukjTv/8e8EK
         Rhg+4/wLMYPPKEzHW/U/P3Ui/Kx0GtQIAhA7SpaxCnIRtPCCGMPM6ipYwO+QJ8bHC3qb
         TnIeYKvZ/uQHwCojPXMY/Yy4ejHa5uvcLyOlkxy3uwue3pPeQvKMI7HkQB0rGv9Yhboh
         dJvyk+e/XOhJYS5cym0oGcYQHIOEZZYxkj0gJV4/3zdDIgZKxRlEwK5nU9Fp5jV3j9bn
         wct4SOUTCjwKi2HtD/7ZUAkg1bLKBT4iaU41qOnf4Vfhsa0BrdjqDdasd+aNyDdIah81
         cT+g==
X-Gm-Message-State: AOAM5310OGSkXAyq+qkjbosmMJMC4vgG3v6sAZ+oIn9VjZ+qV+z78l0A
        eHSmBbKdG4bRs9Gm6S0gZfORHvV911AbkA==
X-Google-Smtp-Source: ABdhPJy7DXo37RcPtt9xlPY789KpxeoyOlsS5vV2GD6fIai0p3pn61JiXgAuRpGNBHIhmkcdMPkofA==
X-Received: by 2002:a17:906:af91:: with SMTP id mj17mr653445ejb.230.1614805492435;
        Wed, 03 Mar 2021 13:04:52 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id m10sm4511607ejx.10.2021.03.03.13.04.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Mar 2021 13:04:51 -0800 (PST)
Cc:     mtk.manpages@gmail.com, Jakub Wilk <jwilk@jwilk.net>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] scripts/bash_aliases: tfix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210226201103.9864-2-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d4fa302b-79d4-bfad-7713-79c7432ebc23@gmail.com>
Date:   Wed, 3 Mar 2021 22:04:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210226201103.9864-2-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello ALex, and Jakub,

On 2/26/21 9:11 PM, Alejandro Colomar wrote:
> From: Jakub Wilk <jwilk@jwilk.net>
> 
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks.

Patch applied.

Cheers,

Michael

> ---
>  scripts/bash_aliases | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/bash_aliases b/scripts/bash_aliases
> index c0c8bc33e..a14c65cd4 100644
> --- a/scripts/bash_aliases
> +++ b/scripts/bash_aliases
> @@ -128,7 +128,7 @@ function man_lsfunc()
>  	|uniq;
>  }
>  
> -#  pdfman()  reanders a manual page in PDF
> +#  pdfman()  renders a manual page in PDF
>  # Usage example:  .../man-pages$ pdfman man2/membarrier.2;
>  
>  function pdfman()
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
