Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B34943F5D00
	for <lists+linux-man@lfdr.de>; Tue, 24 Aug 2021 13:18:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236721AbhHXLSv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Aug 2021 07:18:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236681AbhHXLSt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Aug 2021 07:18:49 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9299DC061757
        for <linux-man@vger.kernel.org>; Tue, 24 Aug 2021 04:18:04 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id i6so6992200wrv.2
        for <linux-man@vger.kernel.org>; Tue, 24 Aug 2021 04:18:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=R1ApK4iXHJXU4Vyso4hmGt4PSEzQS2CS1p1m/vdqJXM=;
        b=KX2GcswCG6/fhaFGv0JKBsxmD7e//7pgLw46j1Prf2kb72/MW4HSgEk6YfyI1FjD3u
         hpMUAs2d7IitsbHq+VVJEsyH+Hh2XPKPOoafPyxZfV4fQUSY+LjHiW+hyFhFes1v9kgO
         Fj7pUj1GHDThUsDP2LYeknXAjyTIiecltl7PEXTwmLTNyhB7cA2NmdFCoPjvuzQvBs33
         x36OcegMfdf4mjy3Gp1A8HUs8SmVMOMWi7qslNoDLI8zln5SSvtdQnqs+6ocx//2l/gY
         s+DiHrOOOQIKwCDBqY2u9eTIpiiwhuZbr2GJykvMy5gATaET5QgPH0H+/QcuAcrdCC6x
         LpOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=R1ApK4iXHJXU4Vyso4hmGt4PSEzQS2CS1p1m/vdqJXM=;
        b=d/2H+PnTGJlmWDPFbnySp+QincRAmL6AWZnheUe48loSPMrB+0/Qor/NR/8/pXDgv4
         WrDRTQlLOqkRlSNUZSAEudBi2WkcUwgbBdVCes99aJMXJhYR4LQomm+T1BN6yUWUuiuq
         XoeiMgbBr06kEevYN/8zWJ31GdGxTvhTdXGMlhePWT18RzoeQS6QwRQt5gldh92IeNaG
         O74YB6Qc7ZvltM579TNvf8fr+ZUHpVrgrSESWKR3pyWh5WXFhj/6ZXRVlWzmIuyeb5E1
         YwBjIILwJMX2C2Z76QHJ28qrxWYU0d5gdw84VJLqWP6xsBKBbJ9Ck/oUFQGHw+sYR7Ak
         H4NQ==
X-Gm-Message-State: AOAM5317HJ/70zqpYCvkl4zB7QOaETfbdb9hQE7Lh+KhZAK0d036Os74
        B/gecTJPa8JBEgB/gF/gLAk=
X-Google-Smtp-Source: ABdhPJyf6pBPBzWdRq4+Bs1+BUZSC/tzCUpAuLWJmNgRb7AQB3sFIc1t8I3bYMdLwCUSfbGmpObjUg==
X-Received: by 2002:adf:e745:: with SMTP id c5mr5911445wrn.321.1629803883238;
        Tue, 24 Aug 2021 04:18:03 -0700 (PDT)
Received: from [10.8.0.6] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id n10sm17548863wrw.76.2021.08.24.04.18.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Aug 2021 04:18:02 -0700 (PDT)
Subject: Re: [PATCH 2/2] alloca.3: rewrite NOTES
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <c08c2bb9ccbbc097166f4815f8dea420e5fe1044.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <d2c606ce-468d-8545-30cc-d8dabeb48296@gmail.com>
 <74071710-9981-21aa-4be8-b4ee988d7210@gmail.com>
Message-ID: <b57c352b-7b95-a4ec-e398-6922c3248bc7@gmail.com>
Date:   Tue, 24 Aug 2021 13:18:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <74071710-9981-21aa-4be8-b4ee988d7210@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Ahelenia!

On 8/24/21 12:33 PM, Alejandro Colomar (man-pages) wrote:
> 
> And apart from what Michael (and Branden) already said, I have one 
> question that has not been treated before it seems:
> 
> AFAIK, VLAs are 100% equivalent to alloca() (except for the obvious 
> syntax differences).  And considering the VLA syntax is much nicer than 
> alloca(), and is in the standard (IIRC, C99 added VLAs, and C11 declared 
> them optional), what about adding a NOTES subsection that recommends (or 
> at least mentions) VLAs?
> 
> And they both share the problem of smashing the stack if you try to 
> allocate an array to big (and none of them has a way to check if it will 
> happen, AFAIK).

Now that I think, there's a slight difference, of course:  VLAs live in 
their block scope, while alloca() lives in the function scope, allowing 
to embed it in a macro such as strdupa().

But maybe still worth mentioning VLAs in alloca(3).

Cheers,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
