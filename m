Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 35F791E4736
	for <lists+linux-man@lfdr.de>; Wed, 27 May 2020 17:23:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727922AbgE0PXB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 27 May 2020 11:23:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727017AbgE0PXA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 27 May 2020 11:23:00 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 395A1C05BD1E
        for <linux-man@vger.kernel.org>; Wed, 27 May 2020 08:23:00 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id x13so9751661wrv.4
        for <linux-man@vger.kernel.org>; Wed, 27 May 2020 08:23:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=esOELIFQJI1QLJKcy4kgPF0gqd4X0RBlMXfXSl2FcY4=;
        b=YrVm14aKC90VIxa7ryhmXZOWXOt3d7ylwZT/x1YS/3Wwv39YnjekljCyNqG/rV1eA3
         dBxzACDBWmqAIzypqMdnJd23CtuLIgQId/ObbtrSbYcpM/7N2UnsacxS8/CvNFlQNjkD
         SdBss2rJqI03Tyw23qAksa69z492KYBZgO+DVG3MFfZVjb0yLOVEit3JUEaxdkyx6NsX
         7bHeHdqqNMCWGyNycW2YvYcOe2hq7MPHnUGoWlcC/66AcgSB8q2OE/zI4Nzqm5fO0xe2
         NPx5cnjtTrcoNEHmDWbE+yCTSJ4KYaArRFXSn1O/Ih+ACjIyckNhWf9/o4zu6orItoVg
         7A1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=esOELIFQJI1QLJKcy4kgPF0gqd4X0RBlMXfXSl2FcY4=;
        b=CE+0RLWu0aa3RL9Sf+BBXvt9ul2UxY4HNkUoXq6F9IF79B2cf5na/Yhnq9wMJzcNW4
         cpnanPZDb8wNDSED13DGANpGKA/vfVa9O4wS1FFAWLjr++KbvuznHAd89std6bvVMrcL
         Zi4SyNIatqqaELW35ZtKg3loWjJ6wlLk0DedR/iZUKqAHR7dQc6TSXPQHidZ709DlGgg
         jYnR0ha4kfJdyPphGOQAGu/uzHW4Qta955N2n6/bo07Fwbi1k9kT0s1X99ighSlbJRzp
         hlc8bfBG1hcZfASn2zrv7G2cW1sGVmVTKFRGDwBXUsNRHE977jcx1wkUN/8I3mscMX1L
         3p0Q==
X-Gm-Message-State: AOAM531JQZgY5qylNSfOmJUYHtGgQkktWemffPIeSJEtAYLMpRqMH+XH
        fcC5ZHAyUv9aAo21Jd/MnIoi85Kku4Y=
X-Google-Smtp-Source: ABdhPJzz1zWikVXu/CD9s4fRez/rCWNH1xbEfAEQEwM1P/UotRkAgHOGkK9s0jkpvGgcqzwCqSckpA==
X-Received: by 2002:a5d:49cd:: with SMTP id t13mr12317170wrs.292.1590592978525;
        Wed, 27 May 2020 08:22:58 -0700 (PDT)
Received: from [192.168.0.12] (cpc87281-slou4-2-0-cust47.17-4.cable.virginm.net. [92.236.12.48])
        by smtp.gmail.com with ESMTPSA id y5sm3314875wrs.63.2020.05.27.08.22.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 08:22:57 -0700 (PDT)
Subject: Re: core sysctl
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>
References: <9e98156e-3ba9-e656-bb8f-c54229b5ac11@jguk.org>
 <CAKgNAkhkASJ8+Xe64_ifM1_GgrNSCd6Vx0GDdkJ7aFfJ7RG=7A@mail.gmail.com>
 <0e0f3d4e-b811-3423-ffe9-2fd68900c1a0@jguk.org>
 <CAKgNAkgRSAf2MVA-XMbvoQTk88T5j=Hn2-nyzZBo-tVrLxvbsA@mail.gmail.com>
From:   Jonny Grant <jg@jguk.org>
Message-ID: <0e4f5e7d-85bc-11d6-c73a-16509ab2a3e9@jguk.org>
Date:   Wed, 27 May 2020 16:22:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkgRSAf2MVA-XMbvoQTk88T5j=Hn2-nyzZBo-tVrLxvbsA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 27/05/2020 14:32, Michael Kerrisk (man-pages) wrote:
> Hi Jonny
> 
> On Wed, 27 May 2020 at 15:23, Jonny Grant <jg@jguk.org> wrote:
>>
>>
>>
>> On 27/05/2020 14:06, Michael Kerrisk (man-pages) wrote:
>>> Hi Jonny,
>>>
>>> On Mon, 25 May 2020 at 17:08, Jonny Grant <jg@jguk.org> wrote:
>>>>
>>>> Suggestion for some additional information on this page:
>>>>
>>>> http://man7.org/linux/man-pages/man5/core.5.html
>>>>
>>>> Could "Core dumps and systemd" be extended to give an
>>>> example of sysctl making a temporary change?
>>>>
>>>> eg set to the filename and signal that causes the core dump:
>>>>
>>>> # sysctl -w kernel.core_pattern="%e-%s.core"
>>>
>>> I'm a little confused: what do you mean by "making a *temporary*
>>> change" (i.e., where does "temporary" come into it)?
>>>
>>> Thanks,
>>>
>>> Michael
>>>
>>
>> As I understood, this core pattern is set until reboot.
> 
> Okay, now I understand. Next question: what's the value in having the
> signal number in the filename?

The signal number indicates the reason the core was dumped, eg 11 SIGSEGV,  SIGTRAP is 5.

%P %t %I also useful.
Cheers, Jonny
