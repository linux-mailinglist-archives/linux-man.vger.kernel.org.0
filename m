Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 381F4267E1B
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 08:05:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725902AbgIMGFP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 02:05:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725897AbgIMGFO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 02:05:14 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B450BC061573
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 23:05:09 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id q9so7757188wmj.2
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 23:05:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Y+mnzHQhq/1M4noWGIl0jG+rAjoX1pktRVbCva9DcFo=;
        b=Xg7tEEeOHDwo2NHOqry67XjQC/xYz9Eg58PDlr5037DMQWtIM8NRmeFbwUmY8FeZVl
         g4zSeWNIEnCYEN256LHgPdPwX4w3xs8LCGQKJn//Yx+Ai7oAQ9QpnJdODTOdxXdHYA2b
         QFWtqO4MCNvsyEvfFLXuFWwgB268mZE5lABHCNF7nDoLaeIu2U1B0OTCQC/Mxr3bRQpX
         TcBVe8TRqZS0pawYH7iNMgbTNmpReA1n2N6acwwmUWV3tqvG054mR97Du7XphuMpHN4D
         R7LpFZ89UI3y7dAqFP1pIJh+fKvpLRcRnLwp6bGTiA6I2tF2DIyioxs0IhA2gVe2Y5BX
         taBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Y+mnzHQhq/1M4noWGIl0jG+rAjoX1pktRVbCva9DcFo=;
        b=S1dRI72rIQn4bHLpT+XhCBynTFNYhiat6b0OOZ444086FtVWwelflf43FXnnfudrif
         Oa7iNGwjVSiy4sgwSBFtvCFJju+LVCBTBpkT4PGi5KxmeS5UwoJLFt8r0N+I1Q086jwB
         jFbNO5Fiyk9rffwSLF/SP1aCoJaOwkWJ7Jada6uOFVc05XrCWMjcYBiGvleQkfkMkHEu
         DJha/GeGQIdmPRjXZr257WutGh2HMHw/JITXQUk1LL2Krz9fPthbbAJd0LOpJnSR3vLl
         cK+h2FKoTNw1NLEx+JkWsjrphNYET2n3wIsxIPhWVlI5hgr80eED0tRVBF26gIxdS0JU
         x/cw==
X-Gm-Message-State: AOAM530+hkiecBnzdDkj1bsw8bYnfzB3wyuXGi1swT3qiNfUWT1QVnxk
        mAi2sZEFhGxBADU/gOp2+7eOpfeo4O8=
X-Google-Smtp-Source: ABdhPJwhMv8+odKL1jXPPUvabZWW3wz9mS/wEioVzVLciU8boEiSu/nQMwKCUUTaTtKrSLLfReZDgg==
X-Received: by 2002:a05:600c:2146:: with SMTP id v6mr9216335wml.159.1599977107594;
        Sat, 12 Sep 2020 23:05:07 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id q4sm14760115wru.65.2020.09.12.23.05.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Sep 2020 23:05:07 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Jakub Wilk <jwilk@jwilk.net>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v2 08/12] clock_getres.2: Cast 'time_t' very small,values
 to 'int' for printf() and fix the length modifiers
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
 <20200911231411.28406-9-colomar.6.4.3@gmail.com>
 <20200912055538.sihehmrxj6xwlwxx@jwilk.net>
 <39788961-f3d2-af73-f6fe-9bdd79c1ca14@gmail.com>
 <9d6f2b87-c3b8-60fc-6363-e976b7acbe8b@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <375db0e9-85f5-4c1b-b8b1-6798dfa92f5c@gmail.com>
Date:   Sun, 13 Sep 2020 08:05:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <9d6f2b87-c3b8-60fc-6363-e976b7acbe8b@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/12/20 12:06 PM, Alejandro Colomar wrote:
> Michael, here is the improved patch with Jakub's review applied.
> 
> Jakub, I added a line acknowledging your review.

Thanks, Alex. Patch applied.

Cheers,

Michael

> ----------------------------------------------------
>  From cd0e8df57be9ebee47be5c5988a980e462c89085 Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Sat, 12 Sep 2020 11:53:01 +0200
> Subject: [PATCH v2 08/12] clock_getres.2: Cast 'time_t' very small
> values to 'int' for printf() and fix the length modifiers
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Reviewed-by: Jakub Wilk <jwilk@jwilk.net>
> ---
>   man2/clock_getres.2 | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
> index 8fc7c6fef..0c14203ee 100644
> --- a/man2/clock_getres.2
> +++ b/man2/clock_getres.2
> @@ -491,8 +491,10 @@ displayClock(clockid_t clock, char *name, bool showRes)
>       if (days > 0)
>           printf("%ld days + ", days);
> 
> -    printf("%2ldh %2ldm %2lds", (ts.tv_sec % SECS_IN_DAY) / 3600,
> -            (ts.tv_sec % 3600) / 60, ts.tv_sec % 60);
> +    printf("%2dh %2dm %2ds",
> +            (int) (ts.tv_sec % SECS_IN_DAY) / 3600,
> +            (int) (ts.tv_sec % 3600) / 60,
> +            (int) ts.tv_sec % 60);
>       printf(")\en");
> 
>       if (clock_getres(clock, &ts) == \-1) {
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
