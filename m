Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30E103E3CAA
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 22:12:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230337AbhHHUNR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 16:13:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229977AbhHHUNQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 16:13:16 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA5BFC061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 13:12:57 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id mq2-20020a17090b3802b0290178911d298bso3545952pjb.1
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 13:12:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=SR+tom1M8xt/u02SvsiojRBSeCwEbouN2H8XESUJu7A=;
        b=jzYu1hitPTmsEoCKTRutEA2gM1q0RHqpiaX7oB+wpf852w6KQiKTzYHrkrlMkQOZ38
         lAsSNqWdlMk787A4k9P5qukLpjOHRjc8xmJKYby7sHGVc6PN7UlagX+Pxgr1Bww5Q0+F
         MKfgw/s7/e9eBWfUr1AN3108QyS2HSmUTsh4zwer7mMY5cPWjFk9J8sgl8dvGi0IoZjU
         utIkyXH/UpNYho39LhHJFbte3pazQgeCiREdBHIv0IUqBP0WRKsvcdKG+uYX3eBb1Dq2
         /K9qrh336QWgXPmh0QWl6ZMZOSKCDIJIDDj6fmaqWtUbgtLsEDs1rEDrvvVc3M6PDFeE
         qamg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=SR+tom1M8xt/u02SvsiojRBSeCwEbouN2H8XESUJu7A=;
        b=hzYGmSkrp+J++DDaJqLaRdlselpZobUVPAq8KHzb26TbfFj4UhUpD15OLNH1DRbQly
         oDh9quPQKvcPM6R8VynvlnW6N1uDvfd5lSWU5F/i5ypsR11MbVw0QRy/Fll8NeYoEYpg
         xEAUd/N/LOW1OqjKqsT98mK+oQFeaGgmug83yTraQrp+cQiBnIoQXL5YBgSccUlaAr2f
         0v0EvCVswSdmsPn4/dMT7/pPN/EuuK/pDP948L6aRQLBrGIqIzU0QynBi+c8Dhb45Ow9
         FDHaNdcsEfDOaRYIT96h+RaeGwFUM59Q0VlIK3Txx0+BjqocVp2DZspAyBLtNi4DSwLj
         LSZg==
X-Gm-Message-State: AOAM5327Aetjlk6l8wxUrA65cj1q1QL5VAe7jLGAJgCvaR81nk1KkfCh
        RzubGfgx5Ze8Q/9Q//UH+mtY8LdR3cw=
X-Google-Smtp-Source: ABdhPJy+r5MyKwKQtcEAnVqvnk9eR7qBNq3+le8sOAOSzLL5NTIvPgSdS+pVXP17Ww45T15U8Zyl7g==
X-Received: by 2002:a63:550c:: with SMTP id j12mr511473pgb.31.1628453577074;
        Sun, 08 Aug 2021 13:12:57 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id y4sm19572464pjg.9.2021.08.08.13.12.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 13:12:56 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 14/23] ioctl_tty.2: Update DTR example
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
 <20210808084133.734274-15-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f233528f-d91c-23a8-05ea-d9e299f84da3@gmail.com>
Date:   Sun, 8 Aug 2021 22:12:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210808084133.734274-15-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Pali and Alex,

On 8/8/21 10:41 AM, Alejandro Colomar wrote:
> From: Pali Rohár <pali@kernel.org>
> 
> Do not include unused (and incompatible) header file termios.h and include
> required header files for puts() and close() functions.
> 
> Signed-off-by: Pali Rohár <pali@kernel.org>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael


> ---
>  man2/ioctl_tty.2 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
> index 967b5c4c7..519e4606f 100644
> --- a/man2/ioctl_tty.2
> +++ b/man2/ioctl_tty.2
> @@ -730,7 +730,8 @@ Insufficient permission.
>  Check the condition of DTR on the serial port.
>  .PP
>  .EX
> -#include <termios.h>
> +#include <stdio.h>
> +#include <unistd.h>
>  #include <fcntl.h>
>  #include <sys/ioctl.h>
>  
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
