Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 603772B5D2D
	for <lists+linux-man@lfdr.de>; Tue, 17 Nov 2020 11:47:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727878AbgKQKqU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Nov 2020 05:46:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727783AbgKQKqT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Nov 2020 05:46:19 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93AA6C0613CF
        for <linux-man@vger.kernel.org>; Tue, 17 Nov 2020 02:46:19 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id 23so1750131wmg.1
        for <linux-man@vger.kernel.org>; Tue, 17 Nov 2020 02:46:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=muql1Zth7JGtGSQwof/efZmYluZxp8Zw0mzZadTQctU=;
        b=E6utAUyfv+3AZplkZMEnuwKzVnL/aKn9nv8Rwc1nV3tQgRIgvlAXyJRiR5i7schbJY
         9rwD+QHNwET83cgJqaIRXByqK7ZgyBLDMYaJMP3GoW18FE9Riybda7UkF5FMt3IMNQb2
         lZoC+XHNcA2hWYajZmsdnqsv+KV+puGDun40TWNQ1pDPnlM7Oq7fxO6ycRLm54ulkVlX
         LtJ+AvWxqkIOPPprN5XhQfm1KQMt5NZtZYKae4sVR5gCIdjfCjd7cVxKJuwRK8zQ2VYU
         lWRWjWlSBtjjTR6TnvJZ9rdA391VWWVZYVQXvTHKOwkYOMYwsoUBHQPmCcZ/44qBrB7s
         iD8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=muql1Zth7JGtGSQwof/efZmYluZxp8Zw0mzZadTQctU=;
        b=fLKbcFl9Y4/m9LsycljmiQyLqaCURhqxI/SpLYx9jz29O0014V6FkCACnLiR7BWjkk
         /Lnl/0neMIg0b4SC8Mtbe0FS/eLgYj2NZ3o6ukeCmAHFET+apRLOY2B6UaXuyPchqDL0
         NFQnLVLXKSidowdhNauGKbFRpkpL0qpCrgF1B1PU50qE6n8/fqvKyOc+vvD4Ry4ZKI/r
         WOUXfPVr5xIzRzpwLrv8IxgBdKFu1ga76LzIXqHsyoTjEoJP96Fu1Mm8oSrE6vDv5pUX
         gn1URVfPxmAsRX5Q++TBG2075+b9LiVuoQCBTAR9Ow7xgOa+V0yqL6t32CWR5tC6AGI5
         mYnA==
X-Gm-Message-State: AOAM533Y1veOYQGiozDNuT4bgQ/LEmwkAVE9eG6sY3mLY37WtGb419eO
        2vS4Ed5KRi9RvLxSt9i5WST12D9CSAxwRA==
X-Google-Smtp-Source: ABdhPJxUkBunHBJAsB0Vae15WS1AjJ5wp9c9HSxInFD2IHlVYQMaeJYMs34jv21aVW2zVHJqNCQp0g==
X-Received: by 2002:a1c:6043:: with SMTP id u64mr3535282wmb.166.1605609977870;
        Tue, 17 Nov 2020 02:46:17 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id a144sm3166306wmd.47.2020.11.17.02.46.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2020 02:46:14 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: sigaction.2: clarification for SA_NODEFER needed
To:     Dave Martin <Dave.Martin@arm.com>,
        Heinrich Schuchardt <xypron.glpk@gmx.de>
References: <e18cbe1f-5dcf-c717-5790-912af6bbfa41@gmx.de>
 <24b18d8a-84cf-17c6-12cf-f2d0c979b6ad@gmail.com>
 <70217a4d-9525-a186-4560-02216dd4546a@gmx.de>
 <90f0f681-0770-9975-f370-415300d29fa9@gmail.com>
 <16CBDA59-F868-47E5-B88F-C9CF235BF8BD@gmx.de> <20201116132141.GW6882@arm.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3fac10ea-7fed-739b-4974-09845f34867f@gmail.com>
Date:   Tue, 17 Nov 2020 11:46:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201116132141.GW6882@arm.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Dave,

Thanks a heap for taking a look at the text!

On 11/16/20 2:21 PM, Dave Martin wrote:
> On Thu, Nov 12, 2020 at 09:57:35PM +0100, Heinrich Schuchardt wrote:
>> Am 12. November 2020 21:45:56 MEZ schrieb "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>:
>>> On 11/12/20 5:25 PM, Heinrich Schuchardt wrote:
>>>
>>> [...]
>>>
>>>> Hello Michael,
>>>>
>>>> this text is very helpful.
>>>>
>>>> "Signal mask and pending signals" already mentions that the signal
>>> mask
>>>> controls the blocking of signals. But maybe you could reiterate this
>>> in
>>>> 1d) and in the note below 5).
>>>
>>> Yes, that perhaps does not hurt. Some light tweaks:
>>>
>>>   Execution of signal handlers
>>>     Whenever  there is a transition from kernel-mode to user-mode exe‐
>>>     cution (e.g., on return from a system  call  or  scheduling  of  a
>>>     thread onto the CPU), the kernel checks whether there is a pending
>>>     signal for which the process has established a signal handler.  If
>>>       there is such a pending signal, the following steps occur:
>>>
>>>     1. The  kernel performs the necessary preparatory steps for execu‐
>>>          tion of the signal handler:
>>>
>>>          a) The signal is removed from the set of pending signals.
>>>
>>>        b) If the thread has defined an alternate signal  stack  (using
>>>             sigaltstack(2)), then that stack is installed.
>>>
>>>        c) Various  pieces  of  signal-related context are saved into a
>>>           "hidden" frame that is created on the stack.  The saved  in‐
>>>             formation includes:
> 
> Can we delete "hidden" here?  (In a sense it's actually less hidden than
> a typical compiler function frame, since we do provide an explicit
> interface for poking about in the signal frame -- you can't do that with
> function frames).

Yes, fair enough. I removed "hidden".

>>>           + the  program  counter  register  (i.e., the address of the
>>>             next instruction in the main program that should  be  exe‐
>>>               cuted when the signal handler returns);
> 
> You might also want to add something like:
> 
> "Architecture-specific register state required for resuming the
> interrupted program."

Added.

>>>             + the thread's current signal mask;
>>>
>>>             + the thread's alternate signal stack settings.
>>>
>>>        d) The  thread's  signal  mask is adjusted by adding the signal
>>>           (unless the handler was  established  using  the  SA_NODEFER
>>>           flag)  as  well  as  any  additional  signals  specified  in
>>>           act->sa_mask when sigaction(2) was  called.   These  signals
>>>             are thus blocked while the handler executes.
> 
> I'd delete "adjusted" since it adds nothing to the meaning.
> 
> Would this also be more readable if the logic is flipped around:

Well, ummmm, yes it would.

> --8<--
> 
> Any signals specified in act->sa_mask when registering the handler are
> added to the thread's signal mask.  The signal being delivered is also
> added to the signal mask, unless SA_NODEFER was specified when
> registering the handler.

Thanks. Adjusted pretty much as you wrote it.

> -->8--
> 
>>>
>>>     2. The  kernel  constructs  a  frame for the signal handler on the
>>>        stack.  Within that frame, the return address points to a piece
>>>        of  user-space  code called the signal trampoline (described in
>>>          sigreturn(2)).
> 
> Not all architectures put the function return information on the stack.
> 
> The kernel has to explicitly fix up the pc to run the signal handler
> here -- it doesn't happen by magic.  So maybe say for (2):
> 
> --8<--
> 
> The kernel sets the program counter for the thread to point to the first
> instruction of the signal handler, and configures the return address for
> this function to point to a piece of user-space code called the signal
> trampoline [...].

Thanks. Changed pretty much as you suggest.

> -->8--
> 
>>>
>>>     3. The kernel passes control back to user-space,  where  execution
>>>          commences at the start of the signal handler function.
>>>
>>>     4. When  the  signal handler returns, control passes to the signal
>>>          trampoline code.
>>>
>>>     5. The signal trampoline calls sigreturn(2), a  system  call  that
>>>        uses the information in the "hidden" stack frame to restore the
>>>        thread's signal mask and  alternate  stack  settings  to  their
>>>        state before the signal handler was called.  Upon completion of
>>>        the call to sigreturn(2), the kernel transfers control back  to
>>>        user  space,  and the thread recommences execution at the point
>>>          where it was interrupted by the signal handler.
>>>
>>>     Note that if the signal handler does not return (e.g., control  is
>>>     transferred  out  of  the  handler  using sigsetjmp(3) or swapcon‐
> 
> siglongjmp(), not sigsetjmp().

Yep, I spotted that one already and fixed it.

>>>     text(3), or the handler executes a new  program  with  execve(2)),
>>>     then the final step is not performed.  In particular, in such sce‐
>>>     narios it is the programmer's responsibility to restore the  state
>>>     of the signal mask, if it is desired unblock the signals that were
>>>       blocked on entry to the signal handler.
> 
> I'm pretty sure sigsetjmp(), and probably setcontext(), _do_ restore the
> signal mask.

I'd already made adjustment here to note that siglongjmp() may or may
not restore the signal mask. (See below.)

And yes, you are right that those APIs restore the signal mask.
I think I got confused because, as far as I know, swapcontext()
and setcontext() do not restore the alternate signal stack settings. 
(There is no call to sigaltstack() in the glibc implementations, 
nor to sigreturn()--at least not on most implementations.) 
I'm going to skirt the issue by dropping mention of *context().)

Combining your other reply here:

>>>> Is there a function to change the signal mask without leaving the
>>> handler?
>>>
>>> sigprocmask(2).
>>
>> You might want to add a link to the function in the note section.
> 
> Actually, this is best avoided IMHO:
> 
> The behaviour of sigprocmask() is unspecified in multithreaded programs,
> while pthread_sigmask() is not specified to be safe in signal handlers.

I'm not sure I agree. sigprocmask() is explicitly specified as being 
async-signal-safe, which suggests that POSIX blesses its use, at least
in single-threaded programs. And notwithstanding what POSIX says, 
sigprocmask() is safe on Linux/glibc in a MT process (since
pthread_sigmask() is just a simple wrapper for sigprocmask()), and
I'd guess the same is true on many (most?) other implementations as 
well.

> (Yay, POSIX.)
> 
> For these reasons, execve()'ing directly from a signal handler is not a
> great idea.  It would probably be better to escape from the signal
> handler with siglongjmp() or setcontext(), with the target sigjmp_buf or
> ucontext previously set up do the execve().

Well, setcontext() is no longer in POSIX.... (It was removed in
POSIX.1-2008.) And the specification of longjmp() says:

       It is recommended that applications do not call longjmp() or  sig‐
       longjmp()  from  signal handlers. To avoid undefined behavior when
       calling these functions from a  signal  handler,  the  application
       needs to ensure one of the following two things:

        1. After  the  call to longjmp() or siglongjmp() the process only
           calls async-signal-safe functions and does not return from the
           initial call to main().

        2. Any  signal  whose  handler calls longjmp() or siglongjmp() is
           blocked during every call to a non-async-signal-safe function,
           and  no  such  calls are made after returning from the initial
           call to main().

So, in my reading of it, you're no better off than calling
sigprocmask() from the signal handler. Do you agree?

> With SA_SIGINFO, you can also update uc->uc_sigmask inside the signal
> handler if you want to change the signal mask on return.  But that's
> awkward to do portably, since sigaddset() and sigdelset() are not
> specified to be safe in signal handlers either.

I think you've misremembered here. At least as far back as 
POSIX.1-2001, sigaddset() and sigdelset() are specified as
async-signal-safe.

By now, the text has evolved to:

[[
   Execution of signal handlers
       Whenever there is a transition from kernel-mode to user-mode  exe‐
       cution  (e.g.,  on  return  from  a system call or scheduling of a
       thread onto the CPU), the kernel checks whether there is a pending
       signal for which the process has established a signal handler.  If
       there is such a pending signal, the following steps occur:

       1. The kernel performs the necessary preparatory steps for  execu‐
          tion of the signal handler:

          a) The signal is removed from the set of pending signals.

          b) If  the  signal  handler  was  installed by a call to sigac‐
             tion(2) that specified the SA_ONSTACK flag  and  the  thread
             has   defined  an  alternate  signal  stack  (using  sigalt‐
             stack(2)), then that stack is installed.

          c) Various pieces of signal-related context are  saved  into  a
             special  frame  that is created on the stack.  The saved in‐
             formation includes:

             + the program counter register (i.e.,  the  address  of  the
               next  instruction  in the main program that should be exe‐
               cuted when the signal handler returns);

             + architecture-specific register state required for resuming
               the interrupted program;

             + the thread's current signal mask;

             + the thread's alternate signal stack settings.

          d) Any  signals  specified in act->sa_mask when registering the
             handler with sigprocmask(2) are added to the thread's signal
             mask.   The signal being delivered is also added to the sig‐
             nal mask, unless SA_NODEFER was specified  when  registering
             the  handler.  These signals are thus blocked while the han‐
             dler executes.

       2. The kernel constructs a frame for the  signal  handler  on  the
          stack.   The  kernel sets the program counter for the thread to
          point to the first instruction of the signal handler  function,
          and configures the return address for that function to point to
          a piece of user-space code known as the signal trampoline  (de‐
          scribed in sigreturn(2)).

       3. The  kernel  passes control back to user-space, where execution
          commences at the start of the signal handler function.

       4. When the signal handler returns, control passes to  the  signal
          trampoline code.

       5. The  signal  trampoline  calls sigreturn(2), a system call that
          uses the information in the stack frame created in  step  1  to
          restore  the  thread's signal mask and alternate stack settings
          to their state before the signal handler was called.  Upon com‐
          pletion  of the call to sigreturn(2), the kernel transfers con‐
          trol back to user space, and the thread  recommences  execution
          at the point where it was interrupted by the signal handler.

       Note  that if the signal handler does not return (e.g., control is
       transferred out of the handler using siglongjmp(3), or the handler
       executes a new program with execve(2)), then the final step is not
       performed.  In particular, in such scenarios it  is  the  program‐
       mer's  responsibility to restore the state of the signal mask (us‐
       ing sigprocmask(2)), if it is desired to unblock the signals  that
       were  blocked  on  entry  to  the signal handler.  (Note that sig‐
       longjmp(3) may or may not restore the signal  mask,  depending  on
       the savesigs value that was specified in the corresponding call to
       sigsetjmp(3).)
]]

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
