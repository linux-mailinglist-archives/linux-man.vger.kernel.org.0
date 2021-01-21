Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2DD032FE896
	for <lists+linux-man@lfdr.de>; Thu, 21 Jan 2021 12:20:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728332AbhAULUC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Jan 2021 06:20:02 -0500
Received: from mail.kernel.org ([198.145.29.99]:42594 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726820AbhAULTD (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 21 Jan 2021 06:19:03 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 95681238D7;
        Thu, 21 Jan 2021 11:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1611227898;
        bh=3wP/c0/QDVCGF5tpCif7u8+Rkgn/2vbzOCp4nMtgCiM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=exBhseCEIawXqjAyvtNk0T4t+Sw6nfO8SUW/TxWYMlFED9bl9/6tO31FtuFMSSLxY
         SqmrVjWxgOBna1QAh+/vysHlNwRl8RVN6dujPM9VSR5JoGYTtuSBqQrF+qqSJhQ/bP
         iJpU8uGGChm91WR/JTbBcOv8gir2oXf/Hh7owKg+8K6FL3N1M3AZLAcZWz/LVO/Al+
         U+aQrvjgyUCAmsrAlhs7IJaQCNJpzxRUmTWzAZk/XsyIMUYN6sUeinnaDfy1xMWh1G
         vcakoI1Kp89W+IO22mpQILCgn5Kh3WupRjvEnwW7khGHANl0br7mMnnV8Y0qgR5oHU
         hIIkPwh5OG0fw==
Date:   Thu, 21 Jan 2021 13:18:14 +0200
From:   Jarkko Sakkinen <jarkko@kernel.org>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, linux-sgx@vger.kernel.org,
        dave.hansen@linux.intel.com
Subject: Re: [PATCH v2] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
Message-ID: <YAli9syKOwVTYeh6@kernel.org>
References: <20201222004108.49159-1-jarkko@kernel.org>
 <16f13aee-a966-ecd4-6f08-d9d7b0e869f3@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <16f13aee-a966-ecd4-6f08-d9d7b0e869f3@gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Dec 22, 2020 at 07:53:24PM +0100, Michael Kerrisk (man-pages) wrote:
> Hi Jarkko
> 
> Thanks for revising the patch. I have many comments.
> I must admit that I'm struggling to understand much here,
> and so I'll probably have more comments on a future draft.
> Could you please revise in the light of my comments
> below (and hopefully the revisions will help me better
> understand the topic when I look at the next draft).

I'm truly sorry of this incredibly long latency.

I put the man page as my top priority up until it is good enough to be
merged.

> On 12/22/20 1:41 AM, Jarkko Sakkinen wrote:
> > Signed-off-by: Jarkko Sakkinen <jarkko@kernel.org>
> > ---
> > v2:
> > * Fixed the semantic newlines convention and various style errors etc.
> >   that were reported by Alenjandro and Michael.
> > * SGX was merged to v5.11.
> 
> I think we better have a VERSIONS section in the page noting that this
> feature is supported since Linux 5.11.

I added:

.SH VERSIONS
The SGX feature was added in Linux 5.11.

I also changed the copyright year to 2021.

> > Link: https://lore.kernel.org/linux-sgx/f6eb74cf-0cb6-0549-9ed3-3e3b2af23ad1@gmail.com/
> > Link: https://lore.kernel.org/linux-sgx/f6eb74cf-0cb6-0549-9ed3-3e3b2af23ad1@gmail.com/
> >  man7/sgx.7 | 218 +++++++++++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 218 insertions(+)
> >  create mode 100644 man7/sgx.7
> > 
> > diff --git a/man7/sgx.7 b/man7/sgx.7
> > new file mode 100644
> > index 000000000..5e8d3d959
> > --- /dev/null
> > +++ b/man7/sgx.7
> > @@ -0,0 +1,218 @@
> > +.\" Copyright (C) 2020 Intel Corporation
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
> > +.SH DESCRIPTION
> > +.PP
> > +Intel Software Guard eXtensions (SGX) allow user space applications to set
> > +aside private memory regions of code and data.
> > +These memory regions are called enclaves.
> > +.PP
> > +SGX must be enabled by the BIOS.
> > +If SGX appears to be unsupported on a system having hardware support,
> > +ensure that SGX is enabled in the BIOS.
> > +If a BIOS presents a choice between \(dqEnabled\(dq and \(dqSoftware
> > +Enabled\(dq modes for SGX,
> > +choose \(dqEnabled\(dq.
> > +.PP
> > +An enclave can be only entered at a fixed set of entry points.
> 
> s/only entered/entered only/

Fixed.

> > +Each of them can hold a single hardware thread at a time.
> 
> "them" is unclear. Do you mean "Each of the entry points" 
> or "Each enclave"?

TCS pages are a bit like locks. You reserve one and its held up until
you leave the enclave address apce. It also tells you where to start
execution.

I wrote a wrote a new paragraph that introduces ENCLU and tries
to explain this in length in the v3 of this patch.

> > +While the enclave is loaded from a regular binary file,
> > +only the threads inside the enclave can access its memory.
> > +.PP
> > +Although carved out of normal DRAM,
> > +enclave memory is marked in the system memory map as reserved and is not
> > +managed by the Linux memory manager.
> > +There may be several regions spread across the system.
> 
> I presume you mean "There may be several enclave regions"? I think it
> would be clearer to say that.

Not sure.

So the thing is that there is reserved memory, consider it as a bit like
VRAM. This memory can be oversubscribed. Then when you create an enclave
you consume these pages. When running out of them, the kernel swaps pages
from enclaves across the system currently based on a trivial FIFO policy.
So these regions define kind of the memory pool for all enclaves running in
the system.

> > +Each contiguous region is called an Enclave Page Cache (EPC) section.
> > +EPC sections are enumerated via CPUID instruction.
> 
> BY "CPUID instruction" do you mean the interface described in the
> cpuid(4) manual page? If yes, I think you better include a reference 
> to that page.

Kernel uses a set of CPUID leaves to enumerate the available EPC.  The base
leaf SGX specific functions is EAX=0x12, and enumeration leaves for EPC
start from ECX=2 and onwards.

This CPUID is documented in the pages 313-14 of the Intel SDM:

https://software.intel.com/content/www/us/en/develop/download/intel-64-and-ia-32-architectures-sdm-combined-volumes-2a-2b-2c-and-2d-instruction-set-reference-a-z.html

And its usage is implemented in sgx_page_cache_init() internal function:

https://elixir.bootlin.com/linux/v5.11-rc4/source/arch/x86/kernel/cpu/sgx/main.c#L664

I'll just remove that sentence. I don't think it's relevant here.

> > +These regions are encrypted when they leave the Last Level Cacche (LLC).
> 
> Maybe better: s/These regions/EPC regions/ ?
> 
> s/Cacche/Cache/

I changed this to

"The pages belonging to the EPC sections are encrypted when they leave the
Last Level Cache (LLC)."
 
> > +.PP
> > +SGX is available only if the kernel was configured and built with the
> > +.B CONFIG_X86_SGX
> > +option.
> > +The hardware support for SGX can be observed from
> > +.I /proc/cpuinfo
> > +option
> > +with the \(dqflags\(dq field containing \(dqsgx\(dq.
> 
> Better would be:
> 
> [[
> You can determine whether the hardware supports SGX by checking
> whether "sgx" appears in the
> .I flags
> field in
> .IR /proc/cpuinfo .
> ]]

Fixed.

> > +.SS Enclave management
> > +.PP
> > +An enclave's life-cycle starts by opening
> > +.I /dev/sgx_enclave.
> 
> Remove the "." at the end of the preceding line.

Fixed.

> > +and ends once all the references to the opened file have been closed.
> 
> I presume here that you mean to say that the lifecycle ends
> when all duplicate file descriptors that refer to the open
> file description (i.e., 'struct file') have been closed, right?
> If that's correct, please modify the text. If it's not correct,
> then I don't understand the text, and so some other fix is
> probably needed.

I changed this to:

"and ends when all the file descriptors referring to the opened file have been closed."

> > +After opening the enclave,
> > +its contents must be populated with the ioctl interface provided by
> > +.I <asm/sgx.h>.
> 
> .IR <asm/sgx.h> .

Fixed.

> > +ENCLS is a privileged (ring-0) instruction with the functionality for
> 
> You suddenly use the term "ENCLS" here with no previous introduction or
> definition.

It's a mnemonic for x86 opcode. Not exactly sure how to improve.

> > +managing enclave memory,
> > +and the ioctl interface provides a wrapper for it.
> > +.PP
> 
> [I find the next paragraph very hard to understand. So I'm going
> to ask lots of silly questions...]

Thank you, I appreciate these questions. This is somewhat complicated
topic, and when you've upstreamed a patch set literally for years, you
become blind for many things.

> > +Enclave construction starts by calling
> > +.B SGX_IOC_ENCLAVE_CREATE,
> > +which takes in the initial version of SGX Enclave Control Structure
> 
> What do you mean by "takes in"?

It's the 'src' field in struct sgx_enclave_create:

https://elixir.bootlin.com/linux/v5.11-rc4/source/arch/x86/include/uapi/asm/sgx.h

This address is given to ENCLS[ECREATE], which copies to an EPC
page. It's the root of the enclave, not visible in the actual
address space of the enclave. It contains data such as the base
address and size of the enclave addree space.

I changed "takes in" to "copies".

> > +(SECS).
> > +SGX Enclave Control Structure (SECS) contains the description of the
> 
> s/SGX Enclave Control Structure (SECS)/The SECS/
> 
> This all made weird because the current terminology includes
> "Structure" in the name.

I agree. It's also asymmetrical to TCS. Either TCS should be
STCS or SECS should be ECS. I'm just using the naming convetions
from the Intel software developement manual.

> And yes, "the SECS" reads weirdly. What I'd really like to say
> is "the SECS structure" or (even better) "the SEC structure".
> Is either of those acceptable? (This would imply global changes 
> in the following text.)

I'd still stick to the terminology that is common to what is used
in the SDM and also in all the documentation, academic paper etc.
Essentially, all the literature on SGX uses the same terminology.
Drifting from that would be IMHO even more confusing.

> > +enclave.
> > +The ioctl calls ENCLS[ECREATE] function,
> 
> What is "ENCLS[ECREATE] function"? This needs some explanation.

We have ENCLS, which x86 opcode, and you EAX id's of various functions that
is contains. One of them is ECREATE.

I rephased it as:

"The ioctl calls the ECREATE subfunction of ENCLS,"

> > +which will copy SECS to the SGX reserved memory.
> 
> s/SECS/The SECS/
> 
> > +SECS is never mapped to the process address space,
> s/SECS/The SECS/
> 
> > +and thus cannot be directly referenced.
> > +.PP
> > +Among other things, SECS contains the base address and size of the enclave,
> 
> "the SECS"

Thanks, all fixed.

> > +meaning that the addresss space must be carved out before the creation.
> > +There is also a hardware related invariant that the enclave size must be a
> > +power of two,
> > +and the base address must be also naturally aligned relative to the size.
> > +.PP
> > +Some of the SECS fields must be initialized to zero because their values
> > +are determined dynamically after the enclave has been created.
> > +Most importantly SECS contains two SHA256 hashes: MRENCLAVE and
> > +MRSIGNER.
> > +Each enclave invocation,
> > +during the enclave construction,
> > +hashes its defining parameters MRENCLAVE.
> 
> The preceding line doesn't make sense to me. Missing words?

I changed this to:

"
Each ENCLS function,
which contribute to the enclave construction,
hashes its key parameters to the MRENCLAVE.
"

> > +Arbitrary data can be also hashed into MRENCLAVE via the ENCLS[EEXTEND]
> > +function.
> > +MRSIGNER contains the hash of the enclave signer key,
> > +which is used to sign the SIGSTRUCT structure passed to the
> > +ENCLS[EINIT] function.
> > +A running enclave can use both of these fields as material for keys
> > +acquired with the ENCLU[EGETKEY]unction.
> 
> s/unction/ function/
> 
> But what is this "ENCLU[EGETKEY] function"? Where does it come from?
> And what is ENCLU?  I think some more detail is needed here.

I refined this a lot for v3. I hope it makes a bit more sense. I introduce
ENCLU early on in the when I talk about TCS in the new version of the
patch.

> > +.PP
> > +After the enclave has been created,
> > +a series of
> > +.B SGX_IOC_ENCLAVE_ADD_PAGES
> > +calls are issued.
> > +This ioctl copies the provided data to the enclave memory by invoking
> > +the ENCLS[EADD] function,
> > +and optionally hashes it with help of the ENCLS[EEXTEND] function.
> > +Hashing is optional because it is a slow operation and sometimes not
> > +required.
> > +For instance, one might only care to measure the code pages.
> > +.PP
> > +Finally, when all the data has been copied to the enclave memory,
> > +.B SGX_IOC_ENCLAVE_INIT
> > +is called,
> > +which invokes the ENCLS[EINIT] function.
> > +This function inspects that the accumulated MRENCLAVE matches the
> 
> s/inspects/checks/ ?

'checks' is better, thanks.

> > +MRENCLAVE inside the caller provided SIGSTRUCT,
> > +andlocks down the enclave from further build operations.
> 
> s/andlocks/and locks/

Fixed, thanks.

> > +After this, the enclave can be invoked.
> > +.SS Enclave memory mapping
> > +.PP
> > +The processor tracks EPC pages in a hardware metadata structure called
> > +.I Enclave Page Cache Map (EPCM).
> > +The EPCM contains an entry for each EPC page which describes the owning
> > +enclave,
> > +access rights and page type among the other things.
> 
> s/access rights/access rights,/

Fixed.

> > +EPCM permissions are separate from the normal page tables.
> > +This prevents the kernel from,for instance,
> 
> s/from,for/from, for/

Fixed.

> > +allowing writes to data which an enclave wishes to remain read-only.
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
> > +Kernel records EPCM permissions when
> 
> s/Kernel/The kernel/

Fixed.

> > +.B SGX_IOC_ENCLAVE_ADD_PAGES
> > +is called.
> > +When the pages are mapped to memory via mmap() or mprotect(),
> 
> Change "mmap() or mprotect()," to
> 
> [[
> .BR mmap (2)
> or
> .BR mprotect (2),
> ]]

Fixed.

> > +the EPCM permissions are compared against the declared permissions.
> > +If the declared permissions have bits set that are not part of the EPCM
> > +permissions,
> > +the operation fails with
> > +.B -EACCES.
> 
> ==>
> "
> the operation fails with the error
> .B EACCES.
> "
> (Note removeal of "-".)

Fixed.

> > +.SS Enclave invocation
> > +.PP
> > +Enclaves encounter exceptions for many reasons:
> > +everything from enclave page faults to NULL pointer de-references,
> 
> s/de-references/dereferences/

Fixed.

> > +to system calls that must be called by a delegate from outside the enclave.
> > +Finally, a power cycle invalidates the whole EPC,
> > +which also needs to be addressed by the caller.
> > +.PP
> > +This type of exception handling has been traditionally been handled in
> > +SIGSEGV handlers,
> > +registered by the library.
> > +But, being a process-wide state,
> > +signal handling and code libraries do not mix well.
> > +.PP
> > +In order to assist the run-time, kernel provides a vDSO entry point,
> > +.B vsgx_enter_enclave,
> 
> s/.B vsgx_enter_enclave,/.BR vsgx_enter_enclave ,/

Fixed.

> > +which wraps enclave entry functions
> > +ENCLU[EENTER] and EENTER[ERESUME],

Also refined this a bit.

> > +and returns exceptions to the caller at the point they happen.
> > +The exception information is filled in RDI, RSI and RDX.
> > +The kernel-provided user space portion of the vDSO handler will place
> > +this information in a user-provided buffer,
> > +or optionally trigger a user-provided callback at the time of the
> > +exception.
> > +.PP
> > +The vDSO function calling convention uses the standard RDI, RSI, RDX,
> > +RCX, R8 and R9 registers.
> > +This makes it possible to declare the vDSO as a C prototype,
> > +but other than that there is no specific support for SystemV ABI.
> 
> What do you mean by "SystemV ABI"?

I'm referring to the calling convention of x86-64 psABI.

I rephrased this as:

"but other than that there is no specific support for the x86-64 calling convention,"

> > +Things like storing XSAVE are the responsibility of the enclave and the
> > +runtime.
> > +.SS Page reclaimer
> > +.PP
> > +Just like normal RAM,
> > +there is a limited amount of enclave memory available and over-committing
> > +it is a very valuable tool to reduce resource use.
> > +.PP
> > +In contrast to normal page reclaim,
> > +the kernel cannot directly access enclave memory.
> > +To get around this,
> > +the SGX architecture provides a set of functions to help.
> > +Among other things,
> > +these functions copy enclave memory to and from normal memory,
> > +encrypting it and protecting its integrity in the process.
> > +.PP
> > +Kernel provides a page reclaimer by using these functions.
> 
> s/Kernel/The kernel/

Fixed.

> > +It picks victim pages in LRU fashion from all the enclaves running in
> > +the system.
> > +A new kernel thread (ksgxd) reclaims pages in the background based on
> > +watermarks,
> > +similar to normal kswapd.
> > +.PP
> > +All enclave pages can be reclaimed, architecturally.
> > +But, there are some limits to this,
> > +such as the special SECS metadata page which must be reclaimed last.
> 
> s/page/page,/

Fixed.

> > +The page version array (used to mitigate replaying old reclaimed pages)
> > +is also architecturally reclaimable,
> > +but not yet implemented.
> 
> s/but not yet implemented/
>   but support for reclaiming the page version array is not yet implemented/

Fixed.

> > +The end result is that the vast majority of enclave pages are currently
> > +reclaimable.
> > +.SH SEE ALSO
> > +.BR ioctl (2),
> > +.BR mmap() (2),
> > +.BR mprotect (2),
> 
> 
> Thanks,
> 
> Michael

Thank you!

> -- 
> Michael Kerrisk
> Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
> Linux/UNIX System Programming Training: http://man7.org/training/

I'll run aspell through and send a new version in a bit.

/Jarkko
