Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 316D03D96A6
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:23:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231334AbhG1UXs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:23:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229878AbhG1UXr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:23:47 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90410C061757
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:23:44 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id n28-20020a05600c3b9cb02902552e60df56so2468784wms.0
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:23:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jewQNVWJC8WLnzzb4NexMguI3/NcU5oO4urw6qyCTdE=;
        b=tuAiw+aS7ekXQGGNcH0qMmvJ+hoOP0uiXdb5f3mytS0o3d5FdOcKV9NqpZEplzkKwv
         xo8CxD5lylUP3Ljv05e8rvDRaiToPNYtPhOE/jvPWo2/4TuoHsljaMJSoK+tufZw8edt
         oWVrFciOkrrcrnP0pf0nkyvAEknSHPJXNBf06BRmRzsSri6OOe+UEPCPsqGazElCB6R2
         QKeyjdZth86OlHHroZB46bFJ7bJcNQKmSg+xiNsBgS95BcjCGhZYCiYC5r5Q3Frswezf
         3DjoGwhzozS4Sv+dKanBuCvIuce9icVBYSBM1Gtv85+HgHdPgQLEByRiyFschy0qZHns
         lu+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jewQNVWJC8WLnzzb4NexMguI3/NcU5oO4urw6qyCTdE=;
        b=mWv1a9NGCZl1PfCaVs2mXUl05+9FRj+yeRPJGpM5dL92AQoTR4HCQsJZFFv9ayA2jo
         wHkHL2dlRg5v15t9GpJXATH5u+6qWTWMEb48sKt40pwvXxCXsQEozyKn1rX6sp6xMfPK
         +MF3cYeiHKdyW1WqAeMVuBzQpqrnwrPJ78yb9ibFWVD6e5oGUGNaTTXwNKz61/gRfrdG
         wvhnm+MdMLQ4HDT9XHCSuxA+hzY5Qeiri1f8zVhLox2cYK4zYoDbPLU2Cy3M9C6i6EkH
         4aqsmfd7FJUZjKE0gCsKCiYeimQQ5FaAsmppN0r93PFFnG6K1YA52auBYgCkveZltj3M
         TEnQ==
X-Gm-Message-State: AOAM533Gmzztf7QAt7fbY1xUh9wX1kwNIHgE9XpxW2jEQnK+eGjTyC/f
        dyCUDcNUeeBZvfeJ7kmhp5Y=
X-Google-Smtp-Source: ABdhPJxChwjBGps/D5LWPdmdtOCdSEL4xsk4KkQbSBzDhlAaUe9OhrPbuoB2zXVPIpE/N+7L4K1BKA==
X-Received: by 2002:a1c:4c19:: with SMTP id z25mr5574234wmf.119.1627503823278;
        Wed, 28 Jul 2021 13:23:43 -0700 (PDT)
Received: from [10.8.0.150] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id r2sm846101wrq.15.2021.07.28.13.23.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jul 2021 13:23:42 -0700 (PDT)
Subject: Re: [PATCH] namespaces.7: ffix
To:     =?UTF-8?Q?Michael_Wei=c3=9f?= <michael.weiss@aisec.fraunhofer.de>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210728104429.17744-1-michael.weiss@aisec.fraunhofer.de>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <dfc5f4f3-654f-0acb-9c56-a583a4024421@gmail.com>
Date:   Wed, 28 Jul 2021 22:23:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728104429.17744-1-michael.weiss@aisec.fraunhofer.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 7/28/21 12:44 PM, Michael Weiß wrote:
> Signed-off-by: Michael Weiß <michael.weiss@aisec.fraunhofer.de>

Patch applied.  Thanks,

Alex

> ---
>   man7/namespaces.7 | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/man7/namespaces.7 b/man7/namespaces.7
> index d35c2d383..73c85c1ef 100644
> --- a/man7/namespaces.7
> +++ b/man7/namespaces.7
> @@ -71,7 +71,8 @@ Time	CLONE_NEWTIME	\fBtime_namespaces\fP(7)	T{
>   Boot and monotonic
>   clocks
>   T}
> -User	CLONE_NEWUSER	\fBuser_namespaces\fP(7)	T{User and group IDs
> +User	CLONE_NEWUSER	\fBuser_namespaces\fP(7)	T{
> +User and group IDs
>   T}
>   UTS	CLONE_NEWUTS	\fButs_namespaces\fP(7)	T{
>   Hostname and NIS
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
