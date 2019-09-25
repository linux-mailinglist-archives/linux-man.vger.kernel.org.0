Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5318BBE4C5
	for <lists+linux-man@lfdr.de>; Wed, 25 Sep 2019 20:42:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2440003AbfIYSmV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 25 Sep 2019 14:42:21 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:54554 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2439910AbfIYSmV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 25 Sep 2019 14:42:21 -0400
Received: by mail-wm1-f65.google.com with SMTP id p7so6865981wmp.4
        for <linux-man@vger.kernel.org>; Wed, 25 Sep 2019 11:42:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=aA0NLLlNOkjLNNuj7DNNu1DPNhH32c+1cnZY7kQLHGs=;
        b=u4PM9VqQupTtfPoaSG1h6ngfbYED/DR601dBLVFQ8AV/20ik/7+Xd4ZMJwu2dUD5mm
         h6yhXkHPKxA/921J5RNR6Adw7JwZFyBs/xFGxL+Xw7yY06jktljV6K7cMkGr4pZy1GcI
         j/Ygra5KxkoJViILsBFC1Httu5K1C4mWESEpH+8mnZc78JQu0T+TTaFWFwkOPa//jbg6
         rzFKuIOg3NCfIqq+6+d8PxcuMD6lTbAsYIXv356TkMrxo6jnAJrlVQb0fKX7qAqv36YA
         nPPdtXiq+XZ90CDUDXDBRfoar8GkYmm7Y5fjPtk3oAC4cvnxi9mBw9cc4sYem2KPqRb/
         ubvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=aA0NLLlNOkjLNNuj7DNNu1DPNhH32c+1cnZY7kQLHGs=;
        b=PQK14kC6KXdJgliOMIaOlli/J1RKPtcPNXxI5VNzf3uqQRYz+fE8kX0Tr1IWFSCX3l
         4cfmrw9edGrMT0XwkhK8nS0X2kLbIjjv7hOicTlqJgO+I9IDGGfDkfPtS9+YvyOz+aaZ
         6CEd+8gb7FxF2gq3SVg0NJ47q6PghX9Uz7era3d3i7i+EnCB6XCKM0/THNtqeViMLZJD
         CGVvH5Ea6zuxH9AQG5FuM6p/YdsF0VMaFTbxdPSIMhHPT1T8XVXvXmSFF9racHGuH3dR
         rPq2IUFf+xj62BYUtjoflh0Ng1nwx+lJyCwBv/RXUaW5JfFdFAIGKqFC7iHhZgXLzwB5
         8PtA==
X-Gm-Message-State: APjAAAVJ/joC7ZfM8UaN1yL++1BFs0FAuZA3kr0WIBya92yS4UZIAIqb
        Ibnee5Rc+sYwuUG5cawMmA3Zzz37
X-Google-Smtp-Source: APXvYqwhiTSGvJ7jIOT4M2AL6vtCT5OGRxc2LEOeKVLQrjY/WwLx8s+pHhJnXyrXE/Bak39HKWlLlA==
X-Received: by 2002:a1c:1a4b:: with SMTP id a72mr9091429wma.44.1569436937278;
        Wed, 25 Sep 2019 11:42:17 -0700 (PDT)
Received: from ?IPv6:2001:a61:24d6:4e01:ef75:e978:47cd:1c50? ([2001:a61:24d6:4e01:ef75:e978:47cd:1c50])
        by smtp.gmail.com with ESMTPSA id z1sm9009425wre.40.2019.09.25.11.42.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Sep 2019 11:42:16 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] pivot_root.2: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20190925155846.5914-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <12f1fdd6-3c56-cd9c-4330-71a0dbdbb76a@gmail.com>
Date:   Wed, 25 Sep 2019 20:42:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190925155846.5914-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jakub,

On 9/25/19 5:58 PM, Jakub Wilk wrote:
> Remove duplicated words.

Thanks. Patch applied.

Cheers,

Michael

> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> ---
>  man2/pivot_root.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/pivot_root.2 b/man2/pivot_root.2
> index 98609ce68..36dafc0b4 100644
> --- a/man2/pivot_root.2
> +++ b/man2/pivot_root.2
> @@ -121,7 +121,7 @@ Additionally, it may fail with the following errors:
>  .\" itself. Of course, this is an odd situation, since a later check
>  .\" in the kernel code will in any case yield EINVAL if 'new_root' is
>  .\" not a mount point. However, when the system call was first added,
> -.\" 'new_root' was not required to be a mount point. So, this this
> +.\" 'new_root' was not required to be a mount point. So, this
>  .\" error is nowadays probably just the result of crufty accumulation.
>  .\" This error can also occur if we bind mount "/" on top of itself
>  .\" and try to specify "/" as the 'new' (again, an odd situation). So,
> @@ -357,7 +357,7 @@ child(void *arg)
>      if (pivot_root(new_root, path) == \-1)
>          errExit("pivot_root");
>  
> -    /* Switch the current working working directory to "/" */
> +    /* Switch the current working directory to "/" */
>  
>      if (chdir("/") == \-1)
>          errExit("chdir");
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
