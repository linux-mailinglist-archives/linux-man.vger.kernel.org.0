Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A263531AFAA
	for <lists+linux-man@lfdr.de>; Sun, 14 Feb 2021 08:56:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229563AbhBNH4j (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 14 Feb 2021 02:56:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229827AbhBNH4J (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 14 Feb 2021 02:56:09 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50274C06178C
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 23:55:29 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id w4so3488047wmi.4
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 23:55:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=sy2/647/LCD8ZhmZ3cv1TijS2iv3zE2xq/W+asVTX2c=;
        b=kNOS4SYsY/ISW8DOqzXs9oHJ0S6Cfzwk5Mz1S9lIUu24f/DyHBwKEsK557lyleXAQg
         IbBNxFpixo8Hx+p92L9xtXtkHQTY+ylj1MJ1n0TvXmdOLo0AwqBuuWRJSXn7QxcwnWxP
         DSPzsDh3qnCPxDzuvEGihfUUU99MNAEpv6Q/5uzeeS8h5i7RXv7KZrkuXZ8Fme9N01S3
         nDoO7m8i/bPmIWe7M+ny2OI+WiQU25DErNK4B+fuDYLlsLNLn9rT1EoGj026RYQHZV4B
         OiKqjxUn5U4BOfYasQxabJQ+uZuakuVYXGmNWJoKc/D1aSth4+OY8UTNtVJIWUWWwjNV
         bMhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=sy2/647/LCD8ZhmZ3cv1TijS2iv3zE2xq/W+asVTX2c=;
        b=Eow1Ur7npAVPNeGCpGLXBOCtl7sskM7z1EL6VL+TsYJ9VSXjN/Fr/j99dJX4vKMIji
         E+mFznd//cdTS8tuVu2y0eJcNWSK3QyEmSwRFyio0ZZWuVz3+pY237ojNtsXL6TkaXqR
         /PbHP7pzy1/KIrZrerO7yp7/f7HTVrSk2SBSafZJjqk2Hnx0EY42Hp/YJIx1wAxz8fe9
         1dt5CkMZw1UfLlsFN0kLnRoRYOxdSUc8yh9O4k9yk5lrQTsciFOtLj8FkcOvsOawDkG6
         G7HqL/YT2dCwWdcTpDvoNl9J4tS63LbtS8WL/ns4lyOCL0Qfd36Vw+xv9BIeGocngd26
         MAfw==
X-Gm-Message-State: AOAM530DklSPW5d1xc+kupIc6P/dNNyZXy8k731NOOuxRHEopHNuDI2/
        Rp5vgzZfU4z5uOaBgZIP4rQ=
X-Google-Smtp-Source: ABdhPJzKiWJ4WyNcZLjAkMHuBo5N6Zc2kzPpiagcHVt2a8s9N/1Jg4tVnU+tx8TN5tFksBr0Es3e5Q==
X-Received: by 2002:a1c:8096:: with SMTP id b144mr9546377wmd.169.1613289328081;
        Sat, 13 Feb 2021 23:55:28 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id 11sm18738827wmo.46.2021.02.13.23.55.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Feb 2021 23:55:27 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: Re: [PATCH 00/14] man2: SYNOPSIS: Use 'restrict' in prototypes
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210213231024.440020-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e553ad4d-73f9-5554-9f1c-92453a885ee0@gmail.com>
Date:   Sun, 14 Feb 2021 08:55:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210213231024.440020-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/14/21 12:10 AM, Alejandro Colomar wrote:
> Hi Michael
> 
> This patch set fixes man2 to add 'restrict' to the functions that use it.

Nice work! I've applied all of these patches.

Cheers,

Michael

> ---
> Alejandro Colomar (14):
>   accept.2: SYNOPSIS: Use 'restrict' in prototypes
>   getpeername.2: SYNOPSIS: Use 'restrict' in prototypes
>   getsockopt.2: SYNOPSIS: Use 'restrict' in prototypes
>   readlink.2: SYNOPSIS: Use 'restrict' in prototypes
>   recv.2: SYNOPSIS: Use 'restrict' in prototypes
>   select.2: SYNOPSIS: Use 'restrict' in prototypes
>   sigaction.2: SYNOPSIS: Use 'restrict' in prototypes
>   sigaltstack.2: SYNOPSIS: Use 'restrict' in prototypes
>   sigprocmask.2: SYNOPSIS: Use 'restrict' in prototypes
>   sigwaitinfo.2: SYNOPSIS: Use 'restrict' in prototypes
>   statx.2: SYNOPSIS: Use 'restrict' in prototypes
>   stat.2: SYNOPSIS: Use 'restrict' in prototypes
>   timer_create.2: SYNOPSIS: Use 'restrict' in prototypes
>   timer_settime.2: SYNOPSIS: Use 'restrict' in prototypes
> 
>  man2/accept.2        |  7 ++++---
>  man2/getpeername.2   |  4 ++--
>  man2/getsockopt.2    |  2 +-
>  man2/readlink.2      |  8 ++++----
>  man2/recv.2          |  6 ++++--
>  man2/select.2        | 12 +++++++-----
>  man2/sigaction.2     |  4 ++--
>  man2/sigaltstack.2   |  3 ++-
>  man2/sigprocmask.2   |  3 ++-
>  man2/sigwaitinfo.2   |  8 +++++---
>  man2/stat.2          | 11 ++++++-----
>  man2/statx.2         |  4 ++--
>  man2/timer_create.2  |  4 ++--
>  man2/timer_settime.2 |  4 ++--
>  14 files changed, 45 insertions(+), 35 deletions(-)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
