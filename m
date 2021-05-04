Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE8AE372E0E
	for <lists+linux-man@lfdr.de>; Tue,  4 May 2021 18:28:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231694AbhEDQ3i (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 4 May 2021 12:29:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231849AbhEDQ3e (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 4 May 2021 12:29:34 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9522C06174A
        for <linux-man@vger.kernel.org>; Tue,  4 May 2021 09:28:38 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id m9so10144773wrx.3
        for <linux-man@vger.kernel.org>; Tue, 04 May 2021 09:28:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=lUcVtbQoFiGgc49LZTX/ZCKydQJ6qx5tGwTD1L0ROWg=;
        b=YQjSKBgERoF6aB43spiK91+a7j9CUYB02KD31yLCWJzoAZWeAefNPqt5uVYJERtkKV
         ObqDirpgWpYl3RVq8E5fPWDaA36nLQKclN1akc7tSTwNLrH/9kjSTSfprkW1BN6okw1S
         U6A0KepKI8SMhfm09vLvVZ1V6PAAj3PvlGeY2VFRS5S1iUxJPN1r5DoLHiEKAyWf7NPf
         gDohJ+njCovyRJQjtWEj6pq1d577RbYt8Z0cv3KN0M+7e/NCiLBNmuNnB8wcA7b7o+MW
         hzGLPHRqU965ceXnSJRc88i3ZN+zIFzsDgEVlvv9fK2tIIuDtyzhynp4XMDknIUKRe3s
         OVng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=lUcVtbQoFiGgc49LZTX/ZCKydQJ6qx5tGwTD1L0ROWg=;
        b=pUCSSwfPQYdaWjZmgnf1fO5fQ8HPRsuOX7fArECdzMQOYwMzVjdiKkI1bnZvXOBoD9
         DhVHcctHhp8ES/VpvnTzH1qA5KGNoaZ0sLjBBspN2yy+e9wxu3Y8bEf01cc9aU3/Wzu4
         Qa/CaPa3TlGzQe8GA7KpQ1si0UZLHLnZtNiyAAKEsn/o2lJ9KsVsMFu+iNofIPMCLH/g
         GInHw9kkl5wK6KUNmjo1MjUTiq9Ebs1YheFM/LnBZPCH5vWUTMdQWEb6r5l6ujHfx4U3
         LE6K2EF7eAHkUDgFEzZqLOPN0lnfPgumiV9gSdqDkFUFzOa3IfSuotsPasTj8FgrkfKt
         qI+A==
X-Gm-Message-State: AOAM533xs1hLvsiu2qFttI+vsLgR10yaA8rwxaujyKcDGdJZjxWe3jLn
        Dwr79cnJHauCAax6pe8cAw1+RpvlKqg=
X-Google-Smtp-Source: ABdhPJzFxsE32Cukf6tCkjuh9IG9wF53J3UbC5RFfojHTS+h2TyEY3dPj4sLQizpbUPJweDTc2chLA==
X-Received: by 2002:a5d:6085:: with SMTP id w5mr33849112wrt.14.1620145717630;
        Tue, 04 May 2021 09:28:37 -0700 (PDT)
Received: from [10.8.0.106] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id u2sm3993810wmm.5.2021.05.04.09.28.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 May 2021 09:28:37 -0700 (PDT)
Subject: Re: [PATCH] execve.2: tfix
To:     =?UTF-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210504160231.2688063-1-stepnem@gmail.com>
Cc:     linux-man@vger.kernel.org
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <663597d5-d5f7-2c23-3e6d-54238d49dec2@gmail.com>
Date:   Tue, 4 May 2021 18:28:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210504160231.2688063-1-stepnem@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Štěpán,

On 5/4/21 6:02 PM, Štěpán Němec wrote:
> Signed-off-by: Štěpán Němec <stepnem@gmail.com>

Patch applied.

Thanks,

Alex

> ---
>   man2/execve.2 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/execve.2 b/man2/execve.2
> index 1609bce04a54..c18ca54124fc 100644
> --- a/man2/execve.2
> +++ b/man2/execve.2
> @@ -141,7 +141,7 @@ similarly, the effective group ID is copied to the saved set-group-ID.
>   This copying takes place after any effective ID changes that occur
>   because of the set-user-ID and set-group-ID mode bits.
>   .PP
> -The process's real UID and real GID, as well its supplementary group IDs,
> +The process's real UID and real GID, as well as its supplementary group IDs,
>   are unchanged by a call to
>   .BR execve ().
>   .PP
> 
> base-commit: 2673a70a57adb0acfe39416de245b357e7f1bcd4
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
