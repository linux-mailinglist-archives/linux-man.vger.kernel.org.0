Return-Path: <linux-man+bounces-1307-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6B291CBFD
	for <lists+linux-man@lfdr.de>; Sat, 29 Jun 2024 12:00:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0F0361F222C2
	for <lists+linux-man@lfdr.de>; Sat, 29 Jun 2024 10:00:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14D2C3B1AC;
	Sat, 29 Jun 2024 10:00:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MLZhkv/e"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA2A43DBBF
	for <linux-man@vger.kernel.org>; Sat, 29 Jun 2024 10:00:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719655202; cv=none; b=p23Tz2/UbyajBrX+NWKAivmIhyHU1rcIbz3TMCokLDZ3cAWriWDi2SV27h8LcyLUsFCiYdbFqeiO0SXypfSOFE/wERBVqHTFX6lUErZrTpi58vxpjgHcH3v4M7uCgAeF1b3LV+BSCFHeuhA9omtGUvwhnZwWrKOiZLvANn/pqyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719655202; c=relaxed/simple;
	bh=Kh41E9+VTlj2p0jMiUgkyrZZZ6MKblgjT+Vuk67Z5rQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jpZ1l5YQt7O4KKjj2gMNHY3Vf/HmAgPvRxny3dQW/RoUoI5YfKClZTBMX1DY4xt0QfDD0Nn5aeAxSImyNsrPN5NQGyMl+2RH8WCG/VM0FhDPty9QcCvoAmdTbkzxyahsk21kzYT+0xzzJEdA4mtS2KjOCg5d7lQMNqKiUrVpbgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MLZhkv/e; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F6DAC2BBFC;
	Sat, 29 Jun 2024 10:00:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719655202;
	bh=Kh41E9+VTlj2p0jMiUgkyrZZZ6MKblgjT+Vuk67Z5rQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MLZhkv/e2n4Swnv3J1VmECZGqus6tSkSCR4QMyJ3KM4rq1PEK/Z8ybQtAwHRC4jry
	 9aIFI2X7l6ME8oJrsy5nDz970VLeOSYbEdAvJmXv3hwy8cOxNr83y34NRoHHDHuNRq
	 Aa19bewBcZtd/V4ht+hHmdT0b++Ws0Fkdkj4/A6Sp/qg56HcZtg6D05czepx3b3CdQ
	 ib4Pt4V7YIvMzHsJyTKkJDGvaOVHEKXFU2oLxGEUgjSVBILFjFWAGQwPEOWXQ55HzU
	 ebZJEpXF8mDTxSkDr2zLIxkYSnyClbpA+3HibwDp1rZB6hL5Vy1c1u3hRQ4n9w94MF
	 s2bIFDuTdrCWA==
Date: Sat, 29 Jun 2024 11:59:59 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Charlie Jenkins <charlie@rivosinc.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] riscv_flush_icache.2: Create page
Message-ID: <eneddcekqlsmbsvponkca7zh4qndj2s6lw46p4amrh44udbsfa@4ro3lwfvmbcp>
References: <20240628-flush_icache-v1-1-76a01584f796@rivosinc.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qfhjuwrpwqb75mnu"
Content-Disposition: inline
In-Reply-To: <20240628-flush_icache-v1-1-76a01584f796@rivosinc.com>


--qfhjuwrpwqb75mnu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Charlie Jenkins <charlie@rivosinc.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] riscv_flush_icache.2: Create page
References: <20240628-flush_icache-v1-1-76a01584f796@rivosinc.com>
MIME-Version: 1.0
In-Reply-To: <20240628-flush_icache-v1-1-76a01584f796@rivosinc.com>

Hi Charlie,

On Fri, Jun 28, 2024 at 08:32:47PM GMT, Charlie Jenkins wrote:
> riscv_flush_icache has been present in syscall.2, but had no page for
> itself. Add the page for this syscall.
>=20
> The syscall is named riscv_flush_icache, but the glibc function is
> named __riscv_flush_icache. To handle this, name the syscall page
> riscv_flush_icache.2 and point to the libc page __riscv_flush_icache.3.
>=20
> Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
> ---
>  man/man2/riscv_flush_icache.2   |  2 ++
>  man/man3/__riscv_flush_icache.3 | 42 +++++++++++++++++++++++++++++++++++=
++++++
>  2 files changed, 44 insertions(+)
>=20
> diff --git a/man/man2/riscv_flush_icache.2 b/man/man2/riscv_flush_icache.2
> new file mode 100644
> index 000000000..3bafb5aca
> --- /dev/null
> +++ b/man/man2/riscv_flush_icache.2
> @@ -0,0 +1,2 @@
> +.so man3/__riscv_flush_icache.3
> +.\" Because __riscv_flush_icache(3) is layered on a system call of the s=
ame name

No need for that comment.  That's usually the reason.  :)

> diff --git a/man/man3/__riscv_flush_icache.3 b/man/man3/__riscv_flush_ica=
che.3
> new file mode 100644
> index 000000000..db59f4672
> --- /dev/null
> +++ b/man/man3/__riscv_flush_icache.3
> @@ -0,0 +1,42 @@
> +.\" Copyright (C) Rivos Inc., 2024
> +.\"
> +.\" SPDX-License-Identifier: GPL-2.0-or-later
> +.\"
> +.TH riscv_flush_icache 3 (date) "Linux man-pages (unreleased)"

The TH arg1 should match the file name.

> +.SH NAME
> +riscv_flush_icache \- Flush icaches on RISC-V

Same here.  BTW, please put the \- on a line of its own.

> +.SH LIBRARY
> +Standard C library
> +.RI ( libc ", " \-lc )
> +.SH SYNOPSIS
> +.nf
> +.B #include <sys/cachectl.h>
> +.P
> +.B int __riscv_flush_icache(void *start, void *end, \
> +unsigned long int flags);

We say 'unsigned long'.  We only use 'int' for 'int' and 'unsigned int'.

> +.fi
> +.SH DESCRIPTION
> +.BR __riscv_flush_icache ()
> +enforces ordering between stores and instruction cache fetches. The rang=
e of

Please use semantic newlines.  See man-pages:

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
     In the source of a manual page, new sentences should be started on
     new lines, long sentences should be split  into  lines  at  clause
     breaks  (commas,  semicolons, colons, and so on), and long clauses
     should be split at phrase boundaries.  This convention,  sometimes
     known as "semantic newlines", makes it easier to see the effect of
     patches, which often operate at the level of individual sentences,
     clauses, or phrases.

See also:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/man7/ma=
n-pages.7?id=3D6ff6f43d68164f99a8c3fb66f4525d145571310c>


Cheers,
Alex

> +addresses over which ordering is enforced is specified by
> +.I start
> +and
> +.I end .
> +The
> +.I flags
> +argument controls the extent of this ordering, with
> +the default behavior (a
> +.I flags
> +value of 0) being to enforce the fence on
> +all threads in the current process. Setting the
> +.B SYS_RISCV_FLUSH_ICACHE_LOCAL
> +bit allows users to indicate that enforcing
> +ordering on only the current thread is necessary. All other flag bits are
> +reserved.
> +.SH STANDARDS
> +Linux on RISC-V.
> +.SH HISTORY
> +Linux 4.15.
> +glibc 2.27.
> +.SH SEE ALSO
> +.BR syscall (2)
>=20
> ---
> base-commit: d0621648b4b5a356e86cea23e842f2591461f0cf
> change-id: 20240628-flush_icache-bf5a1f88032e
>=20
> Best regards,
> --=20
> Charlie Jenkins <charlie@rivosinc.com>
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--qfhjuwrpwqb75mnu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZ/2x8ACgkQnowa+77/
2zKHKA/+L0B3yFmlfCXdlBQAoBfOqq9ohIjG04y+AFuslWtm7bBXxW9nwMtO4P7e
1xE6sEvyrQLVD0yewQ8YMYLKfjMOoKYY4q5NI7eLHU7vS75HqnXcrPpl7/pR1SmF
NwKNOxM1Y4rhkb5trm8bO4g6PtJm3Ili1tYTxgCJk2sogwvBpXrL0BQxKBtmHC7I
UwXNUv16aiC9YQqv+4ymspxFZNOtr0P7iteoHjys/yJpxeaYXFW/ZzmIr4RyCqin
1BNOc+q6S218AMUqcwPWJnGsVN3ovyJFHaZ0x08s8au1w8s/qo6ftWFzTG//9ONJ
1CEO0j5coESCSf47AGzhnFgSERv3Kr5zZ/fkv1LTMSZ56dURu/2f+E8OLQ1UVRb+
hvnP7ZnjDyn1SpLFR83uWpmHOdfZPxqpTbWjJ0fq0/mcNEbuPeI3rdY/iVNKSOrQ
MznmKgG9Nf7h0Diek/Rv9E9U9wnrVI/GOa4GtjFSkzQ8ehAXpQXc0zjK9m5gYuIJ
1yjDHrZLKUe5eaGZcGB7F/MDdJPeL0JK7s9l53j1VC5+REo2SkQn5Mnyru5/uFLJ
I8vKziXaEcFiCl76fSN57WEB4XMzaVHW3JsELVohEFgvn7eEafExNu4xKGAZzRem
dfkgY3G/L8YzEMS6MNuI4TARuM8GvM95/c/9qO1GsPcuitYGV1Q=
=0Y29
-----END PGP SIGNATURE-----

--qfhjuwrpwqb75mnu--

