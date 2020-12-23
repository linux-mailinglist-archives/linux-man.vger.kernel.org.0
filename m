Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 628B12E2100
	for <lists+linux-man@lfdr.de>; Wed, 23 Dec 2020 20:44:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728706AbgLWTm7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Dec 2020 14:42:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727671AbgLWTm7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Dec 2020 14:42:59 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03B2BC061794
        for <linux-man@vger.kernel.org>; Wed, 23 Dec 2020 11:42:19 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id y17so253552wrr.10
        for <linux-man@vger.kernel.org>; Wed, 23 Dec 2020 11:42:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=zaJPAv35p7tYyH3AJ2+r5aC10kVF5ebf5TE8wHA/JX8=;
        b=c2YIgPbdGtzZE4wBjKxWvkJJigjaDlcXNf+Bm3E5mIdaLD6MnPTVHpBVkt5zNgF0/T
         uEfYyDaGPrqW466VVMATUwjdXxNzSa5xEBceXXfYRF6WBy8e3VETfVl2+4C66mWSp5gT
         jNAuWqJSZIp/a0/liVm34mFDPMvZM280DxmPQCOxNfmCtRXMVHB4T9YIDGaOO+l4s3Wh
         qu3wXGcznUrH2DK6NzSvH2fX7FWFv2F7shAPJ6tlHo9RkpHykuIbOFSQJuRCpeT4Dgn8
         D8smDCKLwH45cfq+8jqEJW2ClBJAct/S231cs/cKEToq6KnJUlRc/n668PBWh0TycJum
         v/rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zaJPAv35p7tYyH3AJ2+r5aC10kVF5ebf5TE8wHA/JX8=;
        b=YejenY6Dtvypr/lZgjZXralPei2GFj8YG2t7Pn69FQAMoqWnnNHCSB27KU/bmIDJGp
         DwgH+KgfhbYuupVvF9wgShTYotzr+N4UcIuDpm40IkZunW9goquFRh9C2wQKvHgq1PiE
         UawGt+4aoVYTKitRZwz+05gvzolxoq3RcSE9XWBFPJPQK4NrDME3e3ypO7IbAPXg6zCF
         hekUy852nhJpuLu/JhlZejf+Qq9vgPulgjgN22/s3OO1sYkjlL3lC2WSIIwudsy9iumQ
         DoL+M8wghxVXKFPPkvc/YM48cIIBxKcEkKPlf54dDskgLWSyrp/LExeF6+9oqRGQaelb
         1coQ==
X-Gm-Message-State: AOAM533x8ZODQYcWQjBDyUVSP08DArKTqnTAqYpUbOcS8Ps7k9f8By+u
        FUZvyLpqPKrBsgsA0bQCDv9A4h9Hb/Y=
X-Google-Smtp-Source: ABdhPJziq+x3PH2urIZ05vLZyV77O+R3hsjKcpNZAholIrUcBqAP5A51oV1pUWKzENnSlPh6i/9wUw==
X-Received: by 2002:adf:fdcb:: with SMTP id i11mr31308487wrs.349.1608752537789;
        Wed, 23 Dec 2020 11:42:17 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id j10sm984404wmj.7.2020.12.23.11.42.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Dec 2020 11:42:17 -0800 (PST)
Subject: Re: [PATCH 1/4] signal.7: tfix
To:     Jakub Wilk <jwilk@jwilk.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20201223193033.1012-1-jwilk@jwilk.net>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <16ce14af-9593-9ada-a745-d70e6ff81b1d@gmail.com>
Date:   Wed, 23 Dec 2020 20:42:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201223193033.1012-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/23/20 8:30 PM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Jakub, patch applied.

Thanks,

Alex

> ---
>  man7/signal.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/signal.7 b/man7/signal.7
> index e5b9e00ca..1b48356b8 100644
> --- a/man7/signal.7
> +++ b/man7/signal.7
> @@ -357,7 +357,7 @@ From the kernel's point of view,
>  execution of the signal handler code is exactly the same as the execution
>  of any other user-space code.
>  That is to say, the kernel does not record any special state information
> -indicating that the thread is currently excuting inside a signal handler.
> +indicating that the thread is currently executing inside a signal handler.
>  All necessary state information is maintained in user-space registers
>  and the user-space stack.
>  The depth to which nested signal handlers may be invoked is thus
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
