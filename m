Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7B7E1169A48
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2020 22:36:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726678AbgBWVgd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 Feb 2020 16:36:33 -0500
Received: from mail-wr1-f68.google.com ([209.85.221.68]:43626 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726534AbgBWVgc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 Feb 2020 16:36:32 -0500
Received: by mail-wr1-f68.google.com with SMTP id r11so8069390wrq.10
        for <linux-man@vger.kernel.org>; Sun, 23 Feb 2020 13:36:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=WUPAGd/j7HA8vMi0k1W/h+0ia0teef1V/B2V1xSW7sE=;
        b=V9+vNbE7xS/M5QZLdIERqsS5iDlPJ0/s0ZOY3gIyR0+jRaV7NxOVsy/gwy7RSr+Djn
         6FuclOBCciNqp9Ao4Vy+lUYPJ4sDicDh6SaQ4G/r6SJkbrmi6jV7pP2/ZsCAUnF2xvOI
         ggRyAGY8yVzDjJL1msmWrxlXO09gzssBFWAEZRk29cWHD0j0qJkHDgbN8Ws5a9k8euzT
         VM9BOixwvHkAVfxPGVFmMUTPj+z9R8of5GZtfI/Z/KFXWhHujkVKo17MdvpDs6k3wHI+
         GQw0xKSzDNkm3+NVwEsDPuNR2/qAwwtxgLEAc5iV9VT5N5yvYToR80KDpVABoRWihEoA
         7Ocg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=WUPAGd/j7HA8vMi0k1W/h+0ia0teef1V/B2V1xSW7sE=;
        b=KxcYLIY/58bjDwfasaDqFrM1s670nEahlGOfTtUUqPRrQE9aNDCS8dERAt2UkdHlTK
         NlQrsiAT8ZLPFNra/FF/HshwEnJvizmTwKoQOoRwiHDbmLnqx6PISzyAZpJhDmI6e/Cq
         UZO60AZPKt6iI2MQhpT4VoJP3fTpEfoNlNkRqbgwaBkrgqMhKeQLIFukSISQYH/88XSz
         BQrf7PGBHBygV/Imv6l4pubW4EQMRzAb955kHqIiEhrLnCTo3jEVOJC+q1QueoWHppu+
         UQ5FDRrcHkFrPcgC6MwA5K0jlq95OMcsuEsHOrptSBfuisgi8cFjbDw/Q9ioJ2F7n2M7
         PKJA==
X-Gm-Message-State: APjAAAUFVW1Er/zmhKr6tD64Ol6NIS1Qy6UBB4phGMXHBsiYc1zbOPeR
        5VVFu0wQa8LE/QCYSRtz5wTN9Z0C
X-Google-Smtp-Source: APXvYqxD2xRDk7ZEo9C5WmQ6QzprqiEba2fhdd1d5q5vnlLxUymZNI4pfkwYBBY5aDxGwrLefKuO9g==
X-Received: by 2002:adf:ea85:: with SMTP id s5mr60929142wrm.75.1582493789057;
        Sun, 23 Feb 2020 13:36:29 -0800 (PST)
Received: from ?IPv6:2001:a61:3ab0:601:eabf:519f:11af:545d? ([2001:a61:3ab0:601:eabf:519f:11af:545d])
        by smtp.gmail.com with ESMTPSA id d16sm16019010wrg.27.2020.02.23.13.36.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Feb 2020 13:36:28 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        John Stultz <john.stultz@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH][RFC] clock_getres.2: Document that consecutive calls for
 CLOCK_MONOTONIC may return same values
To:     Helge Deller <deller@gmx.de>
References: <20200220172441.GA12717@ls3530.fritz.box>
 <0837faa7-a8ec-12ff-e96d-8dfea3e60c50@gmail.com>
 <2c7b2576-0c5a-a40d-55c8-27cf28124767@gmx.de>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <16ec6948-6a7c-5f48-d021-e7bb88ef786a@gmail.com>
Date:   Sun, 23 Feb 2020 22:36:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <2c7b2576-0c5a-a40d-55c8-27cf28124767@gmx.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/23/20 10:26 PM, Helge Deller wrote:
> On 23.02.20 22:09, Michael Kerrisk (man-pages) wrote:
>> Hello Helge,
>>
>> On 2/20/20 6:24 PM, Helge Deller wrote:
>>> Consecutive calls to clock_gettime(CLOCK_MONOTONIC) are guaranteed to
>>> return MONOTONIC values, which means that they either return the *SAME*
>>> time value like the last call, or a later (higher) time value.
>>>
>>> Due to high resolution counters like TSC on x86 most people see that the
>>> values returned increase, but on other less common platforms it's less
>>> likely that consecutive calls return newer values, and instead users may
>>> unexpectely get back the SAME time value.
>>>
>>> I think it makes sense to document that people should not expect to see
>>> "always-growing" time values. For example in Debian I've seen in quite
>>> some source packages where return values of consecutive calls are
>>> compared against each other and then the package build fails if they are
>>> equal (e.g.  ruby-hitimes, ...).
>>>
>>> The patch below is just for RFC. I'm open for any better wording!
>>>
>>> Signed-off-by: Helge Deller <deller@gmx.de>
>>>
>>> diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
>>> index 646fa37c0..89e9f6a30 100644
>>> --- a/man2/clock_getres.2
>>> +++ b/man2/clock_getres.2
>>> @@ -151,6 +151,10 @@ but is affected by the incremental adjustments performed by
>>>  .BR adjtime (3)
>>>  and NTP.
>>>  This clock does not count time that the system is suspended.
>>> +All
>>> +.B CLOCK_MONOTONIC
>>> +variants guarantee that the time returned by consecutive calls will not go
>>> +backwards, but they may return the identical (not-increased) time value.
>>>  .TP
>>>  .BR CLOCK_MONOTONIC_COARSE " (since Linux 2.6.32; Linux-specific)"
>>>  .\" Added in commit da15cfdae03351c689736f8d142618592e3cebc3
>>
>> Thanks. I applied your patch, and then tweaked slightly, so
>> tha the change looks as below.
> 
> 
> Looks good.
> Thanks!
Thanks for checking!

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
