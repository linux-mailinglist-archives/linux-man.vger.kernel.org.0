Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 182F4265AEC
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 09:57:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725550AbgIKH5b (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 03:57:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725601AbgIKH5W (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 03:57:22 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23E58C061573;
        Fri, 11 Sep 2020 00:57:21 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id t10so10522792wrv.1;
        Fri, 11 Sep 2020 00:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=wk2q5AGOwAwjutqqbOwBXvu26ifImkLbzfUxSzk8coo=;
        b=LVI0R/bOCNMS1R2UQ1bSJCr5koKXf6TL+0jsAxqboOky3dB4Uj8BwuZ4j1cDyUhgWO
         NaVtNM3ppkAfCIAud9f+rH3M5o69G0wHvYswCYwS0PFfC1J7JAjLnlw9ha6wT3KMRgGY
         bT9Uj44rkjw1CUAEw2yhBpXTEt7fEORvImuXfhqSmezhQJP3o+xwf5J9ZalfDHjt5tjY
         4x3VJJzuoKz9HdG02n/UxT8WV2y5h4MNNNDF+eG7bWRfUqkmfQFLMoTa5wmmPv481jSC
         RdtHZ6n7V9fwrdjubp4K144O7wak6KF98SZNL6rE9xt5YYEzzFQ78mR2dgBz5pTW1d4k
         37Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=wk2q5AGOwAwjutqqbOwBXvu26ifImkLbzfUxSzk8coo=;
        b=Gqtg/NudeSSMRqoeqbzLB1TKl6+lpO8znjFYck6eGa3Ide4rfOqGMVWCgV0u8S9/93
         Jqb1X1cmsHHc0FU2aIjxjf/oXfifvvankocrmj0mdx63ijVsVWQ219q0AzIhwFfxG6Ld
         wb0q/wXN9qxvG8NYVbGXWoHjwbnETRfTcEUo5SNOcwJUPHTEUTqCHU8iN9zyUSv96BJd
         gE8asqzeVZFaX+kdvLO0FFOqKJ9P4r/2X9rBTwFnHMZP5qgCVbC3hSWgasYhTp9p7BT+
         4E3aS0HytnHtYX4RvpRC9O9XSNwvSkTAtltlVvljTKGtycyil3Ya7q1/12tugpyOGvdz
         t07A==
X-Gm-Message-State: AOAM530bsJSKRq9Nig/XG9qHZAZwV6vdpc9y9+d2UTls0qYSVqh/wPHS
        FxXtXCJbQ3d7RfXPnV5+fuD/LsA5f8M=
X-Google-Smtp-Source: ABdhPJxoshTKFkDIJMcaAT6c7PFP8bxmJd19E/Es3JR/hfSovZZhA3uJLxCrqpPFrjZYiLkfWOyHpA==
X-Received: by 2002:a5d:5404:: with SMTP id g4mr733197wrv.134.1599811040290;
        Fri, 11 Sep 2020 00:57:20 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id g8sm2606822wmd.12.2020.09.11.00.57.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 00:57:19 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 06/24] timer_create.2: Cast to 'unsigned long' rathen than
 'long' when printing with "%lx"
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-7-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9d60a974-734e-d14a-fa3f-ceab43d2dc0f@gmail.com>
Date:   Fri, 11 Sep 2020 09:57:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200910211344.3562-7-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/10/20 11:13 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>


Thanks, Alex. Patch Applied.

Cheers,

Michael


> ---
>  man2/timer_create.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/timer_create.2 b/man2/timer_create.2
> index e9a8b8503..9c9907739 100644
> --- a/man2/timer_create.2
> +++ b/man2/timer_create.2
> @@ -390,7 +390,7 @@ print_siginfo(siginfo_t *si)
>      tidp = si\->si_value.sival_ptr;
>  
>      printf("    sival_ptr = %p; ", si\->si_value.sival_ptr);
> -    printf("    *sival_ptr = 0x%lx\en", (long) *tidp);
> +    printf("    *sival_ptr = 0x%lx\en", (unsigned long) *tidp);
>  
>      or = timer_getoverrun(*tidp);
>      if (or == \-1)
> @@ -454,7 +454,7 @@ main(int argc, char *argv[])
>      if (timer_create(CLOCKID, &sev, &timerid) == \-1)
>          errExit("timer_create");
>  
> -    printf("timer ID is 0x%lx\en", (long) timerid);
> +    printf("timer ID is 0x%lx\en", (unsigned long) timerid);
>  
>      /* Start the timer */
>  
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
