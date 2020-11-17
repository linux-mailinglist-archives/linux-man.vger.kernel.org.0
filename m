Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9F5432B5ED4
	for <lists+linux-man@lfdr.de>; Tue, 17 Nov 2020 13:06:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728206AbgKQMF3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Nov 2020 07:05:29 -0500
Received: from foss.arm.com ([217.140.110.172]:55110 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726807AbgKQMF3 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 17 Nov 2020 07:05:29 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1A817101E;
        Tue, 17 Nov 2020 04:05:28 -0800 (PST)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5F2D43F719;
        Tue, 17 Nov 2020 04:05:27 -0800 (PST)
Date:   Tue, 17 Nov 2020 12:05:23 +0000
From:   Dave Martin <Dave.Martin@arm.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Heinrich Schuchardt <xypron.glpk@gmx.de>, linux-man@vger.kernel.org
Subject: Re: sigaction.2: clarification for SA_NODEFER needed
Message-ID: <20201117120520.GB6882@arm.com>
References: <e18cbe1f-5dcf-c717-5790-912af6bbfa41@gmx.de>
 <24b18d8a-84cf-17c6-12cf-f2d0c979b6ad@gmail.com>
 <70217a4d-9525-a186-4560-02216dd4546a@gmx.de>
 <90f0f681-0770-9975-f370-415300d29fa9@gmail.com>
 <16CBDA59-F868-47E5-B88F-C9CF235BF8BD@gmx.de>
 <20201116132141.GW6882@arm.com>
 <3fac10ea-7fed-739b-4974-09845f34867f@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3fac10ea-7fed-739b-4974-09845f34867f@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Nov 17, 2020 at 10:46:11AM +0000, Michael Kerrisk (man-pages) wrote:
> Hi Dave,
> 
> Thanks a heap for taking a look at the text!
> 
> On 11/16/20 2:21 PM, Dave Martin wrote:
> > On Thu, Nov 12, 2020 at 09:57:35PM +0100, Heinrich Schuchardt wrote:
> >> Am 12. November 2020 21:45:56 MEZ schrieb "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>:
> >>> On 11/12/20 5:25 PM, Heinrich Schuchardt wrote:
> >>>
> >>> [...]
> >>>
> >>>> Hello Michael,
> >>>>
> >>>> this text is very helpful.
> >>>>
> >>>> "Signal mask and pending signals" already mentions that the signal
> >>> mask
> >>>> controls the blocking of signals. But maybe you could reiterate this
> >>> in
> >>>> 1d) and in the note below 5).
> >>>
> >>> Yes, that perhaps does not hurt. Some light tweaks:
> >>>
> >>>   Execution of signal handlers
> >>>     Whenever  there is a transition from kernel-mode to user-mode exe‐
> >>>     cution (e.g., on return from a system  call  or  scheduling  of  a
> >>>     thread onto the CPU), the kernel checks whether there is a pending
> >>>     signal for which the process has established a signal handler.  If
> >>>       there is such a pending signal, the following steps occur:
> >>>
> >>>     1. The  kernel performs the necessary preparatory steps for execu‐
> >>>          tion of the signal handler:
> >>>
> >>>          a) The signal is removed from the set of pending signals.
> >>>
> >>>        b) If the thread has defined an alternate signal  stack  (using
> >>>             sigaltstack(2)), then that stack is installed.
> >>>
> >>>        c) Various  pieces  of  signal-related context are saved into a
> >>>           "hidden" frame that is created on the stack.  The saved  in‐
> >>>             formation includes:
> > 
> > Can we delete "hidden" here?  (In a sense it's actually less hidden than
> > a typical compiler function frame, since we do provide an explicit
> > interface for poking about in the signal frame -- you can't do that with
> > function frames).
> 
> Yes, fair enough. I removed "hidden".
> 
> >>>           + the  program  counter  register  (i.e., the address of the
> >>>             next instruction in the main program that should  be  exe‐
> >>>               cuted when the signal handler returns);
> > 
> > You might also want to add something like:
> > 
> > "Architecture-specific register state required for resuming the
> > interrupted program."
> 
> Added.
> 
> >>>             + the thread's current signal mask;
> >>>
> >>>             + the thread's alternate signal stack settings.
> >>>
> >>>        d) The  thread's  signal  mask is adjusted by adding the signal
> >>>           (unless the handler was  established  using  the  SA_NODEFER
> >>>           flag)  as  well  as  any  additional  signals  specified  in
> >>>           act->sa_mask when sigaction(2) was  called.   These  signals
> >>>             are thus blocked while the handler executes.
> > 
> > I'd delete "adjusted" since it adds nothing to the meaning.
> > 
> > Would this also be more readable if the logic is flipped around:
> 
> Well, ummmm, yes it would.
> 
> > --8<--
> > 
> > Any signals specified in act->sa_mask when registering the handler are
> > added to the thread's signal mask.  The signal being delivered is also
> > added to the signal mask, unless SA_NODEFER was specified when
> > registering the handler.
> 
> Thanks. Adjusted pretty much as you wrote it.
> 
> > -->8--
> > 
> >>>
> >>>     2. The  kernel  constructs  a  frame for the signal handler on the
> >>>        stack.  Within that frame, the return address points to a piece
> >>>        of  user-space  code called the signal trampoline (described in
> >>>          sigreturn(2)).
> > 
> > Not all architectures put the function return information on the stack.
> > 
> > The kernel has to explicitly fix up the pc to run the signal handler
> > here -- it doesn't happen by magic.  So maybe say for (2):
> > 
> > --8<--
> > 
> > The kernel sets the program counter for the thread to point to the first
> > instruction of the signal handler, and configures the return address for
> > this function to point to a piece of user-space code called the signal
> > trampoline [...].
> 
> Thanks. Changed pretty much as you suggest.
> 
> > -->8--
> > 
> >>>
> >>>     3. The kernel passes control back to user-space,  where  execution
> >>>          commences at the start of the signal handler function.
> >>>
> >>>     4. When  the  signal handler returns, control passes to the signal
> >>>          trampoline code.
> >>>
> >>>     5. The signal trampoline calls sigreturn(2), a  system  call  that
> >>>        uses the information in the "hidden" stack frame to restore the
> >>>        thread's signal mask and  alternate  stack  settings  to  their
> >>>        state before the signal handler was called.  Upon completion of
> >>>        the call to sigreturn(2), the kernel transfers control back  to
> >>>        user  space,  and the thread recommences execution at the point
> >>>          where it was interrupted by the signal handler.
> >>>
> >>>     Note that if the signal handler does not return (e.g., control  is
> >>>     transferred  out  of  the  handler  using sigsetjmp(3) or swapcon‐
> > 
> > siglongjmp(), not sigsetjmp().
> 
> Yep, I spotted that one already and fixed it.
> 
> >>>     text(3), or the handler executes a new  program  with  execve(2)),
> >>>     then the final step is not performed.  In particular, in such sce‐
> >>>     narios it is the programmer's responsibility to restore the  state
> >>>     of the signal mask, if it is desired unblock the signals that were
> >>>       blocked on entry to the signal handler.
> > 
> > I'm pretty sure sigsetjmp(), and probably setcontext(), _do_ restore the
> > signal mask.
> 
> I'd already made adjustment here to note that siglongjmp() may or may
> not restore the signal mask. (See below.)
> 
> And yes, you are right that those APIs restore the signal mask.
> I think I got confused because, as far as I know, swapcontext()
> and setcontext() do not restore the alternate signal stack settings. 
> (There is no call to sigaltstack() in the glibc implementations, 
> nor to sigreturn()--at least not on most implementations.) 
> I'm going to skirt the issue by dropping mention of *context().)
> 
> Combining your other reply here:
> 
> >>>> Is there a function to change the signal mask without leaving the
> >>> handler?
> >>>
> >>> sigprocmask(2).
> >>
> >> You might want to add a link to the function in the note section.
> > 
> > Actually, this is best avoided IMHO:
> > 
> > The behaviour of sigprocmask() is unspecified in multithreaded programs,
> > while pthread_sigmask() is not specified to be safe in signal handlers.
> 
> I'm not sure I agree. sigprocmask() is explicitly specified as being 
> async-signal-safe, which suggests that POSIX blesses its use, at least
> in single-threaded programs. And notwithstanding what POSIX says, 
> sigprocmask() is safe on Linux/glibc in a MT process (since
> pthread_sigmask() is just a simple wrapper for sigprocmask()), and
> I'd guess the same is true on many (most?) other implementations as 
> well.

I don't disagree that sigprocmask() is likely to work in practice for
most purposes, but I wonder whether it could have unexpected effects on
the masking of the libc internal signals in some implementations,
particulary when using SIG_SETMASK.

If trying to execve() out of the signal handler, I think there would be
a strong temptation to restore the signal mask the program had on entry
with

	sigprocmask(SIG_SETMASK, &orig_mask, NULL);

say.  If the original signal was taken while in the middle of libc while
some internal signal was blocked then this would unintentionally unblock
that signal, and deadlocks and other badness may happen on return.

In theory pthread_sigmask() could defend against this, but I don't know
whether it actually does in any implementations.


So, IIUC you really must not return after doing something like this
(certainly if you want to be at all portable).

Trying to do asynchronous context switching using swapconxtext() would
fall foul of this (and plenty else).


> > (Yay, POSIX.)
> > 
> > For these reasons, execve()'ing directly from a signal handler is not a
> > great idea.  It would probably be better to escape from the signal
> > handler with siglongjmp() or setcontext(), with the target sigjmp_buf or
> > ucontext previously set up do the execve().
> 
> Well, setcontext() is no longer in POSIX.... (It was removed in

Well, yes.

> POSIX.1-2008.) And the specification of longjmp() says:
> 
>        It is recommended that applications do not call longjmp() or  sig‐
>        longjmp()  from  signal handlers. To avoid undefined behavior when
>        calling these functions from a  signal  handler,  the  application
>        needs to ensure one of the following two things:
> 
>         1. After  the  call to longjmp() or siglongjmp() the process only
>            calls async-signal-safe functions and does not return from the
>            initial call to main().
> 
>         2. Any  signal  whose  handler calls longjmp() or siglongjmp() is
>            blocked during every call to a non-async-signal-safe function,
>            and  no  such  calls are made after returning from the initial
>            call to main().

i.e., basically the same constraints you have to follow if you want to
achieve the same result safely from _within_ the signal handler.

But I take your point: my claim that using siglongjmp() is a better
approach was overstated.  And it's easy to forget that you're still in
signal-handler-like context even after siglongjmp().

> So, in my reading of it, you're no better off than calling
> sigprocmask() from the signal handler. Do you agree?

Yes, agreed.

(The background to my comments in this area is that I've learned from
experience that messing with the signal mask inside a signal handler
tends to create more problems than it solves -- but that doesn't mean
that there are no situations where it is legitimate.)

> > With SA_SIGINFO, you can also update uc->uc_sigmask inside the signal
> > handler if you want to change the signal mask on return.  But that's
> > awkward to do portably, since sigaddset() and sigdelset() are not
> > specified to be safe in signal handlers either.
> 
> I think you've misremembered here. At least as far back as 
> POSIX.1-2001, sigaddset() and sigdelset() are specified as
> async-signal-safe.

Ah, ignore me.  I think I was confusing these functions with something
else here -- yes, they are specified as async-signal-safe in all recent
versions of the standards.  (In reasonable implementations, they have
probably always been safe in practice.)

> By now, the text has evolved to:
> 
> [[
>    Execution of signal handlers
>        Whenever there is a transition from kernel-mode to user-mode  exe‐
>        cution  (e.g.,  on  return  from  a system call or scheduling of a
>        thread onto the CPU), the kernel checks whether there is a pending
>        signal for which the process has established a signal handler.  If

The signal must also be unblocked.

>        there is such a pending signal, the following steps occur:

You might want to comment on what happens if there are multiple
unblocked signals pending -- you can probably refer to signal(7) rather
than writing it all out again here.

>        1. The kernel performs the necessary preparatory steps for  execu‐
>           tion of the signal handler:
> 
>           a) The signal is removed from the set of pending signals.
> 
>           b) If  the  signal  handler  was  installed by a call to sigac‐
>              tion(2) that specified the SA_ONSTACK flag  and  the  thread
>              has   defined  an  alternate  signal  stack  (using  sigalt‐
>              stack(2)), then that stack is installed.

Actually should (b) and (c) be swapped? (c) saves the SP and stack
configuration.

> 
>           c) Various pieces of signal-related context are  saved  into  a
>              special  frame  that is created on the stack.  The saved in‐
>              formation includes:
> 
>              + the program counter register (i.e.,  the  address  of  the
>                next  instruction  in the main program that should be exe‐
>                cuted when the signal handler returns);
> 
>              + architecture-specific register state required for resuming
>                the interrupted program;
> 
>              + the thread's current signal mask;
> 
>              + the thread's alternate signal stack settings.
> 
>           d) Any  signals  specified in act->sa_mask when registering the
>              handler with sigprocmask(2) are added to the thread's signal
>              mask.   The signal being delivered is also added to the sig‐
>              nal mask, unless SA_NODEFER was specified  when  registering
>              the  handler.  These signals are thus blocked while the han‐
>              dler executes.
> 
>        2. The kernel constructs a frame for the  signal  handler  on  the
>           stack.   The  kernel sets the program counter for the thread to
>           point to the first instruction of the signal handler  function,
>           and configures the return address for that function to point to
>           a piece of user-space code known as the signal trampoline  (de‐
>           scribed in sigreturn(2)).
> 
>        3. The  kernel  passes control back to user-space, where execution
>           commences at the start of the signal handler function.
> 
>        4. When the signal handler returns, control passes to  the  signal
>           trampoline code.
> 
>        5. The  signal  trampoline  calls sigreturn(2), a system call that
>           uses the information in the stack frame created in  step  1  to
>           restore  the  thread's signal mask and alternate stack settings

Nit: and everything else too.

Would it make sense to say something like:

"to restore the thread to its state before the signal handler was
called.  The thread's signal mask and alternate signal stack settings
are also restored as part of this procedure."

>           to their state before the signal handler was called.  Upon com‐
>           pletion  of the call to sigreturn(2), the kernel transfers con‐
>           trol back to user space, and the thread  recommences  execution
>           at the point where it was interrupted by the signal handler.
> 
>        Note  that if the signal handler does not return (e.g., control is
>        transferred out of the handler using siglongjmp(3), or the handler
>        executes a new program with execve(2)), then the final step is not
>        performed.  In particular, in such scenarios it  is  the  program‐
>        mer's  responsibility to restore the state of the signal mask (us‐
>        ing sigprocmask(2)), if it is desired to unblock the signals  that
>        were  blocked  on  entry  to  the signal handler.  (Note that sig‐
>        longjmp(3) may or may not restore the signal  mask,  depending  on
>        the savesigs value that was specified in the corresponding call to
>        sigsetjmp(3).)
> ]]

Otherwise looks good to me.

To exec() straight from a signal handler still requires care though in
order to get things into a sane state for the new process, and while
avoiding the program dying in unintended ways on the way.

Doing this safely in a multithreaded program can be hard, to say the
least.


One other wrinkle that might be worth mentioning, since it has confused
me in the past:  There is no magic internal kernel state that is
different when executing a signal handler.  "Being in a signal handler"
is in fact not a meaningful concept to the kernel.  Everything is
tracked in the user registers and on the user stack.  Signal nesting is
only limited by available stack space (and sane software design...)

I'm not sure how to describe this concisely though.

Cheers
---Dave
