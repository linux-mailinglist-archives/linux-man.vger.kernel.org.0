Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1264133486C
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 21:00:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231321AbhCJT7n (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 14:59:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231396AbhCJT7Z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 14:59:25 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD55BC061760
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 11:59:24 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id u5-20020a7bcb050000b029010e9316b9d5so8540262wmj.2
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 11:59:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=cmMVCbTqHVrZ+axqvyBMVW68c5PMGcOaIox8UrxKWjc=;
        b=OjOIF+WhgjW1zdbGnM2lVm4nDBGD7WuTHyMyUbWX7J8hkcZA8m9hX1u6U1kFyWc1af
         CCR+JPrm1YbGV+98Bme5M1BinH22c/Ps30tWIdlWMOGWgTq1iQB0tQUKkAqfkyqY2k8N
         9Z2u01FE+jPcgQrdOpx8KXzwdy384ZlQbTFdWFT6Yaim0ijDtlLFqzLzpWFaDsxipUX5
         TAECSSfCiNOKGG7C0WGwUqX4Jh3ZBH7p659dtRdP2wgNtyp/MLMxkI+T+hetWV7wQp1h
         WDdrZy8g1tX6errVLxmR/HEdqlwO7BlMPkzVReq8zUu5pEC5mKjFmsLebC0yDrZ6b2xE
         KCxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cmMVCbTqHVrZ+axqvyBMVW68c5PMGcOaIox8UrxKWjc=;
        b=k2r4w/mhnthfR5ywXNVhJlBbamwv7mEnBZvBN3laU1rFyVlAEHhimTn139O8AsgcAw
         Tg58OylLpFQVxqSrvr3/rMILWTsJQOR5WhKgVLmxPBsb6PmlXcL8OWx3/Pgo5GjfkUpb
         /VdENgujvXZt1A9gQmqcW/myp7IHC3f8eEwlmnRX/rbM/ZJFgOyfW+xFDT0T9MIW57Kp
         fWwGeIOyZU8ygOLbRQ086LOgSRLp9zOZvX16zsY+JIZY70QYiQ6UXhPVvrbi+ucczm67
         5TrSYuz8D2sep4R5FuffHOw6/uLyJM5jLw64PR5WYYfwz5M4b6N5xM3gsSk5C2JmKdGl
         8k5Q==
X-Gm-Message-State: AOAM530wJ8OIMHafBGqyb8R/leyUFiIHfVIauDH8Q4DqGreEIsJNc/dB
        3oDr38ORzt1x32jp5iy5VYU=
X-Google-Smtp-Source: ABdhPJwA2AHj7nHaAee4Hs/7XGojsIfhL8wGoQpEXF/48wacGxUZnSf56Fn34zm3s099Xoc5mfpOOQ==
X-Received: by 2002:a1c:7402:: with SMTP id p2mr4769654wmc.43.1615406363510;
        Wed, 10 Mar 2021 11:59:23 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id x6sm465417wmj.32.2021.03.10.11.59.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Mar 2021 11:59:23 -0800 (PST)
Subject: Re: [PATCH] Remove obsolete admonishment of the GZIP environment
 variable
To:     Josh Triplett <josh@joshtriplett.org>, linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <f48a311d2b3c32d87ee5e4d1679bd83c61b8d72e.1615230417.git.josh@joshtriplett.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <dd39ea77-4d55-0043-84b2-92e6dbdda364@gmail.com>
Date:   Wed, 10 Mar 2021 20:59:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <f48a311d2b3c32d87ee5e4d1679bd83c61b8d72e.1615230417.git.josh@joshtriplett.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Josh,

On 3/8/21 8:07 PM, Josh Triplett wrote:
> gzip deprecated the GZIP environment variable long ago.
> 
> Signed-off-by: Josh Triplett <josh@joshtriplett.org>

Thanks for the patch.  I applied it, with a minor cosmetic tweak in the 
source.  See 
<https://github.com/alejandro-colomar/man-pages/commit/f2af28be182d51e0fd6dd13dd879d3e2ec3b835f>.

We write variable names and such in separate lines, with nothing but 
punctuation, so 'and' belongs to a different line.

Thanks,

Alex

> ---
>   man7/environ.7 | 10 ++--------
>   1 file changed, 2 insertions(+), 8 deletions(-)
> 
> diff --git a/man7/environ.7 b/man7/environ.7
> index ee8ca97f6..77d9d3950 100644
> --- a/man7/environ.7
> +++ b/man7/environ.7
> @@ -339,16 +339,10 @@ etc.).
>   However, in some traditional uses such an environment variable
>   gives options for the program instead of a pathname.
>   Thus, one has
> -.BR MORE ,
> -.BR LESS ,
> -and
> -.BR GZIP .
> +.BR MORE and
> +.BR LESS .
>   Such usage is considered mistaken, and to be avoided in new
>   programs.
> -The authors of
> -.I gzip
> -should consider renaming their option to
> -.BR GZIP_OPT .
>   .SH SEE ALSO
>   .BR bash (1),
>   .BR csh (1),
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
