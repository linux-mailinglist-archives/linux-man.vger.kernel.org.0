Return-Path: <linux-man+bounces-1504-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D17D89394AC
	for <lists+linux-man@lfdr.de>; Mon, 22 Jul 2024 22:14:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 28931B21967
	for <lists+linux-man@lfdr.de>; Mon, 22 Jul 2024 20:14:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E37E01CAB5;
	Mon, 22 Jul 2024 20:14:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNQ/Ve4M"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A22FD1BDD5
	for <linux-man@vger.kernel.org>; Mon, 22 Jul 2024 20:14:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721679272; cv=none; b=QkuypC2GmOwH2EXHGBsHUkBA4Gclg0TN6dpgV05W7d/37g9dKdI7TrZ92oeDJYrAy8qhhvAPqfr4ZQyJtFfutVPSM9qyIc6t1NsGdti079s/ti2WMtreOQw1jkrGvuhwqM48F6F9RX9jLRGYchhfNId5jB0hpBo8UF0S3VazaEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721679272; c=relaxed/simple;
	bh=MX3BN/In5Qh9d80OalBONoj8DQXc48sIS0ehj0PDZh8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cm9DhJQ9Jdro3NmkL0+PaOpCSazKYDi0GgSODqckC7FPjwg5cHZRFsxllYxJwObsVF8+q2xQEUtYqgR1EfSb0ENu0mmvWRydqQ1oMqgfa4aV0RYLTlliOcolaaaIo/nNpMfyQMU5iHC5ODi6kpKW3/53ieD3US5SaFg+nQAPhaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNQ/Ve4M; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CAB8C116B1;
	Mon, 22 Jul 2024 20:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721679271;
	bh=MX3BN/In5Qh9d80OalBONoj8DQXc48sIS0ehj0PDZh8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CNQ/Ve4MBvkc0vzh0bPIliISgz//bhDc7hyIQ8z4Gr8G4P3ZaKVR2jaZEGT2LdXL0
	 JfvY3cRscPdoaD+znrNIo6ePn3j1CLqIbzNtyFllPlk1ggDX/xuq1f9VnCU3nkYip9
	 O//JJdWbziLgzrkteRdGBNKfqqoMrSVJVDZ+lgeP/4nu1fVzu8BXA6CM3T5aEPJed+
	 XA9GPDWyQvQYJ52NIoUz1htrpnUIYBFQCt+AjYdGWel3XUCL13AXrvF5efyQg2MGiv
	 7GMvXgOuIjJWcWdEZLvoOjGkO9ToMYUb+V+jfQl+78+tpzI7a4h5fsiDsHyCE/Uc6g
	 4gzVPsSzek8+Q==
Date: Mon, 22 Jul 2024 22:14:28 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Charlie Jenkins <charlie@rivosinc.com>
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v5] prctl.2: Add PR_RISCV_SET_ICACHE_FLUSH_CTX
Message-ID: <mtldelawzdnlcby3jbldxix6quwfd24u2oodqmor3l6h4pwx4u@5mnku77ktgab>
References: <20240709-fencei_prctl-v5-1-a0391069f746@rivosinc.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aikbfvgxdgd7a52j"
Content-Disposition: inline
In-Reply-To: <20240709-fencei_prctl-v5-1-a0391069f746@rivosinc.com>


--aikbfvgxdgd7a52j
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Charlie Jenkins <charlie@rivosinc.com>
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v5] prctl.2: Add PR_RISCV_SET_ICACHE_FLUSH_CTX
References: <20240709-fencei_prctl-v5-1-a0391069f746@rivosinc.com>
MIME-Version: 1.0
In-Reply-To: <20240709-fencei_prctl-v5-1-a0391069f746@rivosinc.com>

Hi Charlie,

On Tue, Jul 09, 2024 at 10:56:52AM GMT, Charlie Jenkins wrote:
> Document the PR_RISCV_SET_ICACHE_FLUSH_CTX flag for prctl(2) that is
> supported as of Linux 6.10.
>=20
> Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>

Thanks!  I've applied the patch, with some minor changes:

diff --git c/man/man2const/PR_RISCV_SET_ICACHE_FLUSH_CTX.2const i/man/man2c=
onst/PR_RISCV_SET_ICACHE_FLUSH_CTX.2const
index 138e45e0b..a0f0c736d 100644
--- c/man/man2const/PR_RISCV_SET_ICACHE_FLUSH_CTX.2const
+++ i/man/man2const/PR_RISCV_SET_ICACHE_FLUSH_CTX.2const
@@ -29,8 +29,8 @@ .SH DESCRIPTION
 .B PR_RISCV_SCOPE_PER_PROCESS
 all threads in the process are permitted to emit icache flushing instructi=
ons.
 Whenever any thread in the process is migrated,
-the corresponding hart's icache will be guaranteed
-to be consistent with instruction storage.
+the corresponding hart's icache will be
+guaranteed to be consistent with instruction storage.
 This does not enforce any guarantees outside of migration.
 If a thread modifies an instruction that another thread may attempt to exe=
cute,
 the other thread must still emit an icache flushing instruction
@@ -46,13 +46,12 @@ .SH DESCRIPTION
 guaranteed to be consistent with instruction storage.
 .P
 On kernels configured without SMP, this prctl
-.BR PR_RISCV_SET_ICACHE_FLUSH_CTX
+.B PR_RISCV_SET_ICACHE_FLUSH_CTX
 is a nop as migrations across harts will not occur.
 .P
 The following values for
 .I ctx
 can be specified:
-.RS
 .TP
 .BR PR_RISCV_CTX_SW_FENCEI_ON " (since Linux 6.10)"
 Allow fence.i in user space.
@@ -64,12 +63,10 @@ .SH DESCRIPTION
 Therefore, caution must be taken;
 use this flag only when you can guarantee that
 no thread in the process will emit fence.i from this point onward.
-.RE
-.IP
+.P
 The following values for
 .I scope
 can be specified:
-.RS
 .TP
 .BR PR_RISCV_SCOPE_PER_PROCESS " (since Linux 6.10)"
 Ensure the icache of any thread in this process is coherent with instructi=
on
@@ -78,7 +75,6 @@ .SH DESCRIPTION
 .BR PR_RISCV_SCOPE_PER_THREAD " (since Linux 6.10)"
 Ensure the icache of the current thread is coherent with instruction stora=
ge
 upon migration.
-.RE
 .SH EXAMPLES
 The following files are meant to be compiled and linked with each other.
 The modify_instruction() function
@@ -94,7 +90,8 @@ .SS Program source: cmodx.c
 extern int get_value(void);
 extern void modify_instruction(void);
 \&
-int main(void)
+int
+main(void)
 {
     int value =3D get_value();
 \&


Have a lovely night!
Alex

> ---
> Changes in v5:
> - Change "." to "\&" for newlines in example
> - Fix whitespace
> - Link to v4: https://lore.kernel.org/r/20240701-fencei_prctl-v4-1-9e1812=
87d872@rivosinc.com
>=20
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
>  man/man2const/PR_RISCV_SET_ICACHE_FLUSH_CTX.2const | 155 +++++++++++++++=
++++++
>  2 files changed, 158 insertions(+)
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
> index 000000000..138e45e0b
> --- /dev/null
> +++ b/man/man2const/PR_RISCV_SET_ICACHE_FLUSH_CTX.2const
> @@ -0,0 +1,155 @@
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
> +only the thread calling this function is permitted to
> +emit icache flushing instructions.
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
> +.SH EXAMPLES
> +The following files are meant to be compiled and linked with each other.
> +The modify_instruction() function
> +replaces an add with zero with an add with one,
> +causing the instruction sequence in get_value() to change from
> +returning a zero to returning a one.
> +.SS Program source: cmodx.c
> +.\" SRC BEGIN (cmodx.c)
> +.EX
> +#include <stdio.h>
> +#include <sys/prctl.h>
> +\&
> +extern int get_value(void);
> +extern void modify_instruction(void);
> +\&
> +int main(void)
> +{
> +    int value =3D get_value();
> +\&
> +    printf("Value before cmodx: %d\[rs]n", value);
> +\&
> +    // Call prctl before first fence.i is called
> +    prctl(PR_RISCV_SET_ICACHE_FLUSH_CTX, PR_RISCV_CTX_SW_FENCEI_ON,
> +          PR_RISCV_SCOPE_PER_PROCESS);
> +\&
> +    modify_instruction();
> +\&
> +    // Call prctl after final fence.i is called in process
> +    prctl(PR_RISCV_SET_ICACHE_FLUSH_CTX, PR_RISCV_CTX_SW_FENCEI_OFF,
> +          PR_RISCV_SCOPE_PER_PROCESS);
> +\&
> +    value =3D get_value();
> +    printf("Value after cmodx: %d\[rs]n", value);
> +    return 0;
> +}
> +.EE
> +.\" SRC END
> +.SS Program source: cmodx.S
> +.EX
> +\&.option norvc
> +\&
> +\&.text
> +\&.global modify_instruction
> +modify_instruction:
> +lw a0, new_insn
> +lui a5,%hi(old_insn)
> +sw  a0,%lo(old_insn)(a5)
> +fence.i
> +ret
> +\&
> +\&.section modifiable, "awx"
> +\&.global get_value
> +get_value:
> +li a0, 0
> +old_insn:
> +addi a0, a0, 0
> +ret
> +\&
> +\&.data
> +new_insn:
> +addi a0, a0, 1
> +.EE
> +.SS Expected result
> +.EX
> +Value before cmodx: 0
> +Value after cmodx: 1
> +.EE
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
>=20

--=20
<https://www.alejandro-colomar.es/>

--aikbfvgxdgd7a52j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaevaMACgkQnowa+77/
2zLs8A//ciZG2DFb8jTvN8uo0Y50oFHAnOO6ga6mYtgEG+mWuUi4Rxt0ort+NB+W
nI+4UxaW92vlpL/xCHAprZxb2C8HMhhiRWFfjdw+MnPzJXDlxgTxvWwuynmPadIr
krjWlxcAatXXS4t+tHPixQCtjMmnfTVnMS+T2A0Ce6gjmCw8S2BtJm61CEhMNlBY
TdtGKZvTSMbrMiJpJuTaIqYIG2iJ55qqRIZhB+8wY3n5vJoqxiLTLGH4h0xgp4OM
yh3q4bALdCnk8u0EukmISpTELkOps6f5ORUWY1OVnZ0K+BbudPNAzWrOJE8V2xeM
mE7Lt6BX6hK7bOvRmeWacHRF8w3jmtbZJx8RK4aYIFpQekJIAgVIk5Coxu0UO+o6
xXlU4YIbdZWygEvrdoqxjWI5luPfFR1da4m/WwgAtNMofbKz7zC+BtQhwCCuQNgK
Mf6KWcdpk/xKzxYdDWdRHzUMe6aDevdfyb7arnsuoe5+tI52cF/BbaxLA6UPQ+bM
3ukgywIsHfOzu2mxjDrIF/WawrX5+mHsFpFJ6fKL8FRt9dXd4rk3bPOrrXguqXkZ
w71EJcdRpkiWGIKre/An796fs8jP6QECek27WUYIFfxbIqysqfPvpnCWpmsaCHin
KKVaHEZyl3of6SVH38NNmbnu+K4rj+jJ4bzzLFOQFF+MkBcohXY=
=osxl
-----END PGP SIGNATURE-----

--aikbfvgxdgd7a52j--

