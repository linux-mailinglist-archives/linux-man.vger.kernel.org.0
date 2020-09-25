Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8AEE42783EA
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 11:25:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727290AbgIYJZj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 05:25:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727201AbgIYJZj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 05:25:39 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 386BBC0613CE
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 02:25:39 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id i1so1804424edv.2
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 02:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=mxFQyeir7zr6BsWbm53XWvF2+3gLoOp02DmsGeVKfmQ=;
        b=fNaDaTT0JfbYFNKvmDtZ3fZwn531x/woZjv1RWE+Evl3q0YfMqLMRh8AJxQFIfVPvQ
         bTAoElPpo0op5cMCHekHH96yb6MxxqRxTgI+tFugnh60LPn0MJFE5XIUImPc5kpHVBHx
         r8z51+TMzoO9xd/khRrMCYvHN2vlJ4uYTX4DXwyfNj7DQyr1hSxVpRaBa9uW4nBYjHg0
         2Bh49gL/mfAJhwnB/MA4y3M2BhvUIwqdYSRrFFMC4RiO6BncF0Ujgs3F4JqEaLdUI8lU
         aKX2WIoJg6z+EBYL0KTOd5roTz97mu2JB+D1LnWc8R6hDCqA6y+VmWinojHm9MdyIHT0
         lT+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mxFQyeir7zr6BsWbm53XWvF2+3gLoOp02DmsGeVKfmQ=;
        b=m6qGI+rkegEKh0pNxRjSwInIVKgxUhRa47vA/u1F/zFkeTGCfBfw0YdfJHswn/q4cc
         ErAdjw4i57mgLzXKaFMl6TqznT1NeCsWAG4nrfy19yMzqCWJBAvn174iCamjpxshDAYI
         YutXQMz9Vu0CYAvkWTY9f1e3JPoinqrW4SP3VmHQCYPnU60ZmQlu0hXutdQtjNSZA4Wg
         wPOsNjBiYbeCwlGALC6EXYZBec2ZQ2i086KpUOUBZMFLjeHhm4iknqpRbOKloHfrQL+N
         Ga0wFKrJDElKJCI1tiWBxavPLt/w9lFaStZjT6fRE/5NXGlpzKIDhdc6ix/4TrCQmGsJ
         TNAQ==
X-Gm-Message-State: AOAM5306acdiF83YV/hZiAAKOScwmR6x1Xw1ccOsL4K04NDthlDrC4Er
        WoSVWsNlRyhJCLWyLDXt7GA=
X-Google-Smtp-Source: ABdhPJxLlzSey1toGcDz4Geq5dQqSXqyMhHUzxbuE1JyaA95JOqmqYAtRY7aX9DW4n6wDNwpdyGdTw==
X-Received: by 2002:a05:6402:18d:: with SMTP id r13mr241436edv.267.1601025937889;
        Fri, 25 Sep 2020 02:25:37 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id j18sm1476456edj.62.2020.09.25.02.25.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 02:25:37 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 09/10] seccomp.2: Use ARRAY_SIZE() macro instead of raw
 sizeof division
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200925073140.173394-1-colomar.6.4.3@gmail.com>
 <20200925073140.173394-10-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7473976b-1fce-41fe-1af4-8b8f09a6b6f1@gmail.com>
Date:   Fri, 25 Sep 2020 11:25:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200925073140.173394-10-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/25/20 9:31 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael

> ---
>  man2/seccomp.2 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/man2/seccomp.2 b/man2/seccomp.2
> index d6b856c32..82eb04dc6 100644
> --- a/man2/seccomp.2
> +++ b/man2/seccomp.2
> @@ -1051,6 +1051,7 @@ cecilia
>  #include <sys/prctl.h>
>  
>  #define X32_SYSCALL_BIT 0x40000000
> +#define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))
>  
>  static int
>  install_filter(int syscall_nr, int t_arch, int f_errno)
> @@ -1101,7 +1102,7 @@ install_filter(int syscall_nr, int t_arch, int f_errno)
>      };
>  
>      struct sock_fprog prog = {
> -        .len = sizeof(filter) / sizeof(filter[0]),
> +        .len = ARRAY_SIZE(filter),
>          .filter = filter,
>      };
>  
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
