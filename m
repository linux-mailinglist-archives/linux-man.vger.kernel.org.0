Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EBAEE459394
	for <lists+linux-man@lfdr.de>; Mon, 22 Nov 2021 18:02:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234584AbhKVRF7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Nov 2021 12:05:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234435AbhKVRF7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Nov 2021 12:05:59 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A02A0C061574
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 09:02:52 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id r8so33892514wra.7
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 09:02:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=/bS1B5QJ+5GEZJsLpPGNssvxRBXX9zxgECIYI3uSw2g=;
        b=l9tzOHbkgJgOX6xiTxbalFmjhwOHvJJkzGqkPD4gSXmNdNxWun71oiUAQ/QFV+JMYe
         uCkxnNU82yvnyC02Vn2aap7JDXJe6x2bDt/KWBcffqhvYhE6dpOg678w8/ZQsOvMXJ4I
         0sKIsuM3nFPNHDuD7qXiD5AKpX2JYkmT/0VcR9r2JOZruPvJBYmq+gNVhZt7GfmfMFyq
         e4yH/r1vbfxXXH2fn5IVpPpImCa9MQR2ySVjTtxgmd8C6rjalF8dAxWduuSqkmHWG8RG
         oc9scdlehq88dHF/3H55MPkZ80efXCJZUDqoCwLQMmlgcyJm9ASB983ZtPNxCcq+gI0D
         ErOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=/bS1B5QJ+5GEZJsLpPGNssvxRBXX9zxgECIYI3uSw2g=;
        b=M2EfXNPExGmHpqTgRktDJuVX2ut4C3EeU+JdvJIP3iYFFN1dNr1jUgqBY8wqDSoj83
         w/2pJDP+xTHTMFMUTPvaAT+mOlwZZenzeCQyyOQ8w7Ke4vM06XLxRn6xyWurLBxQLX0X
         Xn40ys51fDU3giOGMZV8Tu6ZYz+JTLUqAESFmz8FVPFz54pnIaPnuvWN8VHxxl+zM2LM
         W+q8fzB1e0OgMO/kkgYNQTLfuOZrdXum5Wk9SX+Q1L6ZLLtOrsBUDMtaCvHepTQiURnR
         TBH+b309acyrSGcouyeX5G0YKsagzAbnDWY9MhjWIqzzM9y7df1pS+ftcqZ+M2aAvWTQ
         0Dzg==
X-Gm-Message-State: AOAM5332XYqPIm2eSEDNY4Cfr6CR2W3I6TGCX48zc2NZ6D9S8PeLi66B
        IFK3eNgtV+Th5o3s8QduZZ8=
X-Google-Smtp-Source: ABdhPJxvWAcUQYzRnZ1K9sxC4j7TFmIMuiWKMyrvHZ1CJ0e4noMdJJbzJDBotMnhbh4YhIL+Nj1jAg==
X-Received: by 2002:a5d:4ed1:: with SMTP id s17mr39702202wrv.310.1637600571266;
        Mon, 22 Nov 2021 09:02:51 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h13sm9603037wrx.82.2021.11.22.09.02.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Nov 2021 09:02:50 -0800 (PST)
Message-ID: <48e15fa1-bdcf-a21f-1aa1-5c5168c67422@gmail.com>
Date:   Mon, 22 Nov 2021 18:02:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH] pthread_atfork.3: wfix.
Content-Language: en-US
To:     enh <enh@google.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Florian Weimer <fweimer@redhat.com>
References: <CAJgzZoqZ1yfFtP0Zbc+i5aGS1bn6VJu2dHaa9CJhJr2P7QfSiQ@mail.gmail.com>
 <874k8k8m5s.fsf@oldenburg.str.redhat.com>
 <9dcab95b-ec77-b82b-22cf-ce082af033fb@gmail.com>
 <CAJgzZoovvrPuvL43bbj39QvH3KLO7ZO800j76T=bea+iHrvqBQ@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <CAJgzZoovvrPuvL43bbj39QvH3KLO7ZO800j76T=bea+iHrvqBQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Elliot,

On 11/11/21 23:42, enh wrote:
> done; sorry, i didn't realize Signed-off-by was for the original author too!
> 
> Florian's comment made me read through the *whole* page now, so i've
> fixed a few more places that seemed a bit confusing too. v2 inlined
> here...
> 
>  From 92f3e61c8d61045448e6e94b9fb59817a5e07748 Mon Sep 17 00:00:00 2001
> From: Elliott Hughes <enh@google.com>
> Date: Tue, 9 Nov 2021 14:20:32 -0800
> Subject: [PATCH] pthread_atfork.3: wfix.
> 
> Clarify that the pthread_atfork() callback list is a global, not
> per-thread.
> 
> The use of "this thread" implied to some readers that pthread_atfork()
> maintained per-thread lists of callbacks. Given that the next sentence
> already explains that the callbacks are run in the context of the thread
> that calls fork(), I actually think it would be fine not to mention
> threads at all in the earlier sentence, but for now I've gone with what
> I think was intended to be written.
> 
> This patch also attempts to clarify other references to "thread",
> and fixes a trivial typo "form" instead of "fork".
> 
> Signed-off-by: Elliott Hughes <enh@google.com>

Patch applied!

Thanks,
Alex

> ---
>   man3/pthread_atfork.3 | 12 ++++++------
>   1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/man3/pthread_atfork.3 b/man3/pthread_atfork.3
> index b727cb48e..12a1492b6 100644
> --- a/man3/pthread_atfork.3
> +++ b/man3/pthread_atfork.3
> @@ -39,14 +39,14 @@ The
>   .BR pthread_atfork ()
>   function registers fork handlers that are to be executed when
>   .BR fork (2)
> -is called by this thread.
> +is called by any thread in a process.
>   The handlers are executed in the context of the thread that calls
>   .BR fork (2).
>   .PP
>   Three kinds of handler can be registered:
>   .IP * 3
>   .IR prepare
> -specifies a handler that is executed before
> +specifies a handler that is executed in the parent process before
>   .BR fork (2)
>   processing starts.
>   .IP *
> @@ -70,8 +70,8 @@ On success,
>   returns zero.
>   On error, it returns an error number.
>   .BR pthread_atfork ()
> -may be called multiple times by a thread,
> -to register multiple handlers for each phase.
> +may be called multiple times by a process
> +to register additional handlers.
>   The handlers for each phase are called in a specified order: the
>   .I prepare
>   handlers are called in reverse order of registration; the
> @@ -82,7 +82,7 @@ handlers are called in the order of registration.
>   .SH ERRORS
>   .TP
>   .B ENOMEM
> -Could not allocate memory to record the form handler entry.
> +Could not allocate memory to record the fork handler list entry.
>   .SH CONFORMING TO
>   POSIX.1-2001, POSIX.1-2008.
>   .SH NOTES
> @@ -92,7 +92,7 @@ is called in a multithreaded process,
>   only the calling thread is duplicated in the child process.
>   The original intention of
>   .BR pthread_atfork ()
> -was to allow the calling thread to be returned to a consistent state.
> +was to allow the child process to be returned to a consistent state.
>   For example, at the time of the call to
>   .BR fork (2),
>   other threads may have locked mutexes that are visible in the
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
