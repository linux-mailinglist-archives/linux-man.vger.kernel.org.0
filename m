Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 29D33407250
	for <lists+linux-man@lfdr.de>; Fri, 10 Sep 2021 22:11:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232310AbhIJUMX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 16:12:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230513AbhIJUMX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Sep 2021 16:12:23 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78130C061574
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 13:11:11 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id v10so4244714wrd.4
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 13:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=mSdbFp3UwjP6rY3oZAW/TY8zZQiZ8N5IunATtXsJCDs=;
        b=UvFeiEROT2PvpOoOkkUNqS0CTMtlW1OYfFqX3GNb9ui7L53RQ4XDQDqWPJhvvWu2ED
         5Zm/QYiRyPAjCtD7WMppZnxtznWCu71aaqfoaL28wLWv+ZF5tPNhbJuxrTHd+rZNVAcd
         W+OHdIqpS6t7T7eI4GYMtargAth6qH5T0+Wx3asG17WMWc2WarpU2rVX6kjFRjhfli+v
         RODWgrLNPAZt/DPSQFbFLCycr+ZVmaolKnpAKP0FhFdAw/epxRpv+y0NyHn6cdMRrklt
         fzkHiFdPvVe6x/fn5UAqGC+XeD/DIkqGvXFNUWzDbZATmWCW5y6K6bZqtEc6VSyfa/M4
         81+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mSdbFp3UwjP6rY3oZAW/TY8zZQiZ8N5IunATtXsJCDs=;
        b=BEj6LbFrtkB93G5gyHfi8Yybp/qDnB1ZaGUvgi11fjjgMiHCL9HnaMkeHY1Ky08fAW
         sWSPDPPyUWoUSAcSPwzAmasnVJRhJo1liMfP5QBzQJ6JWntiWN2ZzYfqaT0ygNnf4JuU
         NCPU3QNST/AEEm9Rs4E2tRzOIkKnU/MRd3bOG/VuvgyU310YUF3v5EAX9BgmyXC/YnXA
         hkkV18crJeJxZUsw3RHtc9ArmG/JIEnFwOJXxumN5F78MRfgqTQgqgfBWv8vmnhmWdYg
         W5ETk7RXCvTWX34cenQvIO8L5Yk3l0stphrKQOdqLl5RGoeGbUM2XcfJFq7FgrGSUce2
         Uvlg==
X-Gm-Message-State: AOAM531bb8Sd/JXCpg+NY6gO3HZffIMICFPNmnQ/ffvemP3AFkLVPF+A
        /D60rHjjpmXFcboY4rliya68/jzCh40=
X-Google-Smtp-Source: ABdhPJwF9BHgrOVXb4uPEVrp+s8Lf9EhHJ9a4CjWo1qax9fGPgGwnv3WPdKNACXaQAR8ES+UX5+WdA==
X-Received: by 2002:a5d:6085:: with SMTP id w5mr11638780wrt.104.1631304670087;
        Fri, 10 Sep 2021 13:11:10 -0700 (PDT)
Received: from [10.168.10.11] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q13sm5635481wrv.79.2021.09.10.13.11.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Sep 2021 13:11:09 -0700 (PDT)
Subject: Re: [PATCH] veth.4: tfix
To:     =?UTF-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@gmail.com>
References: <20210910091725.273261-1-stepnem@gmail.com>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <9a5dc439-ffc4-8d05-929c-d64f60f107c6@gmail.com>
Date:   Fri, 10 Sep 2021 22:11:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210910091725.273261-1-stepnem@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Štěpán,

On 9/10/21 11:17 AM, Štěpán Němec wrote:
> Signed-off-by: Štěpán Němec <stepnem@gmail.com>

I applied the patch.

> ---
>   man4/veth.4 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man4/veth.4 b/man4/veth.4
> index b2d5a2fc7fe4..bd2acdcc4353 100644
> --- a/man4/veth.4
> +++ b/man4/veth.4
> @@ -54,7 +54,7 @@ are the names assigned to the two connected end points.
>   .PP
>   Packets transmitted on one device in the pair are immediately received on
>   the other device.
> -When either devices is down the link state of the pair is down.
> +When either device is down the link state of the pair is down.

And then a following one adding a comma: s/down the/down, the/

Thanks,

Alex



>   .PP
>   .B veth
>   device pairs are useful for combining the network
> 
> base-commit: ae6b221882ce71ba82fcdbe02419a225111502f0
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
