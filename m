Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C11E3A2002
	for <lists+linux-man@lfdr.de>; Thu, 10 Jun 2021 00:27:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229542AbhFIW3M (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Jun 2021 18:29:12 -0400
Received: from mail-pj1-f47.google.com ([209.85.216.47]:40652 "EHLO
        mail-pj1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229526AbhFIW3M (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Jun 2021 18:29:12 -0400
Received: by mail-pj1-f47.google.com with SMTP id mp5-20020a17090b1905b029016dd057935fso2515234pjb.5
        for <linux-man@vger.kernel.org>; Wed, 09 Jun 2021 15:27:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8JHujZZwkfMbOcEkhkPD47EkbAEPWt+rD+tU+VPPn9o=;
        b=Gof48W8SYyoeiOow7vn9OKHzv8CDucPl4til2Sb+I6y+oI/2+0W/hcQAe61EPbq8m+
         Jb8vuYthc/T3RIjtQ0kqqQyqtfHtM2kBfYEeewPeT1PTt82XfpjUYMTsnKbl/4OLcouk
         qExwnsH7zQ2xgYdSIbrMTdtomSAU01mxzogUGxD3mUmdpLl3nEDWkTj4KKEGNy1afKwg
         tETKOxecYjDYSF7uSr2AOe4g+ITFXGM1yJ0TGE7bTPUeR1doYAzYEf0uQaBBaWm3mzZl
         KgMVqz+08vbdXLrIgQritVcBQMvydsgsPlS5pobJCog+CvHUMmTfWMSZ5oQH8yd+5BeH
         lBBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8JHujZZwkfMbOcEkhkPD47EkbAEPWt+rD+tU+VPPn9o=;
        b=hGHEeUd9sfYuN0i39wP7Dw+sCYdKKEyIAoVVqZo1HoYiS5A9Y4ymjjn4E9OGzIV5Ir
         ZZAh8fm2HpV3xSsjRr+vi5CxR8xKk4/zsx7lDGnah7SeuGtaMok6IhiVlwaAwfD1yk/W
         JPisNcT10e24+DIddkoQanUVnJ2kFpMLv7VSSRZBc7YdErU3sh+Xo4S3cMAr7sE2hUDA
         9CvWSbCIiyS+qctKZTJzBDh1mM/ohlhuHVCGHbELl2M6xZgZZxnsm64xcbXAjacp/iSh
         xj9C+Wk2cZ8blpJqHDgwzo2fmvhACYPzUJ4PNta/653HBeD2yoMPl4uJCiDywvZ9NFjv
         QfMQ==
X-Gm-Message-State: AOAM531hDg02U4z5lQ1PMJUF0K4gRpcTAmMKg1y/iyvGIUgRbtN9u7nZ
        MpSjibndF9kw4eGgtQ0Fypa32VFLcfU=
X-Google-Smtp-Source: ABdhPJzQHko6hwJxe/X7GrayJdDq8UMSQDFo0kiT2fFEydag0mFLVg8m01ksofe14NrzRGHaOUu0Ow==
X-Received: by 2002:a17:90a:ab96:: with SMTP id n22mr1847360pjq.92.1623277562155;
        Wed, 09 Jun 2021 15:26:02 -0700 (PDT)
Received: from [192.168.1.70] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id 125sm449327pfg.52.2021.06.09.15.26.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jun 2021 15:26:01 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 08/10] shmop.2: Remove unused include
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210521232553.161080-10-alx.manpages@gmail.com>
 <20210524181947.459437-8-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6eb44d20-8583-1c10-d56b-2fb17cfbdd03@gmail.com>
Date:   Thu, 10 Jun 2021 10:25:58 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210524181947.459437-8-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/25/21 6:19 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Applied.

Thanks,

Michael


> ---
>  man2/shmop.2 | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/man2/shmop.2 b/man2/shmop.2
> index c7e66af0e..52baed96c 100644
> --- a/man2/shmop.2
> +++ b/man2/shmop.2
> @@ -42,7 +42,6 @@
>  shmat, shmdt \- System V shared memory operations
>  .SH SYNOPSIS
>  .nf
> -.B #include <sys/types.h>
>  .B #include <sys/shm.h>
>  .PP
>  .BI "void *shmat(int " shmid ", const void *" shmaddr ", int " shmflg );
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
