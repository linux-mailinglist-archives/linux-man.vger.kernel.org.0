Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4911F1F07A5
	for <lists+linux-man@lfdr.de>; Sat,  6 Jun 2020 17:45:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726327AbgFFPpQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 6 Jun 2020 11:45:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726089AbgFFPpP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 6 Jun 2020 11:45:15 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E73DC03E96A
        for <linux-man@vger.kernel.org>; Sat,  6 Jun 2020 08:45:15 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id d128so11951246wmc.1
        for <linux-man@vger.kernel.org>; Sat, 06 Jun 2020 08:45:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=IBTH35xdnpziF6Lix8W6s4yOOVxHWTLUOoPVH4A0DBY=;
        b=Cn1B2pMXsVXlwZJYIufbatkFUCRVUVrSWKOaLhc5iU1UX8j+21O+9ZPyjybFbTjyrn
         okZEUhVuMLrjZDvpCji9rmsXmbbp8s6UgBKYVsJqdsDESy+HRCdiJvuQZn9gx3qD8KX+
         D7EcCAiivfIpCtENPHMTEjUT7YoZmJHKHlH8NJxQDgirQOhbh2UnE/EsMG5JqYjLa8EC
         8oJUe8bG5F+w4XaqdkB+omj184fv9Wrn6WC3wN5SNjB/6ke3vty3SwTjWA9nXL7MqUFt
         gGtCS0glJfcF2wIqiP0JQRwRG4zG4gr6lcirYw5jA7Dp1/3+lQ5UkOprraKRvJyFOTM5
         Y9Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=IBTH35xdnpziF6Lix8W6s4yOOVxHWTLUOoPVH4A0DBY=;
        b=uklaayuAa1YQLPzN0fbOA1wygctMh0uBFC6EAhSLBz1DHADa1eSBe70EnswaXtUec2
         /mJ5aaJO7BBa7W26JmVGhLEzXxVnbS4QZcq0pjh51livy+OrLbIxfIXlxuEOW8Lyej/L
         VLxFcVM0ijBK7ZTiuyQO6jnzX/oMmzyjmALHXXAxrZU+J/eOHLvD+mYCRqNH5xaUILV5
         83OvlWx+AMYtZ4b+7DPYnOKLbHDMRNRQX0yTdBju7YNiZsnGB9aDG+5PN31nZEFkreV4
         GVMA9pfA44scn1oQKOnWEuNxuiqi57eNNuf18x46t9rJtN0LN3KZrxaohFsDL1Ykjsie
         1+lg==
X-Gm-Message-State: AOAM532Riayn8ZBIRXY28AcIMO4DTDzaiT9TLAiiu5C6xkxjoClOL2HS
        Q5c1b6XvG8Sdh3EsAuneeakurLSyIew=
X-Google-Smtp-Source: ABdhPJzhvWpJgvmLII61uEEoJFqcSUDKxOrSBYb/LWEGhO5QrQU0jqkwqminMeYV3vRzdDm6oz+ZKA==
X-Received: by 2002:a1c:f007:: with SMTP id a7mr7890977wmb.103.1591458313655;
        Sat, 06 Jun 2020 08:45:13 -0700 (PDT)
Received: from [192.168.0.12] (cpc87281-slou4-2-0-cust47.17-4.cable.virginm.net. [92.236.12.48])
        by smtp.gmail.com with ESMTPSA id v27sm17541973wrv.81.2020.06.06.08.45.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Jun 2020 08:45:12 -0700 (PDT)
From:   Jonny Grant <jg@jguk.org>
Subject: Re: core(5)
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <9000a831-9a0f-0577-5755-95b301218383@jguk.org>
 <20200606145003.x37j5hywuyn32lpf@jwilk.net>
Message-ID: <e8283646-38fd-b9a8-2056-547fecaeb182@jguk.org>
Date:   Sat, 6 Jun 2020 16:45:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200606145003.x37j5hywuyn32lpf@jwilk.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 06/06/2020 15:50, Jakub Wilk wrote:
> * Jonny Grant <jg@jguk.org>, 2020-06-06, 14:18:
>> 3) Could i ask to clarify my understanding. For this "The binary being executed by the process does not have read
>>          permission enabled."
>> -- is this when the binary permissions are changed after it starts running?
> 
> No, AFAICS the permission check is done when the process starts.

How can the process start if the binary file doesn't have read permissions enabled?

>> 4) I noticed %P always gave me P1200 even after a reboot I recall, I had expected it be '1', do you see similar?
> 
> Here %P expands to the pid of the process, as expected:
> 
>    $ uname -rv
>    5.6.0-2-amd64 #1 SMP Debian 5.6.14-1 (2020-05-23)
> 
>    $ sudo sysctl -w kernel.core_pattern="%P-%e-%s.core"
>    kernel.core_pattern = %P-%e-%s.core
> 
>    $ ulimit -c unlimited
> 
>    $ sh -c 'kill -ABRT $$'
>    Aborted (core dumped)
> 
>    $ ls *.core
>    7154-sh-6.core

My apologies, it was P1000. This was from two different runs, 2 days apart.

I think this was "P%P-T%i%e-%s-T%t". I tried to reproduce today, but couldn't

-rw------- 1 jonny jonny  99041280 May 27 21:42 P1000-T18441Process-5-T1590612166.core
-rw------- 1 jonny jonny 104407040 May 29 23:24 P1000-T5804Process-5-T1590791098.core

Cheers, Jonny
