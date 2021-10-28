Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F157243D8EA
	for <lists+linux-man@lfdr.de>; Thu, 28 Oct 2021 03:50:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229614AbhJ1Bwd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 27 Oct 2021 21:52:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229534AbhJ1Bwc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 27 Oct 2021 21:52:32 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FAC5C061570
        for <linux-man@vger.kernel.org>; Wed, 27 Oct 2021 18:50:06 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 67-20020a1c1946000000b0030d4c90fa87so3820615wmz.2
        for <linux-man@vger.kernel.org>; Wed, 27 Oct 2021 18:50:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=IbgU10dkVudnPC2r0DtOU7vm4rKJZeXGaHAp5MDk6hs=;
        b=XLj73xSEnZprV5LJY98GLveh4JT02bEmo3q+SjX2/eGcjDrRXoqTlb8j4cChNKejLX
         Mp44dSoVwNlAsJFjpQluDnvVnm/2xnOqx0MDzOom+Zj6tXR6EBHxK0w0oWZ4kfavlLvK
         KkbxgiRBfmkQbykTNWszGNhWh3/Fz8xk7iqQyoyOXnxd2sYYnkhii/+C7t9gJ5ZnGRm5
         mge+EV1LVI2n8kF+WzpyZkGOucbqVSZbJAXwoDK/93t2QIrmXqdJ1qyLn+UscDMHg2W2
         KO/AcaXpYBX8T+yInagQZGKXzaO9oAvTOJjet2DlmPeAlgqBasWiX0BpyxAKe+1KmQDM
         RZIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=IbgU10dkVudnPC2r0DtOU7vm4rKJZeXGaHAp5MDk6hs=;
        b=FEMiIbETdg9lIVxzh1IdFrFqf3TlgzyzJnG9cjWHs8VJ7fb0j6RRJXQ9h2gm9UrZCt
         XhG3/apSuR7ttWxtnC+Sm+kGysRJwY4NZhkrV+YMHgGhLiucdtloIz4R82CseYYcN7bQ
         xSfbysT3zDQ+nHoTuAbQtbjJk79qM84bH2gK2V1LdA6XC2vSvN2fn2R2sMMrROz+WDcI
         h6xgbP9JgvQKBLEq9f506XAGSt1j5y+ODQWVRrzClqZ73IRyWIjFPhJTrN59xC/8s4oY
         p5p6/p0zL1S1BnzF08a2uro+51GZZBWM/OnxAtXSwhjicTqimq3s634u2uQk8notCP/K
         /ePg==
X-Gm-Message-State: AOAM530Wd0CFRoQBoA+EX0GYujBFFh2YICTbgFSEBkT8lGB3L15F2/QA
        wkEHocK8cbywUx0Z1pqZzkQ=
X-Google-Smtp-Source: ABdhPJxIKGBPgN2F66ynoz0xUDkg2p8rid6fI8QKFRi95E60/4tW8CaJDCMlQXJfNFFKZZOgFNuP+g==
X-Received: by 2002:a1c:1941:: with SMTP id 62mr1281879wmz.131.1635385805091;
        Wed, 27 Oct 2021 18:50:05 -0700 (PDT)
Received: from [10.8.0.122] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id e17sm1704041wrx.18.2021.10.27.18.50.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Oct 2021 18:50:04 -0700 (PDT)
Message-ID: <6888aca6-4623-bb17-ee6b-92eef5171f72@gmail.com>
Date:   Thu, 28 Oct 2021 03:50:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH] ioctl.2: SEE ALSO: Add ioctl_ficlone
Content-Language: en-US
To:     Benjamin Peterson <benjamin@python.org>, linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com
References: <20211027210732.454713-1-benjamin@python.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20211027210732.454713-1-benjamin@python.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Benjamin,

On 10/27/21 23:07, Benjamin Peterson wrote:
> Signed-off-by: Benjamin Peterson <benjamin@python.org>

Patch applied.

Thanks,

Alex

> ---
>   man2/ioctl.2 | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/man2/ioctl.2 b/man2/ioctl.2
> index 85a9d2351..28d985a68 100644
> --- a/man2/ioctl.2
> +++ b/man2/ioctl.2
> @@ -196,6 +196,7 @@ for the various architectures.
>   .BR fcntl (2),
>   .BR ioctl_console (2),
>   .BR ioctl_fat (2),
> +.BR ioctl_ficlone (2),
>   .BR ioctl_ficlonerange (2),
>   .BR ioctl_fideduperange (2),
>   .BR ioctl_fslabel (2),
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
