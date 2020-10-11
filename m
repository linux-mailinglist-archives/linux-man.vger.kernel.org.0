Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1451528A5D9
	for <lists+linux-man@lfdr.de>; Sun, 11 Oct 2020 08:00:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726479AbgJKGAz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Oct 2020 02:00:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725882AbgJKGAy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Oct 2020 02:00:54 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EB04C0613CE
        for <linux-man@vger.kernel.org>; Sat, 10 Oct 2020 23:00:54 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id k18so14030182wmj.5
        for <linux-man@vger.kernel.org>; Sat, 10 Oct 2020 23:00:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=geHUwOaedoTA2UmvIL8xbg/DxDLDgQw3nrar15mSNVc=;
        b=WotfDZqy3BsEMLaAYcz2H5h/LR0iT5nBUDbXEMekk/yvCOdtla5xYBXdG9xoTmxO8C
         +jOAUBvLcXyJ7F9mGT7a+WgCP98LMRLue17z5A0yVUYealrIMvhuGghmLEZdGQK0iN0m
         4XwNDs/26GC1kHqJLEJLIbQ264vhf96Dn6Zq/vgNyRABQfqDMXwur4wGGBMKnwyfgj7v
         U84D1Vi25YhBO82m6TBllft7vn16LPUhHdex+ybHlRPWVXnMndh8W/wHNINBUrnUqoYJ
         /Xby+uYtV60Tn6eghitq3kLYORU7NJTBrfljZfFhaqPES/SWaoPo7fmGVqcpZGp7WNYY
         jcfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=geHUwOaedoTA2UmvIL8xbg/DxDLDgQw3nrar15mSNVc=;
        b=Cyfa0iTxVCihS22C8vIxCgGvTHuNWjEfFM1b/yAIE/Y3aJ6NOxseX59rsrjikmQlvx
         l4hJxd66RT0UO9+zYfbu1tuxo9g0UP2L8xKaZxUqFBNXlg19ISasEo7mmutNzhHFKPCi
         /VAze65QPd+fPt9e6mwxIHpwryYwzPlphDrGz4BYj4M9Zm/l8WVfCy54odlkLd/sMRDr
         4AtUUu00xKzHc46vpeUibp86Qtq/aD+ZQEbfozQcRYzVBz+2GaoYUYm793UOcWsYdSLx
         05yeXRpv18SKWfxs/ZhhkkCjZfsJabj2IbfRzfwRtAHjrxPQwssIi5Vo2DIG0Ethdqi+
         A9hw==
X-Gm-Message-State: AOAM531asB+++71LHoNCnOu0GxVB+81SREQrk7wQZnIGwBu0lAWJB9f5
        f+YS7BqaqNKBPmonah+2kYQ=
X-Google-Smtp-Source: ABdhPJxpJdlorSIWyDd0izk1GvaI0+y3+Kdym0ZEWcf2NKqth8PcXwXWE/aFETtVdMyGuJqwDmEX6g==
X-Received: by 2002:a1c:38c7:: with SMTP id f190mr5102894wma.47.1602396053066;
        Sat, 10 Oct 2020 23:00:53 -0700 (PDT)
Received: from [192.168.1.10] (static-176-175-73-29.ftth.abo.bbox.fr. [176.175.73.29])
        by smtp.gmail.com with ESMTPSA id z13sm18790203wro.97.2020.10.10.23.00.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Oct 2020 23:00:52 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH] queue.3: Replace incomplete example by a complete example
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201010190226.19236-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <899bb60e-368b-e7dd-9a87-715d094a8a10@gmail.com>
Date:   Sun, 11 Oct 2020 08:00:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201010190226.19236-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex:

On 10/10/20 9:02 PM, Alejandro Colomar wrote:
> I added the EXAMPLES section.
> The examples in this page are incomplete
> (you can't copy&paste&compile&run).
> I fixed the one about TAILQ first,
> and the rest should follow.
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

I have not (yet) applied this patch, because...

> ---
> 
> Hi Michael,
> 
> I think this page needs a big overhaul.

... you are probably right. (And thank you for thinking
about the big picture.)

As you are probably aware, the page was essentially
lifted from BSD, and lightly edited, and this accounts
for many oddities by comparison with other pages.

> First of all, it's a very big page,
> where it's a bit difficult to go to the subsection you want.

Agreed.

> Then, the examples are incomplete.
> And also, the language of the page is weird.

Yes, there are some rather strange pieces in the page.
Just now, I noticed statements about % code size increase, etc,
which I'm sure were not measured on Linux (and in any case, such
numbers are prone to change, and don't belong in a manual page).

> I thought about having queue.h with an overview of all the different
> data structures, and the differences about them.
> 
> And then separate pages for each data structure:
> slist.3, list.3,
> stailq.3, tailq.3,
> simpleq.3 (which right now isn't documented),
> and circleq.3
> with details about each macro and a complete example program.
> 
> Your thoughts?

The above sounds about right to me. I'd happily accept patches
to do that, if you want to work on this.

One thing I'd ask though. Unlike almost every page in
man-pages, this page uses mandoc mark-up (rather than "man").
This was a matter of the history, where at some point I
refreshed the page from BSD, and decided to retain the
mandoc markup,so that if a refresh was ever again done,
the diff would be easy to comprehend. If you do decide
to do this work, I think it would be desirable
to switch to "man" markup. Sound okay?

Replying to your other mail:

On 10/10/20 9:08 PM, Alejandro Colomar wrote:
> 
> 
> On 2020-10-10 21:02, Alejandro Colomar wrote:
>> I thought about having queue.h with an overview of all the different
> I meant queue.3 (instead of queue.h).

Okay.

> However, thinking about it,
> if we strip if from the details about all of the macros,
> it might be better as queue.7.

Let's leave it as queue.3 for the moment. If it makes 
sense, we can easily switch it later, as the final step.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
