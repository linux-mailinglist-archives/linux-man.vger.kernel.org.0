Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2A72535417A
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 13:18:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234539AbhDELRt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 07:17:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229639AbhDELRt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 07:17:49 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27E04C061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 04:17:43 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id qo10so5952503ejb.6
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 04:17:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=mLfJC7Ys7JCjFhXL27WCTq0zK45pw+ibHPvIUe/We28=;
        b=HqlqVHESTEOr8iyJD+Fx9pfTDAu0Q0ISB1x1vuC+JhNTWbOk6HDfaweYyvTaWgsnGQ
         h4SbcAyRGPzQhs5j2kRgz1lId17XeMuz60jty3tr8QVW6FnbaXwOl41ezBfjw/ieZoHP
         pMOURvCuHNPe5BynZ/YLD8mmIP2rmqKg7d4UCfrvGLgxr8lLdaZ8h/qsHqo9bE3bEdMP
         PW7V9O80AupNLk6DiSbS4fZpJGAp19yCXREde15VOz2lClAAI0IgCcbhb6uv4yuPscH4
         JMUkPmeR6GMPfx/c844Xqte5bZxbGBtiJ+Rkw56fJCvM/YVY1kudZGbnjwz+bA7+Vqvj
         d1wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mLfJC7Ys7JCjFhXL27WCTq0zK45pw+ibHPvIUe/We28=;
        b=NyiVeu3GIIEscfjI7xdVHyXPdAWLjHI1kTBaczQUfuQwA/uMzj7I0+AiLhQCYl7jP8
         Fjdsac/ioKsqy9YEUQPEKsOg24SukdS/Sn3S0ycPtc9PssB8u61kM1PK/0n7fgktxQja
         H7eP4ZzTcslqEX8neq8cu+oiDxp7VzbFs20Jt8PZ6ypt878jTbmxosirqZ0b05i55gxx
         9rcDx5LPjz9S2ZxjNuKCPQZfmOlmjboJuI9IuYfPSZ9WxXoJ2K7NHb929DU0Xe4uvH9E
         SmIetvqLRej3fwrKeH7opPwWLwe+YzJTeY/9YbOTxbxvgmww+Y3SxhkfkM80xkKKbbKw
         fOmA==
X-Gm-Message-State: AOAM533rNFndC6PA2KcJp1ACsceu8/vZnRFpWtLzLCa8wvO1yDwtLHMn
        tn+/merpR1EVhPyPoAmHcxo=
X-Google-Smtp-Source: ABdhPJwDUeeIaNs/HGn/BS9bnVP7gSNKnic6/ON6XfSbxSeWEW+I0fEm67SDGvj1nMmWC0aANaVm/g==
X-Received: by 2002:a17:907:3d89:: with SMTP id he9mr27020143ejc.96.1617621461941;
        Mon, 05 Apr 2021 04:17:41 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id r25sm10776828edv.78.2021.04.05.04.17.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 04:17:41 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 05/35] access.2: Use syscall(SYS_...); for system calls
 without a wrapper
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-6-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4b754099-ad56-5556-1389-73dbb99f266a@gmail.com>
Date:   Mon, 5 Apr 2021 13:17:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-6-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 4/4/21 1:58 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/access.2 | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)

Patch applied.

Thanks,

Michael


> diff --git a/man2/access.2 b/man2/access.2
> index 4a6e28db3..f24a73161 100644
> --- a/man2/access.2
> +++ b/man2/access.2
> @@ -49,15 +49,20 @@ access, faccessat, faccessat2 \- check user's permissions for a file
>  .PP
>  .BI "int access(const char *" pathname ", int " mode );
>  .PP
> -.BR "#include <fcntl.h>           " "/* Definition of AT_* constants */"
> +.BR "#include <fcntl.h>" "            /* Definition of " AT_* " constants */"
>  .B #include <unistd.h>
>  .PP
>  .BI "int faccessat(int " dirfd ", const char *" pathname ", int " \
>  mode ", int " flags );
>                  /* But see C library/kernel differences, below */
>  .PP
> -.BI "int faccessat2(int " dirfd ", const char *" pathname ", int " \
> -mode ", int " flags );
> +.BR "#include <fcntl.h>" "            /* Definition of " AT_* " constants */"
> +.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
> +.B #include <unistd.h>
> +.PP
> +.BI "int syscall(SYS_faccessat2,"
> +.BI "            int " dirfd ", const char *" pathname ", int " mode \
> +", int " flags );
>  .fi
>  .PP
>  .RS -4
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
