Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 76EA2144607
	for <lists+linux-man@lfdr.de>; Tue, 21 Jan 2020 21:41:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728139AbgAUUlf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Jan 2020 15:41:35 -0500
Received: from mail-pj1-f68.google.com ([209.85.216.68]:50513 "EHLO
        mail-pj1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727350AbgAUUlf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Jan 2020 15:41:35 -0500
Received: by mail-pj1-f68.google.com with SMTP id r67so1945030pjb.0
        for <linux-man@vger.kernel.org>; Tue, 21 Jan 2020 12:41:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Dsf13jWvIfrfbJu2eKC0AiraCOzqbfbFQELvGaFGEUY=;
        b=PjE75mTO7zpe1VSItjMVg8L4H5HIF7seGeLmxIoyiOUIc1bI4sSPiDrwPebAvLV9q0
         5nUZ7mjsWxLm+rdb8c5iR7+WTeb5JpbACcUUwQVuMvhzEzC48HzgUWVbq1KNCeEB4Aik
         AMEGgZdbrpFLiJCOSfJsZYWe5tJDn+dnR4HGBkJv0oC/+I9dzog6XFEQiWgnj5r86lra
         zBHSSx65kML/zbJrUnXU/M3V3RhlDeXy2sRtDemRTgv2iLrkQb/IyIBl2D4THpK1CkLP
         JZDZx1EKgVqlV/J7IcePweCtOegzzZ46lcndmJ+nvOXX2DXmVgFINL9/WdLMzQnTxt5s
         jWoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Dsf13jWvIfrfbJu2eKC0AiraCOzqbfbFQELvGaFGEUY=;
        b=jSB9/IcuMn3XIz/m+ZnQDkBbFYrjaUgUSiHgJotkeo0hOKK+9OCN+ljTmPV0E+Go4V
         ZyqEaLzWKFMwTJFQQmt4EzOKRxp6nSb3E4kXkG7/kNHo/Qsv64Lvg3f6F2NRBdGAKf00
         VCF1LrFOMtBHkeXTqxin+Gesm4cHKkC2iS2uBzaGESwHSBlgzBljDzq92UAsteGURJOx
         1C04F5+nZ6EvAZ4UwXKwcYPqaul5ETQN4WtqV1cRypuJDBCcG6/frhGEeNJ6vVsZEyrv
         wk5powUIaxUEbJkPig+QS9JhJO75aE1X9O+YNteM1ni1RAjzGlzS1d16kHN6yv2v8WJu
         Aj8g==
X-Gm-Message-State: APjAAAXnFry6lIstCtBIlxtOotQkL0vsAqE5jYGB5dsiWmez0MlEzKQm
        kooq+X5sR/YUfrXItAXVJEaJ44E2
X-Google-Smtp-Source: APXvYqyU8UFgs7yidbjOGyvD7Qo7XASoQ5tBBgG2xUKb5fxZwLTtK2pw0TB82Hkpd2rcHu2cC5qMPA==
X-Received: by 2002:a17:90a:e657:: with SMTP id ep23mr254431pjb.105.1579639294778;
        Tue, 21 Jan 2020 12:41:34 -0800 (PST)
Received: from [192.168.1.72] (122-58-99-230-adsl.sparkbb.co.nz. [122.58.99.230])
        by smtp.gmail.com with ESMTPSA id ep12sm338325pjb.7.2020.01.21.12.41.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jan 2020 12:41:34 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v1 2/2] loop.4: Document LOOP_SET_BLOCK_SIZE
To:     Yang Xu <xuyang2018.jy@cn.fujitsu.com>
References: <1578296543-4195-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
 <1578296543-4195-2-git-send-email-xuyang2018.jy@cn.fujitsu.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <bd9daeae-0c09-e503-5316-4499102663b0@gmail.com>
Date:   Tue, 21 Jan 2020 21:41:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <1578296543-4195-2-git-send-email-xuyang2018.jy@cn.fujitsu.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/6/20 8:42 AM, Yang Xu wrote:
> Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>

Thanks, Yang Xu. Patch applied.

Cheers,

Michael

> ---
>  man4/loop.4 | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/man4/loop.4 b/man4/loop.4
> index afb1d05c5..9fd2b3eb4 100644
> --- a/man4/loop.4
> +++ b/man4/loop.4
> @@ -159,6 +159,13 @@ Set DIRECT IO mode on the loop device. So it can be used to open backing
>  file. The (third)
>  .BR ioctl(2)
>  argument is an unsigned long value. non-zero represents direct IO mode.
> +.TP
> +.BR LOOP_SET_BLOCK_SIZE " (since Linux 4.14)"
> +.\" commit 89e4fdecb51cf5535867026274bc97de9480ade5
> +Set the block size of the loop device. The (third)
> +.BR ioctl(2)
> +argument is an unsigned long value. This value must be 2 to the power of N
> +and in range [512,pagesize]. Otherwise, it will get EINVAL error.
>  .PP
>  Since Linux 2.6, there are two new
>  .BR ioctl (2)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
