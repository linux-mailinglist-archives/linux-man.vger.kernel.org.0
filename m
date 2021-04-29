Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C4A8236E4B9
	for <lists+linux-man@lfdr.de>; Thu, 29 Apr 2021 08:09:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230423AbhD2GKV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Apr 2021 02:10:21 -0400
Received: from mail.kernel.org ([198.145.29.99]:49998 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229814AbhD2GKV (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 29 Apr 2021 02:10:21 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7C6E261090;
        Thu, 29 Apr 2021 06:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1619676575;
        bh=BIr970h/sDdUlMODpFXSSKG9suMh1F7ASlFvGhDa77k=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
        b=Fpv6kJz/ovdJqspJjsqNWLN5TI2H4xnw74wsqlGrAPkFTXRAQdb49C+WfoVojypgp
         nWFOrntXodj9t+LpxlWW+NmGtUHXYq7TNVWffGkVGoCObWwfru5009t/6kySTNeKt1
         4iEkmXz6OA4NUrl6TZfHU25FDMxEvcAnOxbdjzcQHIu/+yGmuMzCZYw3H+y83FFedm
         EUpSRR36StNC/vpw0pUWhgfc2sqMFyUDUVAGNuHqbOoqryyUfvjOfHrEAosImjJ4X+
         /EIAorBOZESxodwThGWiNcg0lHTNz8+2nWl+1HOrm7TeveCAxyAzYllVGnzD3E8WtP
         2xYkC+fBohO9w==
Message-ID: <1be0ac000492fd115b86056291c4d678423b0d06.camel@kernel.org>
Subject: Re: [PATCH v4] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
From:   Jarkko Sakkinen <jarkko@kernel.org>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, linux-sgx@vger.kernel.org,
        dave.hansen@linux.intel.com
Date:   Thu, 29 Apr 2021 09:09:32 +0300
In-Reply-To: <1413b770-a89e-2ddd-d8bd-21adc8a376cf@gmail.com>
References: <20210301212344.48650-1-jarkko@kernel.org>
         <1413b770-a89e-2ddd-d8bd-21adc8a376cf@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.40.0 
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, 2021-04-05 at 16:20 +0200, Michael Kerrisk (man-pages) wrote:
> Hello Jarkko,
>=20
> Sorry for the delayed response... Thank you for the revisions.
> More comments below :-).
>=20
> On 3/1/21 10:23 PM, Jarkko Sakkinen wrote:
> > Signed-off-by: Jarkko Sakkinen <jarkko@kernel.org>
> > ---
> > v4:
> > * Did a heavy edit trying to streamline the story a bit and focus on
> > =C2=A0 stuff important to the user (e.g. lighten up x86 details).
> > v3:
> > * Overhaul based on Michael's comments. Most likely needs to be
> > refined
> > =C2=A0 in various places but this is at least a small step forward for
> > sure.
> > v2:
> > * Fixed the semantic newlines convention and various style errors
> > etc.
> > =C2=A0 that were reported by Alenjandro and Michael.
> > * SGX was merged to v5.
> > =C2=A0man7/sgx.7 | 196
> > +++++++++++++++++++++++++++++++++++++++++++++++++++++
> > =C2=A01 file changed, 196 insertions(+)
> > =C2=A0create mode 100644 man7/sgx.7
> >=20
> > diff --git a/man7/sgx.7 b/man7/sgx.7
> > new file mode 100644
> > index 000000000..c0b67020e
> > --- /dev/null
> > +++ b/man7/sgx.7
> > @@ -0,0 +1,196 @@
> > +.\" Copyright (C) 2021 Intel Corporation
> > +.\"
> > +.\" %%%LICENSE_START(VERBATIM)
> > +.\" Permission is granted to make and distribute verbatim copies of
> > this
> > +.\" manual provided the copyright notice and this permission notice
> > are
> > +.\" preserved on all copies.
> > +.\"
> > +.\" Permission is granted to copy and distribute modified versions
> > of this
> > +.\" manual under the conditions for verbatim copying, provided that
> > the
> > +.\" entire resulting derived work is distributed under the terms of
> > a
> > +.\" permission notice identical to this one.
> > +.\"
> > +.\" Since the Linux kernel and libraries are constantly changing,
> > this
> > +.\" manual page may be incorrect or out-of-date.=C2=A0 The author(s)
> > assume no
> > +.\" responsibility for errors or omissions, or for damages resulting
> > from
> > +.\" the use of the information contained herein.=C2=A0 The author(s) m=
ay
> > not
> > +.\" have taken the same level of care in the production of this
> > manual,
> > +.\" which is licensed free of charge, as they might when working
> > +.\" professionally.
> > +.\"
> > +.\" Formatted or processed versions of this manual, if unaccompanied
> > by
> > +.\" the source, must acknowledge the copyright and authors of this
> > work.
> > +.\" %%%LICENSE_END
> > +.\"
> > +.TH SGX 7 2021\-02\-02 "Linux" "Linux Programmer's Manual"
> > +.PP
> > +sgx - overview of Software Guard eXtensions
> > +.SH DESCRIPTION
> > +.PP
> > +Intel Software Guard eXtensions (SGX) allow applications to set
> > +aside private memory regions of code and data.
> > +These memory regions are called enclaves.
> > +.PP
> > +SGX must be enabled in BIOS.
> > +If SGX appears to be unsupported on a system having hardware
> > support,
> > +ensure that SGX is enabled in the BIOS.
> > +If a BIOS presents a choice between \(dqEnabled\(dq and \(dqSoftware
> > +Enabled\(dq modes for SGX,
> > +choose \(dqEnabled\(dq.
> > +.PP
> > +SGX is available only if the kernel was configured and built with
> > the
> > +.B CONFIG_X86_SGX
> > +option.
> > +You can determine whether the hardware supports SGX by checking
> > +whether "sgx" appears in the
> > +.I flags
> > +field in
> > +.IR /proc/cpuinfo .
> > +.SS Overview
> > +.PP
> > +An enclave is a region of address space,
> > +mapping pages from Enclave Page Cache (EPC),
>=20
> s/from/from the/
>=20
> > +which consists of sections of non-addressable system memory.
> > +They are constructed with sub-functions of the privileged (ring-0)
> > ENCLS x86
>=20
> The reference of "They" is unclear. Should it be
>=20
> "The EPC is constructed using subfunctions..."?
>=20
> > +instruction,
> > +and interacted with sub-functions of the unprivileged (ring-3) ENCLU
> > x86
>=20
> Wording problem...
> s/with/with using/?
>=20
> > +instruction.
> > +Any other type of memory access gets asserted by the CPU.
>=20
> I think it would be good to add a few words to explain what=20
> is meant by "asserted by the CPU". (I realize that "asserted" is a
> technical term that may be quite normal for you, but not necessarily
> for all of the readers...)
>=20
> But, there's also another problem: how does this sentence
> fit into the surrounding paragraph? It seems somehow out of place.
>=20
>=20
> > +Enclaves are represented to the user space as memory-mapped files,
>=20
> s/to the user space/to user-space/
>=20
> > +shareable by multiple processes.
> > +.PP
> > +An EPC page can be initialized with ENCLS sub-functions to any of
> > the
> > +following types:
> > +.TP
> > +SECS
> > +SGX Enclave Control Structure (SECS) contains the enclave global
> > properties
>=20
> s/SGX/The SGX/
>=20
> > +such as the base address,
> > +size and SHA256 checksum of its contents.
> > +.TP
> > +REG
> > +Regular (REG) pages are code and data pages of the enclave.
> > +They are mapped to the enclave address space.
> > +.TP
> > +TCS
> > +Thread Control Structure (TCS) pages describe the entry points to an
> > enclave with
> > +an offset from the base address.
> > +They are mapped to the enclave address space.
> > +ENCLU provides EENTER and ERESUME sub-functions,
> > +which take the address of a TCS page,
> > +and jump executing inside an enclave from the given offset.
>=20
> The wording here seems a bit off. What do you mean by "jump=20
> executing"? Can you reword/explain in a bit more detail?
>=20
> > +.PP
> > +An enclave can be entered only at a fixed set of entry points,
>=20
> You do not explain what you mean by "enter". I presume it means that=20
> you can only jump into code at specific addresses (defined by a TCS)=20
> in the enclave. If that's correct, I think it would be helpful
> to have add some words to make that point explicit.
>=20
> > +each defined by a TCS,
> > +by invoking EENTER and ERESUME.
> > +Any other type of memory access is strictly prohibited by the CPU.
>=20
> Maybe it would be helpful to add (inside parentheses) one or
> two examples of types of memory access that are prohibited?
>=20
> > +.PP
> > +A thread inside an enclave can read and write memory inside and
> > outside the
>=20
> s/A thread inside an enclave can...
> =C2=A0 /While executing inside an enclave, a thread can.../ ?
>=20
> > +enclave,
> > +but any action causing execution outside the enclave is asserted by
> > the CPU
> > +with an exception,
> > +and ultimately exit from the enclave.
>=20
> What does "ultimateley exit from the enclave" mean? It's not quite
> clear.
>=20
> > +A thread can cleanly exit from the enclave with EEXIT sub-function
> > of the ENCLU,
>=20
> s/EEXIT/the EEXIT/
>=20
> > +to a given address outside the enclave.
> > +.PP
> > +Although carved out of normal DRAM,
> > +enclave memory is marked in the system memory map as reserved and is
> > not
> > +managed by the Linux memory manager.
> > +There may be several enclave regions spread across the system.
> > +Each contiguous region is called an Enclave Page Cache (EPC)
> > section.
> > +The pages belonging to the EPC sections are encrypted when they
> > leave the
> > +Last Level Cache (LLC).

I rewrote "Overview" simply as:

.SS Overview
Enclave is an executable object in non-addressable system memory.
The interaction happens always through ENCLS and ENCLU CPU
instructions.
An enclave can be entered at a fixed set of entry points,
by using ENCLU.
If a process does any other type of memory access,
it receives a
.BR SIGSEGV
signal.
The details of enclave's internal structure and interaction can be
found in the Intel Software Developers Manual.
.SS Construction
Kernel represents enclaves to the user space as memory-mapped files,
shareable by multiple processes.

I think the detailed low-level information does not really belong to
the man page.


> > +.SS Construction
> > +.PP
>=20
> Remove the preceding ".PP" (it's not needed, and produces linter
> errors).
>=20
> > +An enclave's life-cycle starts by opening
> > +.I /dev/sgx_enclave,
>=20
> .IR /dev/sgx_enclave ,
>=20
> > +and ends when all the file descriptors have been closed.
> > +After opening the enclave,
> > +its contents must be populated with the
> > +.BR ioctl (2)
> > +interface provided by
> > +.IR <asm/sgx.h> .
> > +.PP
> > +The are rudimentarily the steps to construct an enclave:
>=20
> s/The/These/
> s/rudimentarily the/key/
>=20
> > +.IP 1.
> > +Invoke
> > +.B SGX_IOC_ENCLAVE_CREATE,
>=20
> .BR SGX_IOC_ENCLAVE_CREATE ,
>=20
> > +which takes in data for the SECS,
> > +and initializes an EPC page for it.
> > +SECS is used by various ENCLS sub-functions to modify the enclave
> > state.
> > +It is kept internally by the kernel,
> > +and is never made available to the user space.
>=20
> s/the user space/user space/
>=20
> > +.IP 2.
> > +Populate regular and TCS pages to the enclave,
> > +by invoking
> > +.B SGX_IOC_ENCLAVE_ADD_PAGES.
>=20
> .BR SGX_IOC_ENCLAVE_ADD_PAGES .
>=20
> > +.IP 3.
> > +Invoke
> > +.B SGX_IOC_ENCLAVE_INIT,
>=20
> .BR SGX_IOC_ENCLAVE_INIT ,
>=20
> > +which makes the enclave executable.
> > +After this new pages can no longer be added.
>=20
> s/After this/After this step,/
> s/added/added to the enclave/
>=20
>=20
> > +.SS Access rights
> > +The state of each EPC page is stored to a structure called the
>=20
> s/to/in/
>=20
> > +.I Enclave Page Cache Map (EPCM),
> > +which takes a portion of the EPC.
>=20
> Better: s/takes/occupies/ ?
>=20
> > +The state consists of page type and access rights,
>=20
> s/state/state information of an EPC page/
> s/page type/the page type/
>=20
> > +among the other things.
> > +When a page is accessed by a CPU,
> > +the EPCM permissions are enforced,
> > +in addition to the
> > +.BR mmap(2)
>=20
> .BR mmap (2)
>=20
> > +permissions.
> > +EPCM permissions are defined when invoking
> > +.B SGX_IOC_ENCLAVE_ADD_PAGES,
>=20
> .BR SGX_IOC_ENCLAVE_ADD_PAGES ,
>=20
> > +by setting them to the
> > +.B flags
>=20
> s/.B/.I/
>=20
> > +field of
> > +.B struct enclave_add_pages.
>=20
> .IR struct enclave_add_pages .
>=20
> > +.PP
> > +A memory access to an unitialized EPC page causes EPCM fault,
>=20
> s/unitialized/uninitialized/
> s/EPCM/an EPCM/
>=20
> > +with a new SGX bit set in the error code.
> > +A new power cycle invalidates the whole EPCM,
> > +making all EPC pages unitialized.
>=20
> s/unitialized/uninitialized/
>=20
> > +E.g. if the system goes to sleep,
>=20
> s/E.g./For example,/
>=20
> > +and then wakes up,
> > +all the data is gone.
> > +Thus, a user space run-time must be prepared to handle this
> > exception,
> > +at any point of time.
>=20
> s/of/in/
>=20
> > +.PP
> > +When the pages are mapped to memory via
> > +.BR mmap (2)
> > +or
> > +.BR mprotect (2),
>=20
> This last does not seem right. mprotect(2) sets memory protections,
> whereas you start the sentence by talking about mapping pages. I'm
> not
> sure what the fix should be. Maybe:
>=20
> =C2=A0=C2=A0=C2=A0 When the pages are mapped by mmap(2) or page protectio=
ns
> =C2=A0=C2=A0=C2=A0 are changed vi mprotect(2)...
>=20
> > +the EPCM permissions are compared against the declared
> > permissions.
>=20
> By "declared permissions", do you mean the 'prot' argument
> of mmap()/mprotect? If so, I think it would be good to say=20
> this more explicitly.
>=20
> > +If the declared permissions have bits set that are not part of the
> > EPCM
> > +permissions,
> > +the operation fails with the error
> > +.B EACCES.
>=20
> .BR EACCES .
>=20
> > +.SS Exception handling
> > +These are the exceptions triggered by an enclave:
> > +.IP
> > +Undefined instruction (#UD) exception is triggered when executing
> > inside an enclave,
>=20
> s/Undefined/An undefined/
>=20
> > +for any instruction that may cause VMEXIT,
> > +I/O instruction,=20
> > +or a change in CPU privilege levels.
>=20
> s/CPU privilege levels/the CPU privilege level/ ?
>=20
> > +.IP
> > +Page fault (#PF) with a new SGX bit set,
>=20
> s/Page/A page/
>=20
> > +also known as EPCM fault,
>=20
> s/EPCM/an EPCM/
>=20
> > +is triggered,
> > +when accessing unitialized EPC page,
>=20
> s/unitialized/an uninitialized/
>=20
> > +or when the memory access surpasses the EPCM permissions.
>=20
> s/surpasses/violates/?
>=20
> > +.PP
> > +In order to assist the run-time,
> > +the kernel provides a vDSO entry point,
> > +.BR vsgx_enter_enclave,
>=20
> .BR vsgx_enter_enclave ,
>=20
> > +which wraps the code required the enter the enclave.
> > +When an exception occurs,
> > +the vDSO populates
>=20
> s/the vDSO/vsgx_enter_enclave/ ?
>=20
> > +.B struct sgx_enclave_run=20
>=20
> This is the first time you mention "struct sgx_enclave_run".
> What is it? Where is it? (Is it in the vDSO?) Some explanation=20
> is needed here, I thi9nk.


Agreed. Now that I understand better what I should have, and more
importantly, what I should not have in the man page, I think I can
address filling the missing bits. Before, I was a bit lost what was
and was not missing.

I'll tackle also other issues mentioned above.

> > +with the exception data,
> > +and returns to the caller.
> > +.SH VERSIONS
> > +The SGX feature was added in Linux 5.11.
> > +.SH SEE ALSO
> > +.BR ioctl (2),
> > +.BR mmap() (2),
> > +.BR mprotect (2)
>=20
> Thanks,
>=20
> Michael
>=20

Thank you!

/Jarkko
