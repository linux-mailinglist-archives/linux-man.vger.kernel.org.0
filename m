Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 10CB738C474
	for <lists+linux-man@lfdr.de>; Fri, 21 May 2021 12:16:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234290AbhEUKRX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 May 2021 06:17:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234333AbhEUKRR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 May 2021 06:17:17 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95B34C0613ED
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 03:15:52 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id n17-20020a7bc5d10000b0290169edfadac9so7094004wmk.1
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 03:15:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=h1H50Qh6OXz/OTz3mQ+qjhAPGE+xp9OmbBJbQdTeJjw=;
        b=tjVzwNfMu35/dE8X0pWUr3JBoU31Vcne38Ojr990v91zr30zFL938Aydktug4hqLLi
         L1DDuQELmqMryxz3yY1JXAjzz5KV/VetauZo0bvNSYRvzMNAHt97KbxOs8JmxVZjG/gQ
         9aVgFgJj0V3EhGBlE72ugnGJqs+C8S0ylq545Wtn/HNcApe+9ZMbgezoaV1g4y90pdXs
         FAQO2T3A06aIxkHtyHzLudqiUm99cG9XK4xpjyvF5MkWeN+kM9ThB4cFHgk7UKl+1GHZ
         CjmHhDyN/jAmQ22bW7p3/EX6zATxEJVRVrFjfvytYIrBJhgPkEJp6gYPD93NPQSuO+eo
         cVog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=h1H50Qh6OXz/OTz3mQ+qjhAPGE+xp9OmbBJbQdTeJjw=;
        b=TC4TLSgyoAg9Ukpd3wx/nDxOUQrH3usRtMsuw/2xAfoUW9mpc8BJ8TCfgXVbeJkuxA
         t/v1nmpysqevuRkO4x2SxeZJonos4kFR9X98IJb85rQm1sIYWpChdW+oDYR5nf8V4fAc
         fx+93XzTpQNNoZAM2fHvO81XLomHliwrySZyCtDw+gDBGMWWbFfeI4hj+riOe61Yvprv
         M55u/lYIza9YZr7d3zo6Ieukz4jycMRx/h2lri++JuYEcL2UrJOOgcv1ZudZxU+JWD9m
         UNhUe7AgFnHaxvswKLJ5mSSc1HLAU6h7IxQ6I8HI7TIU/5ULi6vdX+Gmlg0eFJU9vwnI
         LgYQ==
X-Gm-Message-State: AOAM530csscP/aj/qeVYIFWGeoPZPCc552sPyenmunAL0ltJaFqJm7PK
        oe/FqtRLGA9mHYRTmICcDhPK/1W+IoY=
X-Google-Smtp-Source: ABdhPJxRaXwNPCKxBPCq+57xnJtj/pNfD4+DFBkLbjnK7uGhKCqTpoYvpupBh3EgZlT5IkCHPjkGuQ==
X-Received: by 2002:a7b:ce8d:: with SMTP id q13mr8290034wmj.109.1621592151198;
        Fri, 21 May 2021 03:15:51 -0700 (PDT)
Received: from [192.168.43.70] ([46.222.120.224])
        by smtp.gmail.com with ESMTPSA id o21sm546101wmr.44.2021.05.21.03.15.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 May 2021 03:15:50 -0700 (PDT)
Subject: Re: [PATCH v2] getline.3: !*lineptr is sufficient
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <20210519103810.fwa3463c6m6jstcu@tarta.nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <a07d363a-9438-7e16-55a2-de984719ecbf@gmail.com>
Date:   Fri, 21 May 2021 12:15:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210519103810.fwa3463c6m6jstcu@tarta.nabijaczleweli.xyz>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Ahelenia,

On 5/19/21 12:38 PM, наб wrote:
> No implementation or spec requires *n to be 0 to allocate a new buffer:
>    * musl checks for !*lineptr
>      (and sets *n=0 for later allocations)
>    * glibc checks for !*lineptr || !*n
>      (but only because it allocates early)
>    * NetBSD checks for !*lineptr
>      (and sets *n=0 for later allocations)
>      (but specifies *n => mlen(*lineptr) >= *n as a precondition,
>       to which this appears to be an exception)
>    * FreeBSD checks for !*lineptr and sets *n=0
>      (and specifies !*lineptr as sufficient)
>    * Lastly, POSIX.1-2017 specifies:
>      > If *n is non-zero, the application shall ensure that *lineptr
>      > either points to an object of size at least *n bytes,
>      > or is a null pointer.
> 
> The new wording matches POSIX, even if it arrives at the point slightly
> differently
> 
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>

Patch applied, Thanks.

Cheers,

Alex

> ---
> I seem to've blundered actually adding the page update in v1, sorry!
> 
>   man3/getline.3 | 4 +---
>   1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/man3/getline.3 b/man3/getline.3
> index a32d7e770..6641ecc35 100644
> --- a/man3/getline.3
> +++ b/man3/getline.3
> @@ -59,9 +59,7 @@ one was found.
>   .PP
>   If
>   .I "*lineptr"
> -is set to NULL and
> -.I *n
> -is set 0 before the call, then
> +is set to NULL before the call, then
>   .BR getline ()
>   will allocate a buffer for storing the line.
>   This buffer should be freed by the user program
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
Senior SW Engineer; http://www.alejandro-colomar.es/
