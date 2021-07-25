Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED5933D4FB5
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 21:48:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231321AbhGYTI2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 15:08:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230116AbhGYTI0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 15:08:26 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20C75C061757
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 12:48:55 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id f14-20020a05600c154eb02902519e4abe10so619350wmg.4
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 12:48:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=dPwtgBNuuOSSzOxEmuo0cqlkiRAm0dVGX7esAZSs5jg=;
        b=NC5vMcuXq5HPOe2sxOKWQq69O6y/DsqoDCZrqURHkOILPc1Med9eJijAOTsOXmSBjh
         mhz5ecgSpJaKq3uIQmYDQIy2LaP9+kq1BoyAq0ntlT0cqommlIUweBVTK7mI971DSGTV
         Kfl6grMJUmTME70NMf71sQLLTveTQ3MM4H4L84cpcdev7RqOuYuPLuxw4ORAG7iml8Jx
         AZEumwyg3eaxsWCfRDznToYj7e6IWsvOJp5StQb1W36ZO18OwrrRNWdUP8FPqBeXIYpI
         HAhBx0iyk08jNxGAgIwxNrq+ELN8kAhSF4aIxdtcPK8THT6FQ7MzQwRSRqr4G/eYhmQ+
         0HOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=dPwtgBNuuOSSzOxEmuo0cqlkiRAm0dVGX7esAZSs5jg=;
        b=iZSeaFEvy8NiR2DXXiL50Np6bVPTwTDhQ8I37HSQCNit2aM1qlSa9uwuam9DBohc1X
         Bk/tImwOwvk4pVrMztEu9TME3eFjX4HllekQl0yrg2r6OFyxhaLGpuVe6enUMwv/bXXP
         HI4ypKdiZfnt4U6sCu+LYXeUl6Nv6nwPA8lXV/6/oQCTDOdPkawBQTWCr0rI4qtptYQH
         o0CPoln1BjyjjA9A7jLKAxnOzKpPIMPZ7vsA909xNAwOesH2JrS2Lt/qxdJobTIb6LGj
         AXfbKZYiZl0pqo80SEoTrUvUdzVUxeK8laWgZJGslOhU5VzqL+8K4W0glE4CXhRUDnRc
         ZP8Q==
X-Gm-Message-State: AOAM530P+4gTmTct1OW+c7enOxkspK4sW74032aTYEhPnjZSNWyeeBov
        ELz61NGZlQyB3e394XVy7WgnNNeLxnM=
X-Google-Smtp-Source: ABdhPJzlG6MTvCMPSsB5dxvjgxgODlSaM56GWcdm3Oylh8Ya1No1e6I+t2uPXIIhiF+CAkbF/FYgZg==
X-Received: by 2002:a05:600c:4fcf:: with SMTP id o15mr23626975wmq.116.1627242532495;
        Sun, 25 Jul 2021 12:48:52 -0700 (PDT)
Received: from [10.8.0.150] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id c10sm33645116wmb.40.2021.07.25.12.48.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Jul 2021 12:48:52 -0700 (PDT)
Subject: Re: [PATCH] pipe.7: also mention writev(2) in atomicity sexion
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <20210724194625.2ruegq4a5jwlnyr7@tarta.nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <51304a7e-1dc2-d505-bae6-c096876606b3@gmail.com>
Date:   Sun, 25 Jul 2021 21:48:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210724194625.2ruegq4a5jwlnyr7@tarta.nabijaczleweli.xyz>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Ahelenia,

On 7/24/21 9:46 PM, наб wrote:
> writev(2) notes that buffers don't interleave with other process'
> (a reasonable question to ask), but points to pipe(7) for an exception.
> pipe(7) did /not/ mention "writev", "iov", "scat", or "gath", which are,
> in order, reasonable search terms: this was confusing at best and
> alarming at worst
> 
> By mentioning writev(2) in the heading, we clearly note that this sort
> of interleaving behaviour matches write(2)'s and isn't a concern
> 
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>

Patch applied.  Thanks!

Alex

> ---
>   man7/pipe.7 | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/man7/pipe.7 b/man7/pipe.7
> index c3210320c..29f6cf6cb 100644
> --- a/man7/pipe.7
> +++ b/man7/pipe.7
> @@ -246,6 +246,8 @@ limits; see BUGS.
>   .SS PIPE_BUF
>   POSIX.1 says that
>   .BR write (2)s
> +and
> +.BR writev (2)s
>   of less than
>   .B PIPE_BUF
>   bytes must be atomic: the output data is written to the pipe as a
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
