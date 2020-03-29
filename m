Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D9D71197070
	for <lists+linux-man@lfdr.de>; Sun, 29 Mar 2020 23:06:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728493AbgC2VG4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 29 Mar 2020 17:06:56 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:37384 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728481AbgC2VGz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 29 Mar 2020 17:06:55 -0400
Received: by mail-wm1-f66.google.com with SMTP id j19so393973wmi.2;
        Sun, 29 Mar 2020 14:06:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=icwY7JIFcNczEa1rCrz7zrplk1TvJEdie0LkxroVzWg=;
        b=Sv9/5ZmfHgCEsGzy74Xlpdr60eIaBDmv+LW+X7slbOZ+z8rWlv41w+lp6hgWjCFhf3
         3mmAMuQaMBWJuRtlcC87+H5WIAEZnK9n6fBbXphEVi7ePV3CrjMQfOHl39R/xcC2XaSh
         vYqe10TblJsi83bDFppEzNOvSeuBqIg4El1CFG6oAnrCPP+Z/4+YwByD+yO4zT4IK5xD
         WTqoVNFoWxbwOhdSiGA6ANlQuiNE3FKoTqfsOOuhIdqHUX/xd8ttPKcTOIN5fKHnkK7c
         6rmBAzml/6IDYO/qJb5p6sIQKuB/FsFzVzCEiJNxSnUK1WFrysabFL7IHXHQu8GMmbSv
         zmcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=icwY7JIFcNczEa1rCrz7zrplk1TvJEdie0LkxroVzWg=;
        b=Mn8PENeAAfDw4HOb43qUeyem5XoAPfz46hoV6ZB/IXyJl6Jdr/UCyy6YLbUZuPMDpx
         GRqDxMIzESF4lZMwFpF/nF5L7kX09Ca1ktpy4f7FS5teW+ZBL8V7b+rXBqlEeLSlspuq
         TnWmkj7kswgGvVCPCa8y5QaO9pAz17dWUrpCGAYWrqUNWe5yGUeRlvaBXzdF7v8l4qV7
         GbTjvDOGlZ7wJeJGV363endw5CBdmiYk6c1dN5Qc/WdPY94/PhcrCH8FOn0T6MfUSqKT
         sO6Mk8l4/CgdjMvRL1k7RpGAfwU7TlWvPWsnXalN72+74FRLuTsBbiVWy6tijwHxItWC
         xE9g==
X-Gm-Message-State: ANhLgQ0LXmkzroUBuOLnIoNjY6sK23EZL7gmxKxcEby/EV2tDG7Ohxxl
        NsoIL2S2+CHVkU+yyQf6MYwm84Yp
X-Google-Smtp-Source: ADFU+vuGjBge6b2ShLa+K3mWaejSHdmte27ajV2jJ/1im+8CRMb7uhxGA2B17dNcyUhLJAwTSU8AKw==
X-Received: by 2002:a1c:e914:: with SMTP id q20mr9668763wmc.105.1585516012641;
        Sun, 29 Mar 2020 14:06:52 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id u11sm18769238wrt.29.2020.03.29.14.06.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Mar 2020 14:06:52 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Thomas Gleixner <tglx@linutronix.de>,
        lkml <linux-kernel@vger.kernel.org>, arul.jeniston@gmail.com
Subject: Re: [PATCH] timerfd_create.2: Included return value 0
To:     "devi R.K" <devi.feb27@gmail.com>
References: <CAJymdbxJNag1W0vR9Ysm7_y91HwLAu4QaSMKZbed4emT1DYvww@mail.gmail.com>
 <55aa30be-5894-ae52-ffd4-5f2a82aa5ad5@gmail.com>
 <CAJymdbwfm7EypQfXRqWZHbfj2SKk7PCP7SMccz6bmJWSauDqPQ@mail.gmail.com>
 <CAJymdby8pDASq5Xv7DeTJ5cq1NXPe1jUWwApxZ5o-huaEXUrjw@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3cbd0919-c82a-cb21-c10f-0498433ba5d1@gmail.com>
Date:   Sun, 29 Mar 2020 23:06:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAJymdby8pDASq5Xv7DeTJ5cq1NXPe1jUWwApxZ5o-huaEXUrjw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC widened]

Hello Devi,

[It's best not to top post. I've rearranged the reply 
for readability.]

[Greetings, Thomas; now I recall a conversation we had in Lyon :-) ]


On 3/27/20 5:29 AM, devi R.K wrote:
> 
> On Thu, Mar 26, 2020 at 2:16 PM Michael Kerrisk (man-pages) <
> mtk.manpages@gmail.com> wrote:
> 
>> Hello Devi,
>>
>> On 3/18/20 3:04 PM, devi R.K wrote:
>>> Added a return value 0 for timerfd_read which happens when there is a
>>> bigger backward time drift*.*
>>>
>>> Signed-off-by: DEVI RK <devi.feb27@gmail.com>
>>
>> Can you say some more please about how you verified this and/or
>> point me at the relevant kernel source code? At a simple attempt,
>> I can't replicate the behavior you describe.

> We have written a program using real time clock and it has been raised to
> the community.
> 
> https://lore.kernel.org/lkml/alpine.DEB.2.21.1908191943280.1796@nanos.tec.linutronix.de/T/

It would be helpful if you had pointed me to this in the first
place, and also CCed the people from that earlier discussion.
I've widened the CC list.

Thanks for pointing me at that thread. In particular, the test
program at
https://lore.kernel.org/lkml/alpine.DEB.2.21.1908191943280.1796@nanos.tec.linutronix.de/T/#m489d81abdfbb2699743e18c37657311f8d52a4cd

I've now replicated this behavior with a program of my own.

>>> ---
>>>  man2/timerfd_create.2 | 4 ++++
>>>  1 file changed, 4 insertions(+)
>>>
>>> diff --git a/man2/timerfd_create.2 b/man2/timerfd_create.2
>>> index 066e0be..ccced98 100644
>>> --- a/man2/timerfd_create.2
>>> +++ b/man2/timerfd_create.2
>>> @@ -317,6 +317,10 @@ fails with the error
>>>  if the real-time clock undergoes a discontinuous change.
>>>  (This allows the reading application to discover
>>>  such discontinuous changes to the clock.)
>>> +.IP
>>> +A
>>> +.BR read (2)
>>> +may return 0 if the system clock undergoes a discontinuous change.
>>>  .TP
>>>  .BR poll "(2), " select "(2) (and similar)"
>>>  The file descriptor is readable

I think this patch does not really capture the details
properly. The immediately preceding paragraph says:

         If  the  associated  clock  is  either  CLOCK_REALTIME   or
         CLOCK_REALTIME_ALARM,     the     timer     is     absolute
         (TFD_TIMER_ABSTIME), and the  flag  TFD_TIMER_CANCEL_ON_SET
         was  specified when calling timerfd_settime(), then read(2)
         fails with the  error  ECANCELED  if  the  real-time  clock
         undergoes a discontinuous change.  (This allows the reading
         application to discover such discontinuous changes  to  the
         clock.)

Following on from that, I think we should have a pargraph that says
something like:

         If  the  associated  clock  is  either  CLOCK_REALTIME   or
         CLOCK_REALTIME_ALARM,     the     timer     is     absolute
         (TFD_TIMER_ABSTIME), and the  flag  TFD_TIMER_CANCEL_ON_SET
         was not specified when calling timerfd_settime(), then a
         discontinuous negative change to the clock 
         (e.g., clock_settime(2)) may cause read(2) to unblock, but
         return a value of 0 (i.e., no bytes read), if the clock
         change occurs after the time expired, but before the
         read(2) on the timerfd file descriptor.

This seems consistent with Thomas's observations in
https://lore.kernel.org/lkml/alpine.DEB.2.21.1908191943280.1796@nanos.tec.linutronix.de/T/#m49b78122b573a2749a05b720dc9fa036546db490

Do you agree?

Thomas, if you had a moment, your input would, as always,
be appreciated.

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
