Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DBC4A35414C
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 12:50:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232586AbhDEKuW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 06:50:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232518AbhDEKuW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 06:50:22 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 304C4C061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 03:50:15 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id l4so16221810ejc.10
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 03:50:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=NJkJilmpudxGB9ipIC8b6P9Y8u+3GtrUjfizg1PtOxw=;
        b=S1l5PyBeFxIISEl8CcVit6l5xxwOisDyBis3h/sgyfngFNhfNm1qQLEfoO9yaw5cZ+
         yLPTEuHh9RRlOlLEzRawtSw+oqpA0Ttp7TLTLGzJqZmN+8IOd1Gxvt82CAdVyvFhg4v+
         FEloSPuhOjGhiiG8GalNwjgwqbT01lISF5mujlf0NlVnzZtpklIw0xgBJ6C3NKpFwVHc
         d2D4FqGXwa/95G9qDxLjRtY41YFbAaR8Kmcajk6c6IvJfPWuyuM5lA17IVrfQgms7aY3
         as81M6hT5fLxF+DbZePxkz6O3+sMnO8YfZ/FwXEoKWlGlL5lGOlIhp43XX1FuamYeIpz
         kvdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=NJkJilmpudxGB9ipIC8b6P9Y8u+3GtrUjfizg1PtOxw=;
        b=ryMbw8klQfBA69GTzfoOnWO4JlHeJt4QccztHkci0xMEKSopGfocQBDAzhyvcGo25C
         EKxcISTSJN5nwWJjgmtEIOBBFo0BRDjhoBbSgqCWQEZHQhp1wwLDWT8AMI+qQ2mJJ1rN
         vXAEb+3wqVXHmmkcl6J9NDOcn5mAUhHvvrHruIzB0n86X7HB2yK2H8TVAj09StwxXSZ2
         5y5VsvM6C273mnRnD+F4rVyhUzGNGvja/Tv/iZsuHRyJfGw9fLoDyn72+rPWDFlpgmH2
         aUujALHtkx98y9iywHfZ3eXhun1wdUx4L65GILKtE+mnWVpQ+YZWaKcW2Rwc0+zq57CB
         rhrA==
X-Gm-Message-State: AOAM533RtF+Zz0cjdcOK7xhzQq8f5YFbEuuX7zt9obPAzB8/5ceSGQq4
        vEYkKZlgKXFWr1j8Ry+XZxk=
X-Google-Smtp-Source: ABdhPJxHjKDt4uYL+94DxFUgqL+HRaAoACdPxq5Qb6j074faR0uvV2F35szOHFLj5sA1wHn2YsduAA==
X-Received: by 2002:a17:907:7355:: with SMTP id dq21mr27011771ejc.159.1617619813871;
        Mon, 05 Apr 2021 03:50:13 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id hd8sm8418088ejc.92.2021.04.05.03.50.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 03:50:13 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 17/35] fanotify_init.2: Add comment: why more than one
 include is needed
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-18-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9f91765d-8cd3-88f8-61fb-6131e23637f6@gmail.com>
Date:   Mon, 5 Apr 2021 12:50:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-18-alx.manpages@gmail.com>
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
>  man2/fanotify_init.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)


Patch applied.

Thanks,

Michael


> 
> diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
> index 2418bbdd2..2b44fc6ec 100644
> --- a/man2/fanotify_init.2
> +++ b/man2/fanotify_init.2
> @@ -26,7 +26,7 @@
>  fanotify_init \- create and initialize fanotify group
>  .SH SYNOPSIS
>  .nf
> -.B #include <fcntl.h>
> +.BR "#include <fcntl.h>" "            /* Definition of " O_* " constants */"
>  .B #include <sys/fanotify.h>
>  .PP
>  .BI "int fanotify_init(unsigned int " flags ", unsigned int " event_f_flags );
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
