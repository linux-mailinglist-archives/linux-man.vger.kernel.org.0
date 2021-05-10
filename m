Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5A3E23796C1
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 20:03:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232063AbhEJSDK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 14:03:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231540AbhEJSDJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 14:03:09 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56EE0C061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 11:02:04 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id y124-20020a1c32820000b029010c93864955so11666037wmy.5
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 11:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=uwA1DnfHuBpHqI4lqG63S2W+plf5j1Ktt8LPUPSRxI0=;
        b=bLlHKoPWn7YVg2Ld4d5qZ/1WS9O9MKDauVY79N3y6sj2iSstQULshNFvy0XMUXaYOL
         4CTLmni5yUFcqM4QlAQZraG0tr94YYFN21UXgGfehfnqFsN++9ViuXQtuWvAkQR5q68H
         nGwdxbHxphoFUo/niBgzHYkiGdMu0kWFqkvGozIm3uGxGrImGW8pu5mAOtlsyAhblSpM
         Sfc3oOEInmQr9GtVtJ9x3aq5mVct202oXdZaldx/J7aT8/+wYpZFzSjxrzMCtVlt9i7V
         fz3FUloWsj9yV42fgGOk6+o2z9gq+1PRHgBZLORM4w7aA9Tnv2RN7SjrTwpR0hZLipVb
         oyDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=uwA1DnfHuBpHqI4lqG63S2W+plf5j1Ktt8LPUPSRxI0=;
        b=uNCa8cE1skWhK1RM0xTk2DMTn2qnUHwaQqAWzg+2gOpmHwttV9bSqJ8/YqgIFfjd8Z
         fkOnHR6dNgsbcN+q/udJosfykRhhR8fsr1ihyOZzpb4hAA6MeSKW7PqElY6qykc5Ml6x
         6Zew3HWd2HBUur/Ma2VK4DUPjGgIEUX5kOnCyJozKpV3E/30mUIelWeXm6dPtJAWKD5D
         Icrs8Jdf9CnTl8P7ltYpYBbeiGdz9jepZjlw5adf/UF/2+SUvfyRSl+9KytD+CXd7Hmc
         +1dmVsu6VMRp8QdaibwFEtlJTyf4JWc7sQqHUym7EEPuf1tMGN1Ozcemi69j7LtcdyKS
         Yo7Q==
X-Gm-Message-State: AOAM530d70mhU91/4fPL5zW/VsvkZsiWlADSB7ZUuI6doCXnsG8i7eUU
        3SDpieQNh8DUadXbSYIKJxA=
X-Google-Smtp-Source: ABdhPJyVu4DEwZt3S6SvgUd84MhM0RCPx8uRWqDADCVTjZERuBL4YLVIGtgNmLxtvHy7kduY80s07w==
X-Received: by 2002:a05:600c:4f49:: with SMTP id m9mr436555wmq.78.1620669723143;
        Mon, 10 May 2021 11:02:03 -0700 (PDT)
Received: from [10.8.0.106] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id e18sm24863904wrc.85.2021.05.10.11.02.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 May 2021 11:02:02 -0700 (PDT)
Subject: Re: [PATCH 26/39] open.2: Remove unused <sys/stat.h>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <20210510175546.28445-1-alx.manpages@gmail.com>
 <20210510175546.28445-27-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <c4ef60cb-d8b0-fa14-3ebd-25c5732ed2aa@gmail.com>
Date:   Mon, 10 May 2021 20:02:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210510175546.28445-27-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/10/21 7:55 PM, Alejandro Colomar wrote:
> I can't see a reason to include it.  <fcntl.h> provides O_*
> constants for 'flags', S_* constants for 'mode', and mode_t.
> 
> Probably a long time ago, some of those weren't defined in
> <fcntl.h>, and both headers needed to be included, or maybe it's
> a historical error.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Drop this one, please.  (We discussed it yesterday.)

> ---
>   man2/open.2 | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/man2/open.2 b/man2/open.2
> index bac1ee806..1bcd995f4 100644
> --- a/man2/open.2
> +++ b/man2/open.2
> @@ -53,7 +53,6 @@
>   open, openat, creat \- open and possibly create a file
>   .SH SYNOPSIS
>   .nf
> -.B #include <sys/stat.h>
>   .B #include <fcntl.h>
>   .PP
>   .BI "int open(const char *" pathname ", int " flags );
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
