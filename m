Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9F71B3DA21F
	for <lists+linux-man@lfdr.de>; Thu, 29 Jul 2021 13:30:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231594AbhG2LaS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 07:30:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231576AbhG2LaS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Jul 2021 07:30:18 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C207C061765
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 04:30:14 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id q3so6567186wrx.0
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 04:30:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Jskg8+Youa32YQyrKMN+7oxkgJNzaZL1HdTC+vQS9uk=;
        b=fFcBhswgYkrCQfhA2h5NrbXVeZdhUTG2pfI9l77OsSF95rZ8UhEl5Lm2ssMQjo0XhQ
         r+a/x3gUQbH3wdLTV7M3r/nv0bF/DuwJLY6fP1AsKOFyyEt5FHWqJyZKO+ztcy3e9htk
         7avhjLlquDOgb3JdT8fACVknGZUA26UJzQjHdczh1diqKixpwnVpsY0zPv5I2Euq3V6Z
         Rrrd2RZda/o35WdumPWcIkBorBTZa6Mu5r1YJINHfOmN6lOqG5oqL/B4Qm1FOx1fTGuc
         BvSLYlTMn2a8tYu4+ZhX6WJTqY/uK8UMyZ3drSUk+SI79TPqDrwasC1niMG0gggsQmsi
         ueFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Jskg8+Youa32YQyrKMN+7oxkgJNzaZL1HdTC+vQS9uk=;
        b=GjcqXf/Y4Wxa26S/REpe3cGwfiQLX4/M/X37CU7pXZSQKo7jp5lW8M6sGNqHm0MCz9
         0db7J7YlvTcTeTKKDLGvNotQQXLqWlLfOQwygXVZpuqKd3H0qcjNS8W7M7hlqjVaLkVw
         TOFlHAUTxVlsOAr25ZN2nwlsZZFF2BLQRdhgHw24E3ntlN/YaF1kgBZsqPWb943jnUWc
         d3Zp68FXWzd0GARmLJlurAXJRdg63LTygEFv8UbP18qtLIlmDOVz3hrU30gUEiTdnVOi
         ypoMHYoDfex+ZW/qBu4epVCYPK3zxfDkjmKoj2VkkfDyDLD1x6V5luky0s9rmXYE8wHc
         HuxA==
X-Gm-Message-State: AOAM533iJ1DrS90EDu0lgxzmW8sCUpdzWwNFDe2heAXaH64bA4HnpvSr
        a0msMT07kxi2bT6joCRSYGsWXuHtVlQ=
X-Google-Smtp-Source: ABdhPJwP6DJKlXYldBFXTXe2qd4NpzHtQNLYsQvWePr/5qlzNVSlTAbmFochI8XrBRY19MktTwHcOw==
X-Received: by 2002:adf:fdc6:: with SMTP id i6mr4338028wrs.387.1627558212969;
        Thu, 29 Jul 2021 04:30:12 -0700 (PDT)
Received: from [10.8.0.150] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id z137sm294374wmc.14.2021.07.29.04.30.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 04:30:12 -0700 (PDT)
Subject: Re: [PATCH] ioctl_tty.2: Document ioctls: TCGETS2, TCSETS2, TCSETSW2,
 TCSETSF2
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>
References: <20210725225506.7404-1-pali@kernel.org>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <271f5402-95f5-4e65-84ee-a227879e1c33@gmail.com>
Date:   Thu, 29 Jul 2021 13:30:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210725225506.7404-1-pali@kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Pali,


On 7/26/21 12:55 AM, Pali Rohár wrote:
> Signed-off-by: Pali Rohár <pali@kernel.org>
> ---

Please see some comments below.

Thanks,

Alex

>   man2/ioctl_tty.2 | 29 +++++++++++++++++++++++++++++
>   1 file changed, 29 insertions(+)
> 
> diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
> index c8269070180f..0c3a8ec24c76 100644
> --- a/man2/ioctl_tty.2
> +++ b/man2/ioctl_tty.2
> @@ -77,6 +77,35 @@ The following four ioctls are just like
>   .BR TCSETSW ,
>   .BR TCSETSF ,
>   except that they take a
> +.I "struct termios2\ *"
> +instead of a
> +.IR "struct termios\ *" .
> +.I "struct termios2\ *"
> +is defined in header file

Maybe s/in/in the/ ?

> +.IR "<asm/termbits.h>" .

Quotes are unnecessary here.

> +If struct member
> +.B c_cflag
> +contains
> +.B BOTHER
> +then baudrate is stored in struct members
> +.BR c_ispeed " and " c_ospeed

We always break this into:

.B c_ispeed
and
.B c_ospeed

> +as integer values.
> +These ioctls are not supported on all architectures.
> +.IP
> +.BI "TCGETS2	struct termios2 *" argp

Please follow the same style as in the rest of the page:

.TP
.B TCGETS2
Argument:
.BI "struct termios2 *" argp

Unless there's a good reason not to.

> +.IP
> +.BI "TCSETS2	const struct termios2 *" argp
> +.IP
> +.BI "TCSETSW2	const struct termios2 *" argp
> +.IP
> +.BI "TCSETSF2	const struct termios2 *" argp
> +.PP
> +The following four ioctls are just like
> +.BR TCGETS ,
> +.BR TCSETS ,
> +.BR TCSETSW ,
> +.BR TCSETSF ,
> +except that they take a
>   .I "struct termio\ *"
>   instead of a
>   .IR "struct termios\ *" .
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
