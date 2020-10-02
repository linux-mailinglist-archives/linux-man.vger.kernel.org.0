Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6EB8E281156
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 13:40:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726010AbgJBLka (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 07:40:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725964AbgJBLka (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 07:40:30 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3FB2C0613D0
        for <linux-man@vger.kernel.org>; Fri,  2 Oct 2020 04:40:29 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id y15so1420864wmi.0
        for <linux-man@vger.kernel.org>; Fri, 02 Oct 2020 04:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pHBY8U3Ziim0pVm71zdOr2pmIo4mCjzt9zLjo5Po3ao=;
        b=P5CLIRe3j7+Vmw9R0ZHskBK3DnSpaV4Z8sUJoDsLq00sQEA5LnLjkTRFdrGqI3PP4L
         xgM5amyW9QXOihM9EW7JWBaxUGDpuaAwG9e34+XDM2Jx9eYyEM7qk4Zppaa3KfY5mdlk
         Vc6zYdgyPem2doVotHL5eHUX5GFWBiPNNgA9TIvv6JjfibJbJd1EbjY8ggOzgzOD6hzM
         X/OQQ3dgMIWerRf3vrHnHUqw1AAMIVcLz1JpndE2mGg/dtbq4Pk/gucflL8cfSak/zIZ
         jfSKyOqurFcGAqU5tvxZjTpEw8CW08aDoWZWbAU8EruazZ274peES5x3OzjGv+rdsLUp
         O6EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pHBY8U3Ziim0pVm71zdOr2pmIo4mCjzt9zLjo5Po3ao=;
        b=ZHt1s+/Kwlhr30byqrfJMiDhSRvxM9aAYu1kc9Go8rtHXkcO9iKEVZBjhCoKfGM53V
         DkOZN5/Raq0EbibnMPNUiVBb63HnD3654Bh9osJx6wQOAS/k3K0zzodhzP7BTGS23Zyy
         3C+aoZ1l6nm9UbZ8hrMVHl9ragEIRxTbRdg4oPH0DSPQG94yzNTAWCTT5oMDgggcmaCz
         z5FeVB7X6Tb7mNUqPSkGwCCWtySPZpftNOdKba2RJTc3NpEBnP1m+3SM6edNf0w+NFEf
         vwUzHuaH3bmZZqk5S1CluHjFUDKI7WArvs94vL/g90U6pHkdV8RqyRnmhBFv83YPGDuf
         dSZw==
X-Gm-Message-State: AOAM533rN8uIAuIVHhYwVcEickcoohQ/pyPPPnURLyYEwDo3TR4s7yPu
        a3PK6LaRu+/INc1lI5y8V/BAPXrGNUk=
X-Google-Smtp-Source: ABdhPJwVIOHAH/3h5T9IRQQb9WrxYOxPj0OnnwPBVav0JjqbgdXsUC1McaHjPJHzj4hb0Gsnys+0ag==
X-Received: by 2002:a1c:1f08:: with SMTP id f8mr2423210wmf.168.1601638828499;
        Fri, 02 Oct 2020 04:40:28 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id f1sm1441559wrx.75.2020.10.02.04.40.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Oct 2020 04:40:27 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] system_data_types.7: Remove duplicate reference
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201002091504.14172-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <19f73301-52fb-c7cf-5c98-ed370f9acd46@gmail.com>
Date:   Fri, 2 Oct 2020 13:40:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201002091504.14172-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/2/20 11:15 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man7/system_data_types.7 | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 3cf3f0ec9..aab64e002 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -1192,7 +1192,6 @@ since POSIX.1-2008.
>  See also:
>  .BR read (2),
>  .BR write (2),
> -.BR memcmp (3),
>  .BR fread (3),
>  .BR fwrite (3),
>  .BR memcmp (3),

Thanks, Alex. Patch applied.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
