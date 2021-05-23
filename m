Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8CC8D38DAE9
	for <lists+linux-man@lfdr.de>; Sun, 23 May 2021 12:39:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231674AbhEWKlM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 May 2021 06:41:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231666AbhEWKlM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 May 2021 06:41:12 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3917C061574
        for <linux-man@vger.kernel.org>; Sun, 23 May 2021 03:39:44 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id l11-20020a05600c4f0bb029017a7cd488f5so6828200wmq.0
        for <linux-man@vger.kernel.org>; Sun, 23 May 2021 03:39:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=zq/6mhNFdGw0mo/peWVgLPLkyeNyJPvogKOLQR71B44=;
        b=OZkHxfqJKTCVQyGTHc9Jw7CdHP3OkZ9fvLvnBd+u5SAkBZiToqUM6lYGEV++Y7ejKT
         K83FK5eOdMK9ZQtt4AaFOrxL4krFdCFrGIUG8qw2ZciZGBtGf/mpUHB23MRg7m2icV9E
         Kv9M/16CF6fI1/HMhjezVQWJBK7Wfmj85wMjXtuE24blo0EHaGo7N0l201WeUDqJLEve
         9K3sE1YbXVK+7hdNmcGMjFsf5ZzNjh5xEgPT/zl5Qsx0b9MAwcQV1mapcdnq/BgzGTdm
         X82xV9arSV1JxYMzi5sqFLgFGyrZNOlWN51f/LGMq0gaHRhgywrYvn+ZHpz/OnEgJR9d
         n09w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zq/6mhNFdGw0mo/peWVgLPLkyeNyJPvogKOLQR71B44=;
        b=M3suvMcXYFNKFdsL9StQLS+38WoQWsM3xLXr2j1bvyYWwxlM2YU1zlg4EvPgWLBHwW
         AJ63+uoYDdCnxVf2zls4Q/YYRP3WEt4tqJf7YLL2lrdibZ5rgRejHrT2Rf4KrK1F8TJR
         zgCZ3zuetZ3js26Jb/uKVOXxhR7lyp2V/FbcFCctaGab0N+ps0WayittAuHFSzLoMWcz
         OhcFqH95kyaVxUfy5IogLJbP6+dvb8hN4QqPksALE3qDnQNi/yjSr59MuIvRvlJE3fvm
         AggqbAdF50sHG5ixnynlNoPMWPhcH9Y/mi4wGmhrMo2OtL2pVpwtPf6LDDpiPzG1TrHh
         PIzw==
X-Gm-Message-State: AOAM531lTXJsY96lPXjmXFeGP9Y7YnRtnUQt8mnMtHhSw0J3tFPNGtiY
        8PKRSB8uwUu86pVTZyUhEeI=
X-Google-Smtp-Source: ABdhPJwa9tF3vDwB41wYf7TiyLKoL4mt7hSshWwGLvFpztaSkPvVQuLKY72vwvlEgsc9Hkl7iqt87A==
X-Received: by 2002:a7b:cb88:: with SMTP id m8mr15988013wmi.154.1621766383183;
        Sun, 23 May 2021 03:39:43 -0700 (PDT)
Received: from [10.8.0.106] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id i15sm8121503wru.17.2021.05.23.03.39.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 May 2021 03:39:42 -0700 (PDT)
Subject: Re: [PATCH] strcmp.3: tfix
To:     =?UTF-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@gmail.com>,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210522161750.2756568-1-stepnem@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <017191f8-1cb5-c02c-b4d6-c09b7461d348@gmail.com>
Date:   Sun, 23 May 2021 12:39:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210522161750.2756568-1-stepnem@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Štěpán,

On 5/22/21 6:17 PM, Štěpán Němec wrote:
> With a single backslash, '\0' ended up as ' ' in the man output.
> 
> Signed-off-by: Štěpán Němec <stepnem@gmail.com>

Patch applied.

Thanks,

Alex

> ---
>   man3/strcmp.3 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/strcmp.3 b/man3/strcmp.3
> index c1992c18427c..469c9b6947d1 100644
> --- a/man3/strcmp.3
> +++ b/man3/strcmp.3
> @@ -143,7 +143,7 @@ First, some examples using
>   .EX
>   $ \fB./string_comp ABC ABC\fP
>   <str1> and <str2> are equal
> -$ \fB./string_comp ABC AB\fP      # \(aqC\(aq is ASCII 67; \(aqC\(aq \- \(aq\0\(aq = 67
> +$ \fB./string_comp ABC AB\fP      # \(aqC\(aq is ASCII 67; \(aqC\(aq \- \(aq\\0\(aq = 67
>   <str1> is greater than <str2> (67)
>   $ \fB./string_comp ABA ABZ\fP     # \(aqA\(aq is ASCII 65; \(aqZ\(aq is ASCII 90
>   <str1> is less than <str2> (\-25)
> 
> base-commit: 65dfda3dd16da5cff236c4a84532ec40d7533578
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
