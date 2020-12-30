Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C4E72E7B24
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 17:52:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726276AbgL3QwY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 11:52:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726168AbgL3QwY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 11:52:24 -0500
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6E3BC061799
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 08:51:43 -0800 (PST)
Received: from localhost (unknown [IPv6:2804:431:c7f5:e396:88cd:ceb6:57aa:eaba])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: krisman)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 975DD1F44B6B;
        Wed, 30 Dec 2020 16:51:41 +0000 (GMT)
From:   Gabriel Krisman Bertazi <krisman@collabora.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     alx.manpages@gmail.com, linux-man@vger.kernel.org,
        kernel@collabora.com
Subject: Re: [PATCH v6] prctl.2: Document Syscall User Dispatch
Organization: Collabora
References: <20201228173832.347794-1-krisman@collabora.com>
        <5da9a8bc-e034-1ab4-3f87-328108c1b27d@gmail.com>
Date:   Wed, 30 Dec 2020 13:51:37 -0300
In-Reply-To: <5da9a8bc-e034-1ab4-3f87-328108c1b27d@gmail.com> (Michael
        Kerrisk's message of "Wed, 30 Dec 2020 11:24:04 +0100")
Message-ID: <87wnwz5jae.fsf@collabora.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

"Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com> writes:

> Hello Gabriel
>
> This is looking much better. Thank you! I have a few more
> comments still.
>
> On 12/28/20 6:38 PM, Gabriel Krisman Bertazi wrote:
>> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
>> 
>> ---
>> Changes since v5:
>> (suggested by Michael Kerrisk)
>>   - Change () punctuation
>>   - fix grammar
>>   - Add information about interception, return and return value
>> 
>> Changes since v4:
>> (suggested by Michael Kerrisk)
>>   - Modify explanation of what dispatch to user space means.
>>   - Drop references to emulation.
>>   - Document suggestion about placing libc in allowed-region.
>>   - Comment about avoiding syscall cost.
>> Changes since v3:
>> (suggested by Michael Kerrisk)
>>   - Explain what dispatch to user space means.
>>   - Document the fact that the memory region is a single consecutive
>>   range.
>>   - Explain failure if *arg5 is set to a bad value.
>>   - fix english typo.
>>   - Define what 'invalid memory region' means.
>> 
>> Changes since v2:
>> (suggested by Alejandro Colomar)
>>   - selective -> selectively
>>   - Add missing oxford comma.
>> 
>> Changes since v1:
>> (suggested by Alejandro Colomar)
>>   - Use semantic lines
>>   - Fix usage of .{B|I}R and .{B|I}
>>   - Don't format literals
>>   - Fix preferred spelling of userspace
>>   - Fix case of word
>> ---
>>  man2/prctl.2 | 159 +++++++++++++++++++++++++++++++++++++++++++++++++++
>>  1 file changed, 159 insertions(+)
>> 
>> diff --git a/man2/prctl.2 b/man2/prctl.2
>> index f25f05fdb593..0a0abfb78055 100644
>> --- a/man2/prctl.2
>> +++ b/man2/prctl.2
>> @@ -1533,6 +1533,135 @@ For more information, see the kernel source file
>>  (or
>>  .I Documentation/arm64/sve.txt
>>  before Linux 5.3).
>> +.TP
>> +.\" prctl PR_SET_SYSCALL_USER_DISPATCH
>> +.\" commit 1446e1df9eb183fdf81c3f0715402f1d7595d4
>> +.BR PR_SET_SYSCALL_USER_DISPATCH " (since Linux 5.11, x86 only)"
>> +.IP
>> +Configure the Syscall User Dispatch mechanism
>> +for the calling thread.
>> +This mechanism allows an application
>> +to selectively intercept system calls
>> +so that they can be handled within the application itself.
>> +Interception takes the form of a thread-directed
>> +.B SIGSYS
>> +signal that is delivered to the thread
>> +when it makes a system call.
>> +If intercepted,
>> +the system call is not executed by the kernel.
>> +.IP
>> +The current Syscall User Dispatch mode is selected via
>> +.IR arg2 ,
>> +which can either be set to
>> +.B PR_SYS_DISPATCH_ON
>> +to enable the feature,
>> +or to
>> +.B PR_SYS_DISPATCH_OFF
>> +to turn it off.
>
> So, I realize now that I'm slightly confused.
>
> The value of arg2 can be either PR_SYS_DISPATCH_ON or
> PR_SYS_DISPATCH_OFF. The value of the selector pointed to by
> arg5 can likewise be R_SYS_DISPATCH_ON or PR_SYS_DISPATCH_OFF.
> What is the relationship between these two attributes? For example,
> what does it mean if arg2 isP R_SYS_DISPATCH_ON and, at the time of
> the prctl() call, the selector has the value PR_SYS_DISPATCH_OFF?

Hi Michael,

arg2 turns SUD on and off, thread-wide.  arg5 is what is used to filter
syscalls when SUD is on.  Based on the value of arg5, syscalls will be
intercepted, iff SUD is enabled for that thread.

arg5 is checked only upon syscall entry, so it doesn't have any effect
on the prctl itself, SUD was off at that time.

I'm not sure how to add this information to the man page, but I will try
to clarify it further.

>> +.IP
>> +When
>> +.I arg2
>> +is set to
>> +.BR PR_SYS_DISPATCH_ON ,
>> +.I arg3
>> +and
>> +.I arg4
>> +respectively identify the
>> +.I offset
>> +and
>> +.I length
>> +of a single contiguous memory region in the process map
>
> Better: s/map/address space/ ?
>
>> +from where system calls are always allowed to be executed,
>> +regardless of the switch variable
>
> s/variable/variable./
>
>> +(Typically, this area would include the area of memory
>> +containing the C library.)
>
> I think just to ease readability (smaller paragraphs), insert
> .IP
> here.
>
>> +.I arg5
>> +points to a char-sized variable
>> +that is a fast switch to enable/disable the mechanism
>> +without the overhead of doing a system call.
>> +The variable pointed by
>> +.I arg5
>> +can either be set to
>> +.B PR_SYS_DISPATCH_ON
>> +to enable the mechanism
>> +or to
>> +.B PR_SYS_DISPATCH_OFF
>> +to temporarily disable it.
>> +This value is checked by the kernel
>> +on every system call entry,
>> +and any unexpected value will raise
>> +an uncatchable
>> +.B SIGSYS
>> +at that time,
>> +killing the application.
>> +.IP
>> +When a system call is intercepted,
>> +the kernel sends a thread-directed
>> +.B SIGSYS
>> +signal to the triggering thread.
>> +Various fields will be set in the
>> +.I siginfo_t
>> +structure (see
>> +.BR sigaction (2))
>> +associated with the signal:
>> +.RS
>> +.IP * 3
>> +.I si_signo
>> +will contain
>> +.BR SIGSYS .
>> +.IP *
>> +.IR si_call_addr
>> +will show the address of the system call instruction.
>> +.IP *
>> +.IR si_syscall
>> +and
>> +.IR si_arch
>> +will indicate which system call was attempted.
>> +.IP *
>> +.I si_code
>> +will contain
>> +.BR SYS_USER_DISPATCH .
>> +.IP *
>> +.I si_errno
>> +will be set to 0.
>> +.RE
>> +.IP
>> +The program counter will be as though the system call happened
>> +(i.e., the program counter will not point to the system call instruction).
>> +.IP
>> +When the signal handler returns to the kernel,
>> +the system call completes immediately
>> +and returns to the calling thread,
>> +without actually being executed.
>> +If necessary
>> +(i.e., when emulating the system call on user space.),
>> +the signal handler should set the system call return value
>> +to a sane value,
>> +by modifying the register context stored in the
>> +.I ucontext
>> +argument of the signal handler.
>
> Just for my own education, do you have any example code somewhere
> that demonstrates setting the syscall return value?

I though I had this exemplified in the kselftests, but I just saw that
is not the case.  Something to fix there...

In the following signal handler code (untested, adapted from an old test
case of mine), SUD is used as a poor-man strace (x86 specific):

static void handle_sigsys(int sig, siginfo_t *info, void *ucontext)
{
	struct ucontext_t *ctx = ucontext;
	mcontext_t *mctx = &ctx->uc_mcontext;
	char buf[1024];
	unsigned long long r;
       	int len;

        *arg5 = PR_SYS_DISPATCH_OFF;

	len = snprintf(buf, 1024, "sys_%d(%d,%d,%d,%d,%d,%d)\n",
		       mctx->gregs[REG_RAX], mctx->gregs[REG_RDI],
		       mctx->gregs[REG_RSI], mctx->gregs[REG_RDX],
		       mctx->gregs[REG_R10], mctx->gregs[REG_R8],
		       mctx->gregs[REG_R9]);

	write(2, buf, len);

	r = syscall(mctx->gregs[REG_RAX], mctx->gregs[REG_RDI],
		    mctx->gregs[REG_RSI], mctx->gregs[REG_RDX],
		    mctx->gregs[REG_R10], mctx->gregs[REG_R8],
		    mctx->gregs[REG_R9]);

	/* Set the return value. */
	mctx->gregs[REG_RAX] = r;

        *arg5 = PR_SYS_DISPATCH_ON;

        /* Assumes the return trampoline is in the allowed region */
}

-- 
Gabriel Krisman Bertazi
