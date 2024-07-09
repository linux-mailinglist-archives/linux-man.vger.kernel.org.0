Return-Path: <linux-man+bounces-1392-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9255792B9CF
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 14:45:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B5B851C21FE0
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 12:45:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79F4815920E;
	Tue,  9 Jul 2024 12:45:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AWVsLBP/"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5E4158DB5
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 12:45:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720529139; cv=none; b=PITxxvE00OLrjLmbCfBgjaGFSuNl9mh3ewg2I76cL9xOCISSoaY4hN9HqTcZikk8mpd1t0ft66GLK6J8RQ7tLugUcpiC/pj6VcyPa45GK1fVTt6h/0D6Krz+mUIpp/znsRcu13DxY/L7QQWoGzX63xqc6kSpjtIctkwwMH/6lWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720529139; c=relaxed/simple;
	bh=NAPa6uUAbr5QV5Lk+7O7/Rj90116ojKnmmNAkHJYXGQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LJsqMEcoLC+wOa/xIN5O1CdibDKs9YUCyBv0vt8YdGvFDCn9fEpxDA1CDwov8y+qwMPb/OhSKxm34G7lqw4Faey3s8Ov0JO4WBMkBBUyN78S8kq6L2Kivui5X7PuI6k1DYbIu9/Uvv54o92G207KBmasoiyWWQrr9m2OuZk3O2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AWVsLBP/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC2A6C4AF0A;
	Tue,  9 Jul 2024 12:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720529138;
	bh=NAPa6uUAbr5QV5Lk+7O7/Rj90116ojKnmmNAkHJYXGQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AWVsLBP/VImziYUDsz14Z5U/U8HqFT5v1ebMYZUuQ22ShLikgi96y4YUVfdgyXyHH
	 Px4/i+nH8SpFkZcd2apaGnXcmq4ex1YTAVp/9fzNzg0FWqVhdiyxC/k1538ZS+eoXH
	 Flhhj1WiXsAtcXFN7NfaJzZqXesxHhkjpvloGk+D7KWypCh0P+QlJpHuA5cOxgtOmL
	 e0x/RGvm/n6/jzseVEs7EgOvteXUNN+XfJz1SV7FNlQ3JTSnqe7TWw6gqwXE8icDXr
	 Pbzc1O4CunFDc6+NuPIHe4Sezolrpwee+0plnCb+gLf7sdCMYJ+NXJpuMrtLnhYsV9
	 H/eQjQcONUoWw==
Date: Tue, 9 Jul 2024 14:45:35 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Charlie Jenkins <charlie@rivosinc.com>
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v4] prctl.2: Add PR_RISCV_SET_ICACHE_FLUSH_CTX
Message-ID: <7okb2cxgp4ntxs6fs2trzbvi6zsm5gsltvck373ml5avid2xpn@c7aeyqsc6fl6>
References: <20240701-fencei_prctl-v4-1-9e181287d872@rivosinc.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qq64jqke5bzwy25q"
Content-Disposition: inline
In-Reply-To: <20240701-fencei_prctl-v4-1-9e181287d872@rivosinc.com>


--qq64jqke5bzwy25q
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Charlie Jenkins <charlie@rivosinc.com>
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v4] prctl.2: Add PR_RISCV_SET_ICACHE_FLUSH_CTX
References: <20240701-fencei_prctl-v4-1-9e181287d872@rivosinc.com>
MIME-Version: 1.0
In-Reply-To: <20240701-fencei_prctl-v4-1-9e181287d872@rivosinc.com>

Hi Charlie,

On Mon, Jul 01, 2024 at 03:45:11PM GMT, Charlie Jenkins wrote:
> Document the PR_RISCV_SET_ICACHE_FLUSH_CTX flag for prctl(2) that is
> supported as of Linux 6.10.
>=20
> Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
> ---
> Changes in v4:
> - Move release information to Standards/History
> - Fix typo in prctl
> - Use semantic newlines
> - Add magic comments for code and fix style issues (clang-tidy warns
>   about prctl flags that are available in the 6.10 rc's)
> - Link to v3: https://lore.kernel.org/r/20240628-fencei_prctl-v3-1-56fd31=
155129@rivosinc.com
>=20
> Changes in v3:
> - Rebase onto master
> - Add example usage
> - Link to v2: https://lore.kernel.org/r/20240212-fencei_prctl-v2-1-32d940=
981b05@rivosinc.com
>=20
> Changes in v2:
> - Update formatting (Alejandro)
> - Link to v1: https://lore.kernel.org/r/20240124-fencei_prctl-v1-1-0bddaf=
cef331@rivosinc.com
> ---
>  man/man2/prctl.2                                   |   3 +
>  man/man2const/PR_RISCV_SET_ICACHE_FLUSH_CTX.2const | 157 +++++++++++++++=
++++++
>  2 files changed, 160 insertions(+)
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
> index 000000000..2fbdd2fb5
> --- /dev/null
> +++ b/man/man2const/PR_RISCV_SET_ICACHE_FLUSH_CTX.2const
> @@ -0,0 +1,157 @@
> +.\" Copyright 2024 Rivos Inc.
> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.TH PR_RISCV_SET_ICACHE_FLUSH_CTX 2const (date) "Linux man-pages (unrele=
ased)"
> +.SH NAME
> +PR_RISCV_SET_ICACHE_FLUSH_CTX
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
> +.BI "int prctl(PR_RISCV_SET_ICACHE_FLUSH_CTX, unsigned long " ctx,
> +.BI "          unsigned long " scope );
> +.fi
> +.SH DESCRIPTION
> +The context and the scope can be provided using
> +.I ctx
> +and
> +.I scope
> +respectively.
> +.P
> +When scope is set to
> +.B PR_RISCV_SCOPE_PER_PROCESS
> +all threads in the process are permitted to emit icache flushing instruc=
tions.
> +Whenever any thread in the process is migrated,
> +the corresponding hart's icache will be guaranteed
> +to be consistent with instruction storage.
> +This does not enforce any guarantees outside of migration.
> +If a thread modifies an instruction that another thread may attempt to e=
xecute,
> +the other thread must still emit an icache flushing instruction
> +before attempting to execute the potentially modified instruction.
> +This must be performed by the user-space program.
> +.P
> +In per-thread context (eg. scope is set to
> +.BR PR_RISCV_SCOPE_PER_THREAD )
> +only the thread calling this function is permitted to emit icache flushi=
ng
> +instructions.

I'd break the line above before "emit".

> +When the thread is migrated,
> +the corresponding hart's icache will be
> +guaranteed to be consistent with instruction storage.
> +.P
> +On kernels configured without SMP, this prctl
> +.BR PR_RISCV_SET_ICACHE_FLUSH_CTX
> +is a nop as migrations across harts will not occur.
> +.P
> +The following values for
> +.I ctx
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
> +Therefore, caution must be taken;
> +use this flag only when you can guarantee that
> +no thread in the process will emit fence.i from this point onward.
> +.RE
> +.IP
> +The following values for
> +.I scope
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

Blank lines in the source are not allowed.

> +.SH EXAMPLES
> +
> +The following files are meant to be compiled and linked with each other.
> +The modify_instruction() function
> +replaces an add with zero with an add with one,
> +causing the instruction sequence in get_value() to change from
> +returning a zero to returning a one.
> +
> +.SS Program source: cmodx.c
> +.\" SRC BEGIN (cmodx.c)
> +.EX
> +#include <stdio.h>
> +#include <sys/prctl.h>
> +.

This does not create a blank line in the output.  For that, you need a
source line with a dummy character:

\&

> +extern int get_value(void);
> +extern void modify_instruction(void);
> +.
> +int main(void)
> +{
> +    int value =3D get_value();
> +    printf("Value before cmodx: %d\[rs]n", value);
> +.
> +    // Call prctl before first fence.i is called
> +    prctl(PR_RISCV_SET_ICACHE_FLUSH_CTX, PR_RISCV_CTX_SW_FENCEI_ON,
> +          PR_RISCV_SCOPE_PER_PROCESS);
> +    modify_instruction();
> +    // Call prctl after final fence.i is called in process
> +    prctl(PR_RISCV_SET_ICACHE_FLUSH_CTX, PR_RISCV_CTX_SW_FENCEI_OFF,
> +          PR_RISCV_SCOPE_PER_PROCESS);
> +.
> +    value =3D get_value();
> +    printf("Value after cmodx: %d\[rs]n", value);
> +    return 0;
> +}
> +.EE
> +.\" SRC END
> +.SS Program source: cmodx.S
> +.EX
> +\&.option norvc
> +.
> +\&.text
> +\&.global modify_instruction
> +modify_instruction:
> +lw a0, new_insn
> +lui a5,%hi(old_insn)
> +sw  a0,%lo(old_insn)(a5)
> +fence.i
> +ret
> +.
> +\&.section modifiable, "awx"
> +\&.global get_value
> +get_value:
> +li a0, 0
> +old_insn:
> +addi a0, a0, 0
> +ret
> +.
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
> +Linux. RISC-V only.
> +.SH HISTORY
> +.TP
> +Linux 6.10 (RISC-V).
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

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--qq64jqke5bzwy25q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaNMO8ACgkQnowa+77/
2zIu1w/7Br2E1qmI92fgp5wUjYp9uKzCgN82R/kd0HtSYtJNkcl/oJNQSmy2nOA8
HnAYjf40q2sbxvkAIFpjKdB4nVJuRP2JeEkBJ7PUs01nGEHk8Dle1THFL9Wq+jVC
o7Kkvk/AwJQIqbAwG+rNFUhzVzsICeS7jT9DWbwYqguaIV/VOFxrSMhGzG7Q68BK
mCDLU/kgWwgIvoTHWbAWH8ir67nKrcxRWSLSGqi//qHGhSTeBei3mJtGOfQkoLzW
gvBKVD893rMDIKFmUh6UzJyi8qclLX8TPFxBaytxxP5Olfqfl+zNPVscU6MNytEh
qf8Vs3tIdOHbzAzpZgIyghVrBIw6zjO6QocUFmS6aU8DclVy/kHIBeXeuKb4IzbH
+wD+a7I16ltRBlaLUdArcmkI6y/2+bcLPsxxBBiX/e79So3e/KtHsMPtR6GpSirc
sSzdPFXkpQaWwMcd0DXqUozYqe8uXmFYm19ZxLaGJWnvKmbCncbTAgaLZd+jqVtG
TWjcuC3bv0Za0OIrmKj4uaKYGSbnoLtYDIimvi3z3NSSNrrqKxdsNJRen6D7dbi+
2vY3OKiXZnXV21r23irLlo7AS1eDfbTblP3orGdBJA8YuiEnoV+wdn1RPCDfdN+I
SWH12Rkl8Huaow0CHqiu9c4V7qu1AzpHSHJl1DYhV8d8AK5MGWM=
=NpfO
-----END PGP SIGNATURE-----

--qq64jqke5bzwy25q--

