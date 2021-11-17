Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 97980454D49
	for <lists+linux-man@lfdr.de>; Wed, 17 Nov 2021 19:37:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231389AbhKQSkK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 17 Nov 2021 13:40:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240102AbhKQSkG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 17 Nov 2021 13:40:06 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 426A2C061570
        for <linux-man@vger.kernel.org>; Wed, 17 Nov 2021 10:37:07 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id 133so3143324wme.0
        for <linux-man@vger.kernel.org>; Wed, 17 Nov 2021 10:37:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:cc:from:in-reply-to:content-transfer-encoding;
        bh=9smjS/5B8ozZPzP54W7Qw3Cte4Tcp1Y61Oo7AIJTfB4=;
        b=HWWJrZBMhWxoH0kU6eniIL9YBFavd0ybuueV819JiHTgmQGwkQrcCx5NIx5JgI9uFj
         pBie3SEo5J1BlcsK+vXiBY5czFsHCG6eCsZhnPP8OWj999WLkm9vb2MmIvkfDlPeEA5J
         2xZXNwWVLjM17F5aC0N+l9hR2slSKNL10okoiqsfJVz3nNgUjBimvTZaE4u4HiCTSzDV
         xZpko4vdkxLCcswE1a/jf5dAFlP2fZEIh8bWz/mrD1qMhLIVXzQqZTij8eTF/Ys+iX2d
         2qtEP8ZrN5/SEM/YsIgGwnuQaSKNpTII/zoV2co+CjLYJNy4nZYzlYdvrRpPTF1SRmaA
         wyMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:cc:from:in-reply-to
         :content-transfer-encoding;
        bh=9smjS/5B8ozZPzP54W7Qw3Cte4Tcp1Y61Oo7AIJTfB4=;
        b=kLDxzFBKZ+xNdvfm5St58d4p5icqZliHD5enuapDfNjpEmtCBxa0WAe1vKXeDrOoRf
         +Q+0aUNA8pc7JD7t/YuWiWWrbYBscsDmolOdA5SCIDQcp4S6P9WnXAnmrJJPt++9K96j
         l9v5g1gVOm/IwMQA/X9sWgApC/mVtlfCMbSxFPoUhCrscvxIn19AYgwOym+2ZNjP3dZ2
         7oeas/Br5qF8eOZhPmVK8MfZTSUcRD1w/WHCKd5GHFD9SC4P1d/rRABjE3rcjO8aGaim
         CkFL1OKWJUg+i/H1pwj5qiE9MGdzUdyczB5RYROKJaIPH8Abj2fJnSvGa6bZnMYe4Ki3
         fkDg==
X-Gm-Message-State: AOAM5338TnTIZj+ikz1N3lPFSwlMAI4vNQfEpVtGaKPhcYsabOn88aw/
        jckK8GpXys2DOHCV/e3wfq8=
X-Google-Smtp-Source: ABdhPJzowxPSPqbsVUwq2ZJh+UebBBsaQRsDkZGDns7DDeMj6WRNxEGLVTtSSsEBliC78a9TckIkUg==
X-Received: by 2002:a05:600c:500b:: with SMTP id n11mr2242347wmr.38.1637174225896;
        Wed, 17 Nov 2021 10:37:05 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id r8sm930178wrz.43.2021.11.17.10.37.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Nov 2021 10:37:05 -0800 (PST)
Message-ID: <ef3ca0c4-66a4-825e-8871-d50d7806e419@gmail.com>
Date:   Wed, 17 Nov 2021 19:37:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [patch] proc.5: update the obsolete column name in net section
Content-Language: en-US
To:     Maxim Petrov <mmrmaximuzz@gmail.com>
References: <0624375d-9dc6-1cfe-fbda-a385f06df9a4@gmail.com>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <0624375d-9dc6-1cfe-fbda-a385f06df9a4@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Maxim,

On 11/16/21 21:48, Maxim Petrov wrote:
> In the net section, 'rexmits' name is still used. Change it to 'retrnsmt' to
> match the modern kernel and fix the column order in /proc/net/udp.

Could you please elaborate a bit on the commit message?

I don't know what the removed field was,
and can't find anything in the kernel source code
(it seems to predate git).

Why did it change?
When?
How?

Thanks,
Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
