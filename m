Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D8402B44A1
	for <lists+linux-man@lfdr.de>; Mon, 16 Nov 2020 14:25:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729115AbgKPNVt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 Nov 2020 08:21:49 -0500
Received: from foss.arm.com ([217.140.110.172]:39758 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729114AbgKPNVs (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 16 Nov 2020 08:21:48 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 084BB101E;
        Mon, 16 Nov 2020 05:21:48 -0800 (PST)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 714083F70D;
        Mon, 16 Nov 2020 05:21:47 -0800 (PST)
Date:   Mon, 16 Nov 2020 13:21:43 +0000
From:   Dave Martin <Dave.Martin@arm.com>
To:     Heinrich Schuchardt <xypron.glpk@gmx.de>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: sigaction.2: clarification for SA_NODEFER needed
Message-ID: <20201116132141.GW6882@arm.com>
References: <e18cbe1f-5dcf-c717-5790-912af6bbfa41@gmx.de>
 <24b18d8a-84cf-17c6-12cf-f2d0c979b6ad@gmail.com>
 <70217a4d-9525-a186-4560-02216dd4546a@gmx.de>
 <90f0f681-0770-9975-f370-415300d29fa9@gmail.com>
 <16CBDA59-F868-47E5-B88F-C9CF235BF8BD@gmx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <16CBDA59-F868-47E5-B88F-C9CF235BF8BD@gmx.de>
User-Agent: Mutt/1.5.23 (2014-03-12)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Nov 12, 2020 at 09:57:35PM +0100, Heinrich Schuchardt wrote:
> Am 12. November 2020 21:45:56 MEZ schrieb "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>:
> >On 11/12/20 5:25 PM, Heinrich Schuchardt wrote:
> >
> >[...]
> >
> >> Hello Michael,
> >> 
> >> this text is very helpful.
> >> 
> >> "Signal mask and pending signals" already mentions that the signal
> >mask
> >> controls the blocking of signals. But maybe you could reiterate this
> >in
> >> 1d) and in the note below 5).
> >
> >Yes, that perhaps does not hurt. Some light tweaks:
> >
> >   Execution of signal handlers
> >     Whenever  there is a transition from kernel-mode to user-mode exe‐
> >     cution (e.g., on return from a system  call  or  scheduling  of  a
> >     thread onto the CPU), the kernel checks whether there is a pending
> >     signal for which the process has established a signal handler.  If
> >       there is such a pending signal, the following steps occur:
> >
> >     1. The  kernel performs the necessary preparatory steps for execu‐
> >          tion of the signal handler:
> >
> >          a) The signal is removed from the set of pending signals.
> >
> >        b) If the thread has defined an alternate signal  stack  (using
> >             sigaltstack(2)), then that stack is installed.
> >
> >        c) Various  pieces  of  signal-related context are saved into a
> >           "hidden" frame that is created on the stack.  The saved  in‐
> >             formation includes:

Can we delete "hidden" here?  (In a sense it's actually less hidden than
a typical compiler function frame, since we do provide an explicit
interface for poking about in the signal frame -- you can't do that with
function frames).

> >
> >           + the  program  counter  register  (i.e., the address of the
> >             next instruction in the main program that should  be  exe‐
> >               cuted when the signal handler returns);

You might also want to add something like:

"Architecture-specific register state required for resuming the
interrupted program."

> >
> >             + the thread's current signal mask;
> >
> >             + the thread's alternate signal stack settings.
> >
> >        d) The  thread's  signal  mask is adjusted by adding the signal
> >           (unless the handler was  established  using  the  SA_NODEFER
> >           flag)  as  well  as  any  additional  signals  specified  in
> >           act->sa_mask when sigaction(2) was  called.   These  signals
> >             are thus blocked while the handler executes.

I'd delete "adjusted" since it adds nothing to the meaning.

Would this also be more readable if the logic is flipped around:

--8<--

Any signals specified in act->sa_mask when registering the handler are
added to the thread's signal mask.  The signal being delivered is also
added to the signal mask, unless SA_NODEFER was specified when
registering the handler.

-->8--

> >
> >     2. The  kernel  constructs  a  frame for the signal handler on the
> >        stack.  Within that frame, the return address points to a piece
> >        of  user-space  code called the signal trampoline (described in
> >          sigreturn(2)).

Not all architectures put the function return information on the stack.

The kernel has to explicitly fix up the pc to run the signal handler
here -- it doesn't happen by magic.  So maybe say for (2):

--8<--

The kernel sets the program counter for the thread to point to the first
instruction of the signal handler, and configures the return address for
this function to point to a piece of user-space code called the signal
trampoline [...].

-->8--

> >
> >     3. The kernel passes control back to user-space,  where  execution
> >          commences at the start of the signal handler function.
> >
> >     4. When  the  signal handler returns, control passes to the signal
> >          trampoline code.
> >
> >     5. The signal trampoline calls sigreturn(2), a  system  call  that
> >        uses the information in the "hidden" stack frame to restore the
> >        thread's signal mask and  alternate  stack  settings  to  their
> >        state before the signal handler was called.  Upon completion of
> >        the call to sigreturn(2), the kernel transfers control back  to
> >        user  space,  and the thread recommences execution at the point
> >          where it was interrupted by the signal handler.
> >
> >     Note that if the signal handler does not return (e.g., control  is
> >     transferred  out  of  the  handler  using sigsetjmp(3) or swapcon‐

siglongjmp(), not sigsetjmp().

> >     text(3), or the handler executes a new  program  with  execve(2)),
> >     then the final step is not performed.  In particular, in such sce‐
> >     narios it is the programmer's responsibility to restore the  state
> >     of the signal mask, if it is desired unblock the signals that were
> >       blocked on entry to the signal handler.

I'm pretty sure sigsetjmp(), and probably setcontext(), _do_ restore the
signal mask.

[...]

Cheers
---Dave
