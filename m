Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0512A2B6B3E
	for <lists+linux-man@lfdr.de>; Tue, 17 Nov 2020 18:10:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728873AbgKQRJ4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Nov 2020 12:09:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727816AbgKQRJ4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Nov 2020 12:09:56 -0500
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8543C0613CF
        for <linux-man@vger.kernel.org>; Tue, 17 Nov 2020 09:09:55 -0800 (PST)
Received: by mail-wm1-x344.google.com with SMTP id a65so3927908wme.1
        for <linux-man@vger.kernel.org>; Tue, 17 Nov 2020 09:09:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8BrY5naqcnRtztjvjhTSbQk79a0VzPfhGkOv+sUFXx8=;
        b=VWm+a9fmGBDQpAeyxgp8Ia+qQwP6LqFk4IYTO9erJI94eK5tNAfGbat+uLWJoRHiOu
         YtcRYEtOtetUC7W/vnY91mQtBkL3lEB8bggJAL5pb7RpNBlIN7ummTeGIL9qOdYeOCtf
         pIrgEP5/amKxNTMu1Q/NOecib+Pc4cggLIxvxa8C+gUKKt9ywHdlZvOUgiGJtXFyRI88
         1JsLDbGhp2hnXnAWh/rQsfj7I0SG+9GtvZihRLpaeSBvvCHFPL99baCBXJPG3VHrJsdJ
         jIKF3NSM3jAI8Tlq3HTCJSmoJejbMU8VamvU3i+widZCWhlGPOqJ3U0oSpg84lTeaGD0
         CveA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8BrY5naqcnRtztjvjhTSbQk79a0VzPfhGkOv+sUFXx8=;
        b=Kqfj92RxUxx/NXCTbT9y+GFb45MP6RstAlkE1p4fu+0C2KdUGnsU60KCXV543uLcIs
         eNyfJJDJiiBRFfg8zwoPlqrnPUTTr+cbm/W84MAboyEfQ9qALOaM+bMMzYae+qWeIApB
         s8egK524hQE2V6qDc1h/NP44zRPmMjaFC/h2YZYrrrApYyKEVvTQoIcgHg69CnC+WFYj
         0ghrzrg/FN4bOzl6G97AFB09VQMWIMUgdFSNO1mBy0nCcNolOlumnR5NEcRFcnYBakf2
         gk5Fc2TUbwRqkGfiqRy+sw+X65pMm8Z45JTajEUY/wJ8pXKusRTGqsD703pcG9ljEMZR
         SyWg==
X-Gm-Message-State: AOAM531Ww1pMc3YJRDiijc7Y3LGLbnJAhLCMMKEF8LNmwI/JbmvDnRmq
        087XRhpGPPfX/V5R5NE3SROp+Qo8JxMTgg==
X-Google-Smtp-Source: ABdhPJwDvmFKI2Ie3sWsQ/Ned5kQzOipFqZ1aVGw0NKYcg2DUNyukanKBaKVQP4AAkYlRwjqgQcLUA==
X-Received: by 2002:a05:600c:212:: with SMTP id 18mr32444wmi.175.1605632994156;
        Tue, 17 Nov 2020 09:09:54 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id 31sm6765679wre.43.2020.11.17.09.09.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2020 09:09:53 -0800 (PST)
Cc:     mtk.manpages@gmail.com, Heinrich Schuchardt <xypron.glpk@gmx.de>,
        linux-man@vger.kernel.org
Subject: Re: sigaction.2: clarification for SA_NODEFER needed
To:     Dave Martin <Dave.Martin@arm.com>
References: <e18cbe1f-5dcf-c717-5790-912af6bbfa41@gmx.de>
 <24b18d8a-84cf-17c6-12cf-f2d0c979b6ad@gmail.com>
 <70217a4d-9525-a186-4560-02216dd4546a@gmx.de>
 <90f0f681-0770-9975-f370-415300d29fa9@gmail.com>
 <16CBDA59-F868-47E5-B88F-C9CF235BF8BD@gmx.de> <20201116132141.GW6882@arm.com>
 <3fac10ea-7fed-739b-4974-09845f34867f@gmail.com>
 <20201117120520.GB6882@arm.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <326a673c-f598-a009-7283-63a27c4c9a1e@gmail.com>
Date:   Tue, 17 Nov 2020 18:09:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201117120520.GB6882@arm.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Dave,

On 11/17/20 1:05 PM, Dave Martin wrote:
> On Tue, Nov 17, 2020 at 10:46:11AM +0000, Michael Kerrisk (man-pages) wrote:
>> Hi Dave,
>>
>> Thanks a heap for taking a look at the text!
>>
>> On 11/16/20 2:21 PM, Dave Martin wrote:
>>> On Thu, Nov 12, 2020 at 09:57:35PM +0100, Heinrich Schuchardt wrote:
>>>> Am 12. November 2020 21:45:56 MEZ schrieb "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>:

[...]

>>>>>> Is there a function to change the signal mask without leaving the
>>>>> handler?
>>>>>
>>>>> sigprocmask(2).
>>>>
>>>> You might want to add a link to the function in the note section.
>>>
>>> Actually, this is best avoided IMHO:
>>>
>>> The behaviour of sigprocmask() is unspecified in multithreaded programs,
>>> while pthread_sigmask() is not specified to be safe in signal handlers.
>>
>> I'm not sure I agree. sigprocmask() is explicitly specified as being 
>> async-signal-safe, which suggests that POSIX blesses its use, at least
>> in single-threaded programs. And notwithstanding what POSIX says, 
>> sigprocmask() is safe on Linux/glibc in a MT process (since
>> pthread_sigmask() is just a simple wrapper for sigprocmask()), and
>> I'd guess the same is true on many (most?) other implementations as 
>> well.
> 
> I don't disagree that sigprocmask() is likely to work in practice for
> most purposes, but I wonder whether it could have unexpected effects on
> the masking of the libc internal signals in some implementations,
> particulary when using SIG_SETMASK.
> 
> If trying to execve() out of the signal handler, I think there would be
> a strong temptation to restore the signal mask the program had on entry
> with
> 
> 	sigprocmask(SIG_SETMASK, &orig_mask, NULL);
> 
> say.  If the original signal was taken while in the middle of libc while
> some internal signal was blocked then this would unintentionally unblock
> that signal, and deadlocks and other badness may happen on return.

I understand the theory. But, as far as I can tell, glibc (for example)
does not block the internal signals. So, I think that maybe this
situation can't arise in practice (but of course with no guarantees).
At least that's my reading of the glibc code, but hey, reading glibc
code sometimes make the kernel code look like a walk in the park.

> In theory pthread_sigmask() could defend against this, but I don't know
> whether it actually does in any implementations.

It doesn't look as though glibc's pthread_sigmask() does anything 
along these lines.

> So, IIUC you really must not return after doing something like this
> (certainly if you want to be at all portable).
> 
> Trying to do asynchronous context switching using swapconxtext() would
> fall foul of this (and plenty else).
> 
> 
>>> (Yay, POSIX.)
>>>
>>> For these reasons, execve()'ing directly from a signal handler is not a
>>> great idea.  It would probably be better to escape from the signal
>>> handler with siglongjmp() or setcontext(), with the target sigjmp_buf or
>>> ucontext previously set up do the execve().
>>
>> Well, setcontext() is no longer in POSIX.... (It was removed in
> 
> Well, yes.
> 
>> POSIX.1-2008.) And the specification of longjmp() says:
>>
>>        It is recommended that applications do not call longjmp() or  sig‐
>>        longjmp()  from  signal handlers. To avoid undefined behavior when
>>        calling these functions from a  signal  handler,  the  application
>>        needs to ensure one of the following two things:
>>
>>         1. After  the  call to longjmp() or siglongjmp() the process only
>>            calls async-signal-safe functions and does not return from the
>>            initial call to main().
>>
>>         2. Any  signal  whose  handler calls longjmp() or siglongjmp() is
>>            blocked during every call to a non-async-signal-safe function,
>>            and  no  such  calls are made after returning from the initial
>>            call to main().
> 
> i.e., basically the same constraints you have to follow if you want to
> achieve the same result safely from _within_ the signal handler.

Yes.

> But I take your point: my claim that using siglongjmp() is a better
> approach was overstated.  And it's easy to forget that you're still in
> signal-handler-like context even after siglongjmp().
> 
>> So, in my reading of it, you're no better off than calling
>> sigprocmask() from the signal handler. Do you agree?
> 
> Yes, agreed.

Okay.

> (The background to my comments in this area is that I've learned from
> experience that messing with the signal mask inside a signal handler
> tends to create more problems than it solves -- but that doesn't mean
> that there are no situations where it is legitimate.)

[...]

>> By now, the text has evolved to:
>>
>> [[
>>    Execution of signal handlers
>>        Whenever there is a transition from kernel-mode to user-mode  exe‐
>>        cution  (e.g.,  on  return  from  a system call or scheduling of a
>>        thread onto the CPU), the kernel checks whether there is a pending
>>        signal for which the process has established a signal handler.  If
> 
> The signal must also be unblocked.

Added.

>>        there is such a pending signal, the following steps occur:
> 
> You might want to comment on what happens if there are multiple
> unblocked signals pending -- you can probably refer to signal(7) rather
> than writing it all out again here.

From the context of the email thread, it's not clear, but in
fact the text we are discussion is part of the signal(7) manual
page, so I won't add anything here.

>>        1. The kernel performs the necessary preparatory steps for  execu‐
>>           tion of the signal handler:
>>
>>           a) The signal is removed from the set of pending signals.
>>
>>           b) If  the  signal  handler  was  installed by a call to sigac‐
>>              tion(2) that specified the SA_ONSTACK flag  and  the  thread
>>              has   defined  an  alternate  signal  stack  (using  sigalt‐
>>              stack(2)), then that stack is installed.
> 
> Actually should (b) and (c) be swapped? (c) saves the SP and stack
> configuration.

I wondered about this for quite a while, and concluded that the
order must be as currently described. (I'm not 100% confident about
this though, and I didn't really follow the details in the kernel 
source code.) My reasoning is that suppose  we have an alternate 
signal stack setup for SIGSEGV (to handle the case of overflow of
"standard" stack). The next step (c) creates a stack frame. Surely
the only place where that could be done is on the already installed
alternate stack (since the "standard" stack is exhausted). You may 
be about to educate me, of course.

>>           c) Various pieces of signal-related context are  saved  into  a
>>              special  frame  that is created on the stack.  The saved in‐
>>              formation includes:
>>
>>              + the program counter register (i.e.,  the  address  of  the
>>                next  instruction  in the main program that should be exe‐
>>                cuted when the signal handler returns);
>>
>>              + architecture-specific register state required for resuming
>>                the interrupted program;
>>
>>              + the thread's current signal mask;
>>
>>              + the thread's alternate signal stack settings.
>>
>>           d) Any  signals  specified in act->sa_mask when registering the
>>              handler with sigprocmask(2) are added to the thread's signal
>>              mask.   The signal being delivered is also added to the sig‐
>>              nal mask, unless SA_NODEFER was specified  when  registering
>>              the  handler.  These signals are thus blocked while the han‐
>>              dler executes.
>>
>>        2. The kernel constructs a frame for the  signal  handler  on  the
>>           stack.   The  kernel sets the program counter for the thread to
>>           point to the first instruction of the signal handler  function,
>>           and configures the return address for that function to point to
>>           a piece of user-space code known as the signal trampoline  (de‐
>>           scribed in sigreturn(2)).
>>
>>        3. The  kernel  passes control back to user-space, where execution
>>           commences at the start of the signal handler function.
>>
>>        4. When the signal handler returns, control passes to  the  signal
>>           trampoline code.
>>
>>        5. The  signal  trampoline  calls sigreturn(2), a system call that
>>           uses the information in the stack frame created in  step  1  to
>>           restore  the  thread's signal mask and alternate stack settings
> 
> Nit: and everything else too.
> 
> Would it make sense to say something like:
> 
> "to restore the thread to its state before the signal handler was
> called.  The thread's signal mask and alternate signal stack settings
> are also restored as part of this procedure."

Yes, better. Changed.

>>           to their state before the signal handler was called.  Upon com‐
>>           pletion  of the call to sigreturn(2), the kernel transfers con‐
>>           trol back to user space, and the thread  recommences  execution
>>           at the point where it was interrupted by the signal handler.
>>
>>        Note  that if the signal handler does not return (e.g., control is
>>        transferred out of the handler using siglongjmp(3), or the handler
>>        executes a new program with execve(2)), then the final step is not
>>        performed.  In particular, in such scenarios it  is  the  program‐
>>        mer's  responsibility to restore the state of the signal mask (us‐
>>        ing sigprocmask(2)), if it is desired to unblock the signals  that
>>        were  blocked  on  entry  to  the signal handler.  (Note that sig‐
>>        longjmp(3) may or may not restore the signal  mask,  depending  on
>>        the savesigs value that was specified in the corresponding call to
>>        sigsetjmp(3).)
>> ]]
> 
> Otherwise looks good to me.
> 
> To exec() straight from a signal handler still requires care though in
> order to get things into a sane state for the new process, and while
> avoiding the program dying in unintended ways on the way.
> 
> Doing this safely in a multithreaded program can be hard, to say the
> least.
> 
> 
> One other wrinkle that might be worth mentioning, since it has confused
> me in the past:  There is no magic internal kernel state that is
> different when executing a signal handler.  "Being in a signal handler"
> is in fact not a meaningful concept to the kernel.  Everything is
> tracked in the user registers and on the user stack.  Signal nesting is
> only limited by available stack space (and sane software design...)

(Whisper it every morning: "Kernel memory is a limited, 
nonswappable resource.")

> I'm not sure how to describe this concisely though.

I think you already did a good job. I've taken the text and
reworked it just a little:

       From  the  kernel's point of view, execution of the signal handler
       code is exactly the same as the execution of any other  user-space
       code.   That  is  to  say,  the kernel does not record any special
       state information indicating that the thread is currently excuting
       inside a signal handler.  All necessary state information is main‐
       tained in user-space registers  and  the  user-space  stack.   The
       depth  to which nested signal handlers may be invoked is thus lim‐
       ited only by the user-space stack (and sensible software design!).

Thanks again for your comments, Dave.

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
