Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 18D1A37A3FE
	for <lists+linux-man@lfdr.de>; Tue, 11 May 2021 11:48:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230493AbhEKJtT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 May 2021 05:49:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230434AbhEKJtT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 May 2021 05:49:19 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2AA2C061574
        for <linux-man@vger.kernel.org>; Tue, 11 May 2021 02:48:12 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id j3-20020a05600c4843b02901484662c4ebso865939wmo.0
        for <linux-man@vger.kernel.org>; Tue, 11 May 2021 02:48:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=UZwB2+UpYs7Ws64oyHff2tFx5BIy0a7NqU8fAwAknoA=;
        b=mwpDI/l69/js9ncuGUBCzPfAmWGitj9k8aeXjWLuNPNOr+0Nvx62WbYJNBTF2OkILi
         B9fae1gg6Om7nYuLgxc/z4NrRueeiNlWTRUnmQeXXBzIfCXwVUslSXAvIdrXXKheDC4L
         Jtr3gJdwlZRwwpE3zDtvuWEd4rCBpRAD6HnVLeC2FBwR2mYoeVN6TPsq+z0T2Ir5Gx1C
         G9IFzyd8ybOHphv8GI9NbogXe/FSWMiV4/ET33zlda3y/LdlyVianVtK6tRCKo9Z/t1g
         vXd8bzKDH/cXmsdOWJPo3N1+aCRdKIryuSc2u0+x8AHOOGFJOK3Cag0WaOPn42fx5nBF
         atCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UZwB2+UpYs7Ws64oyHff2tFx5BIy0a7NqU8fAwAknoA=;
        b=hpAJdoPJSkn0yGToPH2rxHftTjzEN4OycmIIOb7qQTI/0sEj4GP32jjiUHaKFkWtxE
         GKnpVctoc4lvebSGc9IK/g5gQHkd/gf8XOSjho+lnoYyHLibgvLtern+6JZdKxp5npeY
         nhrnHXTEO4RrTn2InQcfmqYMTnvm+f7R0AXN+5VT2lbWdiGJmWkC7mqUjIhYcshgsQ5j
         uHgQWo53g3tZQyfbY0WcxUePD4kh7iv0EC9+ALtXb+/NXoGO3BRBbhussnPBbbMPX/7b
         RnGFYIQpyQBVb5VPKRJIwE7LNnxKhGtnvGc15Ti/PSqSoXvcIQnbv4Yil9G6slvMcaPD
         3IyQ==
X-Gm-Message-State: AOAM533eFSBSvIKW/6UGHIiQ50+QsgvQSQuADzjkK49HJ9klsoA4Soxo
        1msd0PO0sdIkK7tW6vSvDWk=
X-Google-Smtp-Source: ABdhPJx98TAdTs6mHgq5h/UpmDYX7nZE9H47iOI5y/3DS2RvWA1oNmdH1YvDfpJgCNMAoaa+UnY/Bw==
X-Received: by 2002:a1c:bb0a:: with SMTP id l10mr1331767wmf.96.1620726491778;
        Tue, 11 May 2021 02:48:11 -0700 (PDT)
Received: from [192.168.43.70] ([46.222.232.120])
        by smtp.gmail.com with ESMTPSA id n2sm27462461wmb.32.2021.05.11.02.48.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 02:48:11 -0700 (PDT)
Subject: Re: [PATCH 5/5] expm1.3: tfix
To:     Akihiro Motoki <amotoki@gmail.com>, linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com
References: <20210511093110.98541-1-amotoki@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <cad0673a-2e33-1ec3-46ac-42572bdd5ea4@gmail.com>
Date:   Tue, 11 May 2021 11:48:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210511093110.98541-1-amotoki@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Akihiro,

On 5/11/21 11:31 AM, Akihiro Motoki wrote:
> Signed-off-by: Akihiro Motoki <amotoki@gmail.com>


Patch applied.

Thanks,

Alex

> ---
>   man3/expm1.3 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/expm1.3 b/man3/expm1.3
> index 54b0315d3..2d3bef375 100644
> --- a/man3/expm1.3
> +++ b/man3/expm1.3
> @@ -154,7 +154,7 @@ on certain architectures (e.g., x86, but not x86_64)
>   raised a bogus underflow floating-point exception
>   for some large negative
>   .I x
> -values (where the function result approaches \-1),
> +values (where the function result approaches \-1).
>   .PP
>   Before approximately glibc version 2.11,
>   .\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=6814
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
Senior SW Engineer; http://www.alejandro-colomar.es/
