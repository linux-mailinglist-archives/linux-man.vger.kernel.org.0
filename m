Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC257407378
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 00:44:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230018AbhIJWp4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 18:45:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229560AbhIJWpz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Sep 2021 18:45:55 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3ACEBC061574
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:44:44 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id w29so3947084wra.8
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=DY8cPtN4Aez0Exy8/eVU7x7I5my3d0jSlbuDypXxsNs=;
        b=k082OS8j8YnZbpUEf0XEEyrYWxnELgEA71isaQ2z5m793TCzRVNIsyib0/29ZK+qPh
         16YiNgcg/8ZTPTKvt1HNdOdqN9/GQnDVtSIYbUTJpiBqSL6HGpzkAV8KQj08ZZg8RGW1
         +Dhlka0zIgQpgGGqZpq/l1RGlDeFGSziuO51a7De8atyPIjtUv0vKtGYKqE0U2hiuPB8
         6SPokTQom5Cw/C0ulDX1dbSC1vqoc+e4vcixYr3e58hk3mdbtqe+fgWl0n6VTaY/n/QE
         SuvvXMn71+EtHsCIGfMDyYKY+FBc6DaSERTpyWyOpPmgGLnQsKUu2nuaVlYK/tCoFKJN
         KeDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DY8cPtN4Aez0Exy8/eVU7x7I5my3d0jSlbuDypXxsNs=;
        b=XY+DnzCkTS5emOHWVEWH/Fsof2HX/zydz3/whjLh29pbMGPpgafObkZxnxCVbCgMDd
         zJIIdJNwbzzdbFK9RMmlk1pGF1GAMvYv+6tFd2k5+VFO63C/N2TTEEHtdj/HFOQsLyro
         GHzB2XbUkIom6R5Kra61o/Gu1g0edF4JZGhLdCUY8K9R2nJ/v2M8Krh0IH8CrgHlsvel
         bYpQuat9R66rxdFQkfxhZH3IRuocVoAjjt6WCS/9uNmNHeDB9x+4sxg+/FXWcLN0R38o
         XCZLK1hOxY1r7EeNFuPKzgPU5lL0RBwPuPFRV0CfFYFMJ++kWxptoSl+o6Ag0OYlTsmV
         5t7w==
X-Gm-Message-State: AOAM531Nr1MueQ/+bPkzvaJQ01fBlogHXyr15OXP9YfMZIqfVbG8pVtD
        8LhiV2ERMknZ7daFaUUIRCe6TKAOLMQ=
X-Google-Smtp-Source: ABdhPJwGsdWcIBdPSAu4+3Eeh0elLiAFJ4OhP3783O5hq/mB7AM+E8+wCB2X1qQOOwRNT/FCgz5QLw==
X-Received: by 2002:a5d:65d0:: with SMTP id e16mr96592wrw.182.1631313882793;
        Fri, 10 Sep 2021 15:44:42 -0700 (PDT)
Received: from [10.168.10.11] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j98sm2539083wrj.88.2021.09.10.15.44.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Sep 2021 15:44:42 -0700 (PDT)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Subject: Re: [PATCH 3/3] mount_setattr.2: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>, christian@brauner.io
References: <20210910200429.4816-1-jwilk@jwilk.net>
 <20210910200429.4816-3-jwilk@jwilk.net>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <aa73a3cc-c7bb-0d78-b1d5-e984ac941258@gmail.com>
Date:   Sat, 11 Sep 2021 00:44:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210910200429.4816-3-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jakub,

On 9/10/21 10:04 PM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> ---
>   man2/mount_setattr.2 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/mount_setattr.2 b/man2/mount_setattr.2
> index 77233f589..ca56256ce 100644
> --- a/man2/mount_setattr.2
> +++ b/man2/mount_setattr.2
> @@ -986,7 +986,7 @@ main(int argc, char *argv[])
>   .\"     because. Because making assumptions about the current working directory
>   .\"     of the calling process is just too easy to get wrong; especially when
>   .\"     pivot_root() or chroot() are in play.
> -.\"     My absolut preference (joke intended) is to open a well-known starting
> +.\"     My absolute preference (joke intended) is to open a well-known starting

The joke was intended :)

<https://lore.kernel.org/linux-man/20210812090805.qkwjxnjitgaihlep@wittgenstein/>

<https://duckduckgo.com/?q=absolut>

Since it's in a comment, I won't apply this one.

Cheers,

Alex

>   .\"     point with an absolute path to get a dirfd and then scope all future
>   .\"     operations beneath that dirfd. This already works with old-style
>   .\"     openat() and _very_ cautious programming but openat2() and its
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
