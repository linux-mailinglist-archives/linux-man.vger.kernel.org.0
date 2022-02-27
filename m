Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 064964C5D9B
	for <lists+linux-man@lfdr.de>; Sun, 27 Feb 2022 17:59:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229446AbiB0RAN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 27 Feb 2022 12:00:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229995AbiB0RAN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 27 Feb 2022 12:00:13 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9920A5AA6F
        for <linux-man@vger.kernel.org>; Sun, 27 Feb 2022 08:59:36 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id n14so11938165wrq.7
        for <linux-man@vger.kernel.org>; Sun, 27 Feb 2022 08:59:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=xGby35XiZoDAB8NGk1ngxSrTi+MOX9GCLT2p7tIAKz0=;
        b=LqgoLrQ1hbDRWAL7+4htERaJ6r7twBhEWkvnBDk+3N37ekNk9HAb4ITm1GyoDt1PlL
         qFRiWTAGsuh5vNCptVHVpxHhg2hFgoSKwauXxG7tRcrYifmr/H0/jNGBisYvrP9odop7
         Rk9RgTa6BJRo94OdT+LmkFbDs+e0JJEe9N0USWXGV782dJE5RZCvu+QxmT3EYLMf8KY7
         bRkFqRNdFd6t+tasddZAl2IwOsLAnbXltY5Tqq6oLSypgFgiLtIIYJTUKa7EHzNbVJYH
         OUcO/q8dhQF3i3dxZ8d9L+Ttk3R69u1vGhc66IrB375rt/YmSoZiZS/t4AQ6DQVNqwHn
         lIsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=xGby35XiZoDAB8NGk1ngxSrTi+MOX9GCLT2p7tIAKz0=;
        b=IyY6Dg5ycFsrwYqIx8qy8NYOA5ZEuiElQ6cc2auUm0ce/YqAZEaenZ7PtytH76adZ4
         HpxrmnGBxCZc1zFEpBLFKrImZAeEK7UbhvqQL+n/P4OWouO5FyRcNPg3OH3OoOGyxG4K
         glWZoplZgrMkYX4UD/orlBEQ8fgq6t9k5ZdwaFY10PmyXZxQUCDvQnhJNubQcj/KxvXr
         AU41SdPkeL8Z1hM1s614U29yrB0ti3jJW7WLMBDwsFutDe23Na0hn8dBydAHV52Ton3Y
         j4zMumvJwDvrqctmkS0s8VX8SW0qyCiMf2qrWhhHPMq3wzO7VUboxxnvWluEpT1rCn20
         G5xA==
X-Gm-Message-State: AOAM533z/WBIvEiP+FTaEVd3eUkcZdgwDin0Dj7l6KOnA0C7/nowPRIc
        cFg6TPtOg7oWhouZx6wy1i1sClen91CYYq2n
X-Google-Smtp-Source: ABdhPJwTJs7kRYQPxZFOPZhFletPp7490V8+Q3dOom7XIzochZx5j1CmFglQwIj1ElsEsDI0Pg1YPA==
X-Received: by 2002:a5d:4f01:0:b0:1ea:9c18:b792 with SMTP id c1-20020a5d4f01000000b001ea9c18b792mr12665459wru.160.1645981175147;
        Sun, 27 Feb 2022 08:59:35 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id d1-20020a056000114100b001efb97fae45sm1672530wrx.77.2022.02.27.08.59.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Feb 2022 08:59:34 -0800 (PST)
Message-ID: <e23fac26-831c-7aa6-4ce4-42a325a350f3@gmail.com>
Date:   Sun, 27 Feb 2022 17:59:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH] symlink.2: Clarify symlink ownership matters when
 protected_symlinks=1
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20220207175819.9306-1-jwilk@jwilk.net>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220207175819.9306-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/7/22 18:58, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Patch applied, Jakub.

Thanks,
Alex

> ---
> 
> I'm not really happy with the wording, but that's the best I could come
> up with in my limited free time.

Okay, let's merge that for now.

> 
>  man2/symlink.2 | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/man2/symlink.2 b/man2/symlink.2
> index 6c929101c..e4aa32b72 100644
> --- a/man2/symlink.2
> +++ b/man2/symlink.2
> @@ -86,7 +86,12 @@ file or to a nonexistent one; the latter case is known as a dangling
>  link.
>  .PP
>  The permissions of a symbolic link are irrelevant; the ownership is
> -ignored when following the link, but is checked when removal or
> +ignored when following the link
> +(except when the
> +.I protected_symlinks
> +feature in enabled, as explained in
> +.BR proc (5)),
> +but is checked when removal or
>  renaming of the link is requested and the link is in a directory with
>  the sticky bit
>  .RB ( S_ISVTX )

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
