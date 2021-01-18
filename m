Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3ABB2FA682
	for <lists+linux-man@lfdr.de>; Mon, 18 Jan 2021 17:43:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2393538AbhARQlp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Jan 2021 11:41:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2393385AbhARPYB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Jan 2021 10:24:01 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1981EC0613CF
        for <linux-man@vger.kernel.org>; Mon, 18 Jan 2021 07:22:54 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id o10so101057wmc.1
        for <linux-man@vger.kernel.org>; Mon, 18 Jan 2021 07:22:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=fQz4p//o6+FYuOzkm4ubM077DvGWsW/dtCLFP19rB1s=;
        b=NxjTGd7AIVoVLlCSq8y96g4jstoecuUw2kbG8qATAKKmmC0B73ueQVKWeZ/EKzohLI
         pn04Wr1kdbJvZAA8mIaz6NpzaFlu6m0UGabfl+f/kQEdd6cureTqVe+Opu79LGktq1UQ
         0GmNZmC83x879Qb9POsd083N0RLeE521rYQ/c6Ae48Pdc7/IBCSCp/b6gpYtdlxOEmCm
         4uTCdL3E8lXRQ8o2X7WHeE4yLM1eizv0c5RKTALkx/hc9xNbqRgEdGG4PMC+KpLGrsZY
         Ds0+f1godneDVNgBmwTj4T6bN6I2s3XAbEDBo4lGcURRQJRueTcMUszDht4rgubmWzJI
         BHig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=fQz4p//o6+FYuOzkm4ubM077DvGWsW/dtCLFP19rB1s=;
        b=EAUnB7+6V8vp8clFQ2EPLy1QLH2G86ZY7TUW9tSAYgPNpCMx5pjEQDhov8vtKi+dxI
         VQOEIw/HXsZOwqJsjuMAXGZsENQpK5ORFPSsHGGw/XCAPMkMc4r9Ud7OHTIKT8pLbE00
         XigD9AQwx+eA5P+V1M7BOwu35DRyj43jQ+ujTQWDGI2tLw+BlDCuOiB8wxWpcTAcSM5y
         hB5syw1Uf0YX3bzjskgVwii8gfZYuo/jRemKLeKkr4tS1aumj6GgnjGXqV7GrNtlzV4j
         GcXX5s5TvuUXrx1Sn/WsqEXoGofYq4ksGSogVV9Mvh7lvaHpBWXbR3jlGYx9y1upIhrP
         H3+g==
X-Gm-Message-State: AOAM530AuvD6XcK7MHJU400LoeyRpzIFr5hEv9SOz8ojpYsEgusL9bBL
        2TE8uSaM3vBYJ1tqWe5I9XdXDw1Waug=
X-Google-Smtp-Source: ABdhPJyagRZnq026DvyopJ+tk1oDE5af1DRI3h79iVfp1kDDfV75Skfg5mWkPGcxyye4UoBInuey2A==
X-Received: by 2002:a1c:cc19:: with SMTP id h25mr21439774wmb.124.1610983372840;
        Mon, 18 Jan 2021 07:22:52 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id b3sm23708525wme.32.2021.01.18.07.22.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jan 2021 07:22:52 -0800 (PST)
Subject: Re: [PATCH 2/2] semget.2, shm_open.3: tfix
To:     Jakub Wilk <jwilk@jwilk.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20210118090811.6495-1-jwilk@jwilk.net>
 <20210118090811.6495-2-jwilk@jwilk.net>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <edef3181-994a-2319-6f7f-dcb5c92382b4@gmail.com>
Date:   Mon, 18 Jan 2021 16:22:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <20210118090811.6495-2-jwilk@jwilk.net>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/18/21 10:08 AM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Hello Jakub,

Patch applied.

Thanks,

Alex

> ---
>  man2/semget.2   | 2 +-
>  man3/shm_open.3 | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/semget.2 b/man2/semget.2
> index a8fed15e6..445ac0249 100644
> --- a/man2/semget.2
> +++ b/man2/semget.2
> @@ -155,7 +155,7 @@ If the semaphore set already exists, the permissions are
>  verified.
>  .\" and a check is made to see if it is marked for destruction.
>  .SH RETURN VALUE
> -On sucess,
> +On success,
>  .BR semget ()
>  returns the semaphore set identifier (a nonnegative integer).
>  On failure, \-1 is returned, and
> diff --git a/man3/shm_open.3 b/man3/shm_open.3
> index 80d1eae17..9b06335d2 100644
> --- a/man3/shm_open.3
> +++ b/man3/shm_open.3
> @@ -170,7 +170,7 @@ was specified, in which case a new, distinct object is created).
>  On success,
>  .BR shm_open ()
>  returns a file descriptor (a nonnegative integer).
> -On sucess,
> +On success,
>  .BR shm_unlink ()
>  returns 0.
>  On failure, both functions return \-1 and set
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
