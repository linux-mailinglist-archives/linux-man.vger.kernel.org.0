Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E6153E3CB6
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 22:30:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230049AbhHHUag (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 16:30:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229977AbhHHUaf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 16:30:35 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78D43C061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 13:30:15 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id cp15-20020a17090afb8fb029017891959dcbso3421045pjb.2
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 13:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8OhlX+FRgxl9uHx051akRggeGe2Yp6Y5N0nWtWk4C2g=;
        b=FjRE8DFGgiInGBMDHECNVJYH2ykQzTNsZrfjlHBVitmf9Sk+2W3qlb3GKtoQQDOGOj
         /nbbjLwrTwx60/Qc8JFLpflP/EroNXCuEyTPCAHOhsD4mfeiQy3EhjChDWCbBVfx0uwh
         kYW0IA9R1oFR/qy//oB3waLJMdXkopDVlhjomOH3uHWvFtHTXBBiXQkXboFicRuFMKwD
         jKRqERBu9YNHrWE/B6QFPbPp7s5xg3E22PPGaFBYBLqLkIJ0hCHn3XKvMr3DF8BnOEIR
         wEmBFMaJfWK/+wD+nZ4Sz2uO/JBoLlljPRz6u32TgJ0lE6+LsfPmwfM9fAmhnhd5ozo0
         ungw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8OhlX+FRgxl9uHx051akRggeGe2Yp6Y5N0nWtWk4C2g=;
        b=IcXNIgTjVCAwxnQ3sYVUIlDH4AFJkprM4MFQSjksT5PiFAMZgvmRxz9kwjifpEGg7O
         gme/cEf+l5AmxAQlmQ/Z7GFk3FxJtNFIG5UEmDtYWjNgQeM60DPdetBYuPDwUHNFF+HS
         FMb0+9gruO2HNk3BdJFkamtOee7+r7RShnPKzS/f24kkKEXTJgJl90QfXS+1oZOB2otI
         6IFsVbI56WDWnBWw0lecLz2kMiSIxEv3TUgxLuKXKLxY9xFjyhWUD4Ue+M0avUL+Kr8R
         PnW836O6TCLYtISNd01U83tsNOzFBz5VM+8kUdFYmPX6eqnZzVSAjnqbhRG+B28+U5bp
         kaYw==
X-Gm-Message-State: AOAM5302IN+htn+nlH736SW8O4cjZLowN6Z6/n1/31kY/L36OvJsu4iz
        BGgzgZAyvawDvLwD/7V7GwO5QgdNF9g=
X-Google-Smtp-Source: ABdhPJzo7e+fTcLS0gcMlI7bT6OmZfnddXP43d794xcWdJoDGAP0ekZDZ6NGrZrxk4EVfshY6CtNag==
X-Received: by 2002:a17:90a:c087:: with SMTP id o7mr2241746pjs.57.1628454614699;
        Sun, 08 Aug 2021 13:30:14 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id g19sm19085186pjl.25.2021.08.08.13.30.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 13:30:14 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 09/23] termios.3: Document missing baudrate constants
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
 <20210808084133.734274-10-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f654d0ff-93b2-ba6c-0dea-04e4a7ea48ca@gmail.com>
Date:   Sun, 8 Aug 2021 22:30:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210808084133.734274-10-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Pili and Alex,

On 8/8/21 10:41 AM, Alejandro Colomar wrote:
> From: Pali Rohár <pali@kernel.org>
> 
> These baudrate macro constants are defined in bits/termios.h and are
> already supported.
> 
> Signed-off-by: Pali Rohár <pali@kernel.org>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man3/termios.3 | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/man3/termios.3 b/man3/termios.3
> index 797778680..01c209944 100644
> --- a/man3/termios.3
> +++ b/man3/termios.3
> @@ -945,6 +945,18 @@ to by \fItermios_p\fP to \fIspeed\fP, which must be one of these constants:
>  	B57600
>  	B115200
>  	B230400
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
>  .ft P
>  .fi
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
