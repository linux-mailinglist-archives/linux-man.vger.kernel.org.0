Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 543CE3205AD
	for <lists+linux-man@lfdr.de>; Sat, 20 Feb 2021 15:28:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229808AbhBTO1r (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Feb 2021 09:27:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229806AbhBTO1q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Feb 2021 09:27:46 -0500
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF0C4C061574
        for <linux-man@vger.kernel.org>; Sat, 20 Feb 2021 06:27:05 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id z22so15777244edb.9
        for <linux-man@vger.kernel.org>; Sat, 20 Feb 2021 06:27:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=emDfxIz5qIbk14aPqHIB1+qJ879OqdTkQNeUfvBgrik=;
        b=DtNCtCrxFKUIG1UdCYyvlHJSaqEWyLr6j/90yh7xm0uhBd96dpAznsAzWIclbVM/e2
         OUUZjWArAPfjy09IgTgcPgXJvTpsafpBaTqcXMJhRmkmZ0KZ/cC4ZXhYzs2CuL3b6Zj0
         jAY1+tzpb82UZxv2DLku8Jv57zT9ngQohQUDxVMqMWTZxvq7p87bbXEsBe/cXxDAoJSJ
         jyNvsq1K76/ENy0T//0VOmuRImM/iPDdmY2xroR1dv0PZ4DEwYpyjhNw4ouFwxax0OXu
         ioKri/kfsX9oKuj9F9vl8EKwUU4gk7qBJjMwvz1a/Xg+it1UNwcXfMudXeHkdnnoxuBN
         KN0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=emDfxIz5qIbk14aPqHIB1+qJ879OqdTkQNeUfvBgrik=;
        b=esX+HH52pA1+o9HSu7u0GvFXa3JlYUe9iJehkkjeqPVnMuQQfoibsiu7oPDy5CYT9A
         Q5RQWzSmZ/i06WPP8W4a26dkLFgBky29YVEwxbOCSPrd/qQ5VlOST24Uci7dI2OfgCYH
         ZcUnKBd1javh2Rj1to56IPCcnA2Xd7yoF+znjEtBfAOdSh586k0/+DymVuSjLqv5EG7B
         stPa9n6fsWu6rAbbUV8xCMPTFIN3pG6MwA2/uUnIswsrrVtmtQjKnDIP/DClElnV1rki
         +wwP2Ei9sGI5MRor826nIV3fNNEVJs/WgT983jipU7/KgZ7ubSLih/jOBtBvmV1uk+VQ
         J5eg==
X-Gm-Message-State: AOAM532qLHsk+bCEOEWZ5SYDii4HmTcP/9BNGvxRTqiUYzLHmmBXxAox
        to7cH8O2lUePbcV3I3OXuuTA1vmpI9/Big==
X-Google-Smtp-Source: ABdhPJzHOgKNjclEFRP3f/xuG2JMHH2EvXB3phxJ4mep+q4QtN36iA59ht9vP2EtrY7Befwbnq7sig==
X-Received: by 2002:aa7:c586:: with SMTP id g6mr13678314edq.203.1613831224319;
        Sat, 20 Feb 2021 06:27:04 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id mf11sm971062ejb.87.2021.02.20.06.27.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Feb 2021 06:27:03 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] pciconfig_read.2: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20210220132230.2537-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <aaeae7a4-20c0-e2ec-937a-bbf6813d9e35@gmail.com>
Date:   Sat, 20 Feb 2021 15:27:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210220132230.2537-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/20/21 2:22 PM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Thanks, Jakub. Patch applied.

Cheers,

Michael


> ---
>  man2/pciconfig_read.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/pciconfig_read.2 b/man2/pciconfig_read.2
> index c379e2d3b..31a4eb879 100644
> --- a/man2/pciconfig_read.2
> +++ b/man2/pciconfig_read.2
> @@ -17,7 +17,7 @@ pciconfig_read, pciconfig_write, pciconfig_iobase \- pci device information hand
>  .BI "                   unsigned char *" buf );
>  .BI "int pciconfig_write(unsigned long " bus ", unsigned long " dfn ,
>  .BI "                   unsigned long " off ", unsigned long " len ,
> -.BI "                   unsgined char *" buf );
> +.BI "                   unsigned char *" buf );
>  .BI "int pciconfig_iobase(int " which ", unsigned long " bus ,
>  .BI "                   unsigned long " devfn );
>  .fi
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
