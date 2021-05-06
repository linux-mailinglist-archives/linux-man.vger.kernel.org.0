Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AABEB375363
	for <lists+linux-man@lfdr.de>; Thu,  6 May 2021 14:02:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231653AbhEFMC7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 6 May 2021 08:02:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231560AbhEFMC6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 6 May 2021 08:02:58 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2128C061574
        for <linux-man@vger.kernel.org>; Thu,  6 May 2021 05:02:00 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id 4-20020a05600c26c4b0290146e1feccd8so2907805wmv.1
        for <linux-man@vger.kernel.org>; Thu, 06 May 2021 05:02:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=d9MN1P99KStHAwhLMwJikwdGZyfRZj1kW6esdEEWynE=;
        b=W1MEhshNBpEIM3k627Ut3sDLqqsrQBLAgKwq+P8OP/is3oZ2inmofDrU0DFBHSVjla
         GGurMPfQMH7tBIIDgyEzt8pmCKZlFhh4qNXKhhcVdNTh6jnSRY4Gv+FAQ+8ADyQz/PbR
         WgkFpyXPFJq1uopnfaEGlHA+SqjiUTtxPMhJtZmKN/ldgI++Key8f9aJraeMGQtrUErf
         RTBaZMKBjPAeR+0V+JH0JlDt7o4dIz9SLc8gVtRd0LmJCd6Zy2GeVA9Dv6m9tBSoHWW3
         PSR/0pMMlZKC/DcOFNi6Oj8cjI0Naw0cyQmyNLdbhzI1icTKPMFJLvaP/ZIlQnqBQyVX
         BEzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=d9MN1P99KStHAwhLMwJikwdGZyfRZj1kW6esdEEWynE=;
        b=kpF57ZzhE3ehejGK9iOQzBeEF3bS5GI4RgU6mHN74ZQgN3vr3tW+49Guzm8ut2oxdP
         Qd1ZO0jxueuT3zzfLMYVAUXzcfOHH7L9sLHCYJNTSov1wM9QOBh5RZ6SGN+FlG0K6nkV
         xST0OCn5+7nmdimTpIf2ShnqvKp2AQVKn9/kStzdnsPtpbAYN+VYpVypnlVDybGB2FlD
         IFS1RWlZ5ZeJFw1NWAg9VE0Mquy+P6iWosVV7/yhCd0u+7NqoVjrZwPfumKfqRdeX5XS
         VhPmepP3+0+3pQMNgJy7FpXbAMSyQkJwtilNbR5+hAenjbvtWlaaf72oGfhM/jH2WpXl
         MwRw==
X-Gm-Message-State: AOAM530AwSgtpMDCA2pFV/ybmIcBUOXmB7dyaFGTlqh1Sq8T2GC//yR7
        NgspnK3rDcYwPOs8p9AvMyRT/MMru0M=
X-Google-Smtp-Source: ABdhPJxWCa1LynjDtEq51R6uG+uRVAcEBfXB+TYrhK8H9Ek+Qcchr+8/V9//YUd9FYVXemZ9NMr+Ng==
X-Received: by 2002:a7b:c206:: with SMTP id x6mr14548923wmi.72.1620302519500;
        Thu, 06 May 2021 05:01:59 -0700 (PDT)
Received: from [10.8.0.106] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id i13sm3940340wrs.12.2021.05.06.05.01.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 May 2021 05:01:59 -0700 (PDT)
Subject: Re: [patch] semctl.2: ffix
To:     Akihiro Motoki <amotoki@gmail.com>, linux-man@vger.kernel.org
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
References: <CALhU9t=kyQT98yoGVKuiGOzfk9ACZ8fpNEYdyQqBUNTzDgAyNA@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <82537153-ad61-cadc-132f-0de8d8ca5720@gmail.com>
Date:   Thu, 6 May 2021 14:01:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <CALhU9t=kyQT98yoGVKuiGOzfk9ACZ8fpNEYdyQqBUNTzDgAyNA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Akihiro,

Patch applied.

Thanks,

Alex


On 5/6/21 1:45 PM, Akihiro Motoki wrote:
> diff --git a/man2/semctl.2 b/man2/semctl.2
> index 504cdf9da..bea27aa37 100644
> --- a/man2/semctl.2
> +++ b/man2/semctl.2
> @@ -378,7 +378,7 @@ the semaphore set.
>   .TP
>   .B SETVAL
>   Set the semaphore value
> -.BR ( semval )
> +.RB ( semval )
>   to
>   .I arg.val
>   for the
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
