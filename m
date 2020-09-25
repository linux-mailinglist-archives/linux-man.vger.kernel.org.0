Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8EA5327868C
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 14:01:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728315AbgIYMBm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 08:01:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728313AbgIYMBl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 08:01:41 -0400
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com [IPv6:2a00:1450:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38318C0613CE
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 05:01:41 -0700 (PDT)
Received: by mail-ej1-x641.google.com with SMTP id p15so2684344ejm.7
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 05:01:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=cPHEIFi2cou74dzrH63Qf/GKwJWJ84WobC780XY9eqk=;
        b=TRJgDivSBJFnMy5STEGQfPO1QR3z3kOySVcHKMUPJy8ggy74D5naqh70X49Z33ybQ9
         ndAafM7tGJ0AO4MRd1XIiN4jmMNApjDHFhNDKRj8nkKQinaSuss3YunVVqqVNjfUc47E
         JrA7zo0YGxncRK+RsCmTcHxpTBQZQ933taEWhoI9lOiQbhQE7EG7xvaYrPQ2U5kdEE7F
         F8G7KMakotiF9wWkxvo+1DhHiv6MKmtVE0rcd/kjbLLeniiOFYO60DL8jHMixVNZKiCw
         xD9Hrj8Du2yTTKUW2Rk+o3fVn9qZJ784UZpHrIUmxjHdRwaSk0A4iGZi5yheL1pHMIPY
         GjzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cPHEIFi2cou74dzrH63Qf/GKwJWJ84WobC780XY9eqk=;
        b=ZogaLL8XW8bkCruuVApniArxGRi8YSWHGCDy8Od6lPjHd5sFNYMq+p+5seeLaFdiHT
         ZwedK0qltXdgxWTnUtk9rVTP04j8N4wxtxOSjD34DsEzd9nK/nC2lElzEJGv89i/FOi6
         +/Adt0uS2cUt+ng+9lunqhMDzg3pq9FOKR+dWx4JRy4o4redaMjkSyR/o6PPFmwD4GZO
         Is5UbLE7VApweWbA3URnsOYJeCR7AT/od+p93kSzfV6mSGPOw/vDA1/CuoYhsEqUKlwG
         9XLVkp2hrmpg+EmAfWIabyfO5eIEa+5vf+B5dGMwsJFuMR+yLyF9uBbGv0cW4pegYs1d
         tQyA==
X-Gm-Message-State: AOAM533YIxlnD7EC9JbSey4dmHYlNiMnFNGVp7nH4ymhbx92z3DTk6/7
        QVkEsljzaSAoBu7Jkn3NYkA=
X-Google-Smtp-Source: ABdhPJzo0zNi8R6go83dXtrSEz4Yvyjb7r8+2ui5T7nEFphwwgWAeFyfmnsGogAbNBsdJcEGBrImvA==
X-Received: by 2002:a17:906:5008:: with SMTP id s8mr2481408ejj.408.1601035299868;
        Fri, 25 Sep 2020 05:01:39 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id p17sm1724617ejw.125.2020.09.25.05.01.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 05:01:39 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 06/10] system_data_types.7: Add double_t
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200925073140.173394-1-colomar.6.4.3@gmail.com>
 <20200925073140.173394-7-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <11daa51d-e8f3-100f-b804-f94372f9e698@gmail.com>
Date:   Fri, 25 Sep 2020 14:01:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200925073140.173394-7-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/25/20 9:31 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>


Applied. Thanks, Alex.

Cheers,

Michael

> ---
>  man7/system_data_types.7 | 36 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 36 insertions(+)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 238b9593b..43e88942a 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -117,6 +117,42 @@ Conforming to: C99 and later; POSIX.1-2001 and later.
>  .IP
>  See also:
>  .BR div (3)
> +.\"------------------------------------- double_t ---------------------/
> +.TP
> +.I double_t
> +.IP
> +Include:
> +.IR <math.h> .
> +.IP
> +The implementation's most efficient floating type at least as wide as
> +.IR double .
> +Its type depends on the value of the macro
> +.BR FLT_EVAL_METHOD :
> +.RS
> +.IP *
> +0;
> +.I double_t
> +is
> +.IR double .
> +.IP *
> +1;
> +.I double_t
> +is
> +.IR double .
> +.IP *
> +2;
> +.I double_t
> +is
> +.IR "long double" .
> +.IP *
> +Other implementation-defined values.
> +.RE
> +.IP
> +Conforming to: C99 and later; POSIX.1-2001 and later.
> +.IP
> +See also the
> +.I float_t
> +type in this page.
>  .\"------------------------------------- fenv_t -----------------------/
>  .TP
>  .I fenv_t
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
