Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C4E43382392
	for <lists+linux-man@lfdr.de>; Mon, 17 May 2021 06:55:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233316AbhEQE40 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 May 2021 00:56:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233477AbhEQE4Z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 May 2021 00:56:25 -0400
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F285C061573
        for <linux-man@vger.kernel.org>; Sun, 16 May 2021 21:55:09 -0700 (PDT)
Received: by mail-pj1-x102a.google.com with SMTP id lj11-20020a17090b344bb029015bc3073608so2990346pjb.3
        for <linux-man@vger.kernel.org>; Sun, 16 May 2021 21:55:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=oNIa/hF97BV9s4Pi09ZBMMaWER4uvbzXlT9Sgz/+kc0=;
        b=rRt6iaU1JLNPc+HnIZitPprW3cKsKeQ8PuklGIpJ5SNnCXqGkYIT93AIqcy6Qoz1LS
         lx+LEnIt9GEAM4nD7qoXk8WjgJbL0TBlm9o/AjtN47TtGhi+gzzOTh8C0zL8qBlKb2iw
         XvKwAmVnXidWudYpKIhgq6MldDpvUnNMjOD7gJjuMfhMbO29C+jQENFiFJ0lldHWhO2k
         S1n0uX/t8124ro/V5N+z0aUvONYHAiG7UB6zxPuquDImkIKQEqe94TpQolMQzY4tK76v
         TTYJa1pZRtJqhwnFLUhNx1oa5SO7ISK3jeGR7vWcKeimpEuznLHVgnIMeNjp8aM4MxRY
         nyqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=oNIa/hF97BV9s4Pi09ZBMMaWER4uvbzXlT9Sgz/+kc0=;
        b=Ay8sGe9hoAKdoaAlYbxPjMksqS3oexTrOaMBaGRmX/URRLN9UT/3vI3T8w69B51E4W
         +k2ffB/QrgVIDjzq10ogyNysoZRzh6pK6rsdR3mboZjo87iELNvA2wUlvTHO+jlUnDcp
         jeyBOaB8adUiM1SKpARt0Mpxii05cKxYMSf5gImgMtbvC1eoIIlwPCYMvd7ZkYxc/CUK
         COXaeIFpiH2IiUzA0ph0BDjb91zUEEDqVj/GOyKjDa1MzuyJSWaOhMg4ZWsyLsEQWBLc
         zYZoYgt+VHTVXurCVPb2TZ+2fWhHhUYzSFDAnAqw6BjYFZKwrm8ICHAeNGF0WETkuJKw
         MFgg==
X-Gm-Message-State: AOAM531NTNtk4/1yi79+ptil8HWC9mlKNtIcDjr9wEj/oM1kmEsvxU2Y
        wcXNYg7dKDMfqMOfZQoYkWVfoZpDVsU=
X-Google-Smtp-Source: ABdhPJxYKkYPvA7pfzLEkMHo8YHAu12s99IxJpVE8oj9xHGUBckMhPo2+oLdCNgy98HJvAthK1DKnQ==
X-Received: by 2002:a17:90b:224e:: with SMTP id hk14mr20476226pjb.29.1621227308723;
        Sun, 16 May 2021 21:55:08 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id u12sm8665893pfh.122.2021.05.16.21.55.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 May 2021 21:55:08 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/8] rename.2: ffix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210515182027.186403-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <86ba21f5-d9d2-8854-9e8a-cdb1e48e4747@gmail.com>
Date:   Mon, 17 May 2021 16:55:04 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210515182027.186403-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/16/21 6:20 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Hello Alex,

I have applied all 8 patches.

Thanks,

Michael

> ---
>  man2/rename.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/rename.2 b/man2/rename.2
> index c83ef08a1..04a183d84 100644
> --- a/man2/rename.2
> +++ b/man2/rename.2
> @@ -39,7 +39,7 @@ rename, renameat, renameat2 \- change the name or location of a file
>  .PP
>  .BI "int rename(const char *" oldpath ", const char *" newpath );
>  .PP
> -.BR "#include <fcntl.h>           " "/* Definition of AT_* constants */"
> +.BR "#include <fcntl.h>           " "/* Definition of " AT_* " constants */"
>  .B #include <stdio.h>
>  .PP
>  .BI "int renameat(int " olddirfd ", const char *" oldpath ,
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
