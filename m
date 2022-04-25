Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB3AA50EAE1
	for <lists+linux-man@lfdr.de>; Mon, 25 Apr 2022 22:56:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232783AbiDYU7L (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 Apr 2022 16:59:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231753AbiDYU7L (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 Apr 2022 16:59:11 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7A4D1DA55
        for <linux-man@vger.kernel.org>; Mon, 25 Apr 2022 13:56:05 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id l62-20020a1c2541000000b0038e4570af2fso299041wml.5
        for <linux-man@vger.kernel.org>; Mon, 25 Apr 2022 13:56:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=IMERScH3LodA9QAxm27z5Bq7XT1hysYpPInm8Tgd55I=;
        b=CZN51DM5I7eaeVLgZwLLkZEuGk6TIelyMTBWmwy/kRm87eW0MHFfxs+VvRq1Gl5o9k
         6sqin8AmuVwWEju8ZH4npf/PPjh9Um7zO2r3p8tLNPFTyavOemA60z4hoSp4RFuUcKxH
         BJyzCLfyPujzQfYHc4YL8pcjYm2nOEgMckGmuSHC5IdL5UXG73vkfaYIAVVIbqmRcvS5
         9aTuUtorQ/rEJzsOa4Kk3yGPwZ7hB0f0jlY5eaVrySSuryVfmXm+JnTDYCzJrBpDAlPO
         OU2asBx0+JUDQ7TgE3Z7d+5sypkX9xKFp9dPFLCU3SeOkzkJqEV+DhKwx1otUjP5E6r+
         Hu2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=IMERScH3LodA9QAxm27z5Bq7XT1hysYpPInm8Tgd55I=;
        b=6kmPlDP07FAU6wjCejWXMmK0g8LdEoJCXUh7V433l9I0v0vfQJ5fc+4QLFVRDrtl+F
         y3KdgD89hMCD088YxbEaPbkL5oyFmekl0UW8IroKj8eVntFqqqEE3SlWrB1z5Tb/7bBM
         9N18bLQlgE9armr00/ocWc7d0BB47it5Bh+1DMJVFCMc+WzNB/74lh4H0WHTjKCTaBSO
         nPb7mET6MkMruuS7lxOPuW0PO1JQViLtZtOqx+F47HpPeZ3BT17uz/rgQV26NAm+4U1i
         N1U/gxl+PeJFEEKZqu7+mS6peaQsx3ipdPvI6MNZvxoY+ufhY34xX8iVY57yl9Sn3uQ/
         kn6Q==
X-Gm-Message-State: AOAM530uGToKycDPlVePwK6Htuwg6LM7kMvYfsv7SpRgPFiotpgjMJWs
        1k6whu38DnCrRbH8CLkx1t6Pq4CZQjwcCQ==
X-Google-Smtp-Source: ABdhPJz0XbwbzBlFDdqJO2IeZmKrUznGQlsaR+icP1dQArhyGA82I0oNnDxP/byzYMb78OUQ+lglqA==
X-Received: by 2002:a1c:43c6:0:b0:38e:bb4c:6e1a with SMTP id q189-20020a1c43c6000000b0038ebb4c6e1amr27467213wma.111.1650920164570;
        Mon, 25 Apr 2022 13:56:04 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id z7-20020a7bc7c7000000b0038eaf85b0absm9421449wmk.20.2022.04.25.13.56.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Apr 2022 13:56:04 -0700 (PDT)
Message-ID: <36311dd3-bc00-07e8-7dad-cb5d5a8829aa@gmail.com>
Date:   Mon, 25 Apr 2022 22:56:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH] umask.2: S_I* are B
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <20220425010350.pfrni7crp75oq3a5@tarta.nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220425010350.pfrni7crp75oq3a5@tarta.nabijaczleweli.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi наб!

On 4/25/22 03:03, наб wrote:
> This is more consistent with the other pages and, more importantly,
> fixes the atrocious "I[S_IWGRP] I[|] I[S_IWOTH]" highlighting in the
> first hunk
> 
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>

Patch applied.

Thanks,

Alex

> ---
>   man2/umask.2 | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/man2/umask.2 b/man2/umask.2
> index 8a11c50e9..ef1a6decf 100644
> --- a/man2/umask.2
> +++ b/man2/umask.2
> @@ -85,7 +85,7 @@ are described in
>   .BR inode (7).
>   .PP
>   The typical default value for the process umask is
> -.I S_IWGRP\ |\ S_IWOTH
> +.BR S_IWGRP " | " S_IWOTH
>   (octal 022).
>   In the usual case where the
>   .I mode
> @@ -95,7 +95,7 @@ is specified as:
>   .PP
>   .in +4n
>   .EX
> -S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP | S_IROTH | S_IWOTH
> +.BR S_IRUSR " | " S_IWUSR " | " S_IRGRP " | " S_IWGRP " | " S_IROTH " | " S_IWOTH
>   .EE
>   .in
>   .PP
> @@ -104,11 +104,11 @@ resulting file will be:
>   .PP
>   .in +4n
>   .EX
> -S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH
> +.BR S_IRUSR " | " S_IWUSR " | " S_IRGRP " | " S_IROTH
>   .EE
>   .in
>   .PP
> -(because 0666 & \(ti022 = 0644; i.e., rw\-r\-\-r\-\-).
> +(because 0666 & \(ti022 = 0644; i.e. rw\-r\-\-r\-\-).
>   .SH RETURN VALUE
>   This system call always succeeds and the previous value of the mask
>   is returned.
