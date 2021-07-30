Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1A9A73DBE61
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 20:30:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230246AbhG3SaR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 14:30:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231140AbhG3S3d (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Jul 2021 14:29:33 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 870E8C061765
        for <linux-man@vger.kernel.org>; Fri, 30 Jul 2021 11:29:27 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id c16so12405168wrp.13
        for <linux-man@vger.kernel.org>; Fri, 30 Jul 2021 11:29:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=UUVXNIa54hQVp+yy5qTxA3/SpqPKuPluOD0hy4QjgzY=;
        b=vCufcbw1J2rNYaTLSBrTyz6p6NEMJ2oijMJUxEciYt0bhvBL757D2Bm5TlfOhqt0Y4
         NKamhVAv6wOGaXV5IGXngYwnH7RTR5ByNbK7zJ8NWOwMGPk6VVUmBbUNlcjdbw2bZLfT
         nr8g62a20WamK3Sd4q1mQOSXXYxVpZlQRwY3AdxM5QRZC+qNMTnZMN0guXdPI8Rcpg2b
         ALXh1oRS1idIRL3pqdV5FI+63muhQws+lV+VNeKEkr3JrqOR0L4V2reGHxHXLLDZSaGw
         hT5remL/Og/1j/AKU3/L7l3NmA7+NtL8swgBpDgNqbt/DKlwd9w1YD4jwHA5Zxd1eTkB
         PsXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UUVXNIa54hQVp+yy5qTxA3/SpqPKuPluOD0hy4QjgzY=;
        b=eyM+fINzEjPacfGWY5RfVQA7hcg+CWTnmtgfJohTZ5I8npEHjF5bCwQutJnFe9WZ4A
         P8pobVHtxbr37YyX1P9b/Umx/IVVSqJ47zld0AVi6hUrEXnGyqaKBu5XVpf9htdQLskO
         ML0iRA0wMIHYu9TzrcXuH8ysVEI4Bq9qDyPohtHwVTFrK2sHs9QC9ns5xInWMxndn84y
         HW2KmfoYm3xD9TLxbwu6+EaAhjTsLoP7g4b+Vjom1C/Td3KQCuKaTHDWgjWxNp4mWi+e
         627yGMMZj7/ZjVSYvxzgAwwduyQxUCyBDuCk1DkCeq8vPHkHuxRhxi1l9OM9y89Dyet+
         Bhrw==
X-Gm-Message-State: AOAM531qsoNnAi4Kz8VhmMbcNJfu9i2CsorJUvpcRq5UhqZJO+TsictU
        ipNB5B9PFX4JeV+kDvg1wJ8=
X-Google-Smtp-Source: ABdhPJxQ0nNDLEfI4ci/p7aJUIf3PgnvqKk16j0q8KURgpZoBykE/cYtynHt7aQ3Fk0PuQSTXlGkNw==
X-Received: by 2002:adf:f288:: with SMTP id k8mr4442669wro.350.1627669766214;
        Fri, 30 Jul 2021 11:29:26 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id h14sm2559350wrp.55.2021.07.30.11.29.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 11:29:25 -0700 (PDT)
Subject: Re: [PATCH] termios.3: Add information how to set baudrate to any
 other value
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210730153044.23673-1-pali@kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <d8e81fd3-0a7d-8fc8-4d2f-863aec8f6f14@gmail.com>
Date:   Fri, 30 Jul 2021 20:29:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210730153044.23673-1-pali@kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Pali,

On 7/30/21 5:30 PM, Pali Rohár wrote:
> Signed-off-by: Pali Rohár <pali@kernel.org>

Please see some comments below.

Thanks,

Alex

> ---
>   man3/termios.3 | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/man3/termios.3 b/man3/termios.3
> index b7cdec507524..4d4593a33c32 100644
> --- a/man3/termios.3
> +++ b/man3/termios.3
> @@ -967,6 +967,12 @@ Normally, this will disconnect the line.
>   \fBCBAUDEX\fP is a mask
>   for the speeds beyond those defined in POSIX.1 (57600 and above).
>   Thus, \fBB57600\fP & \fBCBAUDEX\fP is nonzero.

I think this should go on a separate paragraph, don't you?

.PP?

> +Setting baudrate to other value than defined by

wfix?:

Setting the baud rate to a value other that those defined by

> +.B Bnnn
> +constants is possible via

s/via/via the/?

> +.B TCSETS2
> +ioctl, see

s/,/;/

> +.BR ioctl_tty (2).
>   .PP
>   .BR cfgetispeed ()
>   returns the input baud rate stored in the \fItermios\fP structure.
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
