Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 773602B393B
	for <lists+linux-man@lfdr.de>; Sun, 15 Nov 2020 21:47:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727927AbgKOUrD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 15 Nov 2020 15:47:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727656AbgKOUrC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 15 Nov 2020 15:47:02 -0500
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27E53C0613CF
        for <linux-man@vger.kernel.org>; Sun, 15 Nov 2020 12:47:01 -0800 (PST)
Received: by mail-wm1-x342.google.com with SMTP id p19so10909487wmg.0
        for <linux-man@vger.kernel.org>; Sun, 15 Nov 2020 12:47:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=lfUvvAf8xW6HbH3XdN6bSkgrhr/FIb6RjdJWqft96fk=;
        b=Ia+HAg8aJHUYfkwaJZ0VEARulbsKJC+4faDUrKU74I4KL0SvxByL/8acIvmvDHbARB
         9hiuOVh5lrm1hiYTHxl8hwrgLyeukWhqpukB/C0wum6XBW1VARviP2gGTm9MMhvCdYlD
         hsAMxsLdVPLGZXHvhVK7DcEiGKOFuZ8fv6EhGx09HoFr9/+2ohDe1ylfqftczjZevAj6
         6xXHDRO6e+5/GysgwIhUU8QflsYXFi4U6QqlIw8p3qnP/9IxNCvqAl7D+iYIR1kTQNFH
         UuN1VimIXKBLJcZPxsfeCVaFXJVo9l14TjXi24woH8H2UlfCL6Nx84bS7Uu6O4rCAotX
         g06Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=lfUvvAf8xW6HbH3XdN6bSkgrhr/FIb6RjdJWqft96fk=;
        b=dizj6Bh1fX0CaNhZXOxl9RNeJSqW+xcOqC9C5Tk8yTtM/H8Q1pMzqBfy71iMk5Gcqu
         NRSPjoU03MMTCQn+0n6B+pNXK/dQ6Ero7OIK+CeC8FYHmSkD2tF+Cs4LMMjRcGHpRymh
         uttknlQQ7HcDnk+ZDjdSuk+Jinf0y4XKrxQXAJdH/bomsqeAj0pN4kwt0pED6dNsPR/l
         fmbggHOJlj781ndUDOuHyFhm2C1te0pXyba4HrfrMI6W2K3iKYwP8I0EZ5gnczU4t229
         YIUShGTRjeecMFb1xCWzg+sLfyIdZRZP7mCsHnLGkly0Q0zPzLWL97SKuu4Peash0LX6
         Bu9Q==
X-Gm-Message-State: AOAM530rPQVyr9fUuUFxaSXsBCRApgeAiSAdL8iR0oWV8pISXPwovSh4
        N4jZPM6qaYW7X2uRbPR92XX63BpA7/6Pcw==
X-Google-Smtp-Source: ABdhPJzT6hGQ7yoLuvnBz/YL7xqatz4EgzHwiIQ/b2EZcG8Q5qFY+IsaWeCpOA229M8P05g2t6vPAw==
X-Received: by 2002:a1c:6002:: with SMTP id u2mr11485318wmb.29.1605473219722;
        Sun, 15 Nov 2020 12:46:59 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id z22sm2239789wml.9.2020.11.15.12.46.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Nov 2020 12:46:58 -0800 (PST)
Cc:     mtk.manpages@gmail.com,
        Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] locale.5, ipv6.7: ffix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20201115112639.18291-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e86279e8-d843-fab0-508b-f17849cd5335@gmail.com>
Date:   Sun, 15 Nov 2020 21:46:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201115112639.18291-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 11/15/20 12:26 PM, Alejandro Colomar wrote:
> [.B XX_*] is the most extended form in the pages.
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man5/locale.5 | 2 +-
>  man7/ipv6.7   | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/man5/locale.5 b/man5/locale.5
> index 5210f5c6f..f46b8129a 100644
> --- a/man5/locale.5
> +++ b/man5/locale.5
> @@ -620,7 +620,7 @@ a string that identifies this locale category definition,
>  a semicolon, and
>  .IP *
>  one of the
> -.BI LC_ *
> +.B LC_*
>  identifiers.
>  .PP
>  The
> diff --git a/man7/ipv6.7 b/man7/ipv6.7
> index 9692ec1ec..b4b6a88ce 100644
> --- a/man7/ipv6.7
> +++ b/man7/ipv6.7
> @@ -398,9 +398,9 @@ for that instead.
>  .BR SOL_IPV6 ,
>  .B SOL_ICMPV6
>  and other
> -.BR SOL_ *
> +.B SOL_*
>  socket options are nonportable variants of
> -.BR IPPROTO_ * .
> +.BR IPPROTO_* .
>  See also
>  .BR ip (7).
>  .SH BUGS
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
