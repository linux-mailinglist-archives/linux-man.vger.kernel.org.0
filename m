Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 43ED825D882
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 14:20:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730137AbgIDMUu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 08:20:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728588AbgIDMUs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 08:20:48 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 836E5C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 05:20:46 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id o21so5924078wmc.0
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 05:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=M/OuFGfjwhCeT8/Nk43BJyJzAS6Rk328AgokERPDiPw=;
        b=OHqKTwVrfT5SqIHAYd0HpJ709Rd5/5RjV8lp9LRd3CuMZYGDhzbCOzJnVzulDlS7gl
         52OBeo8CM+9yXxikiQBe3UfEnZQMuobR2elmyDlDx/9U0xtNMBGL/F9Q0MiBGwaTPuY0
         bI6OvYKioE3xgHBVce0q1Rb56BfT0pQuZPl2By2rCN+PfkkpZonjopO1Xj9zKlXEt57/
         uO3i7oL2WqEDdFd+/jy0CZOcMren8YkHhjJJPVLmMtI3xpaj/rU3vnw2U0auORbwDo+u
         IUng3SE8Z66VYOomyjW7kpbGDziQjiCUQFKAl04eWZfNspXyTY4Hk7eGPbE9w+nk0wxC
         Gjbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=M/OuFGfjwhCeT8/Nk43BJyJzAS6Rk328AgokERPDiPw=;
        b=iq9ZyuZVkb+AMck+rSAN/FT95IEucctGo+SD94Wgkda9dlBZMrrVNPYwGIss0B2rSU
         5tNMRr2NcFQ2RgZVozz0CpZXypwq2vSkhhnAoP76jiO9UMb0hQgfnR9I5IRYxkGFoVp5
         tlgQGI1+QOHT69ZEXsq9ohvi1hfa+AxbiVUpN/cg8X2sIz7w/xpfBxIdRTOUL1cmyWXm
         vzu2zTqHftQe01hvGtDUHL7HGYe7QGxx1tyJJ217CIoNcRsuQiHNHRf6HQ3rEbAa7Ln9
         A5uOH46cXz28cFkpp0OxLTFfhcGVy8GrxtRDutSq1SldTqhgd45TVNrkOLIkFuFCxJBe
         Z0tA==
X-Gm-Message-State: AOAM530QauUc3wcg9uimnlcQBLCOP/gnZPV17ICx2Nmtf3AKrE8gUXHG
        Mf4CiojD9fWNruhNm6HMoHg=
X-Google-Smtp-Source: ABdhPJxDLjEqcaO8Fpp3b4AUpBymupkiogacPDApMzAoXySsKPAEraCCfhLgEu9aTWaXhltDQcKU8g==
X-Received: by 2002:a1c:28c1:: with SMTP id o184mr7634672wmo.91.1599222045177;
        Fri, 04 Sep 2020 05:20:45 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id f126sm10235791wmf.13.2020.09.04.05.20.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 05:20:44 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 05/34] open_by_handle_at.2: Use sizeof consistently
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
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6eaede13-0f9a-d783-4be8-1a72645239b7@gmail.com>
Date:   Fri, 4 Sep 2020 14:20:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <edf9e2a1-0612-437d-9fbf-e255e0d1df97@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/4/20 12:55 PM, Alejandro Colomar wrote:
>>From 0176a7981aead1a202d5d0295b074e165b0d39dd Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 21:27:55 +0200
> Subject: [PATCH 05/34] open_by_handle_at.2: Use sizeof consistently
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

Well the page was already quite inconsistent, wasn't it, since
"sizeof(*fhp)" was already used elsewhere in the example!

Patch applied.

Thanks,

Michael

> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man2/open_by_handle_at.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/open_by_handle_at.2 b/man2/open_by_handle_at.2
> index 78c3220f8..846957acf 100644
> --- a/man2/open_by_handle_at.2
> +++ b/man2/open_by_handle_at.2
> @@ -586,7 +586,7 @@ main(int argc, char *argv[])
> 
>      /* Reallocate file_handle structure with correct size */
> 
> -    fhsize = sizeof(struct file_handle) + fhp\->handle_bytes;
> +    fhsize = sizeof(*fhp) + fhp\->handle_bytes;
>      fhp = realloc(fhp, fhsize);         /* Copies fhp\->handle_bytes */
>      if (fhp == NULL)
>          errExit("realloc");
> @@ -707,7 +707,7 @@ main(int argc, char *argv[])
> 
>      /* Given handle_bytes, we can now allocate file_handle structure */
> 
> -    fhp = malloc(sizeof(struct file_handle) + handle_bytes);
> +    fhp = malloc(sizeof(*fhp) + handle_bytes);
>      if (fhp == NULL)
>          errExit("malloc");
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
