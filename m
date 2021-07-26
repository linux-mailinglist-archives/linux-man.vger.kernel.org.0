Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 52D053D5740
	for <lists+linux-man@lfdr.de>; Mon, 26 Jul 2021 12:16:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231941AbhGZJgK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Jul 2021 05:36:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231639AbhGZJgK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Jul 2021 05:36:10 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0685EC061757
        for <linux-man@vger.kernel.org>; Mon, 26 Jul 2021 03:16:38 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id p5so5288891wro.7
        for <linux-man@vger.kernel.org>; Mon, 26 Jul 2021 03:16:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=xuAuhHnpu3FFCSYczsD5aX1hcBBHeTdxv970cfEzHOk=;
        b=POVz6NJQJzk27i1Jzq47oKbw+fOuN3yfxL0rhjoiKq7+n91bzdYIT/EzVuxV5MDSVZ
         L4JtbMFxepdLMlKT6HmZchlna35suYnOeSJeC6OZTOlhze7gdrmeS+/gDt4LJXHEzRD1
         cCOdGFnvyD1WmzCEnmw8a1Bj9Oqxf/Zca+e5voarEzSmGV54cWSlC1aHebPMp9gPIIv8
         63uhn5IE2gk8FysUXzq2H8oW/RPHQpyHnbqZdgho8qZVDQoGgwnms8lcFZpoFufv4PHx
         qDyDbBwCBc78093C2EYOGqjxhwpX5kzYJAf6uIbxBgy5yIiactpZXbW7uWFvU0vKvG21
         rfhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xuAuhHnpu3FFCSYczsD5aX1hcBBHeTdxv970cfEzHOk=;
        b=XBbuKEt2EQjZpkUy6VJOe3BxIbu8B/HmgYS4zhR3DBKTcTjkn+zZEHQL7cmEaAsbqL
         9GQjXja4sG9kLBHEoNKVJS3hulGN2LKQ3wL4vcJRKJe6Y7jo586LyUAtQQcXe5xWaKaB
         H9UVc2N4PKjGumflfggkNmjgVISwXcyrv1v5YTdJU8EvJmr3psKvB+T+W7Y+qOx/jyxM
         nWKNs5w4JExSrxeuM44XTbPEbdZ+5s4b/nEFpnmnbW/7d7tQq80s0Ho7Mc/9jD8SJ2fH
         Gf+gmqSdqsw6e9H9jtjagi4yWtiDzSA4kyhGM7xBsQ6ExPP+ILkIYh3z+TdODOLrcRhC
         XIjg==
X-Gm-Message-State: AOAM5329dxsjYHOG8p7ZJRFJUCYpUV3aPWyOiGcTjH6pcfxB/gvmlFwv
        9FFvmKs0mdHvEsVrJoyXKzY=
X-Google-Smtp-Source: ABdhPJyHlx9OH+i2klrlgxM1zPGAmysGzpK3dWNRpRj+WZCLSqJU9guTS+eoMM9jZYXwLJMWh3RfUA==
X-Received: by 2002:a5d:59ab:: with SMTP id p11mr18518810wrr.74.1627294596649;
        Mon, 26 Jul 2021 03:16:36 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q7sm35547366wmq.33.2021.07.26.03.16.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jul 2021 03:16:36 -0700 (PDT)
Subject: Re: [PATCH v2] time.2: wfix regarding year-2038
To:     Viet Than <thanhoangviet@gmail.com>, Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <CAL9Lf7yvYytb3Q9mHfK-dkxhk+80R1jGB5eRL_w7+qXDQG2RTw@mail.gmail.com>
 <20210724163944.cqp66jrpipj2khn6@jwilk.net>
 <CAL9Lf7xpqJd9dHiRiJnX+WcEmC_Cb0fqvQtcVKfvzrz7WydK2w@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <ac6cbd74-f936-a9c3-904e-91ff8a247924@gmail.com>
Date:   Mon, 26 Jul 2021 12:16:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAL9Lf7xpqJd9dHiRiJnX+WcEmC_Cb0fqvQtcVKfvzrz7WydK2w@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Viet, Jakub,

On 7/25/21 1:51 AM, Viet Than wrote:
>> I suppose this should say "...the clock reaches the time 2**31",
>> and then we can keep the parenthetical as is.
> Thanks for the insight!  here's the new patch

Thanks for the review, Jakub!

> 
> Cc: Jakub Wilk <jwilk@jwilk.net>
> Signed-off-by: Viet Than <thanhoangviet@gmail.com>
> 

Patch applied (manually as it was corrupt).

Thanks,

Alex

> ---
> man2/time.2 | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/time.2 b/man2/time.2
> index 059222dcd..a7410bfc8 100644
> --- a/man2/time.2
> +++ b/man2/time.2
> @@ -93,7 +93,7 @@ specified as NULL cannot fail with the error
> .BR EOVERFLOW ,
> even on ABIs where
> .I time_t
> -is a signed 32-bit integer and the clock ticks past the time 2**31
> +is a signed 32-bit integer and the clock reaches at or beyond the time 2**31
> (2038-01-19 03:14:08 UTC, ignoring leap seconds).
> (POSIX.1 permits, but does not require, the
> .B EOVERFLOW
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
