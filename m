Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B12E25D367
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 10:20:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729582AbgIDIUN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 04:20:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728118AbgIDIUM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 04:20:12 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DB3DC061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 01:20:12 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id e17so5250702wme.0
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 01:20:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=uC3zJWS4KBSLbdgZfGcDHYbYLOj4wurFhRtW5600Mz0=;
        b=kf66LjBVQXo15ipOmKHs9xMGIyJlemvSVf8TRV4adWPW+bNDHcpozC1VJnBBLp+y9G
         jF24c6IUG0oCY1IWpDjK0PMYLugwrwAPegftclJxHblzugLAV+1hyIApP24O2V33vQZB
         G9mYURpBg+8gM2qN5A/ZIFfqpAcGLg4IBsQwnnJh8HoxZiOKRpg/wYTLGdbSzTk+O37y
         7sLLEascyo0nyKYs5phTx3EvA+q6EugVdFpcKFjj6i3mmCIztiNSBq3620jALnd7j5pQ
         cpDZtbCbEYnhkuYrPoYyTJZzx77uvae6beC7SKL60dpVeFx2WAQxJqS/vgql+EYG+PUS
         v/LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=uC3zJWS4KBSLbdgZfGcDHYbYLOj4wurFhRtW5600Mz0=;
        b=B3RoBHq1r3mRCFNwM5u7cnih6i81U7vwcr9IFg5+xohhrGJSkWTZXuTiERGMophNVh
         1bhiYo0P9PBZqFTC0wYs2irZG2iV6AJJZ3MzEcwUX78C+9tqlW7lMtLI3VV6JnugAUei
         5GGVCqdPwbUWQBBpuWm6eBLZdhjrCxYePrjIQm01VkAbzdLjYrZpjBWq5jvs9NLHH1ju
         SMbJtQn0Ycds3Z9LWWpaYInHnHEBFtimBHjDMfTVZvK7SSycFRA/VSfVSbU/RKOGEkPy
         Fb+bCKQR5AfIve3rFwhHkPPzI8LUbUXb3cGVc8yowt1JpDcwkzblqgKv6wk/U2b31SAE
         oJTw==
X-Gm-Message-State: AOAM532eUE9LGAgvJYqJgnUU3OlBqE+yJi4i21iRLuor+7JFQ9BMrLD1
        O+xR6wbUUZmb2zBnQX8x57XWirqyMvU=
X-Google-Smtp-Source: ABdhPJyl1YNuc4v1WkzD3sP33j1QzzBQGobOLkV8OattbjSMpJ38l4Xeay5BTeC+yecpbIvZLpKNlg==
X-Received: by 2002:a05:600c:2159:: with SMTP id v25mr6823216wml.180.1599207609792;
        Fri, 04 Sep 2020 01:20:09 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id s17sm10153993wrr.40.2020.09.04.01.20.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 01:20:08 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH] memusage.1: Use sizeof consistently
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
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <462b75ca-bef8-063d-b6ec-d1c845fb1580@gmail.com>
Date:   Fri, 4 Sep 2020 10:20:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <876dcc97-8151-7160-5eda-19307f0483c1@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/3/20 12:23 PM, Alejandro Colomar wrote:
> Hi Michael,
> 
> Continuing with the series, this is the first of the last set of
> patches: (2).1 as numbered in previous emails.


I must admit that I don't care too much either way on this.
That is to say, I'm not sure one way is any clearer than
the other. However, I have applied the patch.

In passing, I note that there is a clarity issue that I do
find more significant though: the repeated calculations in
the malloc() and printf() calls. So I changed that:
https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=15fc4aab1f22c2d4f62ab7f74bbb844942708633

Thanks,

Michael

> ------------------------------------------------------------------------
>>From ad5f958ed68079791d6e35f9d70ca5ec2a72c43b Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 12:11:18 +0200
> Subject: [PATCH] memusage.1: Use sizeof consistently
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
> ---
>  man1/memusage.1 | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/man1/memusage.1 b/man1/memusage.1
> index fa1987c79..a03468442 100644
> --- a/man1/memusage.1
> +++ b/man1/memusage.1
> @@ -247,8 +247,8 @@ main(int argc, char *argv[])
>       int i, j;
>       int *p;
> 
> -     printf("malloc: %zd\en", sizeof(int) * 100);
> -     p = malloc(sizeof(int) * 100);
> +     printf("malloc: %zd\en", sizeof(*p) * 100);
> +     p = malloc(sizeof(*p) * 100);
> 
>       for (i = 0; i < CYCLES; i++) {
>           if (i < CYCLES / 2)
> @@ -256,11 +256,11 @@ main(int argc, char *argv[])
>           else
>               j--;
> 
> -         printf("realloc: %zd\en", sizeof(int) * (j * 50 + 110));
> -         p = realloc(p, sizeof(int) * (j * 50 + 100));
> +         printf("realloc: %zd\en", sizeof(*p) * (j * 50 + 110));
> +         p = realloc(p, sizeof(*p) * (j * 50 + 100));
> 
> -         printf("realloc: %zd\en", sizeof(int) * ((j+1) * 150 + 110));
> -         p = realloc(p, sizeof(int) * ((j + 1) * 150 + 110));
> +         printf("realloc: %zd\en", sizeof(*p) * ((j+1) * 150 + 110));
> +         p = realloc(p, sizeof(*p) * ((j + 1) * 150 + 110));
>       }
> 
>       free(p);
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
