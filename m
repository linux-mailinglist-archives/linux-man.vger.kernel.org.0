Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EFEAC67C40
	for <lists+linux-man@lfdr.de>; Sun, 14 Jul 2019 00:21:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727983AbfGMWVc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Jul 2019 18:21:32 -0400
Received: from mail-pl1-f193.google.com ([209.85.214.193]:34909 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727978AbfGMWVb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Jul 2019 18:21:31 -0400
Received: by mail-pl1-f193.google.com with SMTP id w24so6467636plp.2
        for <linux-man@vger.kernel.org>; Sat, 13 Jul 2019 15:21:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=OkzgR29QIPiDNPiam9bZBe62r3ccGKV/koxGUP8/4zI=;
        b=WYA3OaUJhh891UdV7OEKqCh3/W7ajMNOnjH3XqjlbKOb0IKiYdo0CUEJl136AKJKYk
         d6572l9pfSLtAiwyxj853Qqf0ymILGVYMZiTzGvEsd+DnMXDthcaht9GF5TdqhQU0oLt
         J3+cmTvF/QaF5yTEMSXMeGFLDdo1CV1kwzhag7Q7rfLchilC6K1FZRNMx5ZAaMFlb2a4
         zjmTm2zmDW2GOlUKALn59H7iRk47pHMJ+/gguRw4ey8o4jycdMtgWbJbzTEpUuz0ODV7
         UAxatFX+CAX5WNWf+QrdkU7f/vSy5TVg3E4DuAF3RWnAQqf0gGWtxKnMxRZNxX2TH1Zm
         ViWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=OkzgR29QIPiDNPiam9bZBe62r3ccGKV/koxGUP8/4zI=;
        b=AKN6xwooVOa1ufZ5B0ZlbBuFQb08u96SDX9GfFoNKJAnDboQF8gBhw8RZdQ4VQbOge
         1AML2O5aTM/ZASHRSlE3w4pyftqlKl6Pdf8NKYa4FNwzpwmYnJpDMQ1UqdoU+gnVwzaV
         LfSXOtxz4I76gCiqmwwrYxR0vqx7FBm7hYkb8EF5aCWvZAqBPAZhliuD4veCPN31x4fR
         qma9qz2kFi4HoEeAvjAXRiOXrQMqNBWdGevH3DIx6v2ys5vgvNzzhxSsaCmz3q0OIw2j
         9ADmUufT9dM7Fss30ya3l4geCfq6beP5PhITtxXts0ikiQG+SbCgxltqgBDmDrHJ3Kao
         0QSg==
X-Gm-Message-State: APjAAAV5k0VNOhya0wcqXReZk2NDegPU9U4UtIuKRfmDfHOo/HfIjBmh
        xE0q3QB67rCKYoqLVX5r8RI=
X-Google-Smtp-Source: APXvYqzyfl8H7SSA9HbzmZPcHyzOs1e+uGKGCW9BWntASGmqRrfEI/F4AnyJb7AxvZiuCpyiS3QSQw==
X-Received: by 2002:a17:902:8d97:: with SMTP id v23mr19238888plo.157.1563056490913;
        Sat, 13 Jul 2019 15:21:30 -0700 (PDT)
Received: from ?IPv6:2605:e000:1313:4b3e::90f? ([2605:e000:1313:4b3e::90f])
        by smtp.gmail.com with ESMTPSA id 64sm12902995pfe.128.2019.07.13.15.21.29
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Jul 2019 15:21:29 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Oleg Nesterov <oleg@redhat.com>,
        Lennart Poettering <lennart@poettering.net>
Subject: Re: [PATCH] signal.7: clarify that siginfo_t isn't changed on
 coalescing
To:     Michal Sekletar <msekleta@redhat.com>
References: <20190711125324.4740-1-msekleta@redhat.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7a9b8ed3-b012-6138-ae15-b8c9e3bc1a4f@gmail.com>
Date:   Sat, 13 Jul 2019 15:21:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190711125324.4740-1-msekleta@redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael and Oleg,

On 7/11/19 6:53 AM, Michal Sekletar wrote:
> Cc: Oleg Nesterov <oleg@redhat.com>
> Cc: Lennart Poettering <lennart@poettering.net>
 >
> Signed-off-by: Michal Sekletar <msekleta@redhat.com>
> ---
>   man7/signal.7 | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/man7/signal.7 b/man7/signal.7
> index 0501fefc5..14c846699 100644
> --- a/man7/signal.7
> +++ b/man7/signal.7
> @@ -426,6 +426,11 @@ Real-time signals are distinguished by the following:
>   Multiple instances of real-time signals can be queued.
>   By contrast, if multiple instances of a standard signal are delivered
>   while that signal is currently blocked, then only one instance is queued.
> +Note that the
> +.I siginfo_t
> +structure associated with the signal already in queue is not overwritten
> +on arrival of subsequent instances of the same signal hence the process would
> +receive metadata associated with the first instance of the signal.
>   .IP 2. 4
>   If the signal is sent using
>   .BR sigqueue (3),

Thanks. I independently verified this also with a small test program.

Patch applied, with some some subsequent edits and relocation
of the text within the page. Thanks for sending it.

Thanks,

Michael

