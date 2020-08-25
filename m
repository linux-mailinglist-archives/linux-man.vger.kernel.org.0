Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB0A12516A5
	for <lists+linux-man@lfdr.de>; Tue, 25 Aug 2020 12:29:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729746AbgHYK33 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 25 Aug 2020 06:29:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728117AbgHYK3Y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 25 Aug 2020 06:29:24 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31B15C061574
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 03:29:24 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id f7so12210831wrw.1
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 03:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=2ymiNEyvFEmUl6rTlqNjZVLtl7gFertMX0IPi369iCc=;
        b=LDxJHLTLP8212s7EDwEY9+4rbJze0PvXUiO7Dvr3JlDMplRRUr1cPIVjcnAuUVUNK1
         C8Ip1KCgmWcO5rBH2Cm5gWE8Q83pjA5cO2WHkfpbVi3FIzGuoVRmlDiZjlhkT7Bxtu2D
         schkrKhXswjAjiHW5zw15AcxNkW02FuBczgMUo6m0Z85aNkypNBCsLTWz86GS8nnfu6e
         WXS5bKSnCSNnDC3sz0jxyk+KB8MtemUo6xyIayCX6GXCEVP8XDU0ZXxy0i/2i6r7ge5s
         EYSS2jAeHC/ETyTpaGA84d08BOgPbTuOQGLphypv/OearXM9xavVRKt/OupCuJTG0M3O
         b21w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=2ymiNEyvFEmUl6rTlqNjZVLtl7gFertMX0IPi369iCc=;
        b=knUQN1mx0RgGHCQsdAA/ccurva7TJtko7gFKwz/WDF2kW40iMIVbCtRGHNeivSlzR2
         0jLXa04jDIwZVK2kwuoNTOwcMaO6r++iUkMaFj9LiSq6oeQrGYve0ueoK0XTkzt4jT+A
         cPl/eS9rH/xyV8irIVA69V4pfWGakjbUMOmia5ZH5yH93Y3jzDr1+ycgQAVktsyXj0yr
         jHKEBI8G5OBrrNwgn1hk4Eit3yS3KdvD4rKtHGmXq+rTcUuucVEGFuwVSirhAO/A97KD
         FmFsAuFj9Uk8eXJBjVn/laKWENquhX1IY7m4aIbkHSGMrNqzU/R8Mk99q48VvLtRP9vc
         o1zQ==
X-Gm-Message-State: AOAM533S+JRl1CmtRqjxBdZeMd4tXo50Oju14r92CmlvTRVQtd5LWp87
        lhEl/rxJN0/L+SCfAhKzPuWn0QJml9k=
X-Google-Smtp-Source: ABdhPJyAUaZVVwLBMSE3Dr4fQO5YWQ+ZHvrhA8qSurq235GahBLItHYRUouzkETOKrdejWAeHzVt8w==
X-Received: by 2002:adf:e701:: with SMTP id c1mr10042609wrm.80.1598351362492;
        Tue, 25 Aug 2020 03:29:22 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:4c01:2cf1:7133:9da2:66a9? ([2001:a61:253c:4c01:2cf1:7133:9da2:66a9])
        by smtp.gmail.com with ESMTPSA id g62sm4609624wmf.33.2020.08.25.03.29.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 03:29:21 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [patch] memusage.1, bind.2, eventfd.2, futex.2,
 open_by_handle_at.2, perf_event_open.2, poll.2, signalfd.2, sysctl.2,
 timerfd_create.2, bsearch.3, cmsg.3, getaddrinfo.3, getaddrinfo_a.3
 getgrouplist.3, insque.3, malloc_info.3, mbsinit.3, mbstowcs.3,
 pthread_create.3, pthread_setaffinity_np.3, queue.3, rtnetlink.3, shm_open.3,
 strptime.3, tsearch.3, aio.7, fanotify.7, inotify.7, unix.7: Use sizeof
 consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e1b424c2-77c1-e995-a866-67a122d7bb07@gmail.com>
Date:   Tue, 25 Aug 2020 12:29:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 8/24/20 3:29 PM, Alejandro Colomar wrote:
>>From 5df5cae0fb6973df0ab8b3629934f808487112b0 Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Fri, 21 Aug 2020 16:58:12 +0200
> Subject: [PATCH] memusage.1, bind.2, eventfd.2, futex.2,
> open_by_handle_at.2,
>  perf_event_open.2, poll.2, signalfd.2, sysctl.2, timerfd_create.2,
> bsearch.3,
>  cmsg.3, getaddrinfo.3, getaddrinfo_a.3 getgrouplist.3, insque.3,
>  malloc_info.3, mbsinit.3, mbstowcs.3, pthread_create.3,
>  pthread_setaffinity_np.3, queue.3, rtnetlink.3, shm_open.3, strptime.3,
>  tsearch.3, aio.7, fanotify.7, inotify.7, unix.7: Use sizeof consistently
> 
> Use ``sizeof`` consistently through all the examples, in the following
> way:

I would really have preferred three patches here, since:

> - Never use a space after ``sizeof``, and always use parentheses
>   instead.
> 
> 	Rationale:
> 
> 	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#spaces

(1) This is completely unproblematic from my point of view.

> - Use the name of the variable instead of the type as argument
>   for ``sizeof``, wherever possible.
> 
> 	Rationale:
> 
> 	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

(2) This one is up for debate. In many cases it makes sense to do
this. However, there are cases where I think that using the struct
name can actually help readability. And when I grep through the kernel
source, of around 139k lines that use "sizeof", some 37k take a 'struct type'
as an argument. SI, I think this kind of change may need to be considered on
a case by case basis, rather than as a blanket change.
 
> - When the result of ``sizeof`` is multiplied (or otherwise modified),
>   write ``sizeof`` in the first place.
> 
> 	Rationale:
> 
> 	``(sizeof(x) * INT_MAX * 2)`` doesn't overflow.
> 
> 	``(INT_MAX * 2 * sizeof(x))`` overflows, giving incorrect
> 	results.

(3) Is this true? "gcc -Wall" does not complain about this. And, I
thought that in both cases, all operands in the expression
would be promoted to the largest type. And, on my x86-64 system,

sizeof((sizeof(x) * INT_MAX * 2)) == 8
sizeof(INT_MAX * 2 * sizeof(x)) == 8

But, I will say tht I'm not a language lawyer, and C still
sometimes has surprises for me. At the least, I'd like to know
more about this point.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
