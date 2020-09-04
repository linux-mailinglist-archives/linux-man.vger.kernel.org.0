Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF3AC25E08D
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 19:08:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726621AbgIDRIQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 13:08:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725966AbgIDRIM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 13:08:12 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CA9EC061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 10:08:11 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id w2so6719974wmi.1
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 10:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=2j2pnzTMA4AivpxkIC5wKEG8sSRUyML4gypZ5ze1rJ0=;
        b=eUH+PXu79jFjl5U8NalmYOMN4vLYaAg/K374ndReOeeEDLshK4q0aU98LZduLX+MdA
         bnWntZ3c8HOhPNp3jFAeT+UPBIfjZ6pAekojzAUmaPqqzIO39xm4lO6GKsroZZWDkGwu
         8FNVjGxFjczTbdqLcLE96RuzpPqI/S+KEBfK2XztGwzjaeDYbTkETE1DVTVim4oCxxbw
         L6H40uoScbhyxXNYEYu1VXYeWf9awg85XfTxf18xJaGEmCX8N2MRwzWIGwa0cR/pZ2RH
         ZFoaOdZdL9J07kSRVWKceKRxQ8ERhR/H3KdibVJ1nrHhIbBATCmqhfqNCg95UumiLf2E
         3lGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=2j2pnzTMA4AivpxkIC5wKEG8sSRUyML4gypZ5ze1rJ0=;
        b=ka43SUmIbpRJY3kWtql+4dRBW3xs4f8P1nUx+VChoF1bFCW3S+6fHD68h3ilIsVu0/
         3Je44B8/RFEXliDbua1wD0C89ytyHJfzE4/Q+o8UZLAUVErWy3piQ4zxBfGMHqjSbIeZ
         KYgM+82qGnkpW4xEGmXVJSMCvswJHKdri+bYQV5mKeKwJ88Cat18ic0dwDrQw1EBfZMV
         HeoWpo21IhNaQ2TC2vpFsJkfCrtap6gDiiUP1/Gy/0k5vDei566S+eZ4bg7fZx/Dihy5
         N6ATZFiDMtRFk5pOi+RcjxAJVvS0CWqzWYudThkjAEKoD/aSoWeWUweqEA+VNF3Pgs73
         uruQ==
X-Gm-Message-State: AOAM531/VfaPGtWP9u6HPps0SAUT+0D+R0Q16dRinyH8mXh0B9bi+6Cv
        o9Gwmaz4VkwsMgvM9yVMnhc=
X-Google-Smtp-Source: ABdhPJzo0m6QnqOSItGE07wuv1GEioU6uEUXQmuEiEOv1CaBTN/X3drwU2jg3BfPFy6346VV9U/h3w==
X-Received: by 2002:a1c:f402:: with SMTP id z2mr8232847wma.87.1599239290213;
        Fri, 04 Sep 2020 10:08:10 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id y1sm13154989wru.87.2020.09.04.10.08.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 10:08:09 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 32/34] inotify.7: Use sizeof consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <da654939-dcc2-e1f8-65d9-a873325d4609@gmail.com>
 <aec8bb20-6693-f876-0e2e-5574bd3b7af6@gmail.com>
 <8458b842-7d4b-f19b-c596-7f529dd48ba6@gmail.com>
 <497bc4f4-31f5-91a5-8bc4-469e22b26502@gmail.com>
 <8160510c-4d9e-7f30-e810-648b0b58a986@gmail.com>
 <d7db8e23-8e86-10ee-f221-30d7e3bd657e@gmail.com>
 <87d5b09a-a3c8-622c-d731-5d42644a5f24@gmail.com>
 <61d2f2f9-08d0-9f1a-9642-ae56b3f4b61d@gmail.com>
 <4bb9e639-83ee-ede0-f6ad-dfc16787d358@gmail.com>
 <3c25bbda-bc90-1364-77cd-2c637f09d611@gmail.com>
 <af5bf8ce-8bb8-3819-a8e4-1454be92097f@gmail.com>
 <4f0ff40c-2a63-736d-698f-0efc436c3678@gmail.com>
 <5343bbd1-b03f-29bf-2def-c27ba3a3616e@gmail.com>
 <4eba3ee9-bb6a-810f-55ae-7f0d76d446a7@gmail.com>
 <82aa16c3-60fe-68b3-103f-6d438563f3c2@gmail.com>
 <6e6d6796-32e0-9cc1-1e6c-4abb0b702499@gmail.com>
 <718db444-6679-224e-c649-6dd219b9db3c@gmail.com>
 <36a9ef8e-6fd9-e074-2a19-d8529f425501@gmail.com>
 <95c11dfe-2be6-def9-3a7f-a8d1f540fcb9@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6b64cfac-6619-266a-ac4f-f8a34d5975d1@gmail.com>
Date:   Fri, 4 Sep 2020 19:08:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <95c11dfe-2be6-def9-3a7f-a8d1f540fcb9@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/4/20 5:06 PM, Alejandro Colomar wrote:
>>From 464c2941b936df850f03d7d9df382dc2c46f37f1 Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 21:58:59 +0200
> Subject: [PATCH 32/34] inotify.7: Use sizeof consistently
> 
> Use ``sizeof`` consistently through all the examples in the following
> way:
> 
> - Use the name of the variable instead of its type as argument for
>   ``sizeof``.
> 
> 	Rationale:
> 	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

I think this change would weaken the example. The point is that when
traversing through these variable-length structures, the length of each
structure is the size of the fixed-size component (struct inotify_event)
plus the variable-length piece. The code as it stands emphasizes that.
The patch would leave that point less clear. I won't apply this one.

Thanks,

Michael

> ---
>  man7/inotify.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/inotify.7 b/man7/inotify.7
> index 9b2d7a4e5..4093bba5a 100644
> --- a/man7/inotify.7
> +++ b/man7/inotify.7
> @@ -968,7 +968,7 @@ handle_events(int fd, int *wd, int argc, char* argv[])
>          /* Loop over all events in the buffer */
> 
>          for (ptr = buf; ptr < buf + len;
> -                ptr += sizeof(struct inotify_event) + event\->len) {
> +                ptr += sizeof(*event) + event\->len) {
> 
>              event = (const struct inotify_event *) ptr;
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
