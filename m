Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 775E8354E63
	for <lists+linux-man@lfdr.de>; Tue,  6 Apr 2021 10:19:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233251AbhDFITQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Apr 2021 04:19:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232355AbhDFITP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Apr 2021 04:19:15 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E9C3C06174A
        for <linux-man@vger.kernel.org>; Tue,  6 Apr 2021 01:19:06 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id w203-20020a1c49d40000b029010c706d0642so608966wma.0
        for <linux-man@vger.kernel.org>; Tue, 06 Apr 2021 01:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=G2hG7r4jVUJ9TMnRYmqslAmHqCT5tPqgaOV0ALR76J4=;
        b=fdY43MeI9Y2Ye4HD+I/7g4mEjH+D+cdf6kTCx0EWzl0J8q//yo8Qg2Dhw2T3E2bugW
         hG/QRK+XYgToUX/O77s2GMCSxhDw8JiDCBdWlN7yC6t3UY91pOCmYQwN6g/CEcUwV/Vn
         T2XgCnJsd141sm0mT1/SV3VgV2U5HgFAiQ0zkb5ktVghKY/ixYTcrxELezBuzUWhzZDI
         ApMX9d94cSHq0kjn/17mkT3N8Y6uAMI7obqY0nTrdI48wJuOst8QSDCG/mLKc02/rn83
         f6vosea8L37ZXugyjeifkvvqqE0tkWQMVtB1fbgda9ehZSqx9QnJcuI2uOIT8EULk6xS
         JzsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=G2hG7r4jVUJ9TMnRYmqslAmHqCT5tPqgaOV0ALR76J4=;
        b=j95JuyW431ldFQkHFJTyVX7Ed5bjx9Ohd9aO1BwQf2+uJH/PY0JEXhg8hYE9ESCEhc
         AndA6kZoZZ4Z03kz69zGE8nkWm3akcZmd35B68b0+x92qcwNdy4PXlS5LYwn30efI2k9
         OqTToEplsR85ZsqGIKKF0yuB+0PBva+VHLVCq+i09CeeSy77+eyQP289v2ONfxXYL5Iv
         hfstcEjeVZKgaYL7KdhkPu2DyNJaL5my19XYKgWeKeCHxJT7klpTZ9ibFoXdKByZ3P+Q
         3Sve2ZXq5HtNxfERLEd64ZRGpEQU7vnqTdx8VGSriCOMadJ0TOjvO6Or2agvsgym/yVl
         Fx0g==
X-Gm-Message-State: AOAM532fD+HsPF88fQ+wNhyQZOAGAlhzfUUDWaLc3BfBwP1CEJvwcFJF
        WY7C9sOXqe/JSwsl1cy5AwGjjeZKZbc=
X-Google-Smtp-Source: ABdhPJzM6M4kS3nUcihyaN8kiU21IdfhjoGbDr4Vo3tAhFfwuXllDISWQUh+8Rh6WP2TXKEZk/e3Hw==
X-Received: by 2002:a7b:c316:: with SMTP id k22mr2920532wmj.176.1617697145242;
        Tue, 06 Apr 2021 01:19:05 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id n4sm1857849wmq.40.2021.04.06.01.19.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 01:19:04 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Re: [PATCH] vsock.7: ioctls are on /dev/vsock, not sockets
To:     Alyssa Ross <hi@alyssa.is>, linux-man@vger.kernel.org
References: <20210324140503.27580-1-hi@alyssa.is> <87zgyr6gjm.fsf@alyssa.is>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <be5a217f-1d30-4023-3d6b-24d0bb3e9bfa@gmail.com>
Date:   Tue, 6 Apr 2021 10:19:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <87zgyr6gjm.fsf@alyssa.is>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alyssa,

On 3/25/21 4:47 AM, Alyssa Ross wrote:
> Alyssa Ross <hi@alyssa.is> writes:
> 
>> ---
>> When I discovered /dev/vsock, I had a look for a vsock(4), but there's
>> no such page.  I suppose there isn't really anything to document there
>> that isn't already covered there.
>>
>>  man7/vsock.7 | 5 ++++-
>>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> Signed-off-by: Alyssa Ross <hi@alyssa.is>
> 
> Just realised I forgot. :)

Thanks. Patch applied.

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
