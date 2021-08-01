Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB25C3DCB49
	for <lists+linux-man@lfdr.de>; Sun,  1 Aug 2021 12:56:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231462AbhHAK4J (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Aug 2021 06:56:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231461AbhHAK4I (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Aug 2021 06:56:08 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26D6AC06179F
        for <linux-man@vger.kernel.org>; Sun,  1 Aug 2021 03:55:52 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id j2so17798892wrx.9
        for <linux-man@vger.kernel.org>; Sun, 01 Aug 2021 03:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=LmGbQxbJUoY0rEEzbBTCmvVRX6OkQOBCJCNzgUlDVCM=;
        b=YcGfEOH5vlV7h2C/Q7EJCpSpqTZGCNKrYz7QXBXIPxOmH0BF3PY2yvfkb5iBTyPWQv
         iUMJbHBGFkLS8VGpwz0FfzVBhP4ydpgvX2tvIXoBcoV9bihyQDpfuttrMI8X12zLrSah
         MLCrWDFmvzC8pmMFCEZK16Y1VVMigtx/2mF1tIkPnoANoc1YcETMggs82YXGYTIzN0A6
         XmAJbUty2+s83wKgA6Be6cgSpIE8JXQ59BOSUDELu438JY4lM/WfRUBD3+7wMREsAppg
         suUibCTFxwjdRm7/AhnLbyN+00aLVteMbx37YRwA+GJwhfGPzTxsFuFnw5xQ2WoTM49i
         aENQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=LmGbQxbJUoY0rEEzbBTCmvVRX6OkQOBCJCNzgUlDVCM=;
        b=jyNkguGK5mqmXXctYq5HfzRQ3uwFfymtALGXMyjfuHd/0R+tdlllCVlGhGAtXpAH3D
         U58n5O/6TodOCj2TiOyAuZYYUqi2PHpHoMfPNzf29yzYpq3bLacxERqlxhAfXQ0hju9q
         4nxO7CYfybKjzTimOME8a7wvFtj9ci/KL18T96fHmu93l7S0d5ri/WjHNph/xobxwT0T
         AB/ixJLPeRQrhJar36SKSn0GXz+j95kPTzc8Qlq8hEZIU6xNJkxqYpOZqu/yJq+rg6Mf
         oC5mT/0yFTgDs0wvFJXf9VrFy8R+dn5OY6Qg/G5DC076Jxgwq/04mTMlMQLN4jl8k4eH
         6c6g==
X-Gm-Message-State: AOAM531QCI0/uNwaqfB/nF64my9wd7ArxA/rMhV/NpCJ+R2I6rPLHemK
        Mi/CKBH+JXHhWpFyWPjQXIM=
X-Google-Smtp-Source: ABdhPJxSUq5RuySGBjIernxIEUqX5tEOgXgzBXdXITFvjySGZtpQ/ZSexBXdxOvr675CZDbvW5sqfg==
X-Received: by 2002:adf:f24f:: with SMTP id b15mr12040783wrp.22.1627815350716;
        Sun, 01 Aug 2021 03:55:50 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id l18sm7883574wmq.0.2021.08.01.03.55.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Aug 2021 03:55:50 -0700 (PDT)
Subject: Re: [PATCH] termios.3: SPARC architecture has 4 different Bnnn
 constants
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>
References: <20210731145501.9944-1-pali@kernel.org>
Cc:     linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <b1327866-75fd-7fd3-c9c7-a0f8d81f7748@gmail.com>
Date:   Sun, 1 Aug 2021 12:55:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210731145501.9944-1-pali@kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Pali!


On 7/31/21 4:55 PM, Pali Rohár wrote:
> SPARC is special, it does not have Bnnn constants for baud rates above
> 2000000. Instead it defines 4 Bnnn constants with smaller baud rates.
> 
> This difference between SPARC and non-SPARC architectures is present in
> both glibc API (termios.h) and also kernel ioctl API (asm/termbits.h).
> 
> Signed-off-by: Pali Rohár <pali@kernel.org>

Except for some wording issues (see below), looks good to me.

Thanks,

Alex

> ---
>   man3/termios.3 | 23 +++++++++++++++++++++++
>   1 file changed, 23 insertions(+)
> 
> diff --git a/man3/termios.3 b/man3/termios.3
> index 7b195c95912b..2ff8cc80e9eb 100644
> --- a/man3/termios.3
> +++ b/man3/termios.3
> @@ -952,15 +952,38 @@ to by \fItermios_p\fP to \fIspeed\fP, which must be one of these constants:
>   	B1000000
>   	B1152000
>   	B1500000
>   	B2000000
> +.ft P
> +.fi
> +.PP
> +On SPARC architecture are additionally supported these constants:

On the SPARC architecture,
or
On SPARC,

these constants are additionally supported


Or, if you want to avoid the comma:

These constants are additionally supported on SPARC (or: on the SPARC 
architecture):

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
> +On non-SPARC architectures are additionally supported these constants:

Here you don't need "the"; "on non-SPARC architectures" is correct.
But for the second part of the sentence, the same fix as above applies.

> +.PP
> +.nf
> +.ft B
>   	B2500000
>   	B3000000
>   	B3500000
>   	B4000000
>   .ft P
>   .fi
>   .PP
> +Due to differences between architectures, portable applications should check
> +if particular

if a particular

> +.BI B nnn
> +constant is defined prior using it.

s/prior/prior to/

> +.PP
>   The zero baud rate, \fBB0\fP,
>   is used to terminate the connection.
>   If B0 is specified, the modem control lines shall no longer be asserted.
>   Normally, this will disconnect the line.
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
