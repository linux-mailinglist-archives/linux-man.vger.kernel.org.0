Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E38142B09DE
	for <lists+linux-man@lfdr.de>; Thu, 12 Nov 2020 17:25:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728756AbgKLQZ7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Nov 2020 11:25:59 -0500
Received: from mout.gmx.net ([212.227.15.15]:34155 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728426AbgKLQZ7 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 12 Nov 2020 11:25:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1605198356;
        bh=rw5C6M6f5zRA4lIgoycShTpvxbzfSgbh1awsgZ+wqfc=;
        h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
        b=Qf3kelM6edUvXfvc1n2/ISAUamy/e3JdGQrNhxMy2xwY04+HQHGegYUEG3PMebZKw
         jXcrD4qacs+PhNBOFMl+e/pve7Jdt8HtL0FBb/bTAyuotWAD89XQLPbJqbT+8TccX6
         8zDoNJk7Z9NRWuRYdAnATp7tbD+CuNRp4t/HfZ44=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.123.70] ([178.202.41.135]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M9o1v-1kgILp0yTV-005n8i; Thu, 12
 Nov 2020 17:25:56 +0100
Subject: Re: sigaction.2: clarification for SA_NODEFER needed
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
References: <e18cbe1f-5dcf-c717-5790-912af6bbfa41@gmx.de>
 <24b18d8a-84cf-17c6-12cf-f2d0c979b6ad@gmail.com>
From:   Heinrich Schuchardt <xypron.glpk@gmx.de>
Autocrypt: addr=xypron.glpk@gmx.de; prefer-encrypt=mutual; keydata=
 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 Eg==
Message-ID: <70217a4d-9525-a186-4560-02216dd4546a@gmx.de>
Date:   Thu, 12 Nov 2020 17:25:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <24b18d8a-84cf-17c6-12cf-f2d0c979b6ad@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:d5pRoTiqy1kGnqJqwB6AInre3qhu8X6u9F9CVSFSQijdK9LkfjN
 k4tGcY34IgmSuTKDJ8DBp7CZRafLwle0Se+T3quiREZBB2n8DFmXfwaLIBnMB4fsVCYDaOD
 Fn43FU3DYVESg/gNTzjDxOHo3KC4KXla6QWLVs0VtoenMtMZZzTN1f0vRErPQcET4rGmgPy
 0J3xVv08sRpMUjqiDMiNA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:UEOUD88QkmE=:72Z+0ncpa/ITz+nlNjPYia
 6jgiyFOHEQYcu5G0JHMtJlKkpv9n1hVARPnzvTWyXdj5Hqs0hv0wJuyDB+a8Z+dK4lu934FI4
 sa7XOMjPBmN5WMyKWzdjOzlLUWRV4l7XvdC/NZKiYH71ufRzHQawqto6sg+8jOKfv58ZJXhPX
 SmorCU0+Xu1vi7UxS6ZJpmbZP67pkIRxFP92/d6EUwrRJ4igHN3vobj6AkvEJmhu9FEr1oWrR
 rXf7IF6g/FLENoW7S4TFFHfTqDocwYOrEhixc0MSpE01ZcWNIvLF0U7cnsEK8LNFu/QsbPXzb
 3bY8afmOj+oHWN4Pd2aGB+U7j75U1VBV0COY57F+ZiLyKUDS8yKju6PiJc14dHnf6o4xmmzdu
 jVig2yDccV4nKphbHMjab7CHZAXK3T3D4UYl8ZSvSQ5smYQvLX76JaXZRoNEjiYvEtCx+EBg5
 2OELP0YreWzjp8ORxctVqsbXcQ0i4Ujy6Xh+NwCMRd4anXVg02U1qkrMNGgLla23qXyb3K+6R
 Ae9DktoTSxCw4DAsvvSNW0siSzZDCVSDJfWaMuKlzaBCjXTDF8mnc3vmF2oBwsA2kdStFdLul
 tdTXe6RFB3y0xlIDuh6EYzRzy2dEH1tdvQkVS/iEjpGpswoKz7Fnum1pLMrK9mnIwH0FUmojL
 sBEzZoyT8ZUPsW8382SeSqOCVzy3nzG7L6cVsx0z6ZaRW4WybgwJioMWpohEdvjkcKmAiXG4+
 Liu5VfESVLb8c5/NdR3LL7dbJLIQD8d0an+DjLYhJUhc3wqdWY7Zpy/XJjmV8cytp+KiuCZlr
 PhivnLTmQkkjwF4o2PLx2awfpRJA1G6iiPTQXs/XUcWoCqeDj2Xf3EzRguSJOE2Ie2o+oJp+V
 COA/ZbPQTqjFRIN7PqVA==
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12.11.20 16:37, Michael Kerrisk (man-pages) wrote:
> Hello Heinrich,
>
> On 11/11/20 1:42 AM, Heinrich Schuchardt wrote:
>> Hello Michael,
>>
>> I have been writing a handler for SIGILL and SIGSEGV which restarts the
>> program using execv() if an exception occurs. The handler never returns=
.
>>
>> >From the description of SA_NODEFER it was not evident that even if the
>> process is restarted with execv() the signal remains masked if
>> SA_NODEFER is not set as a flag.
>>
>> It think this behavior deserves mentioning on the sigaction.2 manpage, =
e.g.
>>
>> "Do not prevent the signal from being received from within its own
>> signal handler. A signal handler call is not terminated by calling
>> execv() as the pending signal property is inherited by the new process.=
"
>>
>> On the signal.7 manpage there is a paragraph "Signal mask and pending
>> signals". Here pending signals are mentioned. There is a sentence
>> "Between the time when it is generated and when it is delivered a signa=
l
>> is said to be pending."
>>
>> To me "delivered" means the instance when the signal handler is called
>> and not the instance when the signal handler returns. So said sentence
>> should be reworked, e.g.
>>
>> "Between the time when it is generated and when the signal handler
>> returns a signal is said to be pending."
>
> Your description above seems to conflate two concepts: the signal mask
> and pending signals. The sentence that you propose reworking is
> correct as it stands.
>
> The sequence of events goes like this:
>
> 1. Signal is generated
>
> [At this point the signal is pending, but typically the interval
> between this step and the next is typically so brief that the fact
> that the signal is pending is unobservable]
>
> 2. The kernel delivers the signal to the process:
>
> + The signal is removed from the set of pending signals.
> + The signal is added to the signal mask (unless SA_NOFER
>   was specified)
> + The kernel constructs a frame for the signal handler on the
>   user-space stack. The return address in that frame points to a
>   small piece of code in user-space called the signal trampoline.
> + The kernel passes control back to the process with execution
>   commencing at the start of the signal handler.
>
> 3. The signal handler executes.
>
> [At this point, the signal is not pending, but it is present in the
> signal mask.]
>
> 4. The signal handler returns.
>
> 5. Control passes to the signal trampoline, which calls
>    sigreturn(2).
>
> 6. When sigreturn(2) is called, the kernel once more has control
>    and restored various pieces of process state (e.g., the signal
>    mask) to the values they had before the signal handler was
>    invoked.
>
> 7. At completion of the sigreturn(2) system call, the kernel passes cont=
rol
>    back to the user-space program with execution recommencing at the
>    point where the main program was interrupted by the signal handler.
>
> Now, if you interrupt things before step 4 (e.g., with exec(),
> swapcontext(3), or possibly--depending on how sigsetjmp() was
> called--siglongjmp()), then of course the remaining steps are not
> performed.
>
> I've added a few words to the SA_NODEFER description to hopefully
> further clarify what it does:
>
>        SA_NODEFER
>               Do not prevent the signal from being received  from  withi=
n
>               its  own signal handler (i.e., do not add the signal to th=
e
>               thread's signal mask while the handler is executing).
>
> Probably, the signal(7) manual page could say more about all of this.
> What would you think of the following text to be added to that page
>
>    Execution of signal handlers
>        Whenever  there is a transition from kernel-mode to user-mode exe=
=E2=80=90
>        cution (e.g., on return from a system  call  or  scheduling  of  =
a
>        thread onto the CPU), the kernel checks whether there is a pendin=
g
>        signal for which the process has established a signal handler.  I=
f
>        there is such a pending signal, the following steps occur:
>
>        1. The  kernel performs the necessary preparatory steps for execu=
=E2=80=90
>           tion of the signal handler:
>
>           a) The signal is removed from the set of pending signals.
>
>           b) If the thread has defined an alternate signal  stack  (usin=
g
>              sigaltstack(2)), then that stack is installed.
>
>           c) Various  pieces  of  signal-related context are saved into =
a
>              "hidden" frame that is created on the stack.  The saved  in=
=E2=80=90
>              formation includes:
>
>              + the  program  counter  register  (i.e., the address of th=
e
>                next instruction in the main program that should  be  exe=
=E2=80=90
>                cuted when the signal handler returns);
>
>              + the thread's current signal mask;
>
>              + the thread's alternate signal stack settings.
>
>           d) The  thread's  signal  mask is adjusted by adding the signa=
l
>              (unless the handler was  established  using  the  SA_NODEFE=
R
>              flag)  as  well  as  any  additional  signals  specified  i=
n
>              act->sa_mask when sigaction(2) was called.
>
>        2. The kernel constructs a frame for the  signal  handler  on  th=
e
>           stack.  Within that frame, the return address points to a piec=
e
>           of user-space code called the signal trampoline  (described  i=
n
>           sigreturn(2)).
>
>        3. The  kernel  passes control back to user-space, where executio=
n
>           commences at the start of the signal handler function.
>
>        4. When the signal handler returns, control passes to  the  signa=
l
>           trampoline code.
>
>        5. The  signal  trampoline  calls sigreturn(2), a system call tha=
t
>           uses the information in the "hidden" stack frame to restore th=
e
>           thread's  signal  mask  and  alternate  stack settings to thei=
r
>           state before the signal handler was called.  Upon completion o=
f
>           the  call to sigreturn(2), the kernel transfers control back t=
o
>           user space, and the thread recommences execution at  the  poin=
t
>           where it was interrupted by the signal handler.
>
>        Note  that if the signal handler does not return (e.g., control i=
s
>        transferred out of the  handler  using  sigsetjmp(3)  or  swapcon=
=E2=80=90
>        text(3),  or  the  handler executes a new program with execve(2))=
,
>        then the final step is not performed.  In particular, in such sce=
=E2=80=90
>        narios it is the programmer's responsibility to restore that stat=
e
>        of the signal mask, if that is desired.

Hello Michael,

this text is very helpful.

"Signal mask and pending signals" already mentions that the signal mask
controls the blocking of signals. But maybe you could reiterate this in
1d) and in the note below 5).

Best regards

Heinrich
