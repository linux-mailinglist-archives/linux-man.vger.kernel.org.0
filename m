Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 54D7325D6C7
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 12:48:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729941AbgIDKsB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 06:48:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729946AbgIDKqh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 06:46:37 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0128C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 03:46:36 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id e17so5651754wme.0
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 03:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=M5ggspCjSMQiUkp7P9vaJ7bcA9wgBhnCPJRICk0Ij1s=;
        b=ITrf9Ipy4eA7LTsIEEF9bRV/RxZm1IluSjDlus68tSUofQp+zHk0jCsI/rqKQ2yb4j
         d1kUGohIK9rTtd1lHiFqLHBN29ropf8cG5+0bSSKt8vhVHnJfKwCoADgu10pP2xg2vg0
         imHASuLHk/7iJWYl01UxrIur+/SR57rt1Pz8lJ421mQJ42MVBtpDZLMw+G/i+i9DReO1
         AMiBzG2APjPBx8cO8t5jeA8VnO0xyRhUfLCA9Byp4nDofHLABQvFQ18y5dmcF8J1Jeuj
         IEbqRaSfVNpzSjuKI6o3aBEjpd1BICJzIYiH8IcJfWje/UcEys5Mj4EpBcgzcDMKPyZ8
         Fi1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=M5ggspCjSMQiUkp7P9vaJ7bcA9wgBhnCPJRICk0Ij1s=;
        b=sbXDC2Mc/gDU3Dypy66dq17JU++63T4mlPsDLVX6Y12y0zjDdWsog5ZYXYOTHOsTll
         akXTyUf/NR/t79JeGbQtdam/jQstcgCtMoSv6QIVx6PgIOErmiXXrmepEnYdLeSpL1pI
         R39m+Bi7/fpUmyGP3hp+++WghOP/GuEnt8A6RwTxdTpHANS/o6ZxfmznvU14GWfngPsr
         3URBa8HaU086X19pb6+Pz1YLDlxoBWsxtY4OCdT9kY9FNnZt3b2voEnVaFmAWUfVj3q+
         0dIO21yEXOj+PjLBZJV+jSrCIX4B9RSSSUO2hXcxv77zWZN2NDpvvNkIdVTPCYV5wT33
         atjA==
X-Gm-Message-State: AOAM530K/E6neMw8Hn3al6ypjEOLuQD5n1V41A4QrsURHpfjsc5sFJG/
        IIIVTC13v0zEMriR4zv6/d9ro6YiXEQ=
X-Google-Smtp-Source: ABdhPJwe2ncMfQLiFg50hAnQNaDDH2ok3EOMdiNCKIZAPDfR7OTdNS9q957mlJKQGCioqLRog9RHlg==
X-Received: by 2002:a7b:c4d1:: with SMTP id g17mr6729307wmk.167.1599216395500;
        Fri, 04 Sep 2020 03:46:35 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id t4sm10244471wre.30.2020.09.04.03.46.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 03:46:34 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 03/34] eventfd.2: Use sizeof consistently
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
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <dbf2a1d8-ae98-a181-981e-c492ffc28fb6@gmail.com>
Date:   Fri, 4 Sep 2020 12:46:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <26629635-bf4c-1279-314d-db92f11adbb7@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/4/20 12:21 PM, Alejandro Colomar wrote:
>>From 5399e0a620c417c1003c17fb04a45ce1a7854acd Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 21:25:59 +0200
> Subject: [PATCH 03/34] eventfd.2: Use sizeof consistently
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
>  man2/eventfd.2 | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/man2/eventfd.2 b/man2/eventfd.2
> index 804cf796b..35e83c957 100644
> --- a/man2/eventfd.2
> +++ b/man2/eventfd.2
> @@ -415,8 +415,8 @@ main(int argc, char *argv[])
>              printf("Child writing %s to efd\en", argv[j]);
>              u = strtoull(argv[j], NULL, 0);
>                      /* strtoull() allows various bases */
> -            s = write(efd, &u, sizeof(uint64_t));
> -            if (s != sizeof(uint64_t))
> +            s = write(efd, &u, sizeof(u));
> +            if (s != sizeof(u))
>                  handle_error("write");
>          }
>          printf("Child completed write loop\en");
> @@ -427,8 +427,8 @@ main(int argc, char *argv[])
>          sleep(2);
> 
>          printf("Parent about to read\en");
> -        s = read(efd, &u, sizeof(uint64_t));
> -        if (s != sizeof(uint64_t))
> +        s = read(efd, &u, sizeof(u));
> +        if (s != sizeof(u))
>              handle_error("read");
>          printf("Parent read %llu (0x%llx) from efd\en",
>                  (unsigned long long) u, (unsigned long long) u);
> 

This is an example where I am dubious that the change is a
good idea. For this API, the units that are being read/written
really *must* be 8-byte integers (it's baked into the API),
and I feel that explicitly mentioning the types in the example
code reinforces that point.

For the moment, I won't apply this patch.

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
