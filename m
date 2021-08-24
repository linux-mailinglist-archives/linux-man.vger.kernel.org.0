Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3BD503F5541
	for <lists+linux-man@lfdr.de>; Tue, 24 Aug 2021 03:02:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234455AbhHXBCv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Aug 2021 21:02:51 -0400
Received: from mail.kernel.org ([198.145.29.99]:55200 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235006AbhHXBA6 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 23 Aug 2021 21:00:58 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 830FE61212;
        Tue, 24 Aug 2021 01:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1629766815;
        bh=FI+JWipLj0djzSfW9iYDeEhM/QVnKqYYWeyfAYfwPIc=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
        b=lFVEWg29FDF4zcPNpirm8vlOUHRQA9HcGT++kpPALGvVONlQNFVEGHIhk/BqaR8j7
         cc72DUUt/k2COL0r580O4nfc1cy3Hr3AW260BH1oiBX4JurXt5JEcOn9fKds+nEVk5
         cRv3gWHz3nXJlYpfmLPg9gkylV82OlGzBX2k9l14DZssvTRNQebSKCN46tXWQSGnqV
         jEzIf8IiMOTVqIpGUBMphsMkduPXrZeBtTbAHoIz9TYbrZ3QD3THx59LPF4Zi1L9+6
         Bt/w9hSsdN8kLfUzSV4lHQ+se2daMEo+GzwDsRdZjhLRmNJMj/cpAZ9mkp3syMu8Tw
         0FG6FOEBUZmNg==
Message-ID: <de16f7e62b580550a9d1c326755c4f5804cde419.camel@kernel.org>
Subject: Re: [PATCH v7] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
From:   Jarkko Sakkinen <jarkko@kernel.org>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, linux-sgx@vger.kernel.org,
        Dave Hansen <dave.hansen@linux.intel.com>,
        Reinette Chatre <reinette.chatre@intel.com>
Date:   Tue, 24 Aug 2021 04:00:12 +0300
In-Reply-To: <5f53f76d-456f-2049-05ea-e127804c3b14@gmail.com>
References: <20210810211616.172775-1-jarkko@kernel.org>
         <5f53f76d-456f-2049-05ea-e127804c3b14@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.36.5-0ubuntu1 
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, 2021-08-20 at 01:37 +0200, Michael Kerrisk (man-pages) wrote:
> Hello Jarkko
>=20
> On 8/10/21 11:16 PM, Jarkko Sakkinen wrote:
> > Cc: linux-man@vger.kernel.org
> > Cc: linux-sgx@vger.kernel.org
> > Cc: Dave Hansen <dave.hansen@linux.intel.com>
> > Cc: Reinette Chatre <reinette.chatre@intel.com>
> > Signed-off-by: Jarkko Sakkinen <jarkko@kernel.org>
> > ---
> >=20
> > v7:
> > * Added more meat about the address space and API.
> > * Reorganized the text to have focus more on developer to have a big
> >   picture of kernel provided interfaces.
> > v6:
> > * Small fixes based on Dave's and Reinette's feedback.
> > * Extended the "Permissions" section to cover mmap()
> > v5:
> > * Taking away hardware concepts and focusing more on the interface.
> > v4:
> > * Did a heavy edit trying to streamline the story a bit and focus on
> >   stuff important to the user (e.g. lighten up x86 details).
> > v3:
> > * Overhaul based on Michael's comments. Most likely needs to be refined
> >   in various places but this is at least a small step forward for sure.
> > v2:
> > * Fixed the semantic newlines convention and various style errors etc.
> >   that were reported by Alenjandro and Michael.
> > * SGX was merged to v5.
> >=20
> >  man7/sgx.7 | 156 +++++++++++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 156 insertions(+)
> >  create mode 100644 man7/sgx.7
> >=20
> > diff --git a/man7/sgx.7 b/man7/sgx.7
> > new file mode 100644
> > index 000000000..ab5a504fa
> > --- /dev/null
> > +++ b/man7/sgx.7
> > @@ -0,0 +1,156 @@
> > +.\" Copyright (C) 2021 Intel Corporation
> > +.\"
> > +.\" %%%LICENSE_START(VERBATIM)
> > +.\" Permission is granted to make and distribute verbatim copies of th=
is
> > +.\" manual provided the copyright notice and this permission notice ar=
e
> > +.\" preserved on all copies.
> > +.\"
> > +.\" Permission is granted to copy and distribute modified versions of =
this
> > +.\" manual under the conditions for verbatim copying, provided that th=
e
> > +.\" entire resulting derived work is distributed under the terms of a
> > +.\" permission notice identical to this one.
> > +.\"
> > +.\" Since the Linux kernel and libraries are constantly changing, this
> > +.\" manual page may be incorrect or out-of-date.  The author(s) assume=
 no
> > +.\" responsibility for errors or omissions, or for damages resulting f=
rom
> > +.\" the use of the information contained herein.  The author(s) may no=
t
> > +.\" have taken the same level of care in the production of this manual=
,
> > +.\" which is licensed free of charge, as they might when working
> > +.\" professionally.
> > +.\"
> > +.\" Formatted or processed versions of this manual, if unaccompanied b=
y
> > +.\" the source, must acknowledge the copyright and authors of this wor=
k.
> > +.\" %%%LICENSE_END
> > +.\"
> > +.TH SGX 7 2021\-02\-02 "Linux" "Linux Programmer's Manual"
> > +.PP
> > +sgx - overview of Software Guard eXtensions
> > +.SH SYNOPSIS
> > +.EX
> > +.B #include <asm/sgx.h>
> > +.PP
> > +.IB enclave " =3D open(""/dev/sgx_enclave", " O_RDWR);"
> > +.EE
> > +.SH DESCRIPTION
> > +Intel Software Guard eXtensions (SGX) allow applications to host,
>=20
> s/host,/host/

+1

> > +enclaves,
> > +protected executable objects in memory.
> > +As software entities enclaves are instances of
>=20
> s/entities/entities,/

+1

> > +.I /dev/sgx_enclave.
>=20
> What does the previous sentence mean? I'm sorry, it's
> not very clear.

OK, I'll try to explain.

Enclaves are blobs of executable code, running inside a CPU enforced
"container", which is mapped to the process address space.  It has a
fixed set of entry points, defined when the enclave is created.

An entry point can be passed to ENCLU opcode's subfunction EENTER, which
transforms a hardware thread to enclave mode and starts executing inside
the enclave. Any memory access from a thread outside the enclave causes
a segfault.

A process hosting an enclave, needs to handle invalid opcode CPU
exceptions that the enclave generates, because many common opcodes, e.g.
SYSCALL and RDTSC are not allowed inside enclaves.

That's why EENTER is wrapped inside a vDSO. When a CPU exception
happens, kernel and the vDSO code delegate, the exception number, error
code and address back to the caller.

E.g. the caller can then work as a delegate for a syscall.

Any opcode that would cause a jump outside the enclave causes a CPU
exception. The only way explicit way to leave the enclave is ENCLU
opcode subfunction EEXIT, which moves the hardware thread away from the
enclave mode, and jumps to the given target address.

>=20
> > +.PP
> > +SGX can be available only if the kernel was configured and built with =
the
>=20
> s/can be/is/

+1
=20
> > +.B CONFIG_X86_SGX
> > +option.
> > +You can verify that both the kernel and hardware have SGX enabled by
> > +checking that "sgx" appears in the
> > +.I flags
> > +field in
> > +.IR /proc/cpuinfo .
> > +.PP
> > +SGX must be enabled in BIOS.
> > +If SGX appears to be unsupported,
> > +ensure that SGX is enabled in the BIOS.
> > +If a BIOS presents a choice between
> > +.I Enabled
> > +and
> > +.I Software Enabled
> > +modes for SGX,
> > +choose
> > +.I Enabled.
> > +.PP
> > +Enclaves are shared objects, meaning that
> > +they can be shared with a
> > +.BR cmsg (3),
>=20
> How do they get shared with cmg()? This is unclear?
> Do you mean by passing a file descriptor over a UNIX
> domain socket, or something else?

A file descriptor over a UDS, yes.

> > +and inherited in a fork.
> > +.SS Address space
> > +The address range for an enclave must be reserved with
> > +.BR mmap (2).
> > +This must happen before the enclave construction can begin,
> > +because the enclave page addresses are fixed during its build time.
> > +.PP
> > +The CPU requires the size of the enclave to be power of two,
>=20
> Must the size also be >=3D page size? If so, that should be=20
> mentioned.

Yes, I changed this to:

"
The CPU requires the size of the enclave to be power of two,
at least size of a one page,
and the base address to be naturally aligned with the size.
"


> > +and the base address to be naturally aligned with the size.
> > +An appropriate address range can be found by an anonymous mapping:
> > +.PP
> > +.EX
> > +void *area =3D mmap(NULL, size * 2, PROT_NONE, MAP_PRIVATE | MAP_ANONY=
MOUS,
> > +                  -1, 0);
> > +
> > +/* Find the first address aligned to the size within the range. */
> > +void *base =3D ((uint64_t)area + size - 1) & ~(size - 1);
> > +.EE
> > +.PP
> > +.SS Ioctls
> > +Enclaves are managed with the
> > +.BR ioctl (2)
> > +interface defined and documented in
> > +.IR <asm/sgx.h>:
> > +.TP
> > +.IB SGX_IOC_ENCLAVE_CREATE
> > +Create SGX Enclave Control Structure (SECS) for an enclave.
> > +SECS is a hardware defined structure,
> > +which contains the properties of an enclave,
> > +such as its base address and size.
>=20
> Add a sentence:
>=20
> [[
> The ioctl argument has the type
> .IR "struct\ *sgx_enclave_create" .
> ]]
>=20
> (I think this sentence helps the reader orient a little,=20
> when reading the header file.)

+1
=20
> > +.TP
> > +.IB SGX_IOC_ENCLAVE_ADD_PAGES
> > +Populate a range of enclave pages with the page data provided by the c=
aller.
>=20
> Add a sentence:
>=20
> [[
> The ioctl argument has the type
> .IR "struct\ *sgx_enclave_add_pages" .
> ]]

+1
=20
> > +.TP
> > +.IB SGX_IOC_ENCLAVE_INIT
> > +Tell the CPU the prepare the enclave for use.
>=20
> s/the prepare/to prepare/

+1
=20
> > +After a successful initialization,
> > +no new pages can be added to the enclave.
>=20
> Add a sentence:
>=20
> [[
> The ioctl argument has the type
> .IR "struct\ *sgx_enclave_init" .
> ]]

+1
=20
> Just looking in the header file, does SGX_IOC_ENCLAVE_PROVISION
> also need to be mentioned?

It's a topic of its own. I would focus now on these basic ioctl's, and
contribute that part once these are in shape. It's disjoint in the sense
that you can create and run enclaves without provisinioning.

> > +.PP
> > +The details of what these operations actually mean in the hardware lev=
el can be
>=20
> s/in/at/

+1

> > +found in the Intel Software Developers Manual.
> > +.SS vDSO
> > +A process can access enclave by entering into its address space throug=
h
>=20
> s/enclave/an enclave/

+1

> > +a set of entry points,
> > +which must be defined during the construction process.
> > +This requires a complex sequence of CPU instructions,
> > +and kernel assisted exception handling.
> > +For these reasons,
> > +it is encapsulated into
> > +vDSO interface,
>=20
> s/vDSO/a vDSO/

+1
=20
> > +provided by
> > +.BR vdso_sgx_enter_enclave_t,
>=20
> s/,/ ,/

+1
=20
> > +which is located in
>=20
> s/located/declared/ ?

+1
=20
> > +.IR <asm/sgx.h>.
> > +.SS Permissions
> > +In order to build an enclave, a process must be able to call
> > +.IR mmap (2)
> > +with
> > +.IR PROT_EXEC
> > +set,
> > +because like for any other type of executable,
>=20
> s/because like for any/because, as with any/

+1
=20
> > +the page table permissions must be set appropriately.
>=20
> s/permissions/protections/

+1
=20
> > +Therefore,
> > +.I /dev/sgx_enclave
> > +must reside in a partition,
> > +which is not mounted with
> > +.B noexec
> > +set in the mount options.
> > +.PP
> > +During the build process each enclave page is assigned protection bits=
,
> > +as part of
> > +.BR ioctl(SGX_IOC_ENCLAVE_ADD_PAGES).
>=20
> In the previous sentence, you use "protections". In the following
> sentences you use "permissions". Best to be consistent. Let's
> use "protections", as per mmap(2).

OK, I'll use that consistently from now on.
=20
> > +These permissions are also the maximum permissions to which the page c=
an be be mapped.
> > +If
> > +.BR mmap (2)
> > +is called with surpassing permissions,
>=20
> s/surpassing/unexpected/
> s/permissions/protections/

Thanks, it's now all about protectinos.

> > +it will return
> > +.B -EACCES.
> > +If
> > +.BR ioctl(SGX_IOC_ENCLAVE_ADD_PAGES)
> > +is called after
> > +.BR mmap (2)
> > +with lower permissions,
> > +the process will eventually receive a
>=20
> I want to check the wording here, since "eventually"
> is often a false friend for nonnative speakers.
>=20
> In English, "eventually" means: at some (unknown) time in the future,
> something WILL happen. In other words, the happening is certain, but
> the timing is not. In various European languages, a similar sounding word
> in many cases has the sense of "possibly" or "may happen". Which do
> you mean to say?

It's actually the latter.

SIGBUS gets thrown exactly when a thread executing inside an enclave
accesses a page, which has lower defined during the build time, than
those of the VMA.

If that page is never accessed, then the enclave executes gracefully.

The idea is to keep an invariant that the protections defined during the
creation cannot be crossed. When/If we ever consider hooking into to the
various LSM's, the access control decisions need to happen during the
build time. That's why need to have this type of invariant already in
place.

Thank you for the feedback. I marked just "+1" for trivial fixups.

/Jarkko

