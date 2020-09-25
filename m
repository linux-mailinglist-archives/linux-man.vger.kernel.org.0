Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 41B242782C8
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 10:34:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727063AbgIYIeE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 04:34:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726990AbgIYIeE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 04:34:04 -0400
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com [IPv6:2a00:1450:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A2B1C0613CE
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 01:34:04 -0700 (PDT)
Received: by mail-ed1-x542.google.com with SMTP id e22so1636981edq.6
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 01:34:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=7Y5TSXMeM+I6FHsW8Sxv6vh6KIjV82+JmzvMSXhbsBQ=;
        b=iv9lQmHVsbhggHeadnEWFt3ojKJkTPD0ummX0kxmflQ/84/ptQBVjjskXd46ATvLrR
         fG+M/jTwDjOr7V4oCRyfTfb6IX59+Siehi6zJ50q6vmsght+RIrWvkwxrlCkGfU+wk6l
         noOsgyeyWhiRsLK7kQ+II+3giTFammGpzO3me+6/c8L1sEK/zoXajoE9ysdHXfKkwMr1
         yn8ByuLk49RSbf1osWeSxthZ8io3wT635Q+X3TLFrQgvFZ0ASZXqMowC0pESfz9ioEWl
         aJpAKvhuay7BZfaTZgXWK9vJf205B5AKt7glh1k7t39IjKrsANlkTioK1T1tc/YdyER7
         4hbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7Y5TSXMeM+I6FHsW8Sxv6vh6KIjV82+JmzvMSXhbsBQ=;
        b=h8L8hQMCkWAKPtQOlYhRt1Lu4bNLGgBZPVfdXL+Abg4FGcHED8mMCQBg6wdjVxdzDp
         RlmDSoGx+iNyVZZBAwSMiljvScgH2TKwM/pFIwRpEyHmilQKtPs9xyUH9kCpp6B+Lz1A
         ut2LiQUqVeUun0AGxxFTKAgnvd7zhVhpChx+r3Yb0luV8O4x1ka9NBoX+H09835FOEMh
         o3lFkdElsadh9UgEs5QUWyzROni0ptNkecKWAZbKMvl6oCd2kYgD2EhYPyWvdchXNNOf
         OfmaMzfHhyhSPdhPk24XB9crUrjRLCcnXXMiAHuDdcptZ1Y8UhJ38nWRWaC+D1NPnFtq
         YOpg==
X-Gm-Message-State: AOAM532izsmkoE6eadjUQAXedb1e1zKYCxqrGh+G0Bi1c+RDxuSxe7Ju
        Fjy+0mTqZ31+R4gwIZm8bCg=
X-Google-Smtp-Source: ABdhPJwuay4leyyphnpSy+91YvcFbDGB4M46qzV3F5nPNNzb8oz4OGCxPa7eBuznypTM+kG+6yoh8A==
X-Received: by 2002:a50:f1cf:: with SMTP id y15mr125677edl.204.1601022842936;
        Fri, 25 Sep 2020 01:34:02 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id 40sm1298119edr.67.2020.09.25.01.34.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 01:34:02 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 08/10] seccomp.2: Remove unneeded cast
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200925073140.173394-1-colomar.6.4.3@gmail.com>
 <20200925073140.173394-9-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <32c00e41-4b1c-a7f8-d3d3-790014b7f4b5@gmail.com>
Date:   Fri, 25 Sep 2020 10:34:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200925073140.173394-9-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/25/20 9:31 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man2/seccomp.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/seccomp.2 b/man2/seccomp.2
> index 58033da1c..d6b856c32 100644
> --- a/man2/seccomp.2
> +++ b/man2/seccomp.2
> @@ -1101,7 +1101,7 @@ install_filter(int syscall_nr, int t_arch, int f_errno)
>      };
>  
>      struct sock_fprog prog = {
> -        .len = (unsigned short) (sizeof(filter) / sizeof(filter[0])),
> +        .len = sizeof(filter) / sizeof(filter[0]),
>          .filter = filter,
>      };

I have a small doubt about this change. With the change,
there are no compilation warnings.

But, if we change the code to something slightly different:

[[
    size_t x = (sizeof(filter) / sizeof(filter[0]));
    struct sock_fprog prog = {
        .len = x,
        .filter = filter,
    };
]]

The "cc -Wconversion" gives us the following warning:

    warning: conversion from ‘size_t’ {aka ‘long unsigned int’}
    to ‘short unsigned int’ may change value

Presumably we don't get a warning for an assignment of the form

    .len = (sizeof(filter) / sizeof(filter[0]))

because the compiler is smart enough to work out that the
value of the constant expression is within the range of
"unsigned short".

Your thoughts?

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
