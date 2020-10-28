Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C33D29D39B
	for <lists+linux-man@lfdr.de>; Wed, 28 Oct 2020 22:45:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726136AbgJ1Vp0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Oct 2020 17:45:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726678AbgJ1VpY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Oct 2020 17:45:24 -0400
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com [IPv6:2a00:1450:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFC3BC0613CF
        for <linux-man@vger.kernel.org>; Wed, 28 Oct 2020 14:45:23 -0700 (PDT)
Received: by mail-ed1-x543.google.com with SMTP id dg9so991153edb.12
        for <linux-man@vger.kernel.org>; Wed, 28 Oct 2020 14:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=XbyJUbji8bcapBo+WaO8MDPe6Zohc4PvmsOj1wkX9/8=;
        b=pi3FdDD1c62OEvrLE2cQ6WXAJplS9uWQNeKXn3/QiDiHpsjx2UhEm+pp2kAefFKt9l
         C0rNUEvaw85kLfGb/Li3kqV34zUEqOCfBrDH24gdqcOe7urOnvzksWXWLwov/jvOpk+8
         lFH3JqlWTtoRZ22QHbLFxB7s+OMUBrkrCqghzdVpSvnbRL+aqdiezdSsQTQRMT4jEhXp
         143JYXpoQI1FUkXPDX/7TuMp0XwG9Deo6L8u2QV/CmrKtEI0kF+YpV7zBzHWJn5Jdhr0
         FhbJI7EeDpoab4vzT50/fTWZXiJdXsY2dVZsPZsjijHAxzoCFoz4Q7k7+6ycqotXrrq5
         5bEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=XbyJUbji8bcapBo+WaO8MDPe6Zohc4PvmsOj1wkX9/8=;
        b=T8HJZz+h/ceXezdfvIWTw1rwFWjsWUUtPcBZ0vRvWul61/JY/jBozNehlmIDdST6N6
         9G/peUzlOPDflAwW81tqEk4trRQCG5jrgtQvggDcEgzIc5cyrbuwHmB+g0XUyFxxKOJ+
         oRqB/WAxlApzWDF1iyQo6+MXxZXVm8oJPcy4gZtenP8X5PzC27ugE0LB+Fb3XxSHriQI
         qB5JSankOB7APCg78DnA499VFo6eYslG+gWlXwc6dRrSbs/4QFc0JQScbHD7otRbFQCl
         A2/naLAdDTphdXOKVbRNEHjpDHUHW8UoatwZV/axN5/sPod8QFQH4IHDlfru1qPh03ci
         1yEw==
X-Gm-Message-State: AOAM5313Sr4YT1walL2U9dyhNcsA101mPvoFrGKA9GuFq+6/ZiKiJWPZ
        qYYpAylWIoymq/xa6uKuCK1YgAdI3eI=
X-Google-Smtp-Source: ABdhPJxYxd3v2o/lpBFTPshzEpHZ0giQ8sHRd0wVd9y3o8rlY9X++ijT9MTG3WgXIwkUrVlcCzXwfA==
X-Received: by 2002:a5d:46cf:: with SMTP id g15mr1561742wrs.342.1603920023964;
        Wed, 28 Oct 2020 14:20:23 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id 32sm1168774wro.31.2020.10.28.14.20.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2020 14:20:23 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] getdents.2: wfix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201028193411.115422-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <448735ec-e6ee-c534-b79e-45ccd4b8474c@gmail.com>
Date:   Wed, 28 Oct 2020 22:20:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201028193411.115422-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/28/20 8:34 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Hello Alex,

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man2/getdents.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/getdents.2 b/man2/getdents.2
> index c08019fac..02790b8f7 100644
> --- a/man2/getdents.2
> +++ b/man2/getdents.2
> @@ -222,7 +222,7 @@ or
>  .I linux_dirent64
>  structure yourself.
>  .PP
> -Probably, you probably want to use
> +Probably, you want to use
>  .BR readdir (3)
>  instead of these system calls.
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
