Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8DC9927071D
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 22:32:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726252AbgIRUcH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 16:32:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726245AbgIRUcH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 16:32:07 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 558B3C0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 13:32:07 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id z9so6790312wmk.1
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 13:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=PEdJ05pO0hRsErq7TOaTLUMREcMWV31sF1srH0ZZ2YQ=;
        b=Z5Ey4wXDtd40q2S2hxUeWtQALvN9ACjBpLmnTDILn4qfUqT9GRcnFF3qMzVQhvi4+v
         2JFDu2EbikiQNWYMqElP5QpK5DdlSSJLZF9XoyRMNPdoGon/fSGS4doU5M7IflsY0a5U
         O72YxwC0sLzeiCujc+1YTkSgndC9bHyJQ4koZtACiEomGnuQe/MSFcOte2sCx5v6LaoO
         lPShNIDNrzZ176ZNnpxxqiw4Yw3EqrSrYrj9Rhly0iECUMK6/ZUx3uuvojD3r4hYxHY9
         7ScZ8gt8X/QofCyuoYqgiBtkfKjjpUKLMryLveSnIXUBaL54S6l60qDusREUwXUeSsuV
         jcmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PEdJ05pO0hRsErq7TOaTLUMREcMWV31sF1srH0ZZ2YQ=;
        b=A9/VLB1/7XuYXzjrdS+Ug5OUqoamywH+zZvsLQnbLQKQVZZkR7AHVv8ZOyoyHpUZ7I
         WE9ze9ndBBE69HqyXkbFS0snt8dtEl1bNcDZjkBh1d56KcPRc1EqQZ5s2Dxylm0jIfK0
         XiPXq4jfh9fm2fnDrrY/PVdJNee3xqP7Snb+dEbTz+V+ivcgKvC5itSe7811Y4KznglD
         COvE7PhMkgZEzcLnQ9wUIww3sOsK5u2grKqcOIs5/G1+wmuf6WCqx245MJ/f3l1mc0Ny
         q7p2dUi99MRE9eowbvGcXLGKnz9I/k8k/jvl0LVDpKx7vnLQiL5MrIC4NgF2HrXcu4e2
         ngpA==
X-Gm-Message-State: AOAM530Z4Gug06IUc0fjQhEDaGC1nD6LAg4jUda+/jjSpgj/yO0tv6aU
        mWtiku6jrn4+kRkj8UOTGp0=
X-Google-Smtp-Source: ABdhPJwDt/8YKx9uvaATNvlEkxebJm6lp3+uci7cZVdssXS9xJMGJPdZ9Ys6evoHSNeZj75c9lcI1w==
X-Received: by 2002:a7b:cb07:: with SMTP id u7mr16630992wmj.57.1600461126090;
        Fri, 18 Sep 2020 13:32:06 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id m18sm6464441wmg.32.2020.09.18.13.32.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:32:05 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 4/4] system_data_types.7: srcfix: Add FIXME notes
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200918124554.46308-1-colomar.6.4.3@gmail.com>
 <20200918124554.46308-5-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9c3d9eb0-944d-c7b4-ffad-7107b6f4c1ac@gmail.com>
Date:   Fri, 18 Sep 2020 22:32:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200918124554.46308-5-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/18/20 2:45 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael

> ---
>  man7/system_data_types.7 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index d96703b1d..16dcb7d66 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -133,9 +133,9 @@ See also:
>  .BR sigevent (7)
>  .\".IP
>  .\"See also the
> -.\".I sigevent
> +.\".I sigevent	FIXME
>  .\"structure and the
> -.\".I siginfo_t
> +.\".I siginfo_t	FIXME
>  .\"type in this page.
>  .TP
>  .I size_t
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
