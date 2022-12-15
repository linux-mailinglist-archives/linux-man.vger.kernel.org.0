Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C5D7064DB28
	for <lists+linux-man@lfdr.de>; Thu, 15 Dec 2022 13:29:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229495AbiLOM3W (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 15 Dec 2022 07:29:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229471AbiLOM3U (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 15 Dec 2022 07:29:20 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 042036302
        for <linux-man@vger.kernel.org>; Thu, 15 Dec 2022 04:29:20 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id o5-20020a05600c510500b003d21f02fbaaso1556288wms.4
        for <linux-man@vger.kernel.org>; Thu, 15 Dec 2022 04:29:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=ID/0B5nOMT7pIKv+yAJjKuVlThOPbvUBaunZliAzMmQ=;
        b=lMPlBKOA7eGiL+5n5qAkzUJW/2ib7Cc8pSqRbwDkhzRswym7GO9KcGVLlRWtp0va+a
         Qtpq5n32diPles3aubnv3qJehXPlJfALMCfIa5tjeHZfceIIzBeYYJqjtf0PtMgVf1hg
         WkDvjZlBvuKrXnUsFWaMrjoCBoxvK988rOf4ny/FyAox8UkBtu14Q0UKK9oqEWTwDiPa
         M01MYmV0M5UoVozOvjPsDEvn99QZoWdkX1GZbJKfH8eV5oAH+pAWNW0O6N3rCanYzQOt
         PtRdWEF3Q45Z9wviAkVmuvQyuRrS+r21Zi+RARdrvtND77+JA/zWvUEdY3e2igVT2seH
         jjfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ID/0B5nOMT7pIKv+yAJjKuVlThOPbvUBaunZliAzMmQ=;
        b=7CwlFfyU8WtBypw/2Kz46D8INAzC5r6t1hIsFO4DZcDZLHbn+zS172u03bt12v9vT9
         B51VS215uiRFKP8kA+zB91t3jkPIhD/0QocG9S00iTxpeR2TkCtqqf3u02icYgag87SU
         IopuiCkpRXgs6FZ47NxTgQycGgCdxIhSbn59KAWYElwgQAlm8dokgLi7EnZnDwBopSfZ
         yLhxTQo4yXLV2sL3ujD9NFy+eZ4UPry58vFPxPbLQM+/Qaw0MnlQWpeP9gUw/ZjdyEnM
         EOslhHrwVaA+iaF6ksbVOMa/tIFjP4KQ3fnyrQnoSWxOqY9uRa4BKeamAVC2+roHx4ne
         U3MA==
X-Gm-Message-State: ANoB5pnzPCCTlpJme9rcwNpSJp0iPQx0UaFxCb8fhnhVmuLoLyM5jr59
        c+kUsGRECrhApqhcGBwbZLs=
X-Google-Smtp-Source: AA0mqf4Ay6KJCvMue9WRimqlV5pCVgivS5v9cG4En3qiV9r2m+2+Qf1WAEsZ4djuqHGZPMNrZxnnNw==
X-Received: by 2002:a05:600c:17d5:b0:3d1:f2de:195a with SMTP id y21-20020a05600c17d500b003d1f2de195amr21430136wmo.32.1671107358418;
        Thu, 15 Dec 2022 04:29:18 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id 8-20020a05600c020800b003d237d60318sm6187207wmi.2.2022.12.15.04.29.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Dec 2022 04:29:18 -0800 (PST)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Message-ID: <4358d250-760b-913c-c77d-2e7d5f5e2445@gmail.com>
Date:   Thu, 15 Dec 2022 13:29:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH] ioctl_userfaultfd.2: tfix
Content-Language: en-US
To:     Eric Biggers <ebiggers@kernel.org>, linux-man@vger.kernel.org
References: <20221215065958.65921-1-ebiggers@kernel.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221215065958.65921-1-ebiggers@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Eric,

On 12/15/22 07:59, Eric Biggers wrote:
> From: Eric Biggers <ebiggers@google.com>
> 
> Signed-off-by: Eric Biggers <ebiggers@google.com>

Patch applied.  Thanks,

Alex

> ---
>   man2/ioctl_userfaultfd.2 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
> index cb56315f2..a78353c54 100644
> --- a/man2/ioctl_userfaultfd.2
> +++ b/man2/ioctl_userfaultfd.2
> @@ -321,7 +321,7 @@ Track minor page faults.
>   Since Linux 5.13,
>   only hugetlbfs ranges are compatible.
>   Since Linux 5.14,
> -compatiblity with shmem ranges was added.
> +compatibility with shmem ranges was added.
>   .PP
>   If the operation is successful, the kernel modifies the
>   .I ioctls
