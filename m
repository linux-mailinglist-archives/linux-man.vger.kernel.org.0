Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2A4F91E5C6A
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2020 11:51:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387557AbgE1JvK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 28 May 2020 05:51:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387493AbgE1JvK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 28 May 2020 05:51:10 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2CAAC05BD1E
        for <linux-man@vger.kernel.org>; Thu, 28 May 2020 02:51:09 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id r9so2462143wmh.2
        for <linux-man@vger.kernel.org>; Thu, 28 May 2020 02:51:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=s9jgd90vN9IZjGwAz4BmUFosjX+SepBC1VTk+3DMk/8=;
        b=eqvzq5J2Bmy79HsYI6M1HW7ygzk/fgFi5qP7PHeXJAKIUByhzQMSjHPSpO13iiKbzW
         kobCQihaEh0/RtIxD244X6BroXWmTr1iIbKc1tLTkNpRdVT89VZSAloOdDHspIf/WwlD
         jWAIRQgPLAxDcuEQfPCwQMQfC06fBFhvDIWweiDdYHQEvtv90G4BPLC69+sR5RV69Yr2
         XRhkomoF+8fnyEu9nESSSHbeNCMwjf5naH5r/1QF/lG7VO4883ZqqWRtMsUHmJyrHsNl
         B0CHadWBkD1jkiEaY0zUt7mwgeQCQjWoXFOCHTFzxHLhED/XZDUhZDVG0Qr5UzFnzjeG
         cnJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=s9jgd90vN9IZjGwAz4BmUFosjX+SepBC1VTk+3DMk/8=;
        b=IZg0JELVzUXcVy21Era/DRPmKCZfYsAXt/cLYiPb6n2NQALwDGPm2a9NK/LGoRfw4F
         E3DqpdTslsNUVNy2n0VOYuVtfqU0fyTvcaXzlm2l4jB6EovSZ33Ja7hK4cqWAS4qrfUX
         xf1xPt4ZyH8bU6d+ZxZvYZ2d6oREXij9l4bQZ6j5NnebPBaNHUUJeEZljt5lT+SPJa86
         vr66z0EXGDGjRqThgAUwWke7HzB2Ak+1/RkBPhqkNT1slZl12nKoXhKBBzH3HQ7V3smL
         /W4gDGc3j/aPxYcselZxZ+c+S3BdRMw7I4+5b60bz9o45xTzowLk0q6H3HMydjLus3fW
         kX5w==
X-Gm-Message-State: AOAM5314mOwAAi9MeVc3K9xP60wnJzsMhmfT1Pweq32NPay7oErJTNpo
        1hwcSvgahTaO275VQ/dhF9uRq27tNso=
X-Google-Smtp-Source: ABdhPJyv4myiuUoo+pAMWSA4K7bKhDUOLUYe5PTlgsraIZLCh5X8OwO/YBrF+621SQo5BiWg/Ma7hQ==
X-Received: by 2002:a1c:a74d:: with SMTP id q74mr2587014wme.177.1590659468249;
        Thu, 28 May 2020 02:51:08 -0700 (PDT)
Received: from [192.168.0.12] (cpc87281-slou4-2-0-cust47.17-4.cable.virginm.net. [92.236.12.48])
        by smtp.gmail.com with ESMTPSA id a10sm5571285wmf.46.2020.05.28.02.51.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 May 2020 02:51:07 -0700 (PDT)
Subject: Re: core sysctl
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <9e98156e-3ba9-e656-bb8f-c54229b5ac11@jguk.org>
 <CAKgNAkhkASJ8+Xe64_ifM1_GgrNSCd6Vx0GDdkJ7aFfJ7RG=7A@mail.gmail.com>
 <0e0f3d4e-b811-3423-ffe9-2fd68900c1a0@jguk.org>
 <CAKgNAkgRSAf2MVA-XMbvoQTk88T5j=Hn2-nyzZBo-tVrLxvbsA@mail.gmail.com>
 <0e4f5e7d-85bc-11d6-c73a-16509ab2a3e9@jguk.org>
 <6d57dced-2c9d-480b-8e4e-02ecbe42e4a9@gmail.com>
From:   Jonny Grant <jg@jguk.org>
Message-ID: <40375a37-3f28-9f5f-3512-ecfd82277c49@jguk.org>
Date:   Thu, 28 May 2020 10:51:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <6d57dced-2c9d-480b-8e4e-02ecbe42e4a9@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 28/05/2020 10:16, Michael Kerrisk (man-pages) wrote:
> Hello Jonny,
> 
> On 5/27/20 5:22 PM, Jonny Grant wrote:
>>
>>
>> On 27/05/2020 14:32, Michael Kerrisk (man-pages) wrote:
>>> Hi Jonny
>>>
>>> On Wed, 27 May 2020 at 15:23, Jonny Grant <jg@jguk.org> wrote:
>>>>
>>>>
>>>>
>>>> On 27/05/2020 14:06, Michael Kerrisk (man-pages) wrote:
>>>>> Hi Jonny,
>>>>>
>>>>> On Mon, 25 May 2020 at 17:08, Jonny Grant <jg@jguk.org> wrote:
>>>>>>
>>>>>> Suggestion for some additional information on this page:
>>>>>>
>>>>>> http://man7.org/linux/man-pages/man5/core.5.html
>>>>>>
>>>>>> Could "Core dumps and systemd" be extended to give an
>>>>>> example of sysctl making a temporary change?
>>>>>>
>>>>>> eg set to the filename and signal that causes the core dump:
>>>>>>
>>>>>> # sysctl -w kernel.core_pattern="%e-%s.core"
>>>>>
>>>>> I'm a little confused: what do you mean by "making a *temporary*
>>>>> change" (i.e., where does "temporary" come into it)?
>>>>>
>>>>> Thanks,
>>>>>
>>>>> Michael
>>>>>
>>>>
>>>> As I understood, this core pattern is set until reboot.
>>>
>>> Okay, now I understand. Next question: what's the value in having the
>>> signal number in the filename?
>>
>> The signal number indicates the reason the core was dumped, > eg 11 SIGSEGV,  SIGTRAP is 5.
> 
> Sure, it tells us what signal triggered the core dump.
> My reason for the question was that it doesn't tell us the
> *reason* for the core dump--for example, SIGSEGV can be
> generated for many reasons.

Yes you're right. I'm sure you know all this already, there are a few crash handlers that uses gdb to generate a 
backtrace automatically.

Thank you for adding the change
Jonny
