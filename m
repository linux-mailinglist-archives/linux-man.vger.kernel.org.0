Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4AEA830DF2D
	for <lists+linux-man@lfdr.de>; Wed,  3 Feb 2021 17:07:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234825AbhBCQGx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Feb 2021 11:06:53 -0500
Received: from mail.kernel.org ([198.145.29.99]:35474 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234803AbhBCQGl (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 3 Feb 2021 11:06:41 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 181A764F65;
        Wed,  3 Feb 2021 16:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1612368348;
        bh=m5l2Bw/SWfxa7d2ySCxpYJhkkNPDUSY5rMHQf0JVdDA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=SHbfigOtDjWXqBJ9SZ31LgfZXDlpL12op+0/fA9vZiW7xpvvwYdYsTdYVgo8Kszvr
         iZFVRYu8bI0pckwgzZLUvvk4+xXYgCy0rLIVe/ueLRiEGaqzrrCoqGVgI3u5oGbCeF
         GKpI3HRFMQPWdPXpqqDxJHmePIR2qfTupqO+xT6hGEL5duaa8sUaW1j0rLAqp7q9TW
         e4X2G1QU7Fp3LNtN79AhWR7n/0PfP1fVhgNo82sIiVQZ/aHpZexurqYbSrJTbL/FBw
         E1cGsx16QiuJSV8KrYvSG9mfIG0Tkjh9X1ts88H7TGsSfTFiv/66Z5D8YsXvsuqYGm
         6dsSh2m7BB5IA==
Date:   Wed, 3 Feb 2021 18:05:41 +0200
From:   Jarkko Sakkinen <jarkko@kernel.org>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, linux-sgx@vger.kernel.org,
        dave.hansen@linux.intel.com
Subject: Re: [PATCH v3] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
Message-ID: <YBrJ1TqKISrTyRXI@kernel.org>
References: <20210121114359.112193-1-jarkko@kernel.org>
 <cefe9151-2bea-fa96-f1b0-6621d1d94222@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cefe9151-2bea-fa96-f1b0-6621d1d94222@gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Jan 21, 2021 at 10:04:53PM +0100, Michael Kerrisk (man-pages) wrote:
> Hello Jarkko,
> 
> Thanks for the revision!
> 
> A lot of my comments below are cosmetic, but there's also a few deeper
> questions.
> 
> I expect I may still have some comments on v4, but this draft
> is already looking much better. I don't suppose I'm about to fully
> understand SGX, but I feel like we're getting closer to a document
> that would help people who do care to understand it.

I don't mind doing as many iterations needed.

I guess that more painful it is now to work on this now, the less
painful it is to return to this document later on :-)

I also think that this is a really useful brain exercise to ensure
sound maintenance for the code base in long term. I.e this helps me
to provide a sound answer what SGX is and isn't.

> On 1/21/21 12:43 PM, Jarkko Sakkinen wrote:
> > Signed-off-by: Jarkko Sakkinen <jarkko@kernel.org>
> > ---
> > v3:
> > * Overhaul based on Michael's comments. Most likely needs to be refined
> >   in various places but this is at least a small step forward for sure.
> > v2:
> > * Fixed the semantic newlines convention and various style errors etc.
> >   that were reported by Alenjandro and Michael.
> > * SGX was merged to v5.
> >  man7/sgx.7 | 248 +++++++++++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 248 insertions(+)
> >  create mode 100644 man7/sgx.7
> > 
> > diff --git a/man7/sgx.7 b/man7/sgx.7
> > new file mode 100644
> > index 000000000..4f6d6136f
> > --- /dev/null
> > +++ b/man7/sgx.7
> > @@ -0,0 +1,248 @@
> > +.\" Copyright (C) 2021 Intel Corporation
> > +.\"
> > +.\" %%%LICENSE_START(VERBATIM)
> > +.\" Permission is granted to make and distribute verbatim copies of this
> > +.\" manual provided the copyright notice and this permission notice are
> > +.\" preserved on all copies.
> > +.\"
> > +.\" Permission is granted to copy and distribute modified versions of this
> > +.\" manual under the conditions for verbatim copying, provided that the
> > +.\" entire resulting derived work is distributed under the terms of a
> > +.\" permission notice identical to this one.
> > +.\"
> > +.\" Since the Linux kernel and libraries are constantly changing, this
> > +.\" manual page may be incorrect or out-of-date.  The author(s) assume no
> > +.\" responsibility for errors or omissions, or for damages resulting from
> > +.\" the use of the information contained herein.  The author(s) may not
> > +.\" have taken the same level of care in the production of this manual,
> > +.\" which is licensed free of charge, as they might when working
> > +.\" professionally.
> > +.\"
> > +.\" Formatted or processed versions of this manual, if unaccompanied by
> > +.\" the source, must acknowledge the copyright and authors of this work.
> > +.\" %%%LICENSE_END
> > +.\"
> > +.TH SGX 7 2020-12-02 "Linux" "Linux Programmer's Manual"
> > +.PP
> > +sgx - overview of Software Guard eXtensions
> 
> Replace "-" with "\-" (it's a standard convention in manual pages).

I also fixed the date (2021-02-02).

> 
> > +.SH DESCRIPTION
> > +.PP
> > +Intel Software Guard eXtensions (SGX) allow user space applications to set
> 
> s/user space/user-space/

I would just say applications here, so I just removed "user space".

> 
> > +aside private memory regions of code and data.
> > +These memory regions are called enclaves.
> > +.PP
> > +SGX must be enabled by the BIOS.
> 
> s/by/in/ ? (See two lines below.)

Right, BIOS is not an actor.

> 
> > +If SGX appears to be unsupported on a system having hardware support,
> > +ensure that SGX is enabled in the BIOS.
> > +If a BIOS presents a choice between \(dqEnabled\(dq and \(dqSoftware
> > +Enabled\(dq modes for SGX,
> > +choose \(dqEnabled\(dq.
> > +.PP
> > +An enclave can be entered only at a fixed set of entry points,
> 
> I think there needs to be a more detailed explanation of what
> "entering" and "exiting" the enclave mean. I don't really
> understand it. Does it mean that the instruction pointer register
> starts pointing to addresses in the range (and then ceases when
> the enclave is exited)?

ENCLU opcode leaf function EENTER takes in address of one TCS struct inside
the enclave. Calling EENTER turns the CPU into enclave mode, which is a
submode of normal user mode and the execution continues from the offset
described by the TCS.

When a CPU core wants leave the enclave, it calls EEEXIT leaf function,
which takes *any* address outside of the enclave.

EENTER also takes in the Asynchronous Exit Pointer (AEP) parameter. AEP is
an address outside the enclave, which the kernel exception handler
will return to using IRET. There's a stack inside the enclave for storing
the register state when a CPU exception happens, and replacing it with
synthetic state. There is own one stack for *every* TCS entry.

Most importantly in this synthetic state RIP is replaced with
aforementioned AEP, and RBX with the address of the TCS entry that we used
to enter the enclave. This should essentially lead to a sequence, which
ends up calling a ERESUME leaf function of ENCLU, which will re-enter
the enclave. ERESUME will also restore the state from TCS specific
stack.

Basically anything that normally would cause a round trip to kernel will
now cause AEX. An enclave can only do basic data operations internally.

The vDSO exists to encapsulate the complexity of managing the
EENTER/ERESUME complexity and also allowing to know, which exception
happened, in the cases where simple iret won't do, in other words
situation where you would normally get SIGSEGV. Kernel will fill in
that information to this structure before exiting:

/**
 * struct sgx_enclave_run - the execution context of __vdso_sgx_enter_enclave()
 * @tcs:			TCS used to enter the enclave
 * @function:			The last seen ENCLU function (EENTER, ERESUME or EEXIT)
 * @exception_vector:		The interrupt vector of the exception
 * @exception_error_code:	The exception error code pulled out of the stack
 * @exception_addr:		The address that triggered the exception
 * @user_handler:		User provided callback run on exception
 * @user_data:			Data passed to the user handler
 * @reserved			Reserved for future extensions
 *
 * If @user_handler is provided, the handler will be invoked on all return paths
 * of the normal flow.  The user handler may transfer control, e.g. via a
 * longjmp() call or a C++ exception, without returning to
 * __vdso_sgx_enter_enclave().
 */
struct sgx_enclave_run {
	__u64 tcs;
	__u32 function;
	__u16 exception_vector;
	__u16 exception_error_code;
	__u64 exception_addr;
	__u64 user_handler;
	__u64 user_data;
	__u8  reserved[216];
};

This is defined in arch/x86/include/uapi/asm/sgx.h. We need the vDSO and
fine-grained exception handling because the enclave is depending on the
user space outside of it to do all I/O behalf of it, starting from basic
links like making a syscall.

I would keep this more architectural level than a low-level API doc. I
just copy-pasted the exception structure to show the concept. Perhaps
the key structures in API should be named here to make things more
concrete, not sure.

The reason I think that way is that generally speaking most users will use
SGX through some run-time built by a 3rd party. I.e. they need to know the
high-level concept but do not use low-level API directly.

Even if such man page would make later sense, I think then there should be
a *separate* man pages for the API. I'm discluding that idea. I just
don't think it has high value for anyone right now.

To summarize you can exit enclave three ways:

1. Explicit EEXIT
2. Async exit, e.g. things like timer interrupt or page fault
   could cause this. For this our vDSO has the AEP handler built-in,
   which handles the ERESUME after the interrupt.
3. Exception. Enclave's can generate much of these as anything that
   would cause jump out of its address space is asserted by the CPU
   with as exception. E.g. SYSENTER would generate #UD. Our vDSO
   puts this information to struct sgx_enclave_run.

I would appreciate some rudimentary idea where to draw the "border line
for the absraction" (coined up this term now). I can then go through
what I have and bake some more of this information in where needed.

Perhaps a distant relative to an enclave, and one way to get grasp of
it would be VM's with VMEnter and VMExit calls, and VMM acting as their
delegate. It's essentially a hardware assisted container protected from
any outside memory access.

> > +each defined by Thread Control Structure (TCS) architectural structure,
> > +contained in a single enclave page.
> > +A hardware thread reserves a TCS by executing EENTER subfunction of the
> 
> s/EENTER/the EENTER/

Fixed.
 
> > +ENCLU instruction,
> 
> Maybe: s/ENCLU/x86 ENCLU/ ?

Right, does not hurt to be specific here.

> > +and the execution continues from the TCS defined entry point.
> 
> s/TCS defined/TCS-defined/

Fixed.

> > +ENCLU contains all the SGX user functions.
> 
> s/ENCLU/The ENCLU (Execute Enclave User Function) opcode/
> (I think noting what the mnemonic stands for helps the reader get
> oriented.)

> 
> s/contains/implements/?

I wrote this:

"
ENCLU function,
ENCLave User function,
implements the functions callable from the user space.
"

> 
> > +Depending on the function, they must be called either inside or outside of
> > +the enclave.
> > +Once the thread has completed its task,
> > +it calls EEXIT subfunction of the ENCLU instruction,
> 
> s/calls/employs/ ?

Changed.

> > +which releases the TCS and departs the enclave to a given address outside
> > +the enclave.
> > +While the enclave is loaded from a regular binary file,
> > +only the threads inside the enclave can access its memory.
> > +.PP
> > +Although carved out of normal DRAM,
> > +enclave memory is marked in the system memory map as reserved and is not
> > +managed by the Linux memory manager.
> > +There may be several enclave regions spread across the system.
> > +Each contiguous region is called an Enclave Page Cache (EPC) section.
> > +The pages belonging to the EPC sections are encrypted when they leave the
> > +Last Level Cache (LLC).
> > +.PP
> > +SGX is available only if the kernel was configured and built with the
> > +.B CONFIG_X86_SGX
> > +option.
> > +[[
> 
> Remove previous line.
> 
> > +You can determine whether the hardware supports SGX by checking
> > +whether "sgx" appears in the
> > +.I flags
> > +field in
> > +.IR /proc/cpuinfo .
> > +]]
> 
> Remove previous line.

I presume you meant removing '[[' and ']]'. Done.

> > +.SS Enclave management
> > +.PP
> 
> > +An enclave's life-cycle starts by opening
> > +.I /dev/sgx_enclave
> > +and ends when all the file descriptors referring to the opened file have
> > +been closed.
> > +After opening the enclave,
> > +its contents must be populated with the ioctl interface provided by
> 
> Everywhere that you wrote "ioctl", could you please replace with
> 
> .BR ioctl (2)

I did this for the four instances that I found in the document.

> > +.IR <asm/sgx.h> .
> > +ENCLS is a privileged (ring-0) instruction with the functionality for
> 
> s/ENCLS/ENCLS (Execute an Enclave System Function)/ ?
> 
> (I think noting what the mnemonic stands for helps the reader get
> oriented.)

"
ENCLS function,
ENCLave System function,
"

> > +managing enclave memory,
> > +and the ioctl interface provides a wrapper for it.
> > +.PP
> > +Enclave construction starts by calling
> 
> s/Enclave construction starts by/Construction of an enclave starts by/ ?

Thanks, fixed.

> > +.B SGX_IOC_ENCLAVE_CREATE,
> 
> Everywhere where you mention one of these ioctl operations, I would 
> prefer it to be rephrased as something like:
> 
> Construction of an enclave starts by employing the
> .B SGX_IOC_ENCLAVE_CREATE
> .BR ioctl (2)
> operation...

Fixed.

> > +which copies the initial version of SGX Enclave Control Structure
> > +(SECS).
> 
> Did no-one at Intel marketing read the engineering docs out loud and then 
> say to engineering, "wait, maybe you should choose another acronym?".

LOL. I'm not sure where the Linux CoC draws the line, but I might
have an idea what you mean :-)

> > +SGX Enclave Control Structure (SECS) contains the description of the
> 
> s/SGX/The SGX/

Fixed.

> > +enclave.
> > +The ioctl calls the ECREATE subfunction of the ENCLS instruction,
> 
> s/calls/employs/ ?

Fixed.

> > +which will copy the SECS to the SGX reserved memory.
> 
> s/will copy/copies/

Fixed.

> > +The SECS is never mapped to the process address space,
> > +and thus cannot be directly referenced.
> > +.PP
> > +Among other things, the SECS contains the base address and size of the enclave,
> > +meaning that the address space must be carved out before the creation.
> 
> s/the creation/creation of the enclave/ ?

Fixed.

> > +There is also a hardware related invariant that the enclave size must be a
> 
> s/hardware related/hardware-related/

Fixed.

> > +power of two,
> > +and the base address must be also naturally aligned relative to the size.
> > +.PP
> > +Some of the SECS fields must be initialized to zero because their values
> > +are determined dynamically after the enclave has been created.
> > +Most importantly SECS contains two SHA256 hashes: MRENCLAVE and
> 
> s/importantly/importantly,/

Fixed.

> > +MRSIGNER.
> > +Each ENCLS subfunction,
> > +which contribute to the enclave construction,
> > +hashes its key parameters to the MRENCLAVE.
> 
> Better:
> [[
> Each ENCLS subfunction that contributes to the enclave construction
> hashes its key parameters to the MRENCLAVE.
> ]]
> 
> (Note the removal of two commas, s/which/that/, and "contribute*s*".)

Thanks, copy-pasted.

> > +Arbitrary data can be also hashed into MRENCLAVE via the EEXTEND subfunction
> > +of the ENCLS instruction.
> > +MRSIGNER contains the hash of the enclave signer key,
> > +which is used to sign the SIGSTRUCT structure passed to the
> > +EINIT subfunction of the ENCLS instruction.
> > +MRENCLAVE and MRSIGNER define the enclave identity and sealing identity of the
> 
> s/identity/ID/ (twice) ?

Replaced with:

MRENCLAVE and MRSIGNER define the enclave and sealing ID of the enclave.

> > +enclave.
> > +A thread executing inside the enclave can use them as key material for deriving
> 
> s/them/these identities/
> or
> s/them/these IDs/

I used the latter.

> > +128-bit cryptographic keys.
> > +This is accomplished by calling the EGETKEY subfunction of the ENCLU
> > +instruction.
> > +.PP
> > +After the enclave has been created,
> > +a series of
> > +.B SGX_IOC_ENCLAVE_ADD_PAGES
> 
> .B SGX_IOC_ENCLAVE_ADD_PAGES
> .BR ioctl(2)

Fixed (already went through these based on earlier remark).

> 
> > +calls are issued.
> > +This ioctl copies the provided data to the enclave memory by invoking
> 
> s/ioctl/operation/

Fixed.

> > +the EADD subfunction of the ENCLS instruction.
> 
> s/.//

Oops.

> > +and optionally hashes it with help of the EEXTEND subfunction of the ENCLS
> > +instruction.
> > +Hashing is optional because it is a slow operation and sometimes not
> > +required.
> > +For instance, one might only care to measure the code pages.
> > +.PP
> > +Finally, when all the data has been copied to the enclave memory,
> > +.B SGX_IOC_ENCLAVE_INIT
> > +is called,
> > +which invokes the EINIT subfunction of the ENCLS instruction.
> > +This function checks that the accumulated MRENCLAVE matches the
> > +MRENCLAVE inside the caller provided SIGSTRUCT,
> 
> s/caller provided/caller-provided/

Fixed.

> > +and locks down the enclave from further build operations.
> > +After this, the enclave can be invoked.
> > +.SS Enclave memory mapping
> > +.PP
> 
> Remove preceding line (.PP not needed after .SS; the groff linter
> gives me warnings on this).

OK, how do I test-run groff linter? Can do it next time. I've now just
passed file directly to man.

> > +The processor tracks EPC pages in a hardware metadata structure called
> 
> s/called/called the/

Fixed.

> > +.I Enclave Page Cache Map (EPCM).
> > +The EPCM contains an entry for each EPC page which describes the owning
> 
> s/ which/; this entry/

Fixed.

> > +enclave,
> > +access rights,
> > +and page type among the other things.
> > +EPCM permissions are separate from the normal page tables.
> > +This prevents the kernel from,
> > +for instance,
> > +allowing writes to data which an enclave wishes to remain read-only.
> 
> s/remain/keep/ ?

Fixed.

> > +EPCM permissions may only impose additional restrictions on top of
> > +normal x86 page permissions.
> > +.PP
> > +For all intents and purposes,
> > +the SGX architecture allows the processor to invalidate all EPCM entries
> > +at will.
> > +This requires that software be prepared to handle an EPCM fault at any
> > +time.
> > +In practice,
> > +this can happen on events like power transitions when the ephemeral key
> > +that encrypts enclave memory is lost.
> > +.PP
> > +The kernel records EPCM permissions when
> > +.B SGX_IOC_ENCLAVE_ADD_PAGES
> > +is called.
> 
> Maybe replace the previous sentence with:
> 
> The kernel records EPCM permissions when the
> .B SGX_IOC_ENCLAVE_ADD_PAGES
> .BR ioctl (2)
> operation is performed.

Fixed.

> > +When the pages are mapped to memory via
> > +[[
> 
> Remove the previous line.
> 
> > +.BR mmap (2)
> > +or
> > +.BR mprotect (2),
> > +]]
> 
> Remove the previous line.

Right :-)

> 
> > +the EPCM permissions are compared against the declared permissions.
> > +If the declared permissions have bits set that are not part of the EPCM
> > +permissions,
> > +the operation fails with the error
> > +.B EACCES.
> 
> s/.B EACCES./.BR EACCES ./

Fixed.

> > +.SS Enclave invocation
> > +.PP
> 
> Remove preceding line (.PP not needed after .SS)

Assuming that this would be catched up by groff lint.

> > +Enclaves encounter exceptions for many reasons:
> > +everything from enclave page faults to NULL pointer dereferences,
> > +to system calls that must be called by a delegate from outside the enclave.
> > +Finally, a power cycle invalidates the whole EPC,
> > +which also needs to be addressed by the caller.
> > +.PP
> > +This type of exception handling has been traditionally been handled in
> > +SIGSEGV handlers,
> 
> Replace previous line with:
> 
> .B SIGSEGV
> handlers,

Fixed.

> > +registered by the library.
> > +But, being a process-wide state,
> 
> s/a //

Fixed.

> > +signal handling and code libraries do not mix well.
> 
> Maybe better:
> 
> s/signal handling and code libraries do not mix well
>  /signal handling does not mix well with code libraries/

Copy-pasted.

> > +.PP
> > +In order to assist the run-time, kernel provides a vDSO entry point,
> > +.BR vsgx_enter_enclave ,
> > +which wraps the ENCLU entry subfunctions EENTER and ERESUME,
> > +and returns exceptions to the caller at the point they happen.
> > +The exception information is filled in RDI, RSI and RDX.
> 
> s/filled in RDI, RSI and RDX
>  /placed in the RDI, RSI and RDX registers/
> ?

It's better, yes. Fixed.


> > +The kernel-provided user space portion of the vDSO handler will place
> 
> s/user space/user-space/

Fixed.

> > +this information in a user-provided buffer,
> > +or optionally trigger a user-provided callback at the time of the
> > +exception.
> > +.PP
> > +The vDSO function calling convention uses the standard RDI, RSI, RDX,
> 
> s/function calling/function-calling/

Fixed.

> > +RCX, R8 and R9 registers.
> 
> s/R8/R8,/

Fixed.

> > +This makes it possible to declare the vDSO as a C prototype,
> > +but other than that there is no specific support for the x86-64 calling
> > +convention,
> > +Things like storing XSAVE are the responsibility of the enclave and the
> > +runtime.
> > +.SS Page reclaimer
> > +.PP
> 
> Remove preceding line (.PP not needed after .SS)

Fixed.

> > +Just like normal RAM,
> > +there is a limited amount of enclave memory available and over-committing
> 
> s/over-committing/overcommitting/

Fixed.

> > +it is a very valuable tool to reduce resource use.
> 
> s/very // ?

Lol yes. I'll remove it. "very valuable" probably fits better,
when selling fake souvenirs, than documentation :-)

> > +.PP
> > +In contrast to normal page reclaim,
> > +the kernel cannot directly access enclave memory.
> > +To get around this,
> > +the SGX architecture provides a set of functions to help.
> > +Among other things,
> > +these functions copy enclave memory to and from normal memory,
> > +encrypting it and protecting its integrity in the process.
> > +.PP
> > +The kernel provides a page reclaimer by using these functions.
> > +It picks victim pages in LRU fashion from all the enclaves running in
> > +the system.
> > +A new kernel thread (ksgxd) reclaims pages in the background based on
> > +watermarks,
> > +similar to normal kswapd.
> > +.PP
> > +All enclave pages can be reclaimed, architecturally.
> > +But, there are some limits to this,
> 
> s/But,/But/

Fixed.

> > +such as the SECS page,
> > +which must be reclaimed last.
> 
> Maybe rewrite the last sentence as:
> 
> But there are some restrictions; for example, the SECS page must 
> be reclaimed last.

Copy-pasted.

> > +The page version array (used to mitigate replaying old reclaimed pages)
> > +is also architecturally reclaimable,
> > +but support for reclaiming the page version array is not yet implemented,
> > +The end result is that the vast majority of enclave pages are currently
> > +reclaimable.
> > +.SH VERSIONS
> > +The SGX feature was added in Linux 5.11.
> > +.SH SEE ALSO
> > +.BR ioctl (2),
> > +.BR mmap() (2),
> > +.BR mprotect (2),
> 
> s/,//
> 
> Thanks,
> 
> Michael

Thank you. My response time is about two weeks because it takes me
about one full work day to go through this. And it takes about two
weeks to find the time to do it. It would make less sense to rush
I guess, so I just rather wait for the right moment.

> -- 
> Michael Kerrisk
> Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
> Linux/UNIX System Programming Training: http://man7.org/training/
> 

/Jarkko
