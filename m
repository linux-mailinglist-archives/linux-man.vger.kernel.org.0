Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DB0C42EF118
	for <lists+linux-man@lfdr.de>; Fri,  8 Jan 2021 12:11:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726011AbhAHLLZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Jan 2021 06:11:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725806AbhAHLLZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Jan 2021 06:11:25 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DED2BC0612F4
        for <linux-man@vger.kernel.org>; Fri,  8 Jan 2021 03:10:44 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id c124so7456246wma.5
        for <linux-man@vger.kernel.org>; Fri, 08 Jan 2021 03:10:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=kn6xBQs9XGcwfsysUWT5xspbjGU4Zc0L+bL6HPsVO44=;
        b=Fpy8R4Crg61CSSk/uwYhvNwHN0pqtr2AHbnRBFLDU5KnvEVCpeUJq8r5IRVG90BTB5
         E2Ht5x0CaCk2/ZFHxcU5aX/KpiaAjOcehU/4LZ5DjesTXFSZDtuBQXRGbwTjfe5Gnm1H
         rO86m/8G8LGVh3vpzWsYgiqdHap/uApmlx4KwX4I56P5zXgiOxCuFz6V8xm3deEwVkJC
         fbP8DrY+JuZ1JJzyCggmmTIc2hXWfL+RB2Y0xWdQ6r3gOaOW3XMDx+q0eq8KPNW4p+Wb
         1U2crADTKe3MDSDrE8VePnTn6/gRc7HhvWcbobFliWmP/ypltQCVZyYl/xCP6va0HaVT
         hjKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=kn6xBQs9XGcwfsysUWT5xspbjGU4Zc0L+bL6HPsVO44=;
        b=jCpv8cuap6kuMZZdZ3FFc/cfMUJVNZi4tP7l3HFR8TXDXCSJGwuJNe8+zkgchomzAW
         FM0ChlJrPw8fSlxQ8TZKOzabuO9TyTa1t1+CFvfMaOQ8EovL3sFNy2vMN0LI8vms7RTK
         6vridsfRrx0Mlu3GUPj1hhVromjdOEdl1P5+51dUcw+Bk0BFtkVg+ocYFBFv5BjekXgx
         +DNdzyMnOHqeARV+XpjABb+Cs/0BU3JUMp1MRKkmOw97B/4//ysYVkofXLYMHKaE0OZm
         5dDXZjDC1gqSRw0g6XYbXslEO8MI0Jg4Jby78bspW6DMg7woZl//C6iOYQh7wtGsU1an
         GWqQ==
X-Gm-Message-State: AOAM533qehl40n7vVEQOaojhdZtAGoO1CE/AtYn0uXGMOxO3MVMPFBtH
        rXOoNwc5YtQoOaqLPpRs+ORYVh8ppvc=
X-Google-Smtp-Source: ABdhPJwG5uosoWbDbvt3aYvUpjs6Vqb9b7j8HLKod7rdiV1K5Ctvpsb0zuYQhwGjT7K5QY1pcBGqig==
X-Received: by 2002:a05:600c:4154:: with SMTP id h20mr2564303wmm.72.1610104243669;
        Fri, 08 Jan 2021 03:10:43 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id i7sm12600771wrv.12.2021.01.08.03.10.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 03:10:43 -0800 (PST)
Subject: Re: URIs mark-up
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <eae90a7e-c2c9-8555-4137-a5ff3f31329c@gmail.com>
 <5974d5d4-7fa7-4c0f-d36c-69a0c5ebedb4@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <47d7e64c-16a2-e935-de14-0c320510e382@gmail.com>
Date:   Fri, 8 Jan 2021 12:10:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <5974d5d4-7fa7-4c0f-d36c-69a0c5ebedb4@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

I meant the (fake) URLs around line 102.
And yes, I meant surrounded by .UR/.UE, which they're not.
But maybe it's exactly because they're fake?

Thanks,

Alex

On 1/8/21 12:00 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 1/7/21 6:50 PM, Alejandro Colomar (man-pages) wrote:
>> Hi Michael,
>>
>> See hostname.7:102.
>> There are URLs and they're not marked up in any way.
>> I guess there are a lot more like those around the pages.
>> Should they?
> 
> I'm not sure what you mean by "not marked up". That 
> URI is wrapped in a .UR/.UE pair, and I think all of 
> the others in other pages are too(?).
> 
> Thanks,
> 
> Michael
> 
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
