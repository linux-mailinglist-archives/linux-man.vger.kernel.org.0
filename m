Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B4172999DA
	for <lists+linux-man@lfdr.de>; Mon, 26 Oct 2020 23:48:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2394705AbgJZWsK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Oct 2020 18:48:10 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:54742 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2394702AbgJZWsK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Oct 2020 18:48:10 -0400
Received: by mail-wm1-f67.google.com with SMTP id w23so12136644wmi.4
        for <linux-man@vger.kernel.org>; Mon, 26 Oct 2020 15:48:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8O7+aMhWZgQ3pU5Iem5DBdbKnXexRtus2tbzzEe5CBA=;
        b=ICJizVL99Wxy16KVMrPtscBoABMf+9etWlxHCVCRRk1mf3Bbv8nikRNRAdiJ67I+Ma
         Dy6cZijOzybqwWzNfJZf6wS0Uqp40ly4OQt2wQFmmOW/0WnwGxPLrkgjz9pT1oKkgVex
         x2UZj0LG4EPElebSK7hgmjg1YKxIhmuuRthGYOOYr9cFzw+9wCA+xVjVpZ+oyVZeCZRm
         ypIBlMxr4KtH052ht7MPTlE+sU2iBxs9OtJra/LWBiokYJfe5zK2egPvTSDD0wa0NvF+
         b3KlqdsUy80c+ZeHkWODNqBLgMF49gwnmRaBPSUxOpr1GHi4VB/fxOWBwomBBZMLgmSu
         xGwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8O7+aMhWZgQ3pU5Iem5DBdbKnXexRtus2tbzzEe5CBA=;
        b=ihb+3s0ip6ATjDp7jH3nEHt5mKFG2QXXb8io9jKZEao+/NHr2Dls3xA14K7rEuVxcr
         BhZ/zXmRK9tT209s5yF+eBY2Xo3hlLOVQxaQwlmUZV3FtVib9WQPsvePtphYl7t+Fpg/
         R3zPnHSUftnjdUH22wEQTRCxpyN3JiVOL0CZ1gpAyW31T7P/LXsP8G8P0czYWTdjjU0R
         TztlDAXsQZTfyx7gB41nU5wHA3UGYlZ8Nacg2TWyMRJwKusIVXSqarCziG2yTFPstfi6
         AOX32BoSrIg8OeFQ3Qgv9V/0deiRnYYFuZNN/Gg9kmO9y1NCB1kdmobCsGE+qZfuieKK
         hbwQ==
X-Gm-Message-State: AOAM531dls2qMxIaL2V19PdVl1jWC+49VGTrDiLJxPcIf4cU/IT5VDMy
        ximcH+ZDDYhK3wBYCQ0+aJ8=
X-Google-Smtp-Source: ABdhPJzuIkQBO88JgY3VRtAawQqclTarrcVLpTQqrqAZXdEo8K814xFHz01FvbLYyg6SAyAkN+GJYQ==
X-Received: by 2002:a1c:4856:: with SMTP id v83mr18711603wma.118.1603752486845;
        Mon, 26 Oct 2020 15:48:06 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id l1sm26871743wrb.1.2020.10.26.15.48.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 15:48:06 -0700 (PDT)
Subject: Re: [PATCH v2 2/2] error_t: New link to system_data_types(7)
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org, jg@jguk.org
References: <20201026221622.24879-1-colomar.6.4.3@gmail.com>
 <20201026221622.24879-2-colomar.6.4.3@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <7c73a289-d0a4-85f3-8bb4-657cccf07bff@gmail.com>
Date:   Mon, 26 Oct 2020 23:48:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201026221622.24879-2-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

I forgot '.3' in the page name in the commit message. Please add it.

Thanks,

Alex

On 2020-10-26 23:16, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>   man3/error_t.3 | 1 +
>   1 file changed, 1 insertion(+)
>   create mode 100644 man3/error_t.3
> 
> diff --git a/man3/error_t.3 b/man3/error_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/error_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> 
