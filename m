Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1930D198618
	for <lists+linux-man@lfdr.de>; Mon, 30 Mar 2020 23:09:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728537AbgC3VJ3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Mar 2020 17:09:29 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:35317 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728317AbgC3VJ3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 30 Mar 2020 17:09:29 -0400
Received: by mail-wm1-f66.google.com with SMTP id i19so400047wmb.0;
        Mon, 30 Mar 2020 14:09:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ACdIJ3YCitAVdhQ/MSxutWsv/modcuO99U0TDBWSkuU=;
        b=hgl1nb9VtuGDiLHNZwwIk/oztamJ18atAbKqHRgA6jhAurysdklOpiiTd17Vj7tj2w
         cD6YostrUEX6ImQYMtmMEsGXwTk4VbgmUonJXN8RYoD7BbpSHIbr3hh+x1p6q1S4usUx
         6NNovfpVfsiLhGCvJhyVJGEon9F0wl4dnDcxvFOqPd2vb9wwu4xJJUv8X1Cx/TuoC5I2
         zAA+1+h2SN25N/uVNxOah59byRXO8OQ9S2BJ0bBqdEG9zIEoslhoBIUsR/d0Aopa+/X7
         rhQkXC4XAJElc+oNZJ+/zip8YO55WNGkrzhV7j6p0qxzKSa/409Viz3G1Pzjfa1uEZ3f
         LW0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ACdIJ3YCitAVdhQ/MSxutWsv/modcuO99U0TDBWSkuU=;
        b=PLusY9Zk0U0GwpLr2JiyewIXhoh+jlb6uqCwshLBdTtjVGkUZVE8fB9Tmxu/CWJm2l
         wbPzOtWpgA35sTo58wUpAunQXZxCn7tREN30WNUFxYciuKFpB1QJEXedQKB2vlKeuHc8
         SUE18VwuCX8MgLSqfY0xEeMOn1ctdS4gwx21B8aOA5JE4qpfgKt7mvkQ2YAKmpVLvONP
         yT2c8is3tVZ4ZokL/91jSHt82JhChjgfS/ycGolQamhis+kBVZj6OActDsHbDaoi9DCL
         9kjNDKa5kJYvUAk9YdsBvyp+DGohZK/Czdhh/obOVzi09RgnN1hhmOfCkwdlpvD8TQB4
         Z0FQ==
X-Gm-Message-State: ANhLgQ35ZKhUFb89Dbgpil/E1WG0FqLtt5ooq3dMmxXQua/ji6IxCzZg
        gMsVfu8FUq/wnwcS+/kwTnk=
X-Google-Smtp-Source: ADFU+vsl21hI3DlgaX+m4iBu27eT2rDX2FdW5UeZ3igxTvPlYnUAIZjG8yZWBXJPz1LxaFbXXkbAZg==
X-Received: by 2002:a05:600c:292:: with SMTP id 18mr21685wmk.3.1585602566559;
        Mon, 30 Mar 2020 14:09:26 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id b15sm23330294wru.70.2020.03.30.14.09.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 14:09:25 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        lkml <linux-kernel@vger.kernel.org>, arul.jeniston@gmail.com
Subject: Re: [PATCH] timerfd_create.2: Included return value 0
To:     Thomas Gleixner <tglx@linutronix.de>,
        "devi R.K" <devi.feb27@gmail.com>
References: <CAJymdbxJNag1W0vR9Ysm7_y91HwLAu4QaSMKZbed4emT1DYvww@mail.gmail.com>
 <55aa30be-5894-ae52-ffd4-5f2a82aa5ad5@gmail.com>
 <CAJymdbwfm7EypQfXRqWZHbfj2SKk7PCP7SMccz6bmJWSauDqPQ@mail.gmail.com>
 <CAJymdby8pDASq5Xv7DeTJ5cq1NXPe1jUWwApxZ5o-huaEXUrjw@mail.gmail.com>
 <3cbd0919-c82a-cb21-c10f-0498433ba5d1@gmail.com>
 <87a73ywzbv.fsf@nanos.tec.linutronix.de>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d79b3520-77ac-199e-6576-ab9f235ac297@gmail.com>
Date:   Mon, 30 Mar 2020 23:09:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <87a73ywzbv.fsf@nanos.tec.linutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Thomas,

On 3/30/20 12:50 AM, Thomas Gleixner wrote:
> Micheal,
> 
> "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com> writes:
>> [Greetings, Thomas; now I recall a conversation we had in Lyon :-) ]
> 
> Hehe.
> 
>> I think this patch does not really capture the details
>> properly. The immediately preceding paragraph says:
>>
>>          If  the  associated  clock  is  either  CLOCK_REALTIME   or
>>          CLOCK_REALTIME_ALARM,     the     timer     is     absolute
>>          (TFD_TIMER_ABSTIME), and the  flag  TFD_TIMER_CANCEL_ON_SET
>>          was  specified when calling timerfd_settime(), then read(2)
>>          fails with the  error  ECANCELED  if  the  real-time  clock
>>          undergoes a discontinuous change.  (This allows the reading
>>          application to discover such discontinuous changes  to  the
>>          clock.)
>>
>> Following on from that, I think we should have a pargraph that says
>> something like:
>>
>>          If  the  associated  clock  is  either  CLOCK_REALTIME   or
>>          CLOCK_REALTIME_ALARM,     the     timer     is     absolute
>>          (TFD_TIMER_ABSTIME), and the  flag  TFD_TIMER_CANCEL_ON_SET
>>          was not specified when calling timerfd_settime(), then a
>>          discontinuous negative change to the clock 
>>          (e.g., clock_settime(2)) may cause read(2) to unblock, but
>>          return a value of 0 (i.e., no bytes read), if the clock
>>          change occurs after the time expired, but before the
>>          read(2) on the timerfd file descriptor.
> 
> Yes, that's correct. Accurate as always!

Thanks. (It took me a while to nut it out, actually.)

> This is pretty much in line with clock_nanosleep(CLOCK_REALTIME,
> TIMER_ABSTIME) which has a similar problem vs. observability in user
> space.
> 
> clock_nanosleep(2) mutters:
> 
>   "POSIX.1 specifies that after changing the value of the CLOCK_REALTIME
>    clock via clock_settime(2), the new clock value shall be used to
>    determine the time at which a thread blocked on an absolute
>    clock_nanosleep() will wake up; if the new clock value falls past the
>    end of the sleep interval, then the clock_nanosleep() call will return
>    immediately."
> 
> which can be interpreted as guarantee that clock_nanosleep() never
> returns prematurely, 

<nod>

> i.e. the assert() in the below code would indicate
> a kernel failure:
> 
>    ret = clock_nanosleep(CLOCK_REALTIME, TIMER_ABSTIME, &expiry, NULL);
>    if (!ret) {
>          clock_gettime(CLOCK_REALTIME, &now);
>          assert(now >= expiry);
>    }
> 
> But that assert can trigger when CLOCK_REALTIME was modified after the
> timer fired and the kernel decided to wake up the task and let it return
> to user space.
> 
>    clock_nanosleep(..., &expiry)
>      arm_timer(expires);
>      schedule();
> 
>    -> timer interrupt
>       now = ktime_get_real();
>       if (expires <= now)
>               -------------------------------- After this point
>          wakeup();                             clock_settime(2) or
>                                                adjtimex(2) which
>                                                makes CLOCK_REALTIME
>                                                jump back far enough will
>                                                cause the above assert
>                                                to trigger.
> 
>    ...
>    return from syscall (retval == 0)
> 
> There is no guarantee against clock_settime() coming after the
> wakeup. Even if we put another check into the return to user path then
> we won't catch a clock_settime() which comes right after that and before
> user space invokes clock_gettime().

<nod>

> POSIX spec Issue 7 (2018 edition) says:
> 
>  The suspension for the absolute clock_nanosleep() function (that is,
>  with the TIMER_ABSTIME flag set) shall be in effect at least until the
>  value of the corresponding clock reaches the absolute time specified by
>  rqtp.
> 
> And that's what the kernel implements for clock_nanosleep() and timerfd
> behaves exactly the same way.
> 
> The wakeup of the waiter, i.e. task blocked in clock_nanosleep(2),
> read(2), poll(2), is not happening _before_ the absolute time specified
> is reached.
> 
> If clock_settime() happens right before the expiry check, then it does
> the right thing, but any modification to the clock after the wakeup
> cannot be mitigated. At least not in a way which would make the assert()
> in the example code above a reliable indicator for a kernel fail.
> 
> That's the reason why I rejected the attempt to mitigate that particular
> 0 tick issue in timerfd as it would just scratch a particular itch but
> still not provide any guarantee. So having the '0' return documented is
> the right way to go.

Thanks for the incredibly detailed follow-up Thomas (which all 
landed in my commit message). I've applied a patch almost exactly
the same as the text I showed above (and it's pushed to Git).

All of 2020 is a bust, I expect. Perhaps we see us at a conference
in 2021 ;-).

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
