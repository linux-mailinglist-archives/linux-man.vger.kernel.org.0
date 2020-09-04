Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4E67F25D88D
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 14:24:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730113AbgIDMYX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 08:24:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730006AbgIDMYW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 08:24:22 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EACDC061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 05:24:19 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id u18so5893835wmc.3
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 05:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=R2QIWgmVuY0ONJfsJ68tiYtUyij36SjQ+MT86hUzpC4=;
        b=J3dREObd/cz/4aDW/pi7aRG5f9MFTZ5Z9laINzD/9WDqWS+FwWiayAzx8FVYBtK8zP
         dA8vfrCv5krJ50h9G6y59OZCSiDWtZpPvxqDDSRv/c2TV3tjgPWtrWPn9j6jM2t+wwdL
         1KmpuCj3UTnnmSi2ZcMJiAcnoBBpIQwXqzjRp+SJ8dmfm43ZUbWi4gA+YlBmHND+dsXl
         2pZlnJhOVklphgo5Z5ZladlbCbzF9sVnlaE3RFWtNMGismEQ3noKcxEk2yIZ+0ZRiS6o
         BF+8sPn2aCW6zaIIsovE4KtNsWzoKJrx9WFN2ddh85qPbKJtRGRbTKQjaSKQlUfYH1Q8
         gL0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=R2QIWgmVuY0ONJfsJ68tiYtUyij36SjQ+MT86hUzpC4=;
        b=pHIA20n5Vl3F43/pAf0B/ScEP66PpDEbZIcjs8s/is+DOkIQ8x6BJ1wGh8cUAjPmI8
         jDNqvufhjWXk5ar83SWTa9G4GZE3J+Hp27jKj3lY9qlCNC+frz1UInIuR0fKUeXbg40G
         RY0dCqjaPcUsatGDX3VFaWZkKDYiaKfN7oR9juvms89l5r5uIa9XcMiFpq3EUi05GOi4
         xfD2GSzKI0wGnnrvJgaDiCQe4/JVX/jAVb6PvIJGsnkn+wKo8bli0jUvFHLtYM/CzIqx
         mDU9ew97RjctEtlTWf38MHSQFT2kQv0IxXc2IvLL6eSesETzwvn8lGSQVZMoZmaUzDGL
         TzMg==
X-Gm-Message-State: AOAM5325HwnP1nm1+GUezrIR4mhmt5IIOFBusUxwAGJIJcbLMNW39pRT
        rF76s5vo0PuUWbB/mH50lo4=
X-Google-Smtp-Source: ABdhPJyh80gb7OuE1uSMlAXwrtJAqPAYb87FYBrZnBIEuDUAHWUeq7EmO9tQutwTKD3QacbsMcApcw==
X-Received: by 2002:a7b:c4d9:: with SMTP id g25mr7259939wmk.15.1599222258348;
        Fri, 04 Sep 2020 05:24:18 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id r15sm10845704wmn.24.2020.09.04.05.24.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 05:24:17 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 06/34] perf_event_open.2: Use sizeof consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <e1b424c2-77c1-e995-a866-67a122d7bb07@gmail.com>
 <20200825111924.gwf3ck4bdq42lrzr@jwilk.net>
 <d084b7eb-a691-52e8-4996-5080af0175de@gmail.com>
 <CAKgNAki_wyf7dCShjpAaRLUeuL=+EFZYeVp0fY-EKHyOBW2hRw@mail.gmail.com>
 <d72263bb-7c84-3f33-ee44-a2cac2e2662c@gmail.com>
 <806999b7-8947-d350-2125-f04b69846f37@gmail.com>
 <d3537144-e4da-8359-bc08-4eaf8c7bd059@gmail.com>
 <9fcc512e-a12c-5b28-126f-aaf1854ed290@gmail.com>
 <2b288808-c840-343f-9e56-8097765e5528@gmail.com>
 <876dcc97-8151-7160-5eda-19307f0483c1@gmail.com>
 <462b75ca-bef8-063d-b6ec-d1c845fb1580@gmail.com>
 <d38d3644-698c-41e4-4d6a-5d999c0a3fdd@gmail.com>
 <26629635-bf4c-1279-314d-db92f11adbb7@gmail.com>
 <d38b1e35-2471-09a1-ad49-4509a30fd14a@gmail.com>
 <edf9e2a1-0612-437d-9fbf-e255e0d1df97@gmail.com>
 <c2636c53-e81c-881a-2938-08871e1b176c@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f07b62e0-5853-fa9b-d5f5-95d608520fe7@gmail.com>
Date:   Fri, 4 Sep 2020 14:24:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <c2636c53-e81c-881a-2938-08871e1b176c@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/4/20 12:56 PM, Alejandro Colomar wrote:
>>From dbb7b520bd4314488122835c87f45b685ce45b28 Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 21:29:02 +0200
> Subject: [PATCH 06/34] perf_event_open.2: Use sizeof consistently
> 
> Use ``sizeof`` consistently through all the examples in the following
> way:
> 
> - Use the name of the variable instead of its type as argument for
>   ``sizeof``.
> 
> 	Rationale:
> 	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory


Patch applied.

Cheers,

Michael

> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man2/perf_event_open.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
> index 2492fc75a..ea5ee725f 100644
> --- a/man2/perf_event_open.2
> +++ b/man2/perf_event_open.2
> @@ -3419,9 +3419,9 @@ main(int argc, char **argv)
>      long long count;
>      int fd;
> 
> -    memset(&pe, 0, sizeof(struct perf_event_attr));
> +    memset(&pe, 0, sizeof(pe));
>      pe.type = PERF_TYPE_HARDWARE;
> -    pe.size = sizeof(struct perf_event_attr);
> +    pe.size = sizeof(pe);
>      pe.config = PERF_COUNT_HW_INSTRUCTIONS;
>      pe.disabled = 1;
>      pe.exclude_kernel = 1;
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
