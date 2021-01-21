Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 308FA2FF5BA
	for <lists+linux-man@lfdr.de>; Thu, 21 Jan 2021 21:21:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727139AbhAUUUj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Jan 2021 15:20:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725771AbhAUUU2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Jan 2021 15:20:28 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 099F4C06174A
        for <linux-man@vger.kernel.org>; Thu, 21 Jan 2021 12:19:47 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id e15so2591217wme.0
        for <linux-man@vger.kernel.org>; Thu, 21 Jan 2021 12:19:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=19V9Z9w4sxbKNf9rFqinJ59jHFMKq+ROTo6vs/Xl3IA=;
        b=QLHoJmMjlaItu/BXzwUerZgpEIpw1hFH1sPdVBnbw19P3GpHFJEBYUWmvrSZDqynWB
         ZZdslxQJ/ETR+HEymAlxOYhC9ngVWE5MGT2cvPmpSpUT/O/0YhJs6p21YYVS6p2l5V5j
         zVBIVSzvflHMsCe9rYspfTMol1fz4wkhvE5Ai+KeFqi9hHFIb0Sp/L7xTd9GDKiM9DMB
         pP/erZAyoIZx0VA1aMwdNcpMfZpaxeUb9i8l/ouMge6s6KvqvM+EljGNj+yuvZWlE8iH
         u5tjfNYVRNcARnLQk0U1DqcACRK5mhWFjFQyNdYD1q+zCS1smnM0Gcppg53tcKumJpab
         clVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=19V9Z9w4sxbKNf9rFqinJ59jHFMKq+ROTo6vs/Xl3IA=;
        b=e1AITOj/0QXfCGgbmsXKgPMxjMnymmwtadVA+k/OQaUzaOTVdBeZQIe9v1IwDZeXUL
         suAbzZEhUhFcfBjRZ6oOT9JhVrxHyjv4gEJUqJWno6ntpMjBzh9HOAU1R5QX+rmGxDio
         Q2RiL/xE8VDoj/8as0z0dE9lNfJcXhUXINkUwMlT6GiZvWgUimwXbAWBVWApWguUJDjB
         WjzMNYYKZw4P1MmY3BKV36P62PTVe965M4EYhG1WlEK7Dx4ZedBRKElm2iteOztdpDEm
         FhsK8JaQpWlkJc4qdu8euZFsqMTmET/bdLkLV+owMrl4abpslyCamv2H/yCaHSabwEE9
         85iA==
X-Gm-Message-State: AOAM531vgiWEHGAVXk7IT1AVWYQLBXsGJ4G92VRpyfijZ9XjQ1KQ+Rf6
        pRBjnzxxGKM6OCMcilqxdjnSElkOUTaIYw==
X-Google-Smtp-Source: ABdhPJxJTwldKXq7C/3m9CcBEbomEgjps9afVMFNk/zCGk7vTgjEhcPUC/Op6qDxN6oy5Es9AiMZwg==
X-Received: by 2002:a1c:4b14:: with SMTP id y20mr955108wma.166.1611260385870;
        Thu, 21 Jan 2021 12:19:45 -0800 (PST)
Received: from [192.168.0.160] ([170.253.49.0])
        by smtp.gmail.com with ESMTPSA id w13sm9697289wrt.52.2021.01.21.12.19.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 12:19:45 -0800 (PST)
Subject: Re: [PATCH] posix.py: ffix: Correctly format URIs
To:     Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
References: <20210109195840.74472-1-colomar.6.4.3@gmail.com>
 <a1d2172c-3880-ac79-7df7-0f5fb0bc65af@gmail.com>
 <20210110065023.olvhi2gqjbmv7243@localhost.localdomain>
 <af78792f-9758-e3e6-9c65-c2f93f0fcfdd@gmail.com>
 <20210112205115.g3nuoodpn7xxpx5u@jwilk.net>
 <bdbf6dee-e74f-e2e3-8c44-4ce63d396aa1@gmail.com>
 <20210121201426.b6wfycjdegxce7fw@jwilk.net>
From:   Alejandro Colomar <alx.mailinglists@gmail.com>
Message-ID: <68986498-b493-adfc-e66e-1cf791d901b3@gmail.com>
Date:   Thu, 21 Jan 2021 21:19:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210121201426.b6wfycjdegxce7fw@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 1/21/21 9:14 PM, Jakub Wilk wrote:
[...]
>>
>> So... does it mean there's a bug in .UR/.UE?
> 
> Or a bug in Branden. ;-)>
> Contrary to what he wrote, and what I parroted, .UR/.UE use U+27E8 and
> U+27E9 as delimiters.
> 

Ahh, that's it!
Will have to patch it... :-P
