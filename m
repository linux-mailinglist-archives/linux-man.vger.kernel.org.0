Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7FD5129D389
	for <lists+linux-man@lfdr.de>; Wed, 28 Oct 2020 22:45:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725355AbgJ1Vow (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Oct 2020 17:44:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726243AbgJ1Vou (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Oct 2020 17:44:50 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEE73C0613CF
        for <linux-man@vger.kernel.org>; Wed, 28 Oct 2020 14:44:49 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id d3so653132wma.4
        for <linux-man@vger.kernel.org>; Wed, 28 Oct 2020 14:44:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=I1B+HWr9jItACxjIfbI11U+YDxsO57GiUo0DdLOU8Lg=;
        b=Qn9xPmAG5A7ITiJmy5drUkIFtXghPlIuuQao+9ny3Ay2W/PEABy4I+aca1lb3IGMhu
         QhQJ4lA1FmlBk85WN1fp3qjl540j4fSH4BaJVW836rqbcrv52NGudVDNj1Cj7sMEkOKp
         ps+zD2AVnjxNX6d5sHy+iBF4YOfuqzfqv+lgHOib9FCiGUKMBkf4/ezNVkXZ4ErdXjmX
         m0qNYzDXmg9rBgaHmh+OtX+nARY/sMq8jKH6To2j+F4wO9fCAvv/CRSK/kbVhnIuePgY
         8VuP9t0l6uAHb/cRtRSO/IYO6k/GP+vaQGk6FU397fy/ymKShZFmz80trGtOTo3t9phW
         yv0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=I1B+HWr9jItACxjIfbI11U+YDxsO57GiUo0DdLOU8Lg=;
        b=QXC3zXW+PSYeXBNXjWkb6iBMOHxoVuDROYseOucar3U3GgvDFSkavbBqA7hoxT0Kon
         u9BTeSejhOFuaSSc34vjbs+d1QoOuF88sXaJA7x6pRohLqXgKI3p55aY6Hw0DLSW8R3r
         PyUg5idigx2jDb8mhYv1pOIyJqGjpLmxJKYB6NkzB9apMXs0AArIlWNFYjZ3CUaGH+Dp
         dMksa8Ki2b1NxBauYUp/k4HVX736hEUCideYMcQbWe7GcmRc37pDeKbIG51tcDrIQAEv
         k8xW14+9NgrT2Cl1Tb6AsrXW49uDNjhXoEKLCqZlwyyjWGK9eyObmi3+I/tS0zfN1Vt/
         nIbg==
X-Gm-Message-State: AOAM532uM3FQ4glnWajV4Culefp3qAxQf3xce4pvhtqgzdl2kWiHuxFe
        xC0aN+n1OcVyhMqCn00fnUfJEbsWYJM=
X-Google-Smtp-Source: ABdhPJz1kFLCpxVwV5MWf4twsFf2Rwnd+U7ESwNf82dvpch2gxO3wsLHKYFQnykSIlk23lRd6ezyqA==
X-Received: by 2002:a1c:3d54:: with SMTP id k81mr858023wma.144.1603920014283;
        Wed, 28 Oct 2020 14:20:14 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id z6sm851456wmi.1.2020.10.28.14.20.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2020 14:20:13 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] clock_getres.2: EXAMPLES: Use 'const' when appropriate
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201028193244.115257-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <99797ed9-e5fc-377e-3b2a-70680287e03c@gmail.com>
Date:   Wed, 28 Oct 2020 22:20:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201028193244.115257-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/28/20 8:32 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Hello Alex,

Thanks. Patch applied.

Cheers,

Michael


> ---
>  man2/clock_getres.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
> index 4bd92f861..d47b50328 100644
> --- a/man2/clock_getres.2
> +++ b/man2/clock_getres.2
> @@ -476,7 +476,7 @@ CLOCK_BOOTTIME :      72691.019 (20h 11m 31s)
>  #define SECS_IN_DAY (24 * 60 * 60)
>  
>  static void
> -displayClock(clockid_t clock, char *name, bool showRes)
> +displayClock(clockid_t clock, const char *name, bool showRes)
>  {
>      struct timespec ts;
>  
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
