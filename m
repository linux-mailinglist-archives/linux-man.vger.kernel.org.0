Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1A14B3E3CB3
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 22:24:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232486AbhHHUYU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 16:24:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229977AbhHHUYT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 16:24:19 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71C93C061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 13:24:00 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id d1so14195537pll.1
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 13:24:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Yv9GVefqc4tlkjnTcNowX3v1vqDhIxV4owKOxP+pITQ=;
        b=tY/Uom4GArAwsDUSNr5x731HwTbd1wnFCumy6P9vDX0ECNObnB6WDQdCoZTzLRGe5q
         LpRAg+ex+xpfjdX2qdI5HyUyhO+uESBWXFfi7c4tIaj7+dri3u0+rDRN4rtgD5e5JOI/
         g7qfXMbo0z+hi2RyoKltS/EY+EtB6IsOtaNeokIVVNV/YlAGjP5SGJvaEnBQeLERLwvM
         sfWGrL59OxNro3YNoloKBAbDdAYWoJ8AwBNRWV5H1uAVUFktm2pEoC+7Vw8YKK3G98vW
         ohrr4oYKUpW/+QzSjvHrRXR/UrcEQNXmG1l79Yxw3WY5heElz3q5S9mDC0tVl71dZeF6
         wIkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Yv9GVefqc4tlkjnTcNowX3v1vqDhIxV4owKOxP+pITQ=;
        b=lpL9Qvvtcead5sZ2pZNcoI/IRI++WZhmgmls+arbZcigmjE7MiCovUncPk/HdUAksk
         ga24gxptBdkAkBk2AWDG8L2aG0M0uHCgAUT+SJMisx2f+88XXcA8fhw/HYrFlZHDbCls
         aa1NkeRjlANXIX0y4P6C4hViIchltpsKmCI/9U+Fhuauo+Ipfuw+npQzx8o6HFn2JoXV
         soWqaB6wrg7Ja3XjZ+R6IU8QCYhmRGsh8mCf5ojpqoZchrR6EBhWFIR1YLqOf5TmMzdW
         r4j3fSOT4dzNxqi+fBcCr4qCXwf1T10XGqFHzyunvnDV9/rHqhYhhJQzVu0raQe4ENg5
         V29A==
X-Gm-Message-State: AOAM533dN6G93FKk2OfIsY4qR/38NQDdUsQcIr5zQ0SV5cyh3iw/UPdr
        +iqlPkEq4xvpvKT0YWx3WpzNuBHqs3g=
X-Google-Smtp-Source: ABdhPJzx21KUBIYwdBlvAesk21eZfwkV0jGXiCFMZo9ASPORcOcCUbocTEL0Q+dHfq9/Wlxicf0ySQ==
X-Received: by 2002:a63:5065:: with SMTP id q37mr394070pgl.112.1628454239708;
        Sun, 08 Aug 2021 13:23:59 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id e7sm4952188pfc.145.2021.08.08.13.23.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 13:23:59 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        =?UTF-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 05/23] unix.7: tfix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
 <20210808084133.734274-6-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <421b8544-9d39-e043-92fa-d97d44c101bd@gmail.com>
Date:   Sun, 8 Aug 2021 22:23:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210808084133.734274-6-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Štěpán and Alex, 

On 8/8/21 10:41 AM, Alejandro Colomar wrote:
> From: Štěpán Němec <stepnem@gmail.com>
> 
> Signed-off-by: Štěpán Němec <stepnem@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man7/unix.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/unix.7 b/man7/unix.7
> index fc2834fe4..6d30b25cd 100644
> --- a/man7/unix.7
> +++ b/man7/unix.7
> @@ -819,7 +819,7 @@ reference to it is closed.
>  To pass file descriptors or credentials over a
>  .BR SOCK_STREAM
>  socket, you must
> -to send or receive at least one byte of nonancillary data in the same
> +send or receive at least one byte of nonancillary data in the same
>  .BR sendmsg (2)
>  or
>  .BR recvmsg (2)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
