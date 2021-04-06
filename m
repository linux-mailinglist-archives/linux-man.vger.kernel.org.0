Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C2C163551EF
	for <lists+linux-man@lfdr.de>; Tue,  6 Apr 2021 13:21:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245471AbhDFLWC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Apr 2021 07:22:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241465AbhDFLWB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Apr 2021 07:22:01 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C2CEC06174A
        for <linux-man@vger.kernel.org>; Tue,  6 Apr 2021 04:21:53 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id u11so1376235wrp.4
        for <linux-man@vger.kernel.org>; Tue, 06 Apr 2021 04:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=KSNumPPLc+SWN2lj2Fgzzha5LdqmvrpPmKDlUDLq3Ko=;
        b=ZVSclN/BH0FpSZ60ZC1hF1KxrKXUNu4aaPoOQYb9ePzN0D7Dqod75pCx4lmI+SQoV1
         o6jfVW5r1Kv3ELVRkjf+UOL6V6xCQwCLL4WQGHpgjRFRrXc1qdMmb0R3aESN3tRC8StM
         CsQi2/QwO9L28OSNnn3jX3duWK4FUgJN6XiNE9bLYE8o1AvGKzgMd7GjMFOTcAg+xm7K
         RmvpTIphZ/J8YT3KuCcmv2cF9toodjsFks249yOHl2fla7BwKIpBgmhucpMpOBMkF3O0
         HrgzCxJN5OmFEHvbncOY4G3cm39XQcgkOxwvF5qQXt8f6iQyPD1c3HSZzV5hlS3nT8h1
         c/nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=KSNumPPLc+SWN2lj2Fgzzha5LdqmvrpPmKDlUDLq3Ko=;
        b=S789WDdTE8/DH/H5U0gGt65szQA2Jc1Jhl4HJlJmRPAvMV7LYR5ejxqe/l8aELSYrY
         vfWGcLh/F9gTG3hr4xxCgpIi65b+vulUVPG9M+P6qdixvy6jgDz5bwdamoBaxLbkKszX
         +UCdocGkVu7bghPs4Svv0qsQqtbXUJrF/Q860RZaTq/QLN1cf8p6liDo166V/DETKuFB
         gPlSVWpfwSwbzN4Om/1+bEfEig12aPLKbh5aZfsc6R62kYq9PoMXC5GS4wCYFnH9Retk
         /5b2yGen4yRnABPVR3J5KxL53JlHaKgY1cZN246zfOyDqgFlRB0lbsGgT29JMYANSFud
         BFkw==
X-Gm-Message-State: AOAM531lYC5lC+XkONe6WGOhj7JagwGdw2mR80H+PNc4CrIomCvTI09g
        wv0hyfPOIHLX4j+xYdTZj4E=
X-Google-Smtp-Source: ABdhPJyFIu/3zNSoYuTcbaJb4fd7Un0opjgOSdhh8TAm4kHUKSyGFCJH5vY8BrHBJx+aCTtNz3uR5w==
X-Received: by 2002:adf:e907:: with SMTP id f7mr17413482wrm.225.1617708112286;
        Tue, 06 Apr 2021 04:21:52 -0700 (PDT)
Received: from [10.8.0.194] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id w7sm6820979wrt.15.2021.04.06.04.21.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 04:21:51 -0700 (PDT)
Subject: Re: [PATCH v4 3/3] .gitignore: Add file
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>,
        Debian man-pages <manpages@packages.debian.org>,
        "Dr . Tobias Quathamer" <toddy@debian.org>
References: <20210328190601.68165-1-alx.manpages@gmail.com>
 <20210406111448.20392-4-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <14d257e4-6384-f258-aae9-dd9d0282ec76@gmail.com>
Date:   Tue, 6 Apr 2021 13:21:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210406111448.20392-4-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 4/6/21 1:14 PM, Alejandro Colomar wrote:
> Ignore everything new by default.
> 
> This avoids having to update the .gitignore when we need to ignore
> something new.  It also avoids accidents that may add an unwanted
> temporary file.
> 
> Cc: Debian man-pages <manpages@packages.debian.org>
> Cc: Dr. Tobias Quathamer <toddy@debian.org>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>   .gitignore | 9 +++++++++
>   1 file changed, 9 insertions(+)
>   create mode 100644 .gitignore
> 
> diff --git a/.gitignore b/.gitignore
> new file mode 100644
> index 000000000..9c58a2718
> --- /dev/null
> +++ b/.gitignore
> @@ -0,0 +1,9 @@
> +*/**
> +!Changes*
> +!CONTRIBUTING
> +!MAINTAINER_NOTES
> +!Makefile
> +!man?/*.?
> +!man-pages*
> +!README
> +!scripts/
> 

I forgot to add the .gitignore to the .gitignore exceptions :-P

Please add it.

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
