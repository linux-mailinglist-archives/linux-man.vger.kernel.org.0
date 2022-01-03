Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E2B8348358D
	for <lists+linux-man@lfdr.de>; Mon,  3 Jan 2022 18:27:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235252AbiACR1j (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 3 Jan 2022 12:27:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235245AbiACR1j (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 3 Jan 2022 12:27:39 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 260A3C061761
        for <linux-man@vger.kernel.org>; Mon,  3 Jan 2022 09:27:39 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id s1so71282530wrg.1
        for <linux-man@vger.kernel.org>; Mon, 03 Jan 2022 09:27:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=gjU05MLZjkWGofdIClwBwdvgDX+QARLe7k/neH1yYU4=;
        b=dgUbnvsnvfpfgh14DYJTbofK/4np8g/4svIQxFxW2HcqpHsixQnstZWjdWMsVWER1G
         es2dJflTnMlrwrRPhUfwDfyROKsbVJh3x19K/QFLdz8PxrAu2CRr5gZ7hc7idp047UfS
         awFEDNyqCt7oL1xg+9h7AbdPXG81lQPsylE6+QYULgSMDGZ9cA9PVqYrN4GXD2T/g4fA
         kCa2Fo3ZU+BcDJVuPK1oVHMH/oYTNHXNK6rCoxWm8T4iRPmxw48Yc5Cb5sLCQINZRAxX
         tD0soSVY+A7epvGBeDm8R3V2piHPWkK/lMsD06nDBXBJ4rbwOSld1/yy4+unmxqvRi0z
         5APA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=gjU05MLZjkWGofdIClwBwdvgDX+QARLe7k/neH1yYU4=;
        b=x4BSAWCbkWtS5Y4l1rNg7F94tiwdwejo2B3sXiW0GXV5VkbljDNNKq+DCyFISPPwTS
         Ravlks97/HGlnYOFZsoCWkebnvNvVHH0kXXK3JhHR4CFQh0ubGcPhGC74582ttjV18+t
         7ugiWVmRhAPgUU27Yo2TAaG1PYUnIT6WBSSIeWi9KtvD8qwDfRp/6kJw44M8YADMNvso
         JnPdiO7LXQ8q2gjEKTv7PE2o0rMfr4ADo9zYW4pH/kphs/hozG7iXkz+vMuBpGOZymIR
         U7S8IRyuXFp7e2oEDYicOIEEc6Z5Rle4I3U5I4o6hNYC/XB206V0Wht/I1UN23m56p9C
         BIVA==
X-Gm-Message-State: AOAM531rthb605mP+ZJZO2n3GQ8U3P78rdB7yDVGJAHjWEXj230Boi4H
        CsQgKHxi9q7VUjLlo7D00wUakN/jNvI=
X-Google-Smtp-Source: ABdhPJzF6iFCnI69o23leRd3XuBI2JuPhlb3naIrB6jCCDgiZ94OUNzldfdN5WypBPyLKg1uFZ6R4A==
X-Received: by 2002:a5d:64cc:: with SMTP id f12mr39302360wri.145.1641230857768;
        Mon, 03 Jan 2022 09:27:37 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q8sm35241290wrx.59.2022.01.03.09.27.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jan 2022 09:27:37 -0800 (PST)
Message-ID: <90821738-61de-7993-8382-718d1caf8bbf@gmail.com>
Date:   Mon, 3 Jan 2022 18:27:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH v2 2/4] tee.2: use proper types in example
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <c9779348-f3f4-b621-4f09-e6f4c0d2cfc6@gmail.com>
 <be236ff0a523fb44c3b88cd9d26c1c1255714725.1641229121.git.nabijaczleweli@nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <be236ff0a523fb44c3b88cd9d26c1c1255714725.1641229121.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/3/22 18:03, наб wrote:
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
> ---
> The difference is, realistically, negligible, but it does make the code
> look like it came from the 4.3BSD era.

:-)

> 
> Comments applied. 1/4 not re-sent since you applied it.

I applied all of v2, and another one to remove an unnecessary 'else'.

Cheers,

Alex

> 
>   man2/tee.2 | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/man2/tee.2 b/man2/tee.2
> index 14a927c93..9d83ee982 100644
> --- a/man2/tee.2
> +++ b/man2/tee.2
> @@ -164,7 +164,7 @@ int
>   main(int argc, char *argv[])
>   {
>       int fd;
> -    int len, slen;
> +    ssize_t len, slen;
>   
>       if (argc != 2) {
>           fprintf(stderr, "Usage: %s <file>\en", argv[0]);
> @@ -183,7 +183,6 @@ main(int argc, char *argv[])
>            */
>           len = tee(STDIN_FILENO, STDOUT_FILENO,
>                     INT_MAX, SPLICE_F_NONBLOCK);
> -

I removed this change, since I guessed it was a rebase mistake.

>           if (len < 0) {
>               if (errno == EAGAIN)
>                   continue;

-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
