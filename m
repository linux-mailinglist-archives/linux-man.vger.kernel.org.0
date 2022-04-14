Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 55469501D95
	for <lists+linux-man@lfdr.de>; Thu, 14 Apr 2022 23:39:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237753AbiDNVmH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 14 Apr 2022 17:42:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344358AbiDNVmF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 14 Apr 2022 17:42:05 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B73381EED0
        for <linux-man@vger.kernel.org>; Thu, 14 Apr 2022 14:39:39 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id l62-20020a1c2541000000b0038e4570af2fso4025272wml.5
        for <linux-man@vger.kernel.org>; Thu, 14 Apr 2022 14:39:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=fz1pvsnPl1KveVk6x/lxyYfUNWyL+qzeYmNy8OPZeWA=;
        b=G+6RpY+v9IqSuuwL0ON4gXmG7lIRC8uLNYlEU/ylRqOwNS3csYsyBi66n+o9T3tWkv
         8gYPvgaQ1zafoqgsxFe2ZWfNaW1QQsX/+JBjTDbMR370GNV+JHUQMZB/Tk9yJQ8DibAn
         +b2hyS4+NjK7gGkMxf3f/DI0kjvwW+E1ezXkZ68RW/dGmMNJh1uVADmtqd11z2G69L7B
         s6+vdhSl0CqQnRocY1lULISeCrHPgvMc9KgMabNp6gR+kyoqrD9VWkE+UHNcKbjG//PW
         wJl042y2pVCKHvF4imu34zov5lwI5qT9wT4V5VnU9nxu2A2Q2VCLH7nJV2crv9M39NQV
         rd9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=fz1pvsnPl1KveVk6x/lxyYfUNWyL+qzeYmNy8OPZeWA=;
        b=oKBNMyuhusM5zYOFQ2R7KwBZoHx1AN3OwD8WrNSDe/Lb+iIx5IgWUEGqV917pD1cDl
         Zl0EDFx9citOSJdel5z0YhHUsuLq8k1iPCzRz04kwPTlcQR0KecrIv6T4yaqgceMxoMr
         Wu4c5CfUvFDjVy6AxN0f8w2Wtf5Zi7CTgcMTI8piF5lVMZ8tXDkeitgW25o74BHbPjbi
         9So87hTpjkpSqCMPzl2oZ+hKDeQj/TpDbwIndUme5R2RlfRsx8/MI8gAjY7OuqUlMUWu
         VtVWWU4YQa9cZdO3rs+N5WmWGBl48UVaM3ElfObmr00uS90vdMvCvx7VK1YReqZ8Cwr5
         qU1A==
X-Gm-Message-State: AOAM5329jlemG9+a6BijWPbLDCSRxg/Aix7ZzDu7Tr9n0VD+GqYczmKQ
        QGU8MFxqHyVz+FaRHQVq30peGK3gx0lX8tR0
X-Google-Smtp-Source: ABdhPJzjl8JZLZMKSCoC6QqSlDuJewQIg3JjDjZu3/yps1IwBjaB+2JaLTLNSDeQlABzdLghqT+fFw==
X-Received: by 2002:a05:600c:1d9d:b0:38e:c8e0:209f with SMTP id p29-20020a05600c1d9d00b0038ec8e0209fmr461135wms.43.1649972378135;
        Thu, 14 Apr 2022 14:39:38 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id z5-20020a05600c0a0500b0037fa93193a8sm3590217wmp.44.2022.04.14.14.39.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Apr 2022 14:39:37 -0700 (PDT)
Message-ID: <30abb3ec-7a81-5325-4953-7d62b3703fba@gmail.com>
Date:   Thu, 14 Apr 2022 23:39:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] timerfd_create.2: tfix
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <20220414210347.kzf5b6poiwijtaem@tarta.nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220414210347.kzf5b6poiwijtaem@tarta.nabijaczleweli.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi наб!

On 4/14/22 23:03, наб wrote:
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
> ---
>   man2/timerfd_create.2 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/timerfd_create.2 b/man2/timerfd_create.2
> index 65fdfcc45..fc905ee6e 100644
> --- a/man2/timerfd_create.2
> +++ b/man2/timerfd_create.2
> @@ -471,7 +471,7 @@ is not a valid file descriptor.
>   .IR old_value ,
>   or
>   .I curr_value
> -is not valid a pointer.
> +is not a valid pointer.

Wow, I read the patch, and I could see that there was a visual 
difference between the lines, but both read the same correct phrase. 
Dyslexia?  Maybe  :O

Patch applied!

Cheers,

Alex

>   .TP
>   .B EINVAL
>   .I fd
