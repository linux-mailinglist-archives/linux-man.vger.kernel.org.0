Return-Path: <linux-man+bounces-1391-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 09AE192B9A8
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 14:37:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B33881F258BD
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 12:37:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4D57155A53;
	Tue,  9 Jul 2024 12:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PezuseNe"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 857AA13A25F
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 12:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720528655; cv=none; b=YatDp4p9Diux5v24F7ze0OrpQiZBId/QVEP26JNKGMt3sGmNhT19jzw4oE2vDn5POmv3pzu06noP1qE/ZkZSrtc2JEhg/VAm2DTuP/pVmtorDxifItnCYa6mIEt628x6y/XU0RTDYVYwE5HOfoHuHqaPhiOSpYcuHqUdpVG4DWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720528655; c=relaxed/simple;
	bh=HwJKf9gYe4q0blkpj2eD4bVHB7yhg85XctwnK6Giq6U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mzB0MeTpDwFV0g8FfZKBZLeKn6mf9uJq1roA4pjLIIVoT0FkXCOQbn04rL1UrEw/4oYJbrT7O3vnvg8J6mWA+QebjcEA33GmHyk9LeOOEiRdtfpKWHcgq4qsa+IRf8lK1M8agdW9NlK/FouNz1znMe6pChRYh3OZ3GdDg1dVwtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PezuseNe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 822B8C32786;
	Tue,  9 Jul 2024 12:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720528655;
	bh=HwJKf9gYe4q0blkpj2eD4bVHB7yhg85XctwnK6Giq6U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PezuseNe2ImOMXrUbly6izaudjOk2G8URnvDTyQl0jWR+f3DWB6ccjVWigGa7h4Cf
	 cXP1T7BBbIw1M9qW9h5khNYC7zbt75CiAEaTUGu5m1qy2F/JTIIsQbfHqBEXtYPvlq
	 JK0kJhjA32xQoCAFdzeYOMVG0+jO5wGIMy0t/b3hqCL8kXMBvfThl0sRGNCyTANpyE
	 lbNzt5T6ijUWBLO3sF7Qbst18OqeOiNTg9OkmfPnozKn3vLo+LUfXwoGq283+xq3oB
	 QwZ4iwMTST+c31uZUid6nJZpKyQh2/cE8xpskDYizt627LvInF25A5LamGDkTDNyaE
	 0j0DVNLe6vLnA==
Date: Tue, 9 Jul 2024 14:37:32 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Charlie Jenkins <charlie@rivosinc.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] riscv_flush_icache.2: Create page
Message-ID: <p5h52germcjfe6buc37hlkruoezxepiqav7xqob3bvavbu7ro2@yelkekomdohu>
References: <20240701-flush_icache-v2-1-15f7a35a0d13@rivosinc.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ah56op6l3u2cwqsj"
Content-Disposition: inline
In-Reply-To: <20240701-flush_icache-v2-1-15f7a35a0d13@rivosinc.com>


--ah56op6l3u2cwqsj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Charlie Jenkins <charlie@rivosinc.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] riscv_flush_icache.2: Create page
References: <20240701-flush_icache-v2-1-15f7a35a0d13@rivosinc.com>
MIME-Version: 1.0
In-Reply-To: <20240701-flush_icache-v2-1-15f7a35a0d13@rivosinc.com>

Hi Charlie,

On Mon, Jul 01, 2024 at 12:00:37PM GMT, Charlie Jenkins wrote:
> riscv_flush_icache has been present in syscall.2, but had no page for
> itself. Add the page for this syscall.
>=20
> The syscall is named riscv_flush_icache, but the glibc function is
> named __riscv_flush_icache. To handle this, name the syscall page
> riscv_flush_icache.2 and point to the libc page __riscv_flush_icache.3.
>=20
> Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
> ---
> Changes in v2:
> - Correct text referring to title of page to be __riscv_flush_icache
> - Place \- on new linie
> - Drop "int" from "unsigned long int"
> - Use semantic newlines
> - Link to v1: https://lore.kernel.org/r/20240628-flush_icache-v1-1-76a015=
84f796@rivosinc.com
> ---

Patch applied.  Thanks!
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D0aad18bcdd6b9e67c44a63839284f298da278646>

Have a lovely day!
Alex

>  man/man2/riscv_flush_icache.2   |  1 +
>  man/man3/__riscv_flush_icache.3 | 46 +++++++++++++++++++++++++++++++++++=
++++++
>  2 files changed, 47 insertions(+)
>=20
> diff --git a/man/man2/riscv_flush_icache.2 b/man/man2/riscv_flush_icache.2
> new file mode 100644
> index 000000000..a6d807e9d
> --- /dev/null
> +++ b/man/man2/riscv_flush_icache.2
> @@ -0,0 +1 @@
> +.so man3/__riscv_flush_icache.3
> diff --git a/man/man3/__riscv_flush_icache.3 b/man/man3/__riscv_flush_ica=
che.3
> new file mode 100644
> index 000000000..7d3aa6e40
> --- /dev/null
> +++ b/man/man3/__riscv_flush_icache.3
> @@ -0,0 +1,46 @@
> +.\" Copyright (C) Rivos Inc., 2024
> +.\"
> +.\" SPDX-License-Identifier: GPL-2.0-or-later
> +.\"
> +.TH __riscv_flush_icache 3 (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +__riscv_flush_icache
> +\- Flush icaches on RISC-V
> +.SH LIBRARY
> +Standard C library
> +.RI ( libc ", " \-lc )
> +.SH SYNOPSIS
> +.nf
> +.B #include <sys/cachectl.h>
> +.P
> +.B int __riscv_flush_icache(void *start, void *end, \
> +unsigned long flags);
> +.fi
> +.SH DESCRIPTION
> +.BR __riscv_flush_icache ()
> +enforces ordering between stores and instruction cache fetches.
> +The range of addresses over which ordering is enforced is specified by
> +.I start
> +and
> +.IR end .
> +The
> +.I flags
> +argument controls the extent of this ordering,
> +with the default behavior
> +(a
> +.I flags
> +value of 0)
> +being to enforce the fence on
> +all threads in the current process.
> +Setting the
> +.B SYS_RISCV_FLUSH_ICACHE_LOCAL
> +bit allows users to indicate that enforcing ordering on
> +only the current thread is necessary.
> +All other flag bits are reserved.
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

--ah56op6l3u2cwqsj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaNLwwACgkQnowa+77/
2zIwIQ/8DiIrpRZ9ee9C614oc2Q6LarnT/KnuMx7i+1J57LGm/aPS8e0BGxPHPXg
WlRynvgm7dAG+LCkPTYXI7KieMwfQFpwnkl/VT92nBiycFPg2khMM7ojGvxNIYGm
7GbNpb3BK01HjzwXh4nDn4WXumnGWG9LkfKNZijUQfJxrFwKEiVLmy4VDG239Xhb
b+WXmeode7XY0CSTfXidL2OqqxmtjmZVecg/XDQQsggPs9BUocmI7QHZ3cByua/R
RWTqleXAeBTXXxRfGUqE7+/hv7I+nJHGzaDerenHcurQR8Pv3e4kuyNUO+crLcL6
7wfQDrQb6pJ2sM9+GUZx9mEEigi3YN8F+d8Sukn6HAOtH7oKc4K+PoRFlqkk3tsb
T2LlTT+saSKMpZXaiSjEBlgZQmH3Wy3tDiiWb3k5tevLUGqDHW4bkdy5P83P9gJA
wHyepqAo/Sk2Zd24Y6vtchD0N4IeK+0oWKY3e+yZC9Ky45SZ64hYqDcxW/oo87q9
xW8vbGlsIDCLgkdNIUDeEHLeVpuD8HBE8Pv+Z49HWvyTEWcXvmR8R37dD4k/P212
STnhl8MFjyXa3QZdkrg3RdY+ho42i+6WLono2WmdEk/YGxbmweWaRPt5LRshbohw
4LsNx8p0yVCJX4Fsm48TtRAual7y9Mr/CENYBlAo4Bkt57eoaPA=
=cEWK
-----END PGP SIGNATURE-----

--ah56op6l3u2cwqsj--

