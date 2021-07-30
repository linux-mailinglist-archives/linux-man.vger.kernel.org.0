Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 910213DBE96
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 20:59:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230094AbhG3S7i (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 14:59:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230455AbhG3S7g (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Jul 2021 14:59:36 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9354C061765
        for <linux-man@vger.kernel.org>; Fri, 30 Jul 2021 11:59:30 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id l34-20020a05600c1d22b02902573c214807so4367082wms.2
        for <linux-man@vger.kernel.org>; Fri, 30 Jul 2021 11:59:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=jBUZfPhFULwG8JHy4Jn+6klcoT129cX05cwwPJHSzoA=;
        b=PzdtdB9HhRBQhLJtPSgU58QmHmOybNTeWD43ZcMOH96hZlBRnajYYsibQLh914Wb3B
         LgWZ3Qn2FMX4vJZZdTm+ofVSAGWaInMXRQY/IMKo80ULVvgC5a3hVY5/e1PXMcPdZZjY
         IzbWYbbdm7Kd7m/b05kDRUc86Y6SUiXWpJ8G+fdwEX3pHxMydtj/6TElkmcbwe4kajbl
         Gd0AVHjCQuGs72PNSkXaD+3YH4AWQMjjhd5lW+QPbcBvulTjhavJo8PFvZI7aK2g+/LD
         vIzZMtnCd30pTdyjyvSbXNkcp4Cz1ujFyT5DszhkMDLyBYsrO745n6gP/EAgCkw8MFYu
         vc7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jBUZfPhFULwG8JHy4Jn+6klcoT129cX05cwwPJHSzoA=;
        b=KetpOaDMmZyRuoQcWD9QIbOn83tWaW3uF/r7LJuKXY/L1GznJerDNCF4fUV7lUnDO/
         lfV02yodp7kH55rhTV+f3b+2DBnaS6aktGFBzO58ndtuBUC7wgejqrWfJpVoMHQshe0i
         i8XOxkl8zCDmXIGv55usovey9cmXv/jU0fx7ky73FnLs83QQowj6w4uP3vxYH+IHWM/1
         amhPoG6KlKIqumGI9AFoHoYvWH5bWSDOsLqI2YTxhbVOKTMIPi0ZYx9Kta9Zc+GCs1SE
         mEnZWNtcXEvaUSMN27FTEEAtizJDVG6w0aYRFtH9/LWUR0DXCu2hf7c32DZid5amus12
         aO/A==
X-Gm-Message-State: AOAM533zaNfLP/gAYojmZ26HoU8biVdErohBCqeDf7xcTOfCcx+YQqJB
        NyjiNCJ9LQyLueJd1nvIrsY=
X-Google-Smtp-Source: ABdhPJyALC7GP9Vn0mKFWt+A6VjQLx+5aT6LsWGFsHsyQmNvU5gggHm/oxRViPIE0XtBID28R03mJQ==
X-Received: by 2002:a05:600c:4fd1:: with SMTP id o17mr883814wmq.131.1627671569317;
        Fri, 30 Jul 2021 11:59:29 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id j140sm2473679wmj.37.2021.07.30.11.59.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 11:59:29 -0700 (PDT)
Subject: Re: [PATCH v2] termios.3: Add information how to set baud rate to any
 other value
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210730153044.23673-1-pali@kernel.org>
 <20210730184536.13620-1-pali@kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <2c52aeed-d1dd-fbda-934f-690162a92305@gmail.com>
Date:   Fri, 30 Jul 2021 20:59:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210730184536.13620-1-pali@kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Pali,

On 7/30/21 8:45 PM, Pali Rohár wrote:
> Signed-off-by: Pali Rohár <pali@kernel.org>

Patch applied.  Thanks,

Alex

> ---
>   man3/termios.3 | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/man3/termios.3 b/man3/termios.3
> index b7cdec507524..7b195c95912b 100644
> --- a/man3/termios.3
> +++ b/man3/termios.3
> @@ -968,6 +968,13 @@ Normally, this will disconnect the line.
>   for the speeds beyond those defined in POSIX.1 (57600 and above).
>   Thus, \fBB57600\fP & \fBCBAUDEX\fP is nonzero.
>   .PP
> +Setting the baud rate to a value other that those defined by
> +.B Bnnn
> +constants is possible via the
> +.B TCSETS2
> +ioctl; see
> +.BR ioctl_tty (2).
> +.PP
>   .BR cfgetispeed ()
>   returns the input baud rate stored in the \fItermios\fP structure.
>   .PP
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
