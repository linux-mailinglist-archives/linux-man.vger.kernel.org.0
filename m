Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AAD9C320774
	for <lists+linux-man@lfdr.de>; Sat, 20 Feb 2021 22:48:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229838AbhBTVsH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Feb 2021 16:48:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229826AbhBTVsH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Feb 2021 16:48:07 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16A72C061574
        for <linux-man@vger.kernel.org>; Sat, 20 Feb 2021 13:47:27 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id n10so10932935wmq.0
        for <linux-man@vger.kernel.org>; Sat, 20 Feb 2021 13:47:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=NVzDE831OpN0MxQm38srVGLow2BSws3ht3iocovaG+U=;
        b=ulYmXVNlOF8isjIAgMVz+EaF+TEftSQSydt0O7uOrZ+vH1DuknalhrHherBNksK13S
         3onUqoNoj6vOaizjA85ykYrofU15K/zyUhIoZylZGxea+RMMVl0Kz7qux1CoZyvuIKfX
         UNbQCmq/GaC72MEXwb0jLJtA+WM+h+KSA6qoDLiuHSFWhJaNXyqHubT1zwgQ+Vk6zCh4
         rXUBeYVC7SPHPYh0ZWJDADQwH9kPZPCSnOo3IoroxmTvf3ArYkLeZw02V9RM4wwI9bSt
         UZlVRbjq5sk8lLmDvdJIfFa1WHXk5rXC8CXgRa3Gg97mIrKE3V2J/LBzFw9UYEvK2acW
         cXEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=NVzDE831OpN0MxQm38srVGLow2BSws3ht3iocovaG+U=;
        b=obJUAu7mchga4KjYrUUhO/HPSB+nGaCXaAeJZqBhl9TlpTPtpgLs1vwSTR3NyBfjz6
         yUIZFn7oaD/jkz7RtsAC5KYusyl6vFkuSCBBTKsoECgIdLgCI+0fcNN6Os1NA3OqXbsm
         It8BV8PkS3OZShQOKlreWv9HIm8c7VqcrgX/8DqwzZGzQNAUMKhRUbm9alCtxbmlxaAR
         h50xcAkx41alt6j1AFHeJpC/BmHYIQO0QJspiVefOkCbcx26BkZf7tP/KbgRuVhQH1sh
         sTkR5TqkJ/b2u4DJKR3XsYSKIij0l1f35z2rjUl7KX9LEvO735EEOLpm4m6C8f/KYnVO
         HpeA==
X-Gm-Message-State: AOAM532Qpj4qgLxd3bfw4x+kjRP7o3GU2lp6U5Gkb4NEq0YA84QT1p+k
        g/6zBqNC02ktoCk07lda00br65heRwugIw==
X-Google-Smtp-Source: ABdhPJyKZydB+QyT6TqbR/cNyxVxJ8azf84QtcT1BrXOQJjccO6ez+W54P60rVdHqYp8oUPJtXO0Pg==
X-Received: by 2002:a1c:64d5:: with SMTP id y204mr4658215wmb.55.1613857645864;
        Sat, 20 Feb 2021 13:47:25 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:e14:1e8b:dca4:7d73? ([2001:a61:3a2d:1d01:e14:1e8b:dca4:7d73])
        by smtp.gmail.com with ESMTPSA id a6sm3388185wmj.23.2021.02.20.13.47.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Feb 2021 13:47:25 -0800 (PST)
Cc:     mtk.manpages@gmail.com
Subject: Re: [PATCH] futex.2: tfix
To:     edef <edef@edef.eu>, linux-man@vger.kernel.org
References: <20210220201221.67968-1-edef@edef.eu>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <01f7d4d1-f99d-8653-dcb3-13d81f82299e@gmail.com>
Date:   Sat, 20 Feb 2021 22:47:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210220201221.67968-1-edef@edef.eu>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

On 2/20/21 9:12 PM, edef wrote:
> Signed-off-by: edef <edef@edef.eu>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man2/futex.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/futex.2 b/man2/futex.2
> index 60b3e08dd..e698178d2 100644
> --- a/man2/futex.2
> +++ b/man2/futex.2
> @@ -1573,7 +1573,7 @@ and the kernel state;
>  that is, the kernel detected a waiter which waits via
>  .BR FUTEX_WAIT
>  or
> -.BR FUTEX_WAIT_BITESET
> +.BR FUTEX_WAIT_BITSET
>  on
>  .IR uaddr .
>  .TP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
