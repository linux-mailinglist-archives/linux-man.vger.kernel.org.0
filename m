Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6DB6964DB29
	for <lists+linux-man@lfdr.de>; Thu, 15 Dec 2022 13:29:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229627AbiLOM3f (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 15 Dec 2022 07:29:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229547AbiLOM3e (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 15 Dec 2022 07:29:34 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 446D2101F0
        for <linux-man@vger.kernel.org>; Thu, 15 Dec 2022 04:29:33 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id o5-20020a05600c510500b003d21f02fbaaso1556715wms.4
        for <linux-man@vger.kernel.org>; Thu, 15 Dec 2022 04:29:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Gii35Nop+2g4QCqIN1xriZzqfyp6GvfLGqOv/37mvRc=;
        b=iQqNOzT6S+aODmeEhEi6DRNuR+o7HBn3hSS/ZSEvjECpWz34+uNl6GdoYxjfLhJ4s9
         l4bhYcUjxxDabx/dJAI7fbjiNkYocX6Y07keIXunp6RD6AlW/w7jNLNKJlATJKmpsy7G
         uSLgXARe0I4nmqIuarhNT7Aex4lYesChwAY3uW/or7MUjYYEoJMlLoQzit0+xwWgji4w
         UW5UxUa+6w6NPUK5g1JP7laZl811GvVQqDc/qF8ePeUoPVa6MzFUmvwvlzoL6+Hpxre7
         /ykEnOZdIGpSudpYFsLRxGMgPnTVlRy4xdMYIxxM4lq4f93fxrnj3MT5gbIkhKxT3mMT
         emKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gii35Nop+2g4QCqIN1xriZzqfyp6GvfLGqOv/37mvRc=;
        b=QkpvLNQI/yKzXaGIcMyqBVzC6IOy6SAFrBRUyMa0uH3oYX4o92ZRpmJx92ygrmErLn
         TyKkxqT6OOBwxPr54hocjvDRaSwwcLP26QX9kC2Ydgte7kpI9MDXpmPet8exMScLzg2W
         mDsgzeEfUnlTT9ZNK4m/rxkkHm9tAM4de8wVk7pu+/Np2yQF5TITIUiwAteH7B5XCqT6
         1cLq7KrXIbbGrYA+BgzqscelAfT8+A1KJo1tdPfmGL+TgxsxEB/D78S98YluFbvvA0o3
         /09obE43axZytfKjB6FbY61+lPPTC3JJPjN8tk9tlPz5c65a3OJKISaqfPdjxVXUa86Q
         amzA==
X-Gm-Message-State: ANoB5pm9OAFC9pvH8RBPbiVApST9W7ANX0kv3bZ2P7WdXP8vWi6/B1cc
        yTGL0iExoOuHROKJhBVYnwQ=
X-Google-Smtp-Source: AA0mqf41uk6VuvbYDYIOR1Vzwdtm50TKpTXwgoO389jG/eZjNEPHHxfQqoA6+AbECkpqjaUvsByijQ==
X-Received: by 2002:a05:600c:1da7:b0:3d2:2b70:f2fd with SMTP id p39-20020a05600c1da700b003d22b70f2fdmr10459979wms.21.1671107371788;
        Thu, 15 Dec 2022 04:29:31 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l5-20020a1c7905000000b003d1e4120700sm6716410wme.41.2022.12.15.04.29.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Dec 2022 04:29:31 -0800 (PST)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Message-ID: <ead19a42-cd52-ad3d-1321-4fed5700c36a@gmail.com>
Date:   Thu, 15 Dec 2022 13:29:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH] INSTALL: tfix
Content-Language: en-US
To:     Eric Biggers <ebiggers@kernel.org>, linux-man@vger.kernel.org
References: <20221215065816.65765-1-ebiggers@kernel.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221215065816.65765-1-ebiggers@kernel.org>
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



On 12/15/22 07:58, Eric Biggers wrote:
> From: Eric Biggers <ebiggers@google.com>
> 
> Signed-off-by: Eric Biggers <ebiggers@google.com>

Patch applied.  Thanks,

Alex
> ---
>   INSTALL | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/INSTALL b/INSTALL
> index d2367883b..eb90c5b30 100644
> --- a/INSTALL
> +++ b/INSTALL
> @@ -47,7 +47,7 @@ Description
>              -  DESTDIR
>              -  prefix
>   
> -       Comand Variables
> +       Command Variables
>              Some commands use flags.  A command named 'command' will have a
>              variable COMMAND to specify an alternative command name.  To append
>              flags to the default ones, set the variable EXTRA_COMMANDFLAGS.  To
