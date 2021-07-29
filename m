Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C9263DA1F9
	for <lists+linux-man@lfdr.de>; Thu, 29 Jul 2021 13:19:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234105AbhG2LTm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 07:19:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232149AbhG2LTl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Jul 2021 07:19:41 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6BC9C061765
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 04:19:37 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id b7so6471665wri.8
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 04:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Dfrc4oCG1s+ogDJxiuNgfA6JPwOBgN1ljUkbT6bc57k=;
        b=DXeKtd9xm46+Rz9EXVljUtDdhvefgi6X0t65gloQkMuVnv+iElyiFju9DuCGyMdeEu
         75FNpgOG5CxKZf0tVT3ejBK86Co2bwsIQFfSq2/bz86Q9JHsdXPp28u9DgABfIOmH9NM
         lo0+5v4AtPEKWOGf1/0aS3VQNfmSkppQiSCy1y1ciKDdTchgvk7zZhsX3DJM2MKXa772
         LUnqCiviorhgrYXzJwpOYDmBg0J2UZCADdIGgB5KhMvX1HncfbQZvp4Y8HJWxj2d/BEz
         46EjiArKs1h95tUTVl/1HVor7S8HR9xX6appiCRQnJ8/Mt2nDjN/vzax/PllyKHrZxN0
         2FWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Dfrc4oCG1s+ogDJxiuNgfA6JPwOBgN1ljUkbT6bc57k=;
        b=RCwNLkYOys2kPNQSlruxcPcxC+QiUQaoWxlnT30a5Ao0oPAxNk+rsYp+EK/v/tYSPF
         lEAz8oP8ljSmop8POSCeBv/uTwPVygzo2cNaIHkq66GH7YVK3iQQqReN24CM32PjENLL
         imUkPtOd2QRBRRy8skN0sCiTJNszqwkkVLG22xlzakic9dg3+2idsg11SuY6ieSrc4w3
         AR5jN9DpcVjqLcSBwNoh8GBTSeHSCZDE2C72kRf6suI22aHk/YHlUdrxNTTBCjO0bvSH
         HH+oCOdgrrpOVyDC801ZEQ932zzI7yO3xVDHrjA5TSOYJMmTGyIc5FKpkHDOOFMpoF5a
         ikCQ==
X-Gm-Message-State: AOAM5322mBiV217LUDUkpzKvv4tBE64G7pzr5CVliIaDzw3jPYf4K3fI
        PqoDMKpFPpd3UORlKaG5H7a4+BwCt78=
X-Google-Smtp-Source: ABdhPJxbf1LyapW9lGK5cHe+MopkmnQVrONdfXQgXeQMVMPjbUev35f8ywlSd1tY189hOm0JFVG8bA==
X-Received: by 2002:adf:e94b:: with SMTP id m11mr995180wrn.339.1627557576586;
        Thu, 29 Jul 2021 04:19:36 -0700 (PDT)
Received: from [10.8.0.150] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id i5sm3182775wrs.85.2021.07.29.04.19.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 04:19:36 -0700 (PDT)
Subject: Re: [PATCH] termios.3: Document missing baudrate constants
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>
References: <20210725225357.7271-1-pali@kernel.org>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <6512a0a7-7ad1-9490-ea93-b64f3f54dd23@gmail.com>
Date:   Thu, 29 Jul 2021 13:19:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210725225357.7271-1-pali@kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Pali,

On 7/26/21 12:53 AM, Pali Rohár wrote:
> These baudrate macro constants are defined in bits/termios.h and are
> already supported.
> 
> Signed-off-by: Pali Rohár <pali@kernel.org>

Patch applied.  Thanks,

Alex

> ---
>   man3/termios.3 | 12 ++++++++++++
>   1 file changed, 12 insertions(+)
> 
> diff --git a/man3/termios.3 b/man3/termios.3
> index 797778680fcf..01c20994424d 100644
> --- a/man3/termios.3
> +++ b/man3/termios.3
> @@ -945,6 +945,18 @@ to by \fItermios_p\fP to \fIspeed\fP, which must be one of these constants:
>   	B57600
>   	B115200
>   	B230400
> +	B460800
> +	B500000
> +	B576000
> +	B921600
> +	B1000000
> +	B1152000
> +	B1500000
> +	B2000000
> +	B2500000
> +	B3000000
> +	B3500000
> +	B4000000
>   .ft P
>   .fi
>   .PP
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
