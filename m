Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E5373E37A0
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 01:59:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229809AbhHHAAI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 20:00:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229578AbhHHAAI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 20:00:08 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 294CCC061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 16:59:49 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id k2so12272811plk.13
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 16:59:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ls/SoysB1AP0TJOiP0j3EmuovA3/KB6bf05IQeRG9+0=;
        b=akWHYCgMZbsbQhXzEQ6HKk/xMhhmGzQn1klvXNK/10KW5MFt9ghPWO8JAhw39mWWyP
         eCLeT+xaqSiKyFxiHkuWIsS3v4gcJay4eE3fZvOO46vlsUP1CGYNT/KOeG9EuqH6kv1H
         YeQ5Nl3iLou9VAzYEXmA95xn/mG1h+ur5NFtQtTUizZ5+inhgrmmI9eGIQYp0fcVBbnz
         FpNwsN3DENu2lSoqhSkc7Z0lMvzPXLMuiPYLwWIutmA4kJzzaXvMFGvt47vZOSoav+QS
         pzA8v6SqBYNGKBGUpjM++bEn9WWklXhnlcJW3fhVMUphXgtK55fnlH4IkVuuHWujnGPR
         xBeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ls/SoysB1AP0TJOiP0j3EmuovA3/KB6bf05IQeRG9+0=;
        b=N8GNU6faLvarz0kGk+vbA9zBlI2IwSd9ljATNoQZWFmFekRUXmxkwq2hccJ6Cr3lmD
         w4jZrxAejxXm9yjqkgdyZeMapUIZtQP400t42DVEHtMovfXoO62+jP13mt0d4NWzFjd1
         +UrFZz4Epex6t33XBoZ1toHI5csfiltEev1FYlrljt3M9roD2PaePyic2x2hLASnkuHm
         L4pRkYlAydT27Je5UDTph4S7A5WUxU+K/HnfkHP1NTvTxYenWMEjMRfOgvxg39T4LNGa
         Tt5VDOM4QumCChfo59swJE3j6ncdBvFWCa0Zh8rMSUA1KFOkOgmbB8V2IHDpEDf85gJY
         JrVA==
X-Gm-Message-State: AOAM530c0a0GHWSsWabmfHUwE4xvIJVdywj1Vr04oFyaawkXTFRzGxel
        2YicCw19rcWiQXqD9/njfCA=
X-Google-Smtp-Source: ABdhPJxvoHXrMJC4hl1OWG/Qv0Y49T4KAJN9jaLAEs7grbjVKjJe+x7NiPJ3nYt1Rt0pqzcyYtEbJw==
X-Received: by 2002:a17:90a:ce17:: with SMTP id f23mr27585473pju.236.1628380788696;
        Sat, 07 Aug 2021 16:59:48 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id g23sm16246045pfu.174.2021.08.07.16.59.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 16:59:48 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: Re: [PATCH 31/32] time.2: wfix regarding year-2038
To:     Viet Than <thanhoangviet@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-32-alx.manpages@gmail.com>
 <20210729104517.a4kktqk54ef72m22@localhost.localdomain>
 <CAL9Lf7yp7ychhStn6yEPLxntMyfNk5k-SWgk3AShDSCGZ-Lwfw@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <11f3d828-495c-c39d-da72-21922edf7afb@gmail.com>
Date:   Sun, 8 Aug 2021 01:59:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAL9Lf7yp7ychhStn6yEPLxntMyfNk5k-SWgk3AShDSCGZ-Lwfw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/30/21 3:25 AM, Viet Than wrote:
>> "[R]eaches at" is not standard English.  More idiomatic would be
>> "reaches or exceeds".
> 
> Thanks Branden. Searching around on Google, you're right. Usage of
> "reaches at or beyond" is way less (1,240 results on Google) than
> "reaches or exceeds" (376,000 results). I've modified the patch
> accordingly.
> 
> Signed-off-by: Viet Than <thanhoangviet@gmail.com>

Thanks, Viet Than. Patch Applied.

Cheers,

Michael

> 
> ---
> man2/time.2 | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/time.2 b/man2/time.2
> index 059222dcd..ab3d3ecba 100644
> --- a/man2/time.2
> +++ b/man2/time.2
> @@ -93,7 +93,7 @@ specified as NULL cannot fail with the error
> .BR EOVERFLOW ,
> even on ABIs where
> .I time_t
> -is a signed 32-bit integer and the clock ticks past the time 2**31
> +is a signed 32-bit integer and the clock reaches or exceeds 2**31 seconds
> (2038-01-19 03:14:08 UTC, ignoring leap seconds).
> (POSIX.1 permits, but does not require, the
> .B EOVERFLOW
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
