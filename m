Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 47F2946A9F5
	for <lists+linux-man@lfdr.de>; Mon,  6 Dec 2021 22:19:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350170AbhLFVWM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Dec 2021 16:22:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243704AbhLFVWL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Dec 2021 16:22:11 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AFEEC0613F8
        for <linux-man@vger.kernel.org>; Mon,  6 Dec 2021 13:18:42 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id j3so25202153wrp.1
        for <linux-man@vger.kernel.org>; Mon, 06 Dec 2021 13:18:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=GJri4vAkaY0qefNPdl2t97EuZYB4qqqCW6N//rbOwKQ=;
        b=fPK7t3FiVW8mVk6hmFbEZcEOvBGUcb60Of9eOo7UkFF6wwNbFk3Vq60mC9gCwKNBvG
         szfMCC0kpuk7k55DqDKJzvVkJV/RyGrihRUP4XawIbfR14LLVFFZaK/oMwHaD67ldxMf
         1CUHJxGjv2HP2j8/BBpPR/ucAcVaoS2G1zPG8kyAiuge89ZcKrHfXwHq9IORKcRV5zUe
         4BY21CmdaxhNiQq61tS9bvbtIOBl8jdr/FTYAmHL3BPhLujytDT+HqOXwNwpIhKum3da
         3+guQpOGBE7nxtqU5IzvyKJQhkDKdTYbePow4Q2G969qiE/JBtHd6vZWHGmZf9fbGgwA
         sjmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=GJri4vAkaY0qefNPdl2t97EuZYB4qqqCW6N//rbOwKQ=;
        b=kZC+Vbd67Nrwl1h6QdUj8gDPitWBlsErcll2SBkXgI7BYXd5uxPoSI2GB9TAJEdBen
         wbBULVq1k97HjFii5Wg3WfK4bQPs1OERylNcCa+fyE040MA2/INSRFMnuYh2WRccTIXp
         aP/NNU3tN21Y7p/Aljs6F0QnfLsYIQVQpW4MBt3eQy4PaZXX/5EE2EoZ8SNAP59BCOEJ
         a0dRPKRjV8g/2orTIWxUEoip3pSKZX9NALGg9RO2pJk3KmvBgFNtrSoupK6b+xkLNmZu
         i6TF+SRzyETEt246OXViV8TclxDEvTsfwntpmuRjf1Uv1jirWiE7l/K5XnjjzSRkxN3s
         BL3w==
X-Gm-Message-State: AOAM5320ZiydiFYTxe2vzdJEBgl57RYp2qx+/DeqiC7c+A78u3BkBCYh
        XtJoYfrDDCHnYRxHrCZR9SI=
X-Google-Smtp-Source: ABdhPJwWeI1M+Ai4uX7Bczp7F3K9xKUYkXvXNzchTtU13bjd36Yn/DlaIUMUxch64YE4O0Sklsxzfw==
X-Received: by 2002:a5d:4d51:: with SMTP id a17mr44122420wru.384.1638825520757;
        Mon, 06 Dec 2021 13:18:40 -0800 (PST)
Received: from [10.8.0.6] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id r62sm482490wmr.35.2021.12.06.13.18.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Dec 2021 13:18:40 -0800 (PST)
Message-ID: <70f0d612-a605-9a15-4858-37a166e6db4e@gmail.com>
Date:   Mon, 6 Dec 2021 22:18:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH v2 2/4] system_data_types.7: standardise on struct
 timespec fields comments to ucase w/tv_nsec range
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
References: <8d80e54b-6881-ee5e-0d14-305b510a28b1@gmail.com>
 <cover.1638821152.git.nabijaczleweli@nabijaczleweli.xyz>
 <4502a11502829db4d493d2558de2a4070d907308.1638821152.git.nabijaczleweli@nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <4502a11502829db4d493d2558de2a4070d907308.1638821152.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi наб,

On 12/6/21 21:12, наб wrote:
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>

I rewrote the title:

     system_data_types.7: timespec: Add tv_nsec range to comment


Patch applied.

Thanks,
Alex


> ---
>   man7/system_data_types.7 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index d117b1d2b..1e6a3f74c 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -1544,7 +1544,7 @@ or
>   .EX
>   struct timespec {
>       time_t  tv_sec;  /* Seconds */
> -    long    tv_nsec; /* Nanoseconds */
> +    long    tv_nsec; /* Nanoseconds [0 .. 999999999] */
>   };
>   .EE
>   .PP
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
