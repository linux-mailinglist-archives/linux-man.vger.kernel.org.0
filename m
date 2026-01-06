Return-Path: <linux-man+bounces-4688-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C78CF8AF0
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 15:08:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D70363059A4F
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 14:07:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F51929CE9;
	Tue,  6 Jan 2026 14:06:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPUYI257"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D36D41A285
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 14:06:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767708407; cv=none; b=OT2eTumLGLoXKFSOeNNiP/MbU9Yaua2/c+14fUriIvqlXXo0zW0ykg1ocVn61sewrkG0faCxCwZaxUBxPB9snBaj8qvEZShtVk+iFw1IQ/sLaaB/ibdVyQ4JTQ55FuzoA3rRNuM4wH7GWUMOWgLks+WJ+L1enGFCobwJ3Tjbqvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767708407; c=relaxed/simple;
	bh=rev5xz5hQ+60ZR/eZcE7OOjDTX2fJWPkiiah2laWTSA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gQPOTuHl55rnJSPDeD3UCaECyi2G+JhT6A43c6Xq3CQy6g3i3t4cJkFDsr/BngSWAfTTH+iP0/E7jV36WtVi2DoU1pPDvl0ZD+l+oqPGqs1d5qaHJThy/zuJhivDUo/DOHrGU57291mpjnVussB1D2CiUAeAu1BucwEZkTALhMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPUYI257; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0AAF3C19421;
	Tue,  6 Jan 2026 14:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767708407;
	bh=rev5xz5hQ+60ZR/eZcE7OOjDTX2fJWPkiiah2laWTSA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XPUYI257DY4ZNKv1sFdfIxiVcajZ8ASTrh4ucVsA55+xnE+i8NtB8m2DfY6m3w0V8
	 DVxH1rrb/ET6aKi13YxXLodulZVdJeTr2txfW8z7dII4pXfWhD522hapRRtRRiY4Dp
	 sMMIEqYQg0oDd3rCiy8fK5wQMCNfEVa0esyroqd4m+nDYueLHMJuTS1oeAzG3N7pjM
	 73YoAU9SI4/+hjKO53NB7uUG3MtWLXONoOYaL5j4x9SYdkCYSRdLJUPwBCmr0iHHWg
	 nx/gKNZxYGRFrwCIiI8V16wTm7DrkRpTq/kXC1uOlwx7TwtYBd4XIRTFIxQhNJlyCg
	 nU2N5GzhiBc3w==
Date: Tue, 6 Jan 2026 15:06:44 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 09/15] man/man3type/FILE.3type: HISTORY: Update first
 POSIX appearance of FILE(3type)
Message-ID: <aV0W7f-XdvX1-9CO@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
 <77b4c360910f3cf058402095c99cb7c9c9e4f230.1767675322.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="62zo7775yk7rcad2"
Content-Disposition: inline
In-Reply-To: <77b4c360910f3cf058402095c99cb7c9c9e4f230.1767675322.git.sethmcmail@pm.me>


--62zo7775yk7rcad2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 09/15] man/man3type/FILE.3type: HISTORY: Update first
 POSIX appearance of FILE(3type)
Message-ID: <aV0W7f-XdvX1-9CO@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
 <77b4c360910f3cf058402095c99cb7c9c9e4f230.1767675322.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <77b4c360910f3cf058402095c99cb7c9c9e4f230.1767675322.git.sethmcmail@pm.me>

On Tue, Jan 06, 2026 at 05:07:58PM +1000, Seth McDonald wrote:
> FILE(3type) first appeared in POSIX.1-1988.[1]
>=20
> [1] IEEE Std 1003.1-1988, Section 8.2 "FILE-Type C Language Functions".
>=20
> Signed-off-by: Seth McDonald <sethmcmail@pm.me>

Applied; thanks!

> ---
>  man/man3type/FILE.3type | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man3type/FILE.3type b/man/man3type/FILE.3type
> index 3adc5f4bc2aa..0c568898333d 100644
> --- a/man/man3type/FILE.3type
> +++ b/man/man3type/FILE.3type
> @@ -19,7 +19,8 @@ .SH DESCRIPTION
>  .SH STANDARDS
>  C11, POSIX.1-2024.
>  .SH HISTORY
> -C89, POSIX.1-2001.
> +C89,
> +POSIX.1-1988.
>  .SH NOTES
>  The following header also provides this type:
>  .IR <wchar.h> .
> --=20
> 2.47.3
>=20

--=20
<https://www.alejandro-colomar.es>

--62zo7775yk7rcad2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmldFvQACgkQ64mZXMKQ
wqkMeA/+Odv7qaA6rH969lBYeuoUSInbrsxHiX2Xrub4yI8CGmdBHBe8Cw8LUEXO
K082DdGRj1Wn/l6Of6lIOkchytIPodfQ2qeNZPMN4gE+GV60wBUsHwps4fyIr2rA
quqEEtpDjvJYVCKftSaMrgKVJlHtBCmqV7aeZDg4PRF+6e+ovDsfoS8zt4TkayZ4
0xHFZ4Jt3EIjpt5l/92pa0pP27GdyOuih4bhGRsJ1qNIFcpMsHAo3Pgg5JjFb8BS
5mWWIAg5aFeRtAygtF0TlTmw7+/HwY+uO6GfUPkhXlBb02ko75YotQn58BFKZmtf
X/i+4oM3rqhrh5Y/EK0hU6ic2RW25o8c+smm2WWFtnhdPGei6A+X+Q/TyRoaz4rp
sNqYL7JKp4BnFFwUI0FuN8OrJs6tIUC1wG8HqLVESH4nQ8piUcdcisbKTXfbyjof
k2NgslazYmaqE91zCLejNGCMcGRn/1SLfjErSpHandBTMLaakTe4WBf8gSh1n/gI
cmWOyswjDOOBaQkJ/LVEdWVDkhnOmv7q4JqEcRb3vpNoUx6toa8boNUFuah9gfFI
Gn5c8ujdBJMqD+b/df043iJiZNzCxuNH1HbWyEr9ebO8Sxjf31uNMuRvyE5DFQQW
vAyara36XBY+1zxGomg+ITbfBvAKj5GyEiEXAsNLvnO7cJ2cWVM=
=sq2L
-----END PGP SIGNATURE-----

--62zo7775yk7rcad2--

