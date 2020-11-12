Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B86D2B0887
	for <lists+linux-man@lfdr.de>; Thu, 12 Nov 2020 16:37:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728682AbgKLPhx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Nov 2020 10:37:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728346AbgKLPhx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 12 Nov 2020 10:37:53 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B7E4C0613D1
        for <linux-man@vger.kernel.org>; Thu, 12 Nov 2020 07:37:52 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id 33so6446563wrl.7
        for <linux-man@vger.kernel.org>; Thu, 12 Nov 2020 07:37:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=xJae4DwpxMCVLrHP648wJ4mPPgaRydWWaNNbZonau1E=;
        b=H5sp/B/6Zs/YpPl3mDX6eljIP2KBnW4XCxOksrI7yYtPH128MCmPz6J4VtTWmXHU5l
         tVGk7vZ2hb73QAM6S8K8wjcPdeGZfsA4IAU0p6nHIOAXBG/u31bQ5HYxiMGPuBXicJoB
         ukeeIt50StsvHCA0TeLblqeM0kUYeNZbMpG2yh40laxr3tcRtzp8n2gtRh+XEDgS727S
         OdAN2E2fxBKGVMwKC9sc9WM1q5daaXO6soSps/6+6Jcd9UNxdnp3/K6l6aHS7PkmiRRz
         opo1ruE0Cvgvr/4KB+fs33Zs4kN2PFsIxIssQBeJmUl/wNnkW4QiAnchPBkJNQ8tecwe
         2CjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xJae4DwpxMCVLrHP648wJ4mPPgaRydWWaNNbZonau1E=;
        b=j8gR6f6MxCOubaZJRNFc6l3ZpBKAjRmq/r6zzD+RLPneLRlBCKccj8CV1ImUZfB85Z
         E0WKjJHEUbZlAje7qdhNE/QYp5/DMbn2crkLK+Tu3ytPZe+wNIEcC2eUBUfwJ+81DGP4
         EWT9rPIK2lMJPqMVQArVr4pOFMfaJIGB0QnOWmO7THBnaVHt3krxAi2vEUXnGQvNNlBi
         yM6h8ePuD3MFGJlQSAGBm7iolskrvFWcM7TR37hAJIT2D2z99/C0iYXfcrDFfc+prm3u
         BqDHbH0st8SotCywo+5OX6Fyvm+rPDUru/cASRs26NCv/Dgw8mI+kvWs6g5NZ1+CKuiD
         oqkg==
X-Gm-Message-State: AOAM533bhUFSVCVmm1Al0RU0sg4HYIZwxgluuWX2RkqIoZWPTD0ERwZV
        F8Y6Yy+Iy9R1zfVtZ/PLbmE=
X-Google-Smtp-Source: ABdhPJyTBiVzQZlgHTS7zL6Fp8L8cLO9zjXRnU9h+9zYNXQiCCfVY0EBpLffY740HgK8tak2ABQ+hA==
X-Received: by 2002:adf:c3c8:: with SMTP id d8mr119706wrg.366.1605195471017;
        Thu, 12 Nov 2020 07:37:51 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id b8sm7803999wrv.57.2020.11.12.07.37.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 07:37:48 -0800 (PST)
Cc:     mtk.manpages@gmail.com
Subject: Re: sigaction.2: clarification for SA_NODEFER needed
To:     Heinrich Schuchardt <xypron.glpk@gmx.de>, linux-man@vger.kernel.org
References: <e18cbe1f-5dcf-c717-5790-912af6bbfa41@gmx.de>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <24b18d8a-84cf-17c6-12cf-f2d0c979b6ad@gmail.com>
Date:   Thu, 12 Nov 2020 16:37:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <e18cbe1f-5dcf-c717-5790-912af6bbfa41@gmx.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Heinrich,

On 11/11/20 1:42 AM, Heinrich Schuchardt wrote:
> Hello Michael,
> 
> I have been writing a handler for SIGILL and SIGSEGV which restarts the
> program using execv() if an exception occurs. The handler never returns.
> 
>>From the description of SA_NODEFER it was not evident that even if the
> process is restarted with execv() the signal remains masked if
> SA_NODEFER is not set as a flag.
> 
> It think this behavior deserves mentioning on the sigaction.2 manpage, e.g.
> 
> "Do not prevent the signal from being received from within its own
> signal handler. A signal handler call is not terminated by calling
> execv() as the pending signal property is inherited by the new process."
> 
> On the signal.7 manpage there is a paragraph "Signal mask and pending
> signals". Here pending signals are mentioned. There is a sentence
> "Between the time when it is generated and when it is delivered a signal
> is said to be pending."
> 
> To me "delivered" means the instance when the signal handler is called
> and not the instance when the signal handler returns. So said sentence
> should be reworked, e.g.
> 
> "Between the time when it is generated and when the signal handler
> returns a signal is said to be pending."

Your description above seems to conflate two concepts: the signal mask
and pending signals. The sentence that you propose reworking is
correct as it stands.

The sequence of events goes like this:

1. Signal is generated

[At this point the signal is pending, but typically the interval
between this step and the next is typically so brief that the fact
that the signal is pending is unobservable]

2. The kernel delivers the signal to the process:

+ The signal is removed from the set of pending signals.
+ The signal is added to the signal mask (unless SA_NOFER
  was specified)
+ The kernel constructs a frame for the signal handler on the
  user-space stack. The return address in that frame points to a
  small piece of code in user-space called the signal trampoline.
+ The kernel passes control back to the process with execution
  commencing at the start of the signal handler.

3. The signal handler executes.

[At this point, the signal is not pending, but it is present in the
signal mask.]

4. The signal handler returns.

5. Control passes to the signal trampoline, which calls
   sigreturn(2).

6. When sigreturn(2) is called, the kernel once more has control
   and restored various pieces of process state (e.g., the signal
   mask) to the values they had before the signal handler was
   invoked.

7. At completion of the sigreturn(2) system call, the kernel passes control
   back to the user-space program with execution recommencing at the
   point where the main program was interrupted by the signal handler.

Now, if you interrupt things before step 4 (e.g., with exec(),
swapcontext(3), or possibly--depending on how sigsetjmp() was 
called--siglongjmp()), then of course the remaining steps are not
performed.

I've added a few words to the SA_NODEFER description to hopefully
further clarify what it does:

       SA_NODEFER
              Do not prevent the signal from being received  from  within
              its  own signal handler (i.e., do not add the signal to the
              thread's signal mask while the handler is executing).

Probably, the signal(7) manual page could say more about all of this.
What would you think of the following text to be added to that page

   Execution of signal handlers
       Whenever  there is a transition from kernel-mode to user-mode exe‐
       cution (e.g., on return from a system  call  or  scheduling  of  a
       thread onto the CPU), the kernel checks whether there is a pending
       signal for which the process has established a signal handler.  If
       there is such a pending signal, the following steps occur:

       1. The  kernel performs the necessary preparatory steps for execu‐
          tion of the signal handler:

          a) The signal is removed from the set of pending signals.

          b) If the thread has defined an alternate signal  stack  (using
             sigaltstack(2)), then that stack is installed.

          c) Various  pieces  of  signal-related context are saved into a
             "hidden" frame that is created on the stack.  The saved  in‐
             formation includes:

             + the  program  counter  register  (i.e., the address of the
               next instruction in the main program that should  be  exe‐
               cuted when the signal handler returns);

             + the thread's current signal mask;

             + the thread's alternate signal stack settings.

          d) The  thread's  signal  mask is adjusted by adding the signal
             (unless the handler was  established  using  the  SA_NODEFER
             flag)  as  well  as  any  additional  signals  specified  in
             act->sa_mask when sigaction(2) was called.

       2. The kernel constructs a frame for the  signal  handler  on  the
          stack.  Within that frame, the return address points to a piece
          of user-space code called the signal trampoline  (described  in
          sigreturn(2)).

       3. The  kernel  passes control back to user-space, where execution
          commences at the start of the signal handler function.

       4. When the signal handler returns, control passes to  the  signal
          trampoline code.

       5. The  signal  trampoline  calls sigreturn(2), a system call that
          uses the information in the "hidden" stack frame to restore the
          thread's  signal  mask  and  alternate  stack settings to their
          state before the signal handler was called.  Upon completion of
          the  call to sigreturn(2), the kernel transfers control back to
          user space, and the thread recommences execution at  the  point
          where it was interrupted by the signal handler.

       Note  that if the signal handler does not return (e.g., control is
       transferred out of the  handler  using  sigsetjmp(3)  or  swapcon‐
       text(3),  or  the  handler executes a new program with execve(2)),
       then the final step is not performed.  In particular, in such sce‐
       narios it is the programmer's responsibility to restore that state
       of the signal mask, if that is desired.
?

Thanks,

Michael
-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
