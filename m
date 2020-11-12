Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EBB992B0FAF
	for <lists+linux-man@lfdr.de>; Thu, 12 Nov 2020 21:57:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727103AbgKLU5j (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Nov 2020 15:57:39 -0500
Received: from mout.gmx.net ([212.227.17.20]:51043 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726844AbgKLU5j (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 12 Nov 2020 15:57:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1605214657;
        bh=vg/a2Dg0Wh8Vq2Lg9z2RZaJ0Zi2RicWZpP9BOJ0GEog=;
        h=X-UI-Sender-Class:Date:In-Reply-To:References:Subject:To:CC:From;
        b=QxIMqQz7AWM2w+y6/4qv1eG/JdoicRytSEfz4OeYpZHZ2AHjCaHdIiofgtJ0BJ4zP
         rYcKxp4ayMVqf+WRJb6m6e/5J+cCxnMVr+qGM36vrsFC3xG3Al9iJMU31qZKW1/WxI
         e/nyCqIs4UVKYeHHKAPgvCvPETn4umfzJL6boJ34=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from android-2b37cbcc6a0ad27c.fritz.box ([178.202.41.135]) by
 mail.gmx.com (mrgmx104 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MmlTC-1jubSR1bwE-00jp2t; Thu, 12 Nov 2020 21:57:37 +0100
Date:   Thu, 12 Nov 2020 21:57:35 +0100
User-Agent: K-9 Mail for Android
In-Reply-To: <90f0f681-0770-9975-f370-415300d29fa9@gmail.com>
References: <e18cbe1f-5dcf-c717-5790-912af6bbfa41@gmx.de> <24b18d8a-84cf-17c6-12cf-f2d0c979b6ad@gmail.com> <70217a4d-9525-a186-4560-02216dd4546a@gmx.de> <90f0f681-0770-9975-f370-415300d29fa9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: sigaction.2: clarification for SA_NODEFER needed
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
CC:     mtk.manpages@gmail.com
From:   Heinrich Schuchardt <xypron.glpk@gmx.de>
Message-ID: <16CBDA59-F868-47E5-B88F-C9CF235BF8BD@gmx.de>
X-Provags-ID: V03:K1:BatHnPvHqUuMEPNMjuliVekNbddWf/6xltcda5wKiQp5mIA6TrP
 YuVjWz23J/UlhTE3PoV5ROCsbrTGpYWgD0V4qfNylKrqfKE9i4L6jSyXdvFxDo26knzFi6N
 8tRcG/uYW5Dqy5LhiO9XV/jzDK9T+1KzgjkVVMh3BqtcUm0iesFIxXcVo4yYxA0bvGSSKkD
 svPGKQMwX/Ee6YT59Eh1Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:kP1i4Ku4I/I=:siU4T19jURMbXqBt5QNMFt
 7wlrmIGNXMikFWtJkisPf+7R8RFJYGm0gH4aRuGMdDq0gWu0Ba3314RuzLWFQUNMXNUg8ARyF
 oHbZHCeaId+jD0HYM4XgcheA3elvmisqnDlOO9s07ojpKRl1nNMQ2gcF1EAlMsAGWnyT9agvC
 DNets4RsMQHvpo22GA7GgDK/BB4Hrxr/aHig9lOZb8KgfQEiGICduF9Q4Sq8+JDzsJgNheL/F
 qfLW/Z1d3Tix6ZzetGOSTx1A9xTLtPIRFWS82xeZG7baVghwF+7tWQmXw9HxOi4An88khlNjR
 NPDww/Ip+du7OzNha6pdL5rwkdl3x12+sz1fAqL6oaNQhfyCiD0CU44lt9T4bijIjllujavFr
 hxuDfday6Cujx99yM5869QogQzWHkkFMT5YW4p/PoaK8xRhulIUuuZFUSBdm285i9oUrOnVMr
 eNdwLCXrJ5wL0+Zhtuwogu8XKVlCgK5mT3hNZdPyBtlK/RrsqWTAXptKTLIItXyJCNStG3ZT4
 QX44QiR4X9FyM83en0RASlYWuj9JMljjIellxt8iuT6IBHlC8lPRO0KhfN8X9ud+6+jCT/rSy
 BA8n7L63nJG3ohyUOteNSNSuDuIIIgtXCJQmg9teoKQqptTeNgLe1V8mtx0RIuTlw4Nna5NRg
 ZuMRS7DY3OYzPXJCe5Wh0DZos1cya0FCd68512qDcggfOqGahQiU25I09qiCribNw8avbn+TO
 Jp7oRMN3hbeJBlPweenZQGYzHnRgNQLrpBZ28ljyMUsnrxMNO+aEYa1sn5FNYd474eDzKQBkn
 HeOLqGSjRKA0b1zZuzHgidJ2G66Ilz0HZdB0sVpmThSxOdP2B962M822/+Y5/dc5XDzwTlIFv
 evBLKqeq02F7bmjZx3jg==
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Am 12=2E November 2020 21:45:56 MEZ schrieb "Michael Kerrisk (man-pages)" <=
mtk=2Emanpages@gmail=2Ecom>:
>On 11/12/20 5:25 PM, Heinrich Schuchardt wrote:
>
>[=2E=2E=2E]
>
>> Hello Michael,
>>=20
>> this text is very helpful=2E
>>=20
>> "Signal mask and pending signals" already mentions that the signal
>mask
>> controls the blocking of signals=2E But maybe you could reiterate this
>in
>> 1d) and in the note below 5)=2E
>
>Yes, that perhaps does not hurt=2E Some light tweaks:
>
>   Execution of signal handlers
>     Whenever  there is a transition from kernel-mode to user-mode exe=E2=
=80=90
>     cution (e=2Eg=2E, on return from a system  call  or  scheduling  of =
 a
>     thread onto the CPU), the kernel checks whether there is a pending
>     signal for which the process has established a signal handler=2E  If
>       there is such a pending signal, the following steps occur:
>
>     1=2E The  kernel performs the necessary preparatory steps for execu=
=E2=80=90
>          tion of the signal handler:
>
>          a) The signal is removed from the set of pending signals=2E
>
>        b) If the thread has defined an alternate signal  stack  (using
>             sigaltstack(2)), then that stack is installed=2E
>
>        c) Various  pieces  of  signal-related context are saved into a
>           "hidden" frame that is created on the stack=2E  The saved  in=
=E2=80=90
>             formation includes:
>
>           + the  program  counter  register  (i=2Ee=2E, the address of t=
he
>             next instruction in the main program that should  be  exe=E2=
=80=90
>               cuted when the signal handler returns);
>
>             + the thread's current signal mask;
>
>             + the thread's alternate signal stack settings=2E
>
>        d) The  thread's  signal  mask is adjusted by adding the signal
>           (unless the handler was  established  using  the  SA_NODEFER
>           flag)  as  well  as  any  additional  signals  specified  in
>           act->sa_mask when sigaction(2) was  called=2E   These  signals
>             are thus blocked while the handler executes=2E
>
>     2=2E The  kernel  constructs  a  frame for the signal handler on the
>        stack=2E  Within that frame, the return address points to a piece
>        of  user-space  code called the signal trampoline (described in
>          sigreturn(2))=2E
>
>     3=2E The kernel passes control back to user-space,  where  execution
>          commences at the start of the signal handler function=2E
>
>     4=2E When  the  signal handler returns, control passes to the signal
>          trampoline code=2E
>
>     5=2E The signal trampoline calls sigreturn(2), a  system  call  that
>        uses the information in the "hidden" stack frame to restore the
>        thread's signal mask and  alternate  stack  settings  to  their
>        state before the signal handler was called=2E  Upon completion of
>        the call to sigreturn(2), the kernel transfers control back  to
>        user  space,  and the thread recommences execution at the point
>          where it was interrupted by the signal handler=2E
>
>     Note that if the signal handler does not return (e=2Eg=2E, control  =
is
>     transferred  out  of  the  handler  using sigsetjmp(3) or swapcon=E2=
=80=90
>     text(3), or the handler executes a new  program  with  execve(2)),
>     then the final step is not performed=2E  In particular, in such sce=
=E2=80=90
>     narios it is the programmer's responsibility to restore the  state
>     of the signal mask, if it is desired unblock the signals that were
>       blocked on entry to the signal handler=2E

Is there a function to change the signal mask without leaving the handler?

Otherwise looks good to me=2E

Best regards

Heinrich

>
>Thanks,
>
>Michael

