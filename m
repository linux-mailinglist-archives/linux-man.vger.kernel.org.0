Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6605827499D
	for <lists+linux-man@lfdr.de>; Tue, 22 Sep 2020 21:57:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726662AbgIVT50 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Sep 2020 15:57:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726641AbgIVT50 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Sep 2020 15:57:26 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BAEDC061755
        for <linux-man@vger.kernel.org>; Tue, 22 Sep 2020 12:57:26 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id j2so18437986wrx.7
        for <linux-man@vger.kernel.org>; Tue, 22 Sep 2020 12:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=EXGj55QbxGeSQnu8pfIEYS03TWYefBYp+sPj1//m8t8=;
        b=k04udxrG0sHhgY8W2HBVrHMSfCdXW8CuRzSjIPA4yF3QU9qgpGVjbXsGIN7IVrQ7ee
         NqN5Dx5V8Gi1P4ZYlvN82epheN+GZGrEbtGmuZwjCWgclIUqcE1NmGwDQtln6iCCvmNB
         a9zge8AvTC8D1eLGEeQjCYIlXUV7WuQu9/ti8MN+3mlx65nyC3HasmxBkyv+Cu/aNUNc
         WIe/6f27h666tfdx9Q62e3w0nUBxyEnOdT6vjd+p/flgpQH0HWA1tGiEBwFc8HxbHxBA
         nDNjh9nbX7bqkPklS6qucRJDdtB45IsT0ouBX9nMy5d8YPE4S2pXkQmVTsPtfIcahMoX
         yBNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=EXGj55QbxGeSQnu8pfIEYS03TWYefBYp+sPj1//m8t8=;
        b=srVWqUQ3CoTBW6yBse5UXGIOJp6+axSoKkkYT7BF6/m1rAdI05Sk6Zqsoh4aU9thAo
         AW2w2d/mXrt1s62hMaCl6MunQoMvS6mvc5CsF0NsIkMI+h2p1iC3lNo670ryspUjcXkt
         wFHSEHozq2ihKpYGMolbLhvokq/qXKABCOtLStluEuL0HhJEJYGrXS5glBKmH5OvyKdT
         RaZDOd2o99Ualwx4eIj0pp+Qi0zXTpnCNqhzBdC42aZiNyNGOyHPq40f+edG2++BI3J6
         QG+pF65+7RDOV/JFV8tg9ffUaeLIr1zk+FClgH/waOEKet7Zr+BpeZop0Dzub1SFaKxD
         AgtQ==
X-Gm-Message-State: AOAM533RmlZNBs/MQB8LocWdiHz4z2BgfwGR5lDdCxN5XmoS9ouNWC4q
        ybTKQNj9yQupZIPXeSUTGZuBcQJRRhY=
X-Google-Smtp-Source: ABdhPJx+pY5+WkWZyjmm5NduZqQb1B+JamtBsycA15yE2R2/TXR5RTie9ar0GW87y3+kofvVDX/Fnw==
X-Received: by 2002:adf:90a2:: with SMTP id i31mr4747321wri.276.1600804644542;
        Tue, 22 Sep 2020 12:57:24 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id q12sm27147475wrp.17.2020.09.22.12.57.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Sep 2020 12:57:23 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] system_data_types.7: Add 'fexcept_t'
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200922153822.33728-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <42f8c77e-27a5-651c-9768-fa08d11e5ba2@gmail.com>
Date:   Tue, 22 Sep 2020 21:57:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200922153822.33728-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/22/20 5:38 PM, Alejandro Colomar wrote:
> Note:  I used this commit to fix the comment that separates with gid_t.
> 
> It wasn't aligned with the rest (col 72).

That's fine.

> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
> 
> Hi Michael,
> 
> Would you prefer a separate patch for the cosmetic change?
> I put it in the same one, as it was in an adjacent line,
> and the diff looks good; to avoid noise in the log.
> But maybe a separate commit is better.

(It's fine as is.)

> 
> Thanks,
> 
> Alex
> 
>  man7/system_data_types.7 | 24 +++++++++++++++++++++++-
>  1 file changed, 23 insertions(+), 1 deletion(-)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 59c64fb89..97411a193 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -111,7 +111,29 @@ Conforming to: C99 and later; POSIX.1-2001 and later.
>  .IP
>  See also:
>  .BR fenv (3)
> -.\"------------------------------------- gid_t ----------------------/
> +.\"------------------------------------- fexcept_t --------------------/
> +.TP
> +.I fexcept_t
> +.IP
> +Include:
> +.IR <fenv.h> .
> +.IP
> +Represents the floating-point status flags collectively,
> +including any status the implementation associates with the flags.
> +A floating-point status flag is a system variable
> +whose value is set (but never cleared)
> +when a floating-point exception is raised,
> +which occurs as a side-effect of
> +exceptional floating-point arithmetic to provide auxiliary information.

The previous sentence is rather hard to parse. What (other) part of
the sentence does "to provide auxiliary information" relate to.
I suggest splitting the sentence in two and rewording.


> +A floating-point control mode is a system variable whose

You suddenly introduce "floating-point control mode" here. 
How does it relate to the preceding sentences? It's not clear.

Going off to look at the standard... I see that actually your
sentences come pretty much straight from the standard. So, first, I
think the standard could have been clearer here. Second, and more
important, (for copyright reasons) we are on shaky ground if we just
lift whole passages from the standard.  The text does really need to
be in your own words. Can you come up with something?

Alternatively, I guess we could explicitly quote the standard.
Something like

    POSIX describes this type as follows:
    .RS
    .PP
    [The text]
    .RE

> +value may be set by the user to affect
> +the subsequent behavior of floating-point arithmetic.
> +.IP
> +Conforming to: C99 and later; POSIX.1-2001 and later.
> +.IP
> +See also:
> +.BR fenv (3)
> +.\"------------------------------------- gid_t ------------------------/
>  .TP
>  .I gid_t
>  .IP
> 

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
