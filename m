Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3475038C4A0
	for <lists+linux-man@lfdr.de>; Fri, 21 May 2021 12:25:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230289AbhEUK1K (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 May 2021 06:27:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231760AbhEUK1F (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 May 2021 06:27:05 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 923BBC061763
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 03:25:41 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id n2so20616887wrm.0
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 03:25:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=xIaULzF2ViPUfWk9H0P3hCJdkUouWXXbolGD+V22y6U=;
        b=jlPNi57MgWaShntZhVoX1Pxm2cv9dezERIUwJj5LAAUswvi/fzsX3NFS6LzWeOGBNU
         si86OHGgQXucKTc5K2wUHoAAzvkJyAgr9S6DmrS2qDrH/2I2pv1r3HdjL5QB9eiaNbtT
         5aL0/1fA5+2pHPP8H1NK0/ubXqw/W9J/nyw/+Vx6bHWt4RK8GZ2iiErBeRlttupEhc79
         hps95FgdSWYUUDjDnszjeICyu8ettMMfyCK9UKUm0F//88PCOQvwr+xA0KQ3ngGRNwt2
         DZskXJkthlWHL1NT7l03PMS2WboXp0OoNZfLsQkJJr7d5mV5o4rJAeKIQgtX97Hxp1GD
         OcPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xIaULzF2ViPUfWk9H0P3hCJdkUouWXXbolGD+V22y6U=;
        b=pqjBX6VJLrkvR6ksFzIYuNzlNrz8+CuoBEOD7NgNk7F8q5YS5qJtJIpP5RmZuP/QyG
         qYYPDjIgrA2u4PWxI79BiJgeBi6KDUUfbcuTNkgsVqAZ0/rsbWLEVoKSb3zqaKqe3mkT
         qcFl3edXjw8hFYdTVyZV2EB+NM+v2f0FDmFauIj3qyJVbXtv7mdz4dyx1zZBzYqCGIy8
         CWLiBNBZxFuz1mmaHWkwsrLe//BRKrH+61eZGQhQXhXnloARcNo2c+dISWhDccxfV2Q+
         ZfUEldGRGKgdOma2gtiO99Pr005cC8zg+UECysRb8ILdMTHg9nryeVT/jCLz4wiDSLnU
         4j3g==
X-Gm-Message-State: AOAM531wiKtW1Zy66u/dHBpzXCKj3yiX0wnANwEJmtKhofoy+PSzisEJ
        tGyTtWOslWnUkdMpR2yEhpU=
X-Google-Smtp-Source: ABdhPJyEE+yO06yeXxYfZpcpmIRB3EfWHJlNrndXCA0odGEYTA6Q9+VUIwSBeQvChMkx1s4kjG6TeA==
X-Received: by 2002:adf:e411:: with SMTP id g17mr8633506wrm.402.1621592740053;
        Fri, 21 May 2021 03:25:40 -0700 (PDT)
Received: from [192.168.43.70] ([46.222.120.224])
        by smtp.gmail.com with ESMTPSA id v3sm1603374wrr.19.2021.05.21.03.25.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 May 2021 03:25:39 -0700 (PDT)
Subject: Re: [patch] ferror.3: tfix
To:     thomasavoss <thomasavoss@protonmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
References: <eojOMoHjzTNlw2LVrkgUktAlMCTsLVkfcVez0_acdOh4ZyoRGjlOM7VqQ5F0Dm25lEm5DqTQt4b0iAeupIjD59ds9ZBzxmg50f9K14ZDbVw=@protonmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <88ea09a2-3075-ea02-ed12-c6d11c737e4d@gmail.com>
Date:   Fri, 21 May 2021 12:25:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <eojOMoHjzTNlw2LVrkgUktAlMCTsLVkfcVez0_acdOh4ZyoRGjlOM7VqQ5F0Dm25lEm5DqTQt4b0iAeupIjD59ds9ZBzxmg50f9K14ZDbVw=@protonmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Thomas,

Patch applied.

Thanks,

Alex

On 5/19/21 2:06 PM, thomasavoss wrote:
> --- ferror.3 2021-05-19 13:24:25.232736993 +0200
> +++ ferror-fix.3 2021-05-19 13:56:18.642744786 +0200
> @@ -85,7 +85,7 @@
> otherwise, it returns zero.
> .PP
> The
> -.BR feof ()
> +.BR ferror ()
> function returns nonzero if the error indicator is set for
> .IR stream ;
> otherwise, it returns zero.
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
Senior SW Engineer; http://www.alejandro-colomar.es/
