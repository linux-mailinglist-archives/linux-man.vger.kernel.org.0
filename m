Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F30774188E7
	for <lists+linux-man@lfdr.de>; Sun, 26 Sep 2021 14:55:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231444AbhIZM4k (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 26 Sep 2021 08:56:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231446AbhIZM4h (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 26 Sep 2021 08:56:37 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A41AC061570
        for <linux-man@vger.kernel.org>; Sun, 26 Sep 2021 05:55:01 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id i24so27253927wrc.9
        for <linux-man@vger.kernel.org>; Sun, 26 Sep 2021 05:55:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=AeXt1k5a9FN58LIRI74G42Y5/vb/ZbReTXno8NSGGfA=;
        b=QlVtaU1r9+VQmd4aRiMV7WtYK4mEzPDwTkMwcGxEi+uOpaQKnAIeyGOn6bbWCPLnRP
         ssORGcw+HfBmKPu7K7F6TNZnDDIRXfHWAuII8hg9fi94PmpdmpzrUS3Q77wlAIFzRrdV
         jwhne3ZGW/mdkj4cWkCNdT33HKY2aNGVMWvMzzApQgMzjI/fUi9kekHHuGvkLbXXtKql
         G5PEWuUs7IHUUbf8rdocsHsp5M7z5m2/orgt6W0QMyICVANJlzsh9pmNyjca7imogAZe
         1EEAyysuiBnZOBUlKY617xyr/UOFR0T+w3fpUZhYqu0jiAMXwf8OB6dWttLeXmYu5qq+
         sNbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=AeXt1k5a9FN58LIRI74G42Y5/vb/ZbReTXno8NSGGfA=;
        b=8Qn7By4R0563FLuiLhghEoAx717dUVUKxDZMOOPyH6zCASkdNVr2DS1TK2BgzSBK87
         V0xLuJewTaVNtuCqu+V166ad138YRlTvgesNjOwpChz7mgvfqdWFPZRjebdLsbGJ1Xr7
         ycNjgeeUB1I7vc3g+3nswhdHgIOe6bgn5hp45QMVHg5kMrsbbw2JOBJj68G85X5/W64I
         LE2E+4dKfDBIh8wPbPljoQnkm0y9j+sG2JT/ddBQE0GqcymgoZPzpTm1mdafzPuQuUhb
         q9wuTxO+nlCheTadJhpYL/kyIZvmHtQR6b5NfbE9ADP8BTQShzikxoNMjCPSVqqnE5AC
         fjXA==
X-Gm-Message-State: AOAM531eka0QPRcEZlrhYSACvcwbILKcgYYrjEglUIt6LbYS4VL04moC
        ES6KJLFx/blU+vjADoW1Z1w=
X-Google-Smtp-Source: ABdhPJyvbQ1yzXVVt5Pc4K4v3r++NRDEt1DvxTUl1epM6mXHgJqq5DI6boLJo7eP2oiDxZ9nFSVPLw==
X-Received: by 2002:a05:600c:3585:: with SMTP id p5mr11412799wmq.110.1632660900031;
        Sun, 26 Sep 2021 05:55:00 -0700 (PDT)
Received: from [10.168.10.11] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id z6sm16325347wmp.1.2021.09.26.05.54.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Sep 2021 05:54:59 -0700 (PDT)
Subject: Re: [PATCH] syscalls.2: Remove duplicate mention of
 landlock_add_rule.
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <guenther@unix-ag.uni-kl.de>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <20210925090803.6884-1-guenther@unix-ag.uni-kl.de>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <64da75fb-5298-566c-cfb5-cbd335c68557@gmail.com>
Date:   Sun, 26 Sep 2021 14:54:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210925090803.6884-1-guenther@unix-ag.uni-kl.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Günther,

On 9/25/21 11:08 AM, Günther Noack wrote:
> ---

Patch applied.

Thanks,

Alex

>   man2/syscalls.2 | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/man2/syscalls.2 b/man2/syscalls.2
> index 800873b55..1b011ce6e 100644
> --- a/man2/syscalls.2
> +++ b/man2/syscalls.2
> @@ -415,7 +415,6 @@ T}
>   \fBlandlock_add_rule\fP(2)	5.13
>   \fBlandlock_create_ruleset\fP(2)	5.13
>   \fBlandlock_restrict_self\fP(2)	5.13
> -\fBlandlock_add_rule\fP(2)	5.13
>   \fBlchown\fP(2)	1.0	T{
>   See \fBchown\fP(2) for
>   version details
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
