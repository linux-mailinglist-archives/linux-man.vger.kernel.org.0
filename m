Return-Path: <linux-man+bounces-1306-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A3A91CBF9
	for <lists+linux-man@lfdr.de>; Sat, 29 Jun 2024 11:54:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AD7312821A5
	for <lists+linux-man@lfdr.de>; Sat, 29 Jun 2024 09:54:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84F883BBEB;
	Sat, 29 Jun 2024 09:54:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKlgEiGh"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4498F9445
	for <linux-man@vger.kernel.org>; Sat, 29 Jun 2024 09:54:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719654859; cv=none; b=SFvVzSA5kYS3uEBoPQ8Z1lHe46I2//Ugjfgkc9f65+SylqICRVbhZjMHtWAjnBocGviuaoXYubFAcV7NHz/G753mVbBbA14qs3T8miWrnWHNlFHVUcAqW8iP2C/lKOQProyeeuLAaIww1iX4sQy2fMkUTpNMDnw0CLx204vh6r4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719654859; c=relaxed/simple;
	bh=c1GgpOgH1CyCDfxZzrleBF/zvT1r3zIBmcKfrvbT6M8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CiKpQLnY7wHtwueI2cv/AqN+S2pJjgQl/0HIFjEFTg7ls0/vbjdc7D13wnxtpH4OQby3nbiNSe+lWNRwHj1r30Ha9mROZiCd2LvR31djSVqaMv0KY5oew/B6CZsgNCx8BRvTcnyfGvGfGGx9Is4KOAMNc7aHNBG4wYjjKDuLG30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKlgEiGh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E10DEC2BBFC;
	Sat, 29 Jun 2024 09:54:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719654858;
	bh=c1GgpOgH1CyCDfxZzrleBF/zvT1r3zIBmcKfrvbT6M8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BKlgEiGh9onwkb1Reh3nb4e0FOEXuLPZExLQB4sLnmMuddWBk6i8JnZdyjdmCGB4X
	 UO+yNDbmLTvmrsFpLpHYsF6H9O+eE8UhfK2lApCb+ZsBKBe1DRummUJ0FLUflp3jRd
	 HOmwmBqLgemeMh4oaiXJnkXF1k0j8aXdXN+HwexQiwwRyn+a85s4tLL0SI5rCApeLI
	 bqGF1Sd6nEVHLSM9JOOprMXCH3hHyAwAXQ3C2oImtHf/QuRZTVhpVXIGBHYhiLJj7Y
	 WTLTGMhJbLl8YmGfD6NM42BpQu4lton4DeNzmGsX7KU94ys6Zgh3IMPh2d3dAv2MVs
	 2F3RUJ4wt86Dg==
Date: Sat, 29 Jun 2024 11:54:15 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Charlie Jenkins <charlie@rivosinc.com>
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v3] prctl.2: Add PR_RISCV_SET_ICACHE_FLUSH_CTX
Message-ID: <72h57nx5dt7dgomhbehlhpxdj3y4qluq6xognwohqcmuunkssl@y5dqp65m7kr7>
References: <20240628-fencei_prctl-v3-1-56fd31155129@rivosinc.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="itgkujiofjvefcm5"
Content-Disposition: inline
In-Reply-To: <20240628-fencei_prctl-v3-1-56fd31155129@rivosinc.com>


--itgkujiofjvefcm5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Charlie Jenkins <charlie@rivosinc.com>
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v3] prctl.2: Add PR_RISCV_SET_ICACHE_FLUSH_CTX
References: <20240628-fencei_prctl-v3-1-56fd31155129@rivosinc.com>
MIME-Version: 1.0
In-Reply-To: <20240628-fencei_prctl-v3-1-56fd31155129@rivosinc.com>

Hi Charlie,

On Fri, Jun 28, 2024 at 07:36:18PM GMT, Charlie Jenkins wrote:
> Document the PR_RISCV_SET_ICACHE_FLUSH_CTX flag for prctl(2) that is
> supported as of Linux 6.10.
>=20
> Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
> ---
> Changes in v3:
> - Rebase onto master
> - Add example usage
> - Link to v2: https://lore.kernel.org/r/20240212-fencei_prctl-v2-1-32d940=
981b05@rivosinc.com

Thanks!

>=20
> Changes in v2:
> - Update formatting (Alejandro)
> - Link to v1: https://lore.kernel.org/r/20240124-fencei_prctl-v1-1-0bddaf=
cef331@rivosinc.com
> ---
>  man/man2/prctl.2                                   |   3 +
>  man/man2const/PR_RISCV_SET_ICACHE_FLUSH_CTX.2const | 149 +++++++++++++++=
++++++
>  2 files changed, 152 insertions(+)
>=20
> diff --git a/man/man2/prctl.2 b/man/man2/prctl.2
> index 6db916587..31a3f9064 100644
> --- a/man/man2/prctl.2
> +++ b/man/man2/prctl.2
> @@ -157,6 +157,8 @@ The first argument can be:
>  .B PR_SET_MDWE
>  .TQ
>  .B PR_GET_MDWE
> +.TQ
> +.B PR_RISCV_SET_ICACHE_FLUSH_CTX
>  .SH RETURN VALUE
>  On success,
>  a nonnegative value is returned.
> @@ -268,4 +270,5 @@ so these operations should be used with care.
>  .BR PR_GET_AUXV (2const),
>  .BR PR_SET_MDWE (2const),
>  .BR PR_GET_MDWE (2const),
> +.BR PR_RISCV_SET_ICACHE_FLUSH_CTX (2const),
>  .BR core (5)
> diff --git a/man/man2const/PR_RISCV_SET_ICACHE_FLUSH_CTX.2const b/man/man=
2const/PR_RISCV_SET_ICACHE_FLUSH_CTX.2const
> new file mode 100644
> index 000000000..aec16a237
> --- /dev/null
> +++ b/man/man2const/PR_RISCV_SET_ICACHE_FLUSH_CTX.2const
> @@ -0,0 +1,149 @@
> +.\" Copyright 2024 Rivos Inc.
> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.TH PR_RISCV_SET_ICACHE_FLUSH_CTX 2const (date) "Linux man-pages (unrele=
ased)"
> +.SH NAME
> +PR_RISCV_SET_ICACHE_FLUSH_CTX (since Linux 6.10, RISC-V only)

Let's move that info to STANDARDS and HISTORY.  See for example
PR_SET_FP_MODE(2const):

NAME
     PR_SET_FP_MODE - set the floating point mode of the calling process

=2E..

STANDARDS
     Linux.  MIPS only.

HISTORY
     Linux 4.0 (MIPS).

> +\-
> +Enable/disable icache flushing instructions in userspace.
> +.SH LIBRARY
> +Standard C library
> +.RI ( libc ", " \-lc )
> +.SH SYNOPSIS
> +.nf
> +.BR "#include <linux/prctl.h>" "  /* Definition of " PR_* " constants */"
> +.B #include <sys/prctl.h>
> +.P
> +.B int prctl(PR_RISCV_SET_ICACHE_FLUSH_CTX_ON, ctx, scope);

This should document the types of ctx and scope.

Also, it seems there's a typo:

PR_RISCV_SET_ICACHE_FLUSH_CTX_ON
	|
	v
PR_RISCV_SET_ICACHE_FLUSH_CTX

> +.fi
> +.SH DESCRIPTION
> +The context and the scope can be provided using
> +.I arg2
> +and
> +.I arg3

arg2/3 have a name now.

> +respectively.

You probably wanted to separate a paragraph here?  .P

> +When scope is set to
> +.B PR_RISCV_SCOPE_PER_PROCESS
> +all threads in the process are permitted to emit icache flushing instruc=
tions.
> +Whenever any thread in the process is migrated, the corresponding hart's

Please break lines after punctuation.  See man-pages(7):

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
     In the source of a manual page, new sentences should be started on
     new lines, long sentences should be split  into  lines  at  clause
     breaks  (commas,  semicolons, colons, and so on), and long clauses
     should be split at phrase boundaries.  This convention,  sometimes
     known as "semantic newlines", makes it easier to see the effect of
     patches, which often operate at the level of individual sentences,
     clauses, or phrases.

> +icache will be guaranteed to be consistent with instruction storage.
> +This does not enforce any guarantees outside of migration.
> +If a thread modifies an instruction that another thread may attempt to
> +execute, the other thread must still emit an icache flushing instruction
> +before attempting to execute the potentially modified instruction.
> +This must be performed by the user-space program.
> +.P
> +In per-thread context (eg. scope is set to
> +.B PR_RISCV_SCOPE_PER_THREAD )
> +only the thread calling this function is permitted to emit icache flushi=
ng
> +instructions.
> +When the thread is migrated, the corresponding hart's icache will be
> +guaranteed to be consistent with instruction storage.
> +.P
> +On kernels configured without SMP, this function is a nop as migrations =
across

"this function" is a bit ambiguous: does it refer to the
PR_RISCV_SCOPE_PER_THREAD, or PR_RISCV_SET_ICACHE_FLUSH_CTX?  Let's
mention the thing explicitly.

> +harts will not occur.
> +.P
> +The following values for
> +.I arg2

=2EI ctx

> +can be specified:
> +.RS
> +.TP
> +.BR PR_RISCV_CTX_SW_FENCEI_ON " (since Linux 6.10)"
> +Allow fence.i in user space.
> +.TP
> +.BR PR_RISCV_CTX_SW_FENCEI_OFF " (since Linux 6.10)"
> +Disallow fence.i in user space.
> +All threads in a process will be affected when scope is set to
> +.BR PR_RISCV_SCOPE_PER_PROCESS .
> +Therefore, caution must be taken; use this flag only when you can guaran=
tee
> +that no thread in the process will emit fence.i from this point onward.
> +.RE
> +.IP
> +The following values for
> +.I arg3

=2EI scope

> +can be specified:
> +.RS
> +.TP
> +.BR PR_RISCV_SCOPE_PER_PROCESS " (since Linux 6.10)"
> +Ensure the icache of any thread in this process is coherent with instruc=
tion
> +storage upon migration.
> +.TP
> +.BR PR_RISCV_SCOPE_PER_THREAD " (since Linux 6.10)"
> +Ensure the icache of the current thread is coherent with instruction sto=
rage
> +upon migration.
> +.RE
> +

Don't use blank lines in source.  If you want to have some no-ops in the
source, use empty requests:

=2E

> +.SH EXAMPLE

The section should be called EXAMPLES.  See man-pages(7):

$ man man-pages | grep EXAMPLE
            EXAMPLES
     EXAMPLES
EXAMPLES

> +
> +The following files are meant to be compiled and linked with each other.=
 The
> +modify_instruction() function replaces an add with zero with an add with=
 one,
> +causing the instruction sequence in get_value() to change from returning=
 a zero
> +to returning a one.
> +
> +.SS Program source: cmodx.c
> +\&

Please enclose the program source in some magic comments, which you can
find for example in the source code of membarrier (or any page that has
example programs).  They allow the build system to extract the program,
pass several linters, and compile it, to try and find bugs.

Here would go:

=2E\" SRC BEGIN (cmodx.c)

> +.EX
> +#include <stdio.h>
> +#include <sys/prctl.h>
> +\&
> +extern int get_value();
> +extern void modify_instruction();
> +\&
> +int main()
> +{
> +    int value =3D get_value();
> +    printf("Value before cmodx: %d\\n", value);

The escape character is written as \[rs]

> +
> +    // Call prctl before first fence.i is called
> +    prctl(PR_RISCV_SET_ICACHE_FLUSH_CTX, PR_RISCV_CTX_SW_FENCEI_ON,
> +          PR_RISCV_SCOPE_PER_PROCESS);
> +    modify_instruction();
> +    // Call prctl after final fence.i is called in process
> +    prctl(PR_RISCV_SET_ICACHE_FLUSH_CTX, PR_RISCV_CTX_SW_FENCEI_OFF,
> +          PR_RISCV_SCOPE_PER_PROCESS);
> +
> +    value =3D get_value();
> +    printf("Value after cmodx: %d\\n", value);
> +    return 0;
> +}

You forgot to terminate the EX region with

=2EEE

And let's also close the magic comment region with

=2E\" SRC END

Have a lovely day!
Alex

> +.SS Program source: cmodx.S
> +.EX
> +\&.option norvc
> +
> +\&.text
> +\&.global modify_instruction
> +modify_instruction:
> +lw a0, new_insn
> +lui a5,%hi(old_insn)
> +sw  a0,%lo(old_insn)(a5)
> +fence.i
> +ret
> +
> +\&.section modifiable, "awx"
> +\&.global get_value
> +get_value:
> +li a0, 0
> +old_insn:
> +addi a0, a0, 0
> +ret
> +
> +\&.data
> +new_insn:
> +addi a0, a0, 1
> +.EE
> +
> +.SS Expected result
> +.EX
> +Value before cmodx: 0
> +Value after cmodx: 1
> +.EE
> +
> +.SH STANDARDS
> +Linux.
> +.SH HISTORY
> +.TP
> +.B PR_RISCV_SCOPE_PER_PROCESS
> +Linux 6.10.
> +.SH SEE ALSO
> +.BR prctl (2)
>=20
> ---
> base-commit: d0621648b4b5a356e86cea23e842f2591461f0cf
> change-id: 20240124-fencei_prctl-c24da2643379
>=20
> Best regards,
> --=20
> Charlie Jenkins <charlie@rivosinc.com>
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--itgkujiofjvefcm5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZ/2cEACgkQnowa+77/
2zJMtQ/+JNlCJB2N+QiMONRAPfXIg+ah3lORKDMdZU86tXxbRqvGm8CzqlzEQqgQ
aXmEfGgJeYQQt2q2WUQYaQaqmnDpY1pExSjvjYcUpwsUIzIWEM28sIVr5uMmgRB2
hJ71rt1zlIPQJ8Aomy+vyumusx/jeX7ceFoqitxpR/Nz6jRw5Gk27Jkk9fAlxswA
BofKknQqFmyt3I8qXJBNtP3gXG9P5JIbYSaxlzEwLOEmk9EEPZ+q44/yo5FanZE/
6vIyz+xUqmA6+3q9ijVaKCrGa26S/UOxFVhSjt/J4YgAdxhC7mPDbzSq2nfOPUsY
zFyHdZiapI2zvXAqnmCLqrughTbKlSnWaWUY74HCQWs28svppLL9m6MEFnef9WL0
Bqyv/5B8HND40hxhP9YjnbNynQYmi0WAFv/EAgdDqzTGbTObNs28sL32/VKJgP3/
4yfXuoJRMWZ6UsZjqe6NHHTY0n063mCuFrArqXXWbUEEt4yLgCTn36MVq8YkUBt4
kXoD27glViLjci9sULk7tpEODDzF4miuh4TjQgZ1gkvWYPLjSvhtE87BF5gCX3ai
JodVzBcaDcQ1cqBsu3LczpQ6BvSDjjf/gMkQxTR9Q29hnzeEGKxyiXkjtHfdXOK4
mBddWOw28BpQCX4yHjZgmVo7fvq1U9JO7FrmLDb4CxNawDJ+OmE=
=oNKO
-----END PGP SIGNATURE-----

--itgkujiofjvefcm5--

