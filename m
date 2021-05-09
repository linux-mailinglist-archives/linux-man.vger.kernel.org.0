Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 42017377953
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 01:39:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230018AbhEIXkw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 19:40:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229964AbhEIXkv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 19:40:51 -0400
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3A99C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 16:39:47 -0700 (PDT)
Received: by mail-pg1-x531.google.com with SMTP id c21so12026747pgg.3
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 16:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZDkLYnqZj9EKgT6hSE4amFIxaUzTzHl94rJtiYBp100=;
        b=cmrHCOhPovE95jcOiXjwNk2oBKFH7Nrc8JUbQALFCbg0OdVdp9H8fHzSXo0qyFQdG2
         Rfnr4nivHtHb2a4Z0lintuhRun3xHZO0kiT19idI4C4COXVxhLH426n2cMhKj2goKUWJ
         AJINVXMGc4XvZSqBkvOEFX5ZorALjM0gXT+KsFiVKIrYdYmMf0H3Ez34Zx2pr3ve/yOL
         RFUcv22RN/yeLWOZGsnt9v97fhdVdGobcr7mtCqrwxF46CxQnbn65yPX7xNkUpfC/Gih
         6nv2RupsCfy3gqCPNEGmd/Gotq2HFt44Adh/NhQL/K78B0ijvYgecbEwkQvF501rMwRF
         nTmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZDkLYnqZj9EKgT6hSE4amFIxaUzTzHl94rJtiYBp100=;
        b=TcCLzZ1AXZ0RkSJOjebVGgLki4ibcs0JF0FVPR+OfM/EQPm8J7USH1tcVpI3wxyQug
         KmbxjiRu260t+bQGRrgu0/ALSsnGV8NQqU0Q7racrZas8aysgi0tlOp6kUURx1I3qyBV
         NnFoArZCn08astmeLrUOQKMvrk+F+R79BG6kKqbya/JdoVsjPoeGOmFDiSd+2Fb+el/s
         JLFLXxpfcvzIWh9UUq/YAHYRUVo4Ygk6xgjQIOY1NmVN3LxroMZN0whqLCmslAbPZzk3
         is1Ix18dFFRjILJgPOgOvjZ/R0R/L5hJLXiC3u1Jnurw+gABFmHbeZmTksq6RX/1LMLC
         c5WQ==
X-Gm-Message-State: AOAM531riqd2lJ8igqYWaVTWK5Wtafn5iBupgrKIX77SJOZd20tPJgEb
        yyO8T0a36CN51WXH+QCVI5c8CsMXbks=
X-Google-Smtp-Source: ABdhPJwUkcdvIXKCXJ4ZpjXmLeOwV5j3r2HclIkYeKFT0k5Q/ONCtYh6hFj9H1blRIe7Ir4qR+sDQQ==
X-Received: by 2002:a65:4084:: with SMTP id t4mr4349602pgp.401.1620603587306;
        Sun, 09 May 2021 16:39:47 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id e68sm9435427pfa.78.2021.05.09.16.39.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 16:39:47 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] Makefile: Fix bug when running in parallel
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-34-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6550bed0-c0c4-1460-90e8-65dff8d5ed42@gmail.com>
Date:   Mon, 10 May 2021 11:39:44 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-34-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 5/10/21 9:39 AM, Alejandro Colomar wrote:
> Prerequisites can run in parallel.  This wouldn't make any sense
> when uninstalling and installing again.
> 
> For that, use consecutive commands, which run one after the other
> even with multiple cores.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Applied.

Thanks,

Michael


> ---
>  Makefile | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Makefile b/Makefile
> index 430090801..fdfaf9645 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -20,7 +20,9 @@ INSTALL_DATA = $(INSTALL) -m 644
>  INSTALL_DIR = $(INSTALL) -m 755 -d
>  
>  .PHONY: all
> -all: remove install
> +all:
> +	$(MAKE) uninstall;
> +	$(MAKE) install;
>  
>  # Use with
>  #  make HTOPTS=whatever html
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
