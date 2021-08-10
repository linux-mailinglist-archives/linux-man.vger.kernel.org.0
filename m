Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 94A833E53B3
	for <lists+linux-man@lfdr.de>; Tue, 10 Aug 2021 08:42:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236875AbhHJGma (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Aug 2021 02:42:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236783AbhHJGm3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 10 Aug 2021 02:42:29 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C034BC0613D3
        for <linux-man@vger.kernel.org>; Mon,  9 Aug 2021 23:42:07 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id m24-20020a17090a7f98b0290178b1a81700so3849172pjl.4
        for <linux-man@vger.kernel.org>; Mon, 09 Aug 2021 23:42:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ctbtoDx1FeYPCDqUCcwgXr7JSzhDj9OksmINqavfGMY=;
        b=N3bLxQoOMuhShr93sB7HhWZKCa2es1xO+FL4SWnnPwxV8msF4kJh3Y6XF3Oi5I3lBl
         6LpYE4g2+IswLtEhDCxkHV8eZF4CrGnC85cafFiX8kR29HAa5asVF/gDdh1YvrQABKjn
         2Tkm0NJYwFh1xUG9SatJdRBPKn4foPE8NAT5eGWlbJ2gmbn5xtOZb5ynB8LxZq9aC0cZ
         YXaw6tkPvluykxUL8+RMgYgnTIm5YvqqA+q5kZMQiliWTeetPYnsq8AWHKWB2EAAr/GS
         FBMsw737wNFpfwJv6YO8jVpyBLHB9e9QkyoJs0k89ij0YPr/6PIqnRGIFvjkVyq9EkwZ
         YkKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ctbtoDx1FeYPCDqUCcwgXr7JSzhDj9OksmINqavfGMY=;
        b=UJ3dLV4zHGoDcIpd9Kyak3OvqybnRo3UkSWTqipqp1zeVtUDH1vFrGE6loIT9d42xA
         hsqRE3v4ZmaGULMGx0ZTfuZU4ZIl+mgXejc2825crVxiwwRhNzdaSIXhjq0GMeC3K2iq
         OqLL7UZ80/E6EQjvdNY9SzTWGTDdaybwu2a917HSaAQVw3IjO6pX5+a85o64IbKYj0k8
         NgOWwOW23ixv3Y1w/g8PQJvlh5r3Sf7G+bFmwAa+WiUXX7pomn2UJ3rYS+s+5nt7toad
         g4QewOk0g+Pf8o1ofwAdkRd51lFJ5ekHa4OhtsTGM8niM3miEafYiXQgzSJylCk5bHuf
         qh0Q==
X-Gm-Message-State: AOAM5308No1nuSZOav9BjZ06U2wjqoUGh6dq5WYO3s+xmRmYdudcIcNa
        gv0vOHAursrXxJEklfyQNMTw42NS+0A=
X-Google-Smtp-Source: ABdhPJzlFGisTZv0q29FMTAEUQxxi5tcvlqG5pN41yLIEukp5Qgm2XKNCh9o1d51C+sGHuo5dmSqKw==
X-Received: by 2002:a17:90b:4c03:: with SMTP id na3mr3231906pjb.222.1628577727066;
        Mon, 09 Aug 2021 23:42:07 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id g26sm26273977pgb.45.2021.08.09.23.42.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Aug 2021 23:42:06 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] wcstok.3: Fix type mismatch in the example
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20210712164026.4204-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <eb9c0aee-1a1c-3a65-3512-fc2b9fe7c862@gmail.com>
Date:   Tue, 10 Aug 2021 08:42:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210712164026.4204-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jakub,

On 7/12/21 6:40 PM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man3/wcstok.3 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/wcstok.3 b/man3/wcstok.3
> index 401411d98..af642ca46 100644
> --- a/man3/wcstok.3
> +++ b/man3/wcstok.3
> @@ -108,9 +108,9 @@ The following code loops over the tokens contained in a wide-character string.
>  wchar_t *wcs = ...;
>  wchar_t *token;
>  wchar_t *state;
> -for (token = wcstok(wcs, " \et\en", &state);
> +for (token = wcstok(wcs, L" \et\en", &state);
>      token != NULL;
> -    token = wcstok(NULL, " \et\en", &state)) {
> +    token = wcstok(NULL, L" \et\en", &state)) {
>      ...
>  }
>  .EE
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
