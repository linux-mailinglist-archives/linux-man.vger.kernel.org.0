Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 72608407372
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 00:39:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229560AbhIJWkW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 18:40:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231340AbhIJWkV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Sep 2021 18:40:21 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B37CC061574
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:39:10 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id y132so2205520wmc.1
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:39:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=9+g1dJUn0Tvk2CJKMsBHtlitmsfnNBDvHEk6iMrIP3k=;
        b=GRRAKIgWNeMeHyVZ8v7iyKPey7loEEYcklJH+kW1qB+YpefgefsaL4nT7OwMuGJqQ1
         zXx19Wj8YTihLwG+Aze+p5pyAi0mkeGd2Z3lmhkM+5og9nW8+ZUk6is2iBrR0nKE0TvW
         hGViyXRKVzNnhotuGJCSOg0H42ZdUXT6QQclNWtM4S4DwgpYvCrpKRkU18uYg8YYBv70
         UV8D8EKaUMPTalpb9vVZRKo2zWHestVWQhDgrVhdw6i1Z9+rfUNRlY4Eqw4Px9SCIt3Z
         ox5ZV3C8GEReIlYRGthdWZnOW3R2ZFfjudYxeXpV4fFDKRCv3N0qArBnWs25ty/tfxey
         Qtdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=9+g1dJUn0Tvk2CJKMsBHtlitmsfnNBDvHEk6iMrIP3k=;
        b=5wDKdBShlsxEFFd9XUy51MdlQc0EmZKJfCjr2kUjynLJpRNVLcfem5luQlu/pMlUf/
         OdRtPlWajtqXqNTCgAXX3vlBUKQaTYkH+q1jX/wXu1oOCW+yOPrfTFigiGVZ6S+e6X6K
         KRko9Vwt7e7tremYGchPv+Mn+rRRcnFgg9KjUeH5LKSOX+LK/bU1A7TrPykQ2ZzxLZOF
         v6bujzY28ufWJnYUYoRB2n2gLXHr6jDu1QIn408oF+11zsD8XVz4T3HdR5P/RBaq9f/f
         elfuDCNZbasDFm0uTcxoky4tkDos6qNjvTOKHFRLg5t6flS/1drmhj3k3ttqFxCBFer9
         Bngg==
X-Gm-Message-State: AOAM5304IsP0dUfyt/57ZM6SD4N/oxQCAyvua0m8wdQpTJ0RmdL9NxCm
        HBXTnerFIceJ0AWRw2Y4E8iFK19/zxo=
X-Google-Smtp-Source: ABdhPJyKZMqdtx/SwJmGAdA0wAZRwrLI7Lwf6TanWL/s7nIDb1yaqjw51c/ttaYMO+1OJ+NpFPgOAQ==
X-Received: by 2002:a1c:7dc8:: with SMTP id y191mr21654wmc.6.1631313548726;
        Fri, 10 Sep 2021 15:39:08 -0700 (PDT)
Received: from [10.168.10.11] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j2sm5884177wrq.35.2021.09.10.15.39.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Sep 2021 15:39:08 -0700 (PDT)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Subject: Re: [PATCH 2/3] futex.2: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210910200429.4816-1-jwilk@jwilk.net>
 <20210910200429.4816-2-jwilk@jwilk.net>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <d4b21295-20a4-90bf-f93c-9f02cac41519@gmail.com>
Date:   Sat, 11 Sep 2021 00:39:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210910200429.4816-2-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jakub,

On 9/10/21 10:04 PM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Patch applied.

Thanks,

Alex

> ---
>   man2/futex.2 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/futex.2 b/man2/futex.2
> index 1dd77ac2f..72100300d 100644
> --- a/man2/futex.2
> +++ b/man2/futex.2
> @@ -1137,7 +1137,7 @@ except that the clock against which
>   is measured is selectable.
>   By default, the (absolute) timeout specified in
>   .I timeout
> -is measured againt the
> +is measured against the
>   .B CLOCK_MONOTONIC
>   clock, but if the
>   .B FUTEX_CLOCK_REALTIME
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
