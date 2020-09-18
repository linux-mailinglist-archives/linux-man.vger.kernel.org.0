Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 345A22707D7
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 23:09:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726157AbgIRVJM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 17:09:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726118AbgIRVJM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 17:09:12 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24764C0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 14:09:12 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id a17so6902112wrn.6
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 14:09:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+L0r/O+yQ/CkV/8LViTMRTt07EOIerBDXTyuTusPZac=;
        b=mpdMaZQClfc+GDfw42aWI4zq9glBGRWPA3YMtFxCBdADdXDHzRzU6Rnt/clSMUMMjQ
         7UEACxpnWpK5aQz/4qGPueB0aUfO00QC4qhmAqzyeLap+I0Mw1WQEc/u4v+kijeq5z8r
         fQ4qx/5VAN6H/7QjLOrswWWw8Ow/TpN7ataO9MK/LJ1zl+2spC5xi7WwLjrbmETDAN/w
         26PuPcamRgRpGvL36DYVUcXodeJwqBQdMioTzCHZLUdRSnOqcMR7Ra6BvEwV41GFuw8K
         5ortWf1Q5s2sfGAfunPTaj0MhnR0Me4zOctC/d2QfOYlS+/AH5ZJ+LLcy+omt/fjBSek
         GA9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+L0r/O+yQ/CkV/8LViTMRTt07EOIerBDXTyuTusPZac=;
        b=DB6Qsu+DVFHNwhtmHs4pBUOSUqtKeSpMq2i7wNbBvekGtIJ5XithsC6XjTaZzMS99y
         6IjMSNTGFWLZhqaeuktO/4LNcyxSpZrqoIdp9qrgcP4dG0d9O+0rUyNlgkOodrVOXOf8
         nWVDuUAAv6JVPu4XAD+50knkawjSIMyIjC3wsBQr1qWFJYUCl253PoTh0GrvyxWwbiBl
         jEBEbjkn5c5K7I9NxPpSb2B5HigbFkPulfLQuwV4UAi8lopyQPouC0wNdkFDRxycdKoT
         i+OeKfREAOZlMvikxL8unwjDgCOWyHwcIRrwDo/3iB9a26lwhJlHQI0kc9pzF+7lvRyb
         HSUw==
X-Gm-Message-State: AOAM533m8zPD7qawkuGfQfTzz5vgg0XYRrZaQlmhmb4mcCHNXFZAXuL5
        /zK4zwa0RAZ+TP/HoXHi6GA=
X-Google-Smtp-Source: ABdhPJzM34kLjyQCbUDV0FIFl3ddWw3t3nGAiU3ftB7cAiXnRqcUSCwKOqUqT8TNL2SybghcMycIvA==
X-Received: by 2002:adf:ce01:: with SMTP id p1mr23326797wrn.61.1600463350856;
        Fri, 18 Sep 2020 14:09:10 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id u66sm7108266wme.12.2020.09.18.14.09.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 14:09:10 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 3/9] system_data_types.7: Document sigevent
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200918170442.94920-1-colomar.6.4.3@gmail.com>
 <20200918170442.94920-4-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0f7cd0c7-9fac-e177-9147-4ce67e64bd7c@gmail.com>
Date:   Fri, 18 Sep 2020 23:09:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200918170442.94920-4-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/18/20 7:04 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man7/system_data_types.7 | 57 ++++++++++++++++++++++++++++++++++++----
>  1 file changed, 52 insertions(+), 5 deletions(-)


Thanks, Alex. Patch applied. I added a line re description, 
deferring to sigevent(7).

Cheers,

Michael


> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 48871e4eb..53c289e31 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -133,6 +133,51 @@ and
>  .I ssize_t
>  types in this page.
>  .TP
> +.I sigevent
> +.IP
> +Include:
> +.IR <signal.h> ;
> +or
> +.I <aio.h>
> +or
> +.I <mqueue.h>
> +or
> +.IR <time.h> .
> +.IP
> +.EX
> +struct sigevent {
> +    int             sigev_notify; /* Notification type */
> +    int             sigev_signo;  /* Signal number */
> +    union sigval    sigev_value;  /* Signal value */
> +    void          (*sigev_notify_function)(union sigval);
> +                                  /* Notification function */
> +    pthread_attr_t *sigev_notify_attributes;
> +                                  /* Notification attributes */
> +};
> +.EE
> +.\".IP
> +.\" FIXME: Add a description?
> +.IP
> +Conforming to: POSIX.1-2001 and later.
> +.IP
> +Notes:
> +.I <aio.h>
> +and
> +.I <time.h>
> +define
> +.I sigevent
> +since POSIX.1-2008.
> +.IP
> +See also:
> +.BR timer_create (2),
> +.BR getaddrinfo_a (3),
> +.BR lio_listio (3),
> +.BR mq_notify (3)
> +.\".IP
> +.\"See also the
> +.\".I aiocb	FIXME
> +.\"structure in this page.
> +.TP
>  .I sigval
>  .IP
>  Include:
> @@ -153,12 +198,14 @@ See also:
>  .BR pthread_sigqueue (3),
>  .BR sigqueue (3),
>  .BR sigevent (7)
> -.\".IP
> -.\"See also the
> -.\".I sigevent	FIXME
> -.\"structure and the
> +.IP
> +See also the
> +.I sigevent
> +structure
> +.\"and the
>  .\".I siginfo_t	FIXME
> -.\"type in this page.
> +.\"type
> +in this page.
>  .TP
>  .I size_t
>  .IP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
