Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C23A34E423
	for <lists+linux-man@lfdr.de>; Tue, 30 Mar 2021 11:16:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231593AbhC3JQU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 30 Mar 2021 05:16:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231624AbhC3JPf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 30 Mar 2021 05:15:35 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EB71C061762
        for <linux-man@vger.kernel.org>; Tue, 30 Mar 2021 02:15:35 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id o16so15545802wrn.0
        for <linux-man@vger.kernel.org>; Tue, 30 Mar 2021 02:15:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=5Ex6tQ1OYzKJoECZl31jIy42WF5Z2MPNE9siQftECgQ=;
        b=od8xErxV3/2Cq+OSkIv3OeJxV5OXy/ImMdFQIiAArLjytkX5JKg5Sb+JvWLriqIGbG
         3Fd3FUzNtLqKxR99QPqcR7Y/1mutgzMd7lvur9IUTwRw9V9k1Bux/z9VM8zJWFCoxv+u
         WckNrAfM1a21yn1zbls/4d43Jx/54WnaBocfks8xAfMFOZz5so0sSrPEc6VdBEEKxLys
         d4Vy6Vnc/m/WhK8NIWNyslPVgHzhXvzjzH8z6FKcUx9FsmieN0FdzfcA2bRzpkGDIt2A
         DaPzuQhRO2Q0ea7Fl8OvTRkKUq3k9mBZ2uJFtazYTxXRrXNz5S28yMBEbT9CGG5ZZvCs
         Wuag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=5Ex6tQ1OYzKJoECZl31jIy42WF5Z2MPNE9siQftECgQ=;
        b=saQIs5P0/WgaOITaIcgWnBJMObdMOtMEQFqpMvuzabTupCHn+WW9LEiif5YK35+zxM
         LJjEe1Ak2lknPZPU0+/3OhqKuqBHDZ4fslZGdrE+fTONhnAmgbyzKuGctuw4L+ySx6aT
         lEZolL4BKrlTlkhxT7TE0LSmxO2nlUsQCqC5W5S/+uNLs+27n5hZPLgQnUB0wdOoATMb
         OIYGd0V4sMsrfPwfShncRGs+FTAOHnYO8cbptaaYMaQudaInB3/WY2H9hC3wir2xwTOq
         t3gTwS+AaFy65JNuyK4GNps3rQ0tmEkgMagsaLeOruSOwyroXOaUC7BRakc63qprhTNt
         4L3A==
X-Gm-Message-State: AOAM532x+Ms1WJLbyn0yHse/MgqPFdQW+AMLIO+GTT/tz4FQ8g+BDREV
        bvCMO9hTDO627A9xBiq0gYM=
X-Google-Smtp-Source: ABdhPJwe87Xormza3rghTbbs0ArFDyllSMsmOjY+BzYk0HFThbmrl2akIwM3v8ErInZh1yiSe3q0Dg==
X-Received: by 2002:a5d:53c8:: with SMTP id a8mr32180393wrw.323.1617095733977;
        Tue, 30 Mar 2021 02:15:33 -0700 (PDT)
Received: from [10.8.0.206] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id o15sm36354738wra.93.2021.03.30.02.15.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Mar 2021 02:15:33 -0700 (PDT)
Subject: Re: [PATCH] scanf.3: clarify that %n supports type modifiers
To:     Alyssa Ross <hi@alyssa.is>, linux-man@vger.kernel.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210328215509.31666-1-hi@alyssa.is>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <11845a19-1f38-eb1c-c8e2-f42849db5859@gmail.com>
Date:   Tue, 30 Mar 2021 11:15:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210328215509.31666-1-hi@alyssa.is>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alyssa,

On 3/28/21 11:55 PM, Alyssa Ross wrote:
> My initial reading of this was that type modifiers were probably not
> supported.  But they are, and this is actually documented further up,
> in the type modifiers documentation.  But to make it clearer, let's
> copy the language that printf(3) has in its %n section.
> 
> Signed-off-by: Alyssa Ross <hi@alyssa.is>

Patch applied.

Thanks,

Alex

> ---
> I plan to submit a similar clarification to the glibc documentation.
> 
>   man3/scanf.3 | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/man3/scanf.3 b/man3/scanf.3
> index f353f1d4d..8c0a1fa84 100644
> --- a/man3/scanf.3
> +++ b/man3/scanf.3
> @@ -513,18 +513,20 @@ circumflex, in) set or when the field width runs out.
>   .TP
>   .B n
>   Nothing is expected; instead, the number of characters consumed thus far
>   from the input is stored through the next pointer, which must be a pointer
>   to
> -.IR int .
> +.IR int ,
> +or variant whose size matches the (optionally)
> +supplied integer length modifier.
>   This is
>   .I not
>   a conversion and does
>   .I not
>   increase the count returned by the function.
>   The assignment can be suppressed with the
>   .B *
>   assignment-suppression character, but the effect on the
>   return value is undefined.
>   Therefore
>   .B %*n
>   conversions should not be used.
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
