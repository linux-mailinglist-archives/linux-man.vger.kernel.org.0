Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 46EB92FDAE2
	for <lists+linux-man@lfdr.de>; Wed, 20 Jan 2021 21:33:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729735AbhATUbe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 20 Jan 2021 15:31:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388755AbhATUbP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 20 Jan 2021 15:31:15 -0500
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7780C0613C1
        for <linux-man@vger.kernel.org>; Wed, 20 Jan 2021 12:30:33 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id w1so35319108ejf.11
        for <linux-man@vger.kernel.org>; Wed, 20 Jan 2021 12:30:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=nQXhixognWDrtf/vipQoPKgXb46aTWLuca66kr+By8g=;
        b=lVbDiJHaxU6bh4P9Px9QZFPqok8SnIkRji9ajk3/exWBCIyUFYDkBl/9cRNGOpzzdJ
         Nt5OpAYlHOhtupzOYw4pY5QcOUl+CyfUMK7uYCwxgVhIcmLga8ujeOhl8j62FmEBz43H
         qbr7mDwQQ/3jJPz9k4U/snM7EG2gRNaZjUIZJXlFVGBzl7Ok/qzDRMpsWxAL+j0XbvNW
         9QFnUdt4x3lYxCJdtlGBoldiRuBZlkbBuX8STXGJf+EcJzxLZMkeAA8uE20AL36ZFjSp
         rfvAA/j55hBPvbQRx88Abs+UFurLUO4c2tETuLMMrWco3ve/vj5tVkcDftYSaSQkqsJm
         7elQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=nQXhixognWDrtf/vipQoPKgXb46aTWLuca66kr+By8g=;
        b=ZBYy7Lf6odMFB84qWYhBcGeo5ZXuZG6y+5hMx0td0DnNTSuLzDbmmw6DxjpRHvQMgd
         AeEraBzqPKfpJrMry0+w3V/vPA5nupQZKx8IUD4zsWYosZ0r8tAyoDKXrtFmmUow1/6s
         Vx0om3EPyo2KNl9T5YT0hZn0ESacCBr+P2xk/h8VQMpMsULfD/7c99ppUupLx07y4zW1
         1TZX4sDk1vksQ+EgKxE95hSh2BFNQH7NZQEBo68Q/9lA12MOSqEt9pTtowsAmLZv3iOO
         bUkRqHUC9HHSsu8nBjmlBQcQ5aWeJ+ISto8izZVfIJfSNat9YfpMkOBpFzfabLbWm2vL
         3gow==
X-Gm-Message-State: AOAM533yFmFfpPD8JLhvYFqnmEUpK14fGtLwF7IFTFvK5nRk9Y7wXfxs
        5NcHCaTN66bvBxJ3NNKiwQM=
X-Google-Smtp-Source: ABdhPJyHlHBUGLV6jFjcBTYwq7/tBcDD4rKl9L4JJLLQ45NIorLRdlGEeGZ2kc9JdTacCamxx0Fk8Q==
X-Received: by 2002:a17:906:2747:: with SMTP id a7mr7435780ejd.250.1611174632572;
        Wed, 20 Jan 2021 12:30:32 -0800 (PST)
Received: from ?IPv6:2a02:2455:e0:e000:3005:efab:c884:ced0? ([2a02:2455:e0:e000:3005:efab:c884:ced0])
        by smtp.gmail.com with ESMTPSA id c24sm1657211edt.74.2021.01.20.12.30.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 12:30:31 -0800 (PST)
Cc:     mtk.manpages@gmail.com, alx.manpages@gmail.com
Subject: Re: [patch] fread.3: Swap size and nmemb params
To:     Alessandro Bono <alessandro.bono369@gmail.com>,
        linux-man@vger.kernel.org
References: <CANqtVe=DzPjaPo831d+UadR_oc4TR_4t8RBwWwwBME0kQvpcoA@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e739507e-cff3-810e-d95b-7ffd0b699398@gmail.com>
Date:   Wed, 20 Jan 2021 21:30:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <CANqtVe=DzPjaPo831d+UadR_oc4TR_4t8RBwWwwBME0kQvpcoA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alessandro,

On 1/20/21 4:36 PM, Alessandro Bono wrote:
>>From 4562f0a369db6343902a5a3c5dd6bdb3413b64f9 Mon Sep 17 00:00:00 2001
> From: Alessandro Bono <alessandro.bono369@gmail.com>
> Date: Wed, 20 Jan 2021 16:11:57 +0100
> Subject: [PATCH] fread.3: Swap size and nmemb params
> 
> It works both way, but this one feels more right. 

Quite!

> We are reading four
> elements sizeof(*buffer) bytes each.

Yes. Thank you. Patch applied.

Cheers,

Michael

> ---
>  man3/fread.3 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/fread.3 b/man3/fread.3
> index e1284e0..e3f34b7 100644
> --- a/man3/fread.3
> +++ b/man3/fread.3
> @@ -153,8 +153,8 @@ main(void)
> 
>      unsigned char buffer[4];
> 
> -    size_t ret = fread(buffer, ARRAY_SIZE(buffer), sizeof(*buffer), fp);
> -    if (ret != sizeof(*buffer)) {
> +    size_t ret = fread(buffer, sizeof(*buffer), ARRAY_SIZE(buffer), fp);
> +    if (ret != ARRAY_SIZE(buffer)) {
>          fprintf(stderr, "fread() failed: %zu\en", ret);
>          exit(EXIT_FAILURE);
>      }
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
