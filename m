Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8A70D1970DD
	for <lists+linux-man@lfdr.de>; Mon, 30 Mar 2020 00:50:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728765AbgC2WuS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 29 Mar 2020 18:50:18 -0400
Received: from Galois.linutronix.de ([193.142.43.55]:57188 "EHLO
        Galois.linutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727591AbgC2WuR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 29 Mar 2020 18:50:17 -0400
Received: from p5de0bf0b.dip0.t-ipconnect.de ([93.224.191.11] helo=nanos.tec.linutronix.de)
        by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
        (Exim 4.80)
        (envelope-from <tglx@linutronix.de>)
        id 1jIgkv-0003TB-BJ; Mon, 30 Mar 2020 00:50:13 +0200
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
        id D0BCF101150; Mon, 30 Mar 2020 00:50:12 +0200 (CEST)
From:   Thomas Gleixner <tglx@linutronix.de>
To:     "Michael Kerrisk \(man-pages\)" <mtk.manpages@gmail.com>,
        "devi R.K" <devi.feb27@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        lkml <linux-kernel@vger.kernel.org>, arul.jeniston@gmail.com
Subject: Re: [PATCH] timerfd_create.2: Included return value 0
In-Reply-To: <3cbd0919-c82a-cb21-c10f-0498433ba5d1@gmail.com>
References: <CAJymdbxJNag1W0vR9Ysm7_y91HwLAu4QaSMKZbed4emT1DYvww@mail.gmail.com> <55aa30be-5894-ae52-ffd4-5f2a82aa5ad5@gmail.com> <CAJymdbwfm7EypQfXRqWZHbfj2SKk7PCP7SMccz6bmJWSauDqPQ@mail.gmail.com> <CAJymdby8pDASq5Xv7DeTJ5cq1NXPe1jUWwApxZ5o-huaEXUrjw@mail.gmail.com> <3cbd0919-c82a-cb21-c10f-0498433ba5d1@gmail.com>
Date:   Mon, 30 Mar 2020 00:50:12 +0200
Message-ID: <87a73ywzbv.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Micheal,

"Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com> writes:
> [Greetings, Thomas; now I recall a conversation we had in Lyon :-) ]

Hehe.

> I think this patch does not really capture the details
> properly. The immediately preceding paragraph says:
>
>          If  the  associated  clock  is  either  CLOCK_REALTIME   or
>          CLOCK_REALTIME_ALARM,     the     timer     is     absolute
>          (TFD_TIMER_ABSTIME), and the  flag  TFD_TIMER_CANCEL_ON_SET
>          was  specified when calling timerfd_settime(), then read(2)
>          fails with the  error  ECANCELED  if  the  real-time  clock
>          undergoes a discontinuous change.  (This allows the reading
>          application to discover such discontinuous changes  to  the
>          clock.)
>
> Following on from that, I think we should have a pargraph that says
> something like:
>
>          If  the  associated  clock  is  either  CLOCK_REALTIME   or
>          CLOCK_REALTIME_ALARM,     the     timer     is     absolute
>          (TFD_TIMER_ABSTIME), and the  flag  TFD_TIMER_CANCEL_ON_SET
>          was not specified when calling timerfd_settime(), then a
>          discontinuous negative change to the clock 
>          (e.g., clock_settime(2)) may cause read(2) to unblock, but
>          return a value of 0 (i.e., no bytes read), if the clock
>          change occurs after the time expired, but before the
>          read(2) on the timerfd file descriptor.

Yes, that's correct. Accurate as always!

This is pretty much in line with clock_nanosleep(CLOCK_REALTIME,
TIMER_ABSTIME) which has a similar problem vs. observability in user
space.

clock_nanosleep(2) mutters:

  "POSIX.1 specifies that after changing the value of the CLOCK_REALTIME
   clock via clock_settime(2), the new clock value shall be used to
   determine the time at which a thread blocked on an absolute
   clock_nanosleep() will wake up; if the new clock value falls past the
   end of the sleep interval, then the clock_nanosleep() call will return
   immediately."

which can be interpreted as guarantee that clock_nanosleep() never
returns prematurely, i.e. the assert() in the below code would indicate
a kernel failure:

   ret = clock_nanosleep(CLOCK_REALTIME, TIMER_ABSTIME, &expiry, NULL);
   if (!ret) {
         clock_gettime(CLOCK_REALTIME, &now);
         assert(now >= expiry);
   }

But that assert can trigger when CLOCK_REALTIME was modified after the
timer fired and the kernel decided to wake up the task and let it return
to user space.

   clock_nanosleep(..., &expiry)
     arm_timer(expires);
     schedule();

   -> timer interrupt
      now = ktime_get_real();
      if (expires <= now)
              -------------------------------- After this point
         wakeup();                             clock_settime(2) or
                                               adjtimex(2) which
                                               makes CLOCK_REALTIME
                                               jump back far enough will
                                               cause the above assert
                                               to trigger.

   ...
   return from syscall (retval == 0)

There is no guarantee against clock_settime() coming after the
wakeup. Even if we put another check into the return to user path then
we won't catch a clock_settime() which comes right after that and before
user space invokes clock_gettime().

POSIX spec Issue 7 (2018 edition) says:

 The suspension for the absolute clock_nanosleep() function (that is,
 with the TIMER_ABSTIME flag set) shall be in effect at least until the
 value of the corresponding clock reaches the absolute time specified by
 rqtp.

And that's what the kernel implements for clock_nanosleep() and timerfd
behaves exactly the same way.

The wakeup of the waiter, i.e. task blocked in clock_nanosleep(2),
read(2), poll(2), is not happening _before_ the absolute time specified
is reached.

If clock_settime() happens right before the expiry check, then it does
the right thing, but any modification to the clock after the wakeup
cannot be mitigated. At least not in a way which would make the assert()
in the example code above a reliable indicator for a kernel fail.

That's the reason why I rejected the attempt to mitigate that particular
0 tick issue in timerfd as it would just scratch a particular itch but
still not provide any guarantee. So having the '0' return documented is
the right way to go.

Thanks,

        tglx


