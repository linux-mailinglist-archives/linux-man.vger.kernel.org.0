Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2CAB5141B4
	for <lists+linux-man@lfdr.de>; Sun,  5 May 2019 20:05:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727343AbfEESFP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 May 2019 14:05:15 -0400
Received: from mail-ua1-f66.google.com ([209.85.222.66]:39241 "EHLO
        mail-ua1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727232AbfEESFP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 May 2019 14:05:15 -0400
Received: by mail-ua1-f66.google.com with SMTP id v7so1557790ual.6
        for <linux-man@vger.kernel.org>; Sun, 05 May 2019 11:05:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=9GBHBn0YElwXw5xGuWMh2X0QOWc4gGffC6jRZeUL3hk=;
        b=p2ALZSrvkyHGyGLCZl/KRwG4tqNr1y4VyACWJEwVOz6lgVv6jpFBukt/YmhgRb7aKt
         cNLqjBO+Oz6IjF012CTH3MycRTJZ66sNRJpIi61KQubyQAMCbz2dA4AjKJ2Ns1aXRFxl
         b3VlX6R6iEKfoj0mRX6HugrUirvh285TAuNIAn9kIx3TtfZdHwkdWvuelRVUJy+mevdm
         LYCHkUnkpfWQDWVjf9RLwmlT/IARC+eFIsgfGHSaXWmGghBdVyC+YfJTZK06rGWOrqZh
         ufsrV4qz2AhIcKcm0ZFVR5Ua7oJXMHojXJqkfQ3NTEXFHUKOAxLTLpc2753ZNNnLuOCF
         Y3aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=9GBHBn0YElwXw5xGuWMh2X0QOWc4gGffC6jRZeUL3hk=;
        b=IDzZeUf5xrNVbjh069LrOmY1dfa24Zux+gFQwJBYL8GOB7dyBga/YmLskj79s6oyuM
         A/SOFkBNOimUfe3I7mBVvsg26GbYquup9fJtBaeJcTsTcQK22pCGdsTK+zCi+RrlUOx+
         C2uRCzXVRhhMrTLBn3XqtL61BQrf+ntvJR9drDi81gVpDvMJSnW61zf6FVXTr3KHsMWh
         uWVYWfSRHsHGIGt3tKKupCjzjV1W3Qt/mPYBra3ZWE0Wspk8achnmeLw3JBkJs7gKzun
         pzLGbh5OdJH3j0do8UykUrvTkgfrz6jnypmAf2w8tkbIrzV/njBP6oPSV7gPRDOcESSG
         4OmA==
X-Gm-Message-State: APjAAAXvlb7o8gE34Q0ORFz8VJyrlOfwIJehhnTE2SPLYKM1eoB6sjjJ
        jL8xeV5t5A64A15S0rax+50vPmzp
X-Google-Smtp-Source: APXvYqxO3jlXREqctQazgQ/6HGEahujhBlQq/6Y6wgirMeqCyGeaxpDhFfy9TgOwX0Jj18OBfYfemg==
X-Received: by 2002:ab0:984:: with SMTP id x4mr2274530uag.2.1557079514368;
        Sun, 05 May 2019 11:05:14 -0700 (PDT)
Received: from [192.168.0.8] (dynamic-190-25-35-141.dynamic.etb.net.co. [190.25.35.141])
        by smtp.gmail.com with ESMTPSA id e76sm2642028vke.48.2019.05.05.11.05.12
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 May 2019 11:05:12 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] sched_setaffinity.2: sched_getaffinity returns the number
 of bytes copied
To:     Brice Goglin <Brice.Goglin@inria.fr>
References: <e4daf130-b509-44f8-6fbd-4bfbcef587b6@inria.fr>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <13d3a8ba-b5cf-6e0a-a0fd-58347e0c750b@gmail.com>
Date:   Sun, 5 May 2019 13:05:11 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <e4daf130-b509-44f8-6fbd-4bfbcef587b6@inria.fr>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Brice,

On 5/5/19 12:19 PM, Brice Goglin wrote:
> sched_setaffinity.2: sched_getaffinity returns the number of bytes copied
> 
> On success, it returns min(len, cpumask_size()) where len is
> the output buffer size (see the syscall definition in kernel/sched/core.c).
>
> Signed-off-by: Brice Goglin <Brice.Goglin@inria.fr>
> ---
>   man2/sched_setaffinity.2 | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/sched_setaffinity.2 b/man2/sched_setaffinity.2
> index 74bbde81c..277edd0fb 100644
> --- a/man2/sched_setaffinity.2
> +++ b/man2/sched_setaffinity.2
> @@ -107,9 +107,9 @@ is zero, then the mask of the calling thread is returned.
>   .SH RETURN VALUE
>   On success,
>   .BR sched_setaffinity ()
> -and
> +returns 0, while
>   .BR sched_getaffinity ()
> -return 0.
> +returns the number of bytes copied to the destination mask.
>   On error, \-1 is returned, and
>   .I errno
>   is set appropriately.

Thanks for adding some detail. However, did you take a look at the
glibc wrapper, and also this text in the manual page:

    C library/kernel differences
       [...]   On  success,  the raw sched_getaffinity() system call
       returns the size (in bytes) of the cpumask_t  data  type  that  is
       used internally by the kernel to represent the CPU set bit mask.

Of course, looking at your patch, it's clear that that text is no longer
fully accurate (since Linux 2.6.34, commit cd3d8031eb4311e). I've now
adjusted it to say:

       On  success,  the  raw sched_getaffinity() system call returns the
       number of bytes placed copied into the mask buffer; this  will  be
       the minimum of cpusetsize and the size (in bytes) of the cpumask_t
       data type that is used internally by the kernel to  represent  the
       CPU set bit mask.

Thanks for report!

Cheers,

Michael
