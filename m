Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5526E45939B
	for <lists+linux-man@lfdr.de>; Mon, 22 Nov 2021 18:04:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234435AbhKVRH1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Nov 2021 12:07:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231714AbhKVRH1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Nov 2021 12:07:27 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8E6DC061574
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 09:04:20 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id 133so16151249wme.0
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 09:04:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=U7t1InkqbcPUysdUUCVku7qAlHe/6TqaUr+s8XJuOtk=;
        b=etLOaNWD9BcQEb8OVkeX9fc0Txf0GzRWuFjOe+0w8YL/kAz+XRqJQskEyPH58M6xQu
         qliOLI/bgwES3b7AuBTaBXpR+MKFEusSa3GkFlFT8zZ1aw+h1fot/J6HgLspdHnw/Nzw
         S+d1Ujnftf8HvrjmIoLr1Y8iDKxUSe6+ElOUGd2ZKPjFb2OP4ZpsOedN6V66hq3skqQE
         2Jk1/WJCyB/Byfj1b7zM6+rbiMpIKfRjtDyMvUm34s6SSa6DaHKwdy/KCmVwRaZE59z5
         ps6cEsd5MJsjesc9WLI6yoC/PKw3GXqjZGXaqYy4olElah1Vp3VPGBiWu26JHKZx1JMS
         mirA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:message-id:date:mime-version:user-agent
         :subject:content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=U7t1InkqbcPUysdUUCVku7qAlHe/6TqaUr+s8XJuOtk=;
        b=tJ7pFPKKdFn1N37hqjqE8q14SJADC7uYc7K1WrzcljJbUJwohSwN9tI52l4O3p9m6d
         okXILoq2nUfJCr8R9QianH/zssNJnEbrAOQmYHEpx9GOmrOttXZyAKNR+XHEIbsdc5SX
         4C3JABU6BE1/NKbs4zQoKy1hNKyEiXw5omG2iQFY1PiQp8j0QVo2MchgrTT5clXKQ9Qp
         5NfnwR40Y10pwZbEs1m6P06LER3z6JRfim4zaxDrUzl2m0lrn66EyiPx/MH0ny/eo46q
         Y/9xHiWo+szU2Id+I1/Ej9fFHFft1f+BGhN9snlszCbWE5oIoNbk6Iuyvk13sOPatR9s
         thzg==
X-Gm-Message-State: AOAM533X5DFSc9KQdp1HpFTAPSruf4bBOUT+f4HBIn+kDKGjYGlJ3Srn
        lXjqeOP6+14ozGCE382ubX7SubjK+xnodg==
X-Google-Smtp-Source: ABdhPJyeULTaScbnwEJZI0HZkXT3fCBmLjZGpTHowO8lKvZhTgkq2P+uCpoxmj5kLofEHDzD3LivOA==
X-Received: by 2002:a05:600c:2118:: with SMTP id u24mr31154179wml.0.1637600659376;
        Mon, 22 Nov 2021 09:04:19 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f133sm9695363wmf.31.2021.11.22.09.04.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Nov 2021 09:04:19 -0800 (PST)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Message-ID: <f4ba4e3a-388e-d79b-1af1-d3ef7910a805@gmail.com>
Date:   Mon, 22 Nov 2021 18:04:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH] quotactl.2: Add buggy version for Q_XQUOTARM ioctl
Content-Language: en-US
To:     Yang Xu <xuyang2018.jy@fujitsu.com>, mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, jack@suse.cz
References: <1636943167-2213-1-git-send-email-xuyang2018.jy@fujitsu.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <1636943167-2213-1-git-send-email-xuyang2018.jy@fujitsu.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Yang,

On 11/15/21 03:26, Yang Xu wrote:
> Reviewed-by: Jan Kara <jack@suse.cz>
> Signed-off-by: Yang Xu <xuyang2018.jy@fujitsu.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---

Patch applied!

Thanks,
Alex

>   man2/quotactl.2 | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/man2/quotactl.2 b/man2/quotactl.2
> index 5d2a673bd..fbf7cdc29 100644
> --- a/man2/quotactl.2
> +++ b/man2/quotactl.2
> @@ -651,7 +651,8 @@ The
>   .I id
>   argument is ignored.
>   .TP
> -.B Q_XQUOTARM
> +.BR Q_XQUOTARM " (buggy until Linux 3.16)"
> +.\" 9da93f9b7cdf8ab28da6b364cdc1fafc8670b4dc
>   Free the disk space taken by disk quotas.
>   The
>   .I addr
> 
