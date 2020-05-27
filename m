Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 132B31E437E
	for <lists+linux-man@lfdr.de>; Wed, 27 May 2020 15:23:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387650AbgE0NXs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 27 May 2020 09:23:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387581AbgE0NXl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 27 May 2020 09:23:41 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95FE6C08C5C1
        for <linux-man@vger.kernel.org>; Wed, 27 May 2020 06:23:40 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id j198so2277391wmj.0
        for <linux-man@vger.kernel.org>; Wed, 27 May 2020 06:23:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=JIkog2ZuZSGvI0cbt+9vtR0F//DqzvIAFPwUWQoJA3M=;
        b=LUpXi40NlmwYtD8Ek42KBXso+gfMFNEp3uIWriezTTq2JGqixmi9aajsbz1iEkWP5k
         f1AHFbMfJiuoU9X8HcJ6OeSLLkT3LKOtywG2iztzLKvZ6H+YPDv49J4Rn92zLY/r/JC+
         PSuODLudc7nzK5MynhmBxjyAK7nthDvRXznNeGsUjl+7raMbsIqW6E5tIEoctKG3s8hp
         U3PLtL5FHm9R+iBXoGv5CLY3YDHKcgT75+hWzDO1MNb9faGwVNRXVyA12Nef3JawDyZ0
         xlF1UO7pUWDxMYmqDCm6l43NAXnOTUR6zQoFOOsL+To52QP3W7DBoDYQno9uAYilzoh5
         EGkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=JIkog2ZuZSGvI0cbt+9vtR0F//DqzvIAFPwUWQoJA3M=;
        b=elPIpMnU+lwadB0POrbzMBMhMRUvx0mdYfvz7OioCdAH4KklvXszZQF+y3nqJa0mvF
         QIC5uzblqo07PTWb2f/la2H0sDEBixY9VnS+OuVZTYOiCtOFlnimb3i3CMvd0NOzwGsy
         gk/fwS8JQEN/yC/om0ZOyWOKG5Djc0Oz2mg9WPNQGg/EOpSe2i2eY0qW2mKQk6iksaH/
         eJ9B7fCXK/DQm28Hv+9HkD6IW2gTDYPgx4qg77UYR8rp+0e+HHZThtXhrvVHLEFhJsew
         sv/YMnVeJsHfEWInBQ/aUasDCS3PPdoNYU6Vyro984khFRZTVtB9pwYGv0yy2QqtAFpQ
         vZrA==
X-Gm-Message-State: AOAM533VRpqm2yWiFc5vmAruGl59Yg7gufM2zi2qJSocAR/nuVY/6UjO
        vqUDbmUrH/0GxQAlf0v5MeT+b+XXcAk=
X-Google-Smtp-Source: ABdhPJysOEzh52c5FnA9ZGr286zq4lgM1Srfd68OFofbXlPSqpi8apGrzkEts9/XPE6iLywGGmrmmA==
X-Received: by 2002:a05:600c:290d:: with SMTP id i13mr4160275wmd.81.1590585818753;
        Wed, 27 May 2020 06:23:38 -0700 (PDT)
Received: from [192.168.0.12] (cpc87281-slou4-2-0-cust47.17-4.cable.virginm.net. [92.236.12.48])
        by smtp.gmail.com with ESMTPSA id j4sm2827654wrx.24.2020.05.27.06.23.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 06:23:37 -0700 (PDT)
Subject: Re: core sysctl
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>
References: <9e98156e-3ba9-e656-bb8f-c54229b5ac11@jguk.org>
 <CAKgNAkhkASJ8+Xe64_ifM1_GgrNSCd6Vx0GDdkJ7aFfJ7RG=7A@mail.gmail.com>
From:   Jonny Grant <jg@jguk.org>
Message-ID: <0e0f3d4e-b811-3423-ffe9-2fd68900c1a0@jguk.org>
Date:   Wed, 27 May 2020 14:23:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkhkASJ8+Xe64_ifM1_GgrNSCd6Vx0GDdkJ7aFfJ7RG=7A@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 27/05/2020 14:06, Michael Kerrisk (man-pages) wrote:
> Hi Jonny,
> 
> On Mon, 25 May 2020 at 17:08, Jonny Grant <jg@jguk.org> wrote:
>>
>> Suggestion for some additional information on this page:
>>
>> http://man7.org/linux/man-pages/man5/core.5.html
>>
>> Could "Core dumps and systemd" be extended to give an
>> example of sysctl making a temporary change?
>>
>> eg set to the filename and signal that causes the core dump:
>>
>> # sysctl -w kernel.core_pattern="%e-%s.core"
> 
> I'm a little confused: what do you mean by "making a *temporary*
> change" (i.e., where does "temporary" come into it)?
> 
> Thanks,
> 
> Michael
> 

As I understood, this core pattern is set until reboot. For a permanent change, I set in this file:
/etc/sysctl.d/99-sysctl.conf

Cheers, Jonny
