Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 16ECC25D87A
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 14:19:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729941AbgIDMTq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 08:19:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729932AbgIDMTm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 08:19:42 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B13AAC061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 05:19:41 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id k15so6508852wrn.10
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 05:19:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=f6A816tRxDFuJIpTsJSdbZLDLNrpqUxtgvIsjN8jm5s=;
        b=jDGG+KAbyvgOb0SlFDT/WKyDKUe4ZpBTBhRQuvV3m0CfHV75IVQYCfxIYvwfpJKC+F
         hv1DI504DcFZCR95mOVbcO4ffLR3E1z0QoVdhjwTuaDieHfUrS5JSA1xUHUf3Bj0SBDV
         Id+BM1w0iUG/iI9pVKOXIAORK6f6IgLISpZrZnVi0H7iUBk9ICV76LHsg4NgI/Igy3aH
         ZOpFpQJQvfUhDZHHY1SnUZ22dmvB7cOZcdh66bieDrhtSe8zUyCXRDcuhuuxg48Evof5
         VoyVtxGAi9DQasc7lZYWlvel9hqvYXyWLKinVEA9ffg9F9e4KsY+r6Z2X3u2YMdzsUdC
         a6Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=f6A816tRxDFuJIpTsJSdbZLDLNrpqUxtgvIsjN8jm5s=;
        b=UY8tdgm+3oGSiOUXZGtTYcJwVrjFVE87WqJdYxwcY1k1BqA0d5AFsWGmJ9/+0q7Mti
         28sSvWRqNPKZ6NVKn+aEnh9o1CgHr7AC3bEvugKNgO5newDweiMpvo4tCmWBi1RYstGt
         WVjS0hEBsYS+xj2nF+evqXm7esTWV4R5CNL0iExrRlWWsV68vrq8HmLXsQRZN8PhepRS
         WbeLx68G9aQTQupuXgQIwgsS6K2ZgnejExZIohINO3633zgoU9maUIzlx7/XmU4ufx3f
         Dd0jCNAsOCaBLesWpe579VjCpyzw4eAPAochrw3af3mYohY2qNHIV15r89u0yb9AASgj
         AD9Q==
X-Gm-Message-State: AOAM533VFTaCUVKAg2FNVT/owAkICVaYg3LGlBjB/uEFjgaisYx9vlhk
        Y5hgIn4z90jntpEKO2Mo108=
X-Google-Smtp-Source: ABdhPJx2BhfHufOyYpe8hkuWJDHIwc1llsBkRH/MgKSv8Ec0m4NTMPKp3RrobRPz0sedJNge9yHLFw==
X-Received: by 2002:a5d:4c52:: with SMTP id n18mr7222841wrt.267.1599221980404;
        Fri, 04 Sep 2020 05:19:40 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id 31sm11030777wrd.26.2020.09.04.05.19.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 05:19:39 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 04/34] futex.2: Use sizeof consistently
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
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f8179754-201b-57c5-b649-eba7d76aa6d9@gmail.com>
Date:   Fri, 4 Sep 2020 14:19:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <d38b1e35-2471-09a1-ad49-4509a30fd14a@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/4/20 12:54 PM, Alejandro Colomar wrote:
>>From 21cd85c6f11390c71ed4475f1f9d55910891cf23 Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 21:27:01 +0200
> Subject: [PATCH 04/34] futex.2: Use sizeof consistently
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

Patch applied.

Cheers,

Michael

> ---
>  man2/futex.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/futex.2 b/man2/futex.2
> index 05696f617..6192b145a 100644
> --- a/man2/futex.2
> +++ b/man2/futex.2
> @@ -1839,7 +1839,7 @@ main(int argc, char *argv[])
>         subsequently use the "shared" futex operations (i.e., not the
>         ones suffixed "_PRIVATE") */
> 
> -    iaddr = mmap(NULL, sizeof(int) * 2, PROT_READ | PROT_WRITE,
> +    iaddr = mmap(NULL, sizeof(*iaddr) * 2, PROT_READ | PROT_WRITE,
>                  MAP_ANONYMOUS | MAP_SHARED, \-1, 0);
>      if (iaddr == MAP_FAILED)
>          errExit("mmap");
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
