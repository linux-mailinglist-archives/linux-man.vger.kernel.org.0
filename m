Return-Path: <linux-man+bounces-4476-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E06CD9850
	for <lists+linux-man@lfdr.de>; Tue, 23 Dec 2025 14:57:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9C2EE306A06D
	for <lists+linux-man@lfdr.de>; Tue, 23 Dec 2025 13:53:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3001A2BE03D;
	Tue, 23 Dec 2025 13:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8GsApxC"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3C86283FFB
	for <linux-man@vger.kernel.org>; Tue, 23 Dec 2025 13:53:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766498006; cv=none; b=J6A2lUk90fLzyMEMxQ0iihikxFVrXYgdMxJyl2o1FjI+HAiDSjMf5poacDKu4X4T3i5TMUqlTV5aKqC4M9X1DYAKLk0r+AVWmcdr5Sgj+qS2QAnQ87zeClsM1E4NFEY9MF9br3fUzucrl6ruuSa2FBPk46o45C2I1JLiAPWQTuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766498006; c=relaxed/simple;
	bh=69CtJ6gSmFtjqFt+GEbttgNPsVlsyEpwcVrn8gURKQk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JUCXfyGmg9AtJxrEJfQb9AXDiG4IjWaF3wYir02yMo09hbnGD8Z3r5STs62RAWtTWJAYHIBYaRiihgQQsnNOpCx+UrHFULRzEb3khGoiPqPtS4vN2YMk6QnENHLJ9sS230xiQIiSW1SGEl0XZtOwu+H3PLdwkdIReWkMnDUdvNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8GsApxC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90F0BC116C6;
	Tue, 23 Dec 2025 13:53:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766498006;
	bh=69CtJ6gSmFtjqFt+GEbttgNPsVlsyEpwcVrn8gURKQk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c8GsApxCUqtQEOXUnaNfEsymSuEkJXxRdp3OtECO+ta6God/myQhlZxFhDbVWcfEq
	 jrhwdT0J1CVAa/9H1tzZfuvmqpo8v+LypI6tno4iKdWpdXXlAFJ576Y5D2ZNN0StgQ
	 msQhlo/TThVXarBsvwJbQbSRM1gME3KXRibsASBhiHkeZJUUMkMnnGCWLDZ6J3r4uU
	 AHTe3/0pbTllYcniWkAaFNBhFyIydXawHAvlknaHWNEn60TWkRyXdQgR4I7C/mFgrZ
	 nv7HVcUNE/dglRiEXeS///xf0+K+B7+KDRqbP+dpE1TT1JChzCgcKwt+Wgcbl+Nu7+
	 pIk0ZEcgHFqiQ==
Date: Tue, 23 Dec 2025 14:53:23 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Collin Funk <collin.funk1@gmail.com>, Seth McDonald <sethmcmail@pm.me>
Subject: Re: [PATCH v1] man/man7/standards.7: Document C27, C23,
 POSIX.1-2004, POSIX.1-2013, POSIX.1-2024, SUSv5
Message-ID: <aUqevQLaoR7Oq66D@devuan>
References: <I8K8HXS7TxdvIdzhsS5M03Fz5hnQp28BkAR-9d82UTEMdcPpNA767OxJ0_VRN3dHo8GBgGnprip2EsvlRAAKWC8NAzTn6A-ZMD2Eeci24ls=@pm.me>
 <4d36afef1c657d5f9ed4a0d121648b330d62ce2c.1766497736.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dcey3swbej5nzoqw"
Content-Disposition: inline
In-Reply-To: <4d36afef1c657d5f9ed4a0d121648b330d62ce2c.1766497736.git.alx@kernel.org>


--dcey3swbej5nzoqw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Collin Funk <collin.funk1@gmail.com>, Seth McDonald <sethmcmail@pm.me>
Subject: Re: [PATCH v1] man/man7/standards.7: Document C27, C23,
 POSIX.1-2004, POSIX.1-2013, POSIX.1-2024, SUSv5
Message-ID: <aUqevQLaoR7Oq66D@devuan>
References: <I8K8HXS7TxdvIdzhsS5M03Fz5hnQp28BkAR-9d82UTEMdcPpNA767OxJ0_VRN3dHo8GBgGnprip2EsvlRAAKWC8NAzTn6A-ZMD2Eeci24ls=@pm.me>
 <4d36afef1c657d5f9ed4a0d121648b330d62ce2c.1766497736.git.alx@kernel.org>
MIME-Version: 1.0
In-Reply-To: <4d36afef1c657d5f9ed4a0d121648b330d62ce2c.1766497736.git.alx@kernel.org>

On Tue, Dec 23, 2025 at 02:49:37PM +0100, Alejandro Colomar wrote:
> Cc: Collin Funk <collin.funk1@gmail.com>
> Reported-by: Seth McDonald <sethmcmail@pm.me>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
>=20
> Hi Seth,
>=20
> I've expanded standards(7) to include several standards that were
> undocumented.  Thanks for the report!
>=20
>=20
> Have a lovely day!
> Alex
>=20
>  man/man7/standards.7 | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
>=20
> diff --git a/man/man7/standards.7 b/man/man7/standards.7
> index a3ab6e219..1b685d213 100644
> --- a/man/man7/standards.7
> +++ b/man/man7/standards.7
> @@ -102,6 +102,14 @@ .SH DESCRIPTION
>  This revision of the C language standard was ratified by ISO in 2011
>  .RI ( "ISO/IEC 9899:2011" ).
>  .TP
> +.B C17
> +This revision of the C language standard was ratified by ISO in 2018
> +.RI ( "ISO/IEC 9899:2018" ).
> +.TP
> +.B C23
> +This revision of the C language standard was ratified by ISO in 2024
> +.RI ( "ISO/IEC 9899:2024" ).
> +.TP
>  .B LFS
>  The Large File Summit specification, completed in 1996.
>  This specification defined mechanisms that allowed 32-bit systems
> @@ -235,6 +243,10 @@ .SH DESCRIPTION
>  TC1 in 2003
>  and TC2 in 2004.
>  .TP
> +.B POSIX.1-2004
> +This revision of POSIX is technically identical to POSIX.1-2001 with
> +Technical Corrigenda 1 and 2 applied.
> +.TP
>  .B POSIX.1-2008
>  .TQ
>  .B SUSv4
> @@ -279,6 +291,10 @@ .SH DESCRIPTION
>  .UR http://www.opengroup.org\:/austin/
>  .UE .
>  .TP
> +.B POSIX.1-2013
> +This revision of POSIX is technically identical to POSIX.1-2008 with
> +Technical Corrigendum 1 applied.
> +.TP
>  .B SUSv4 2016 edition
>  This is equivalent to POSIX.1-2008, with the addition of
>  Technical Corrigenda 1 and 2 and the XCurses specification.
> @@ -295,6 +311,17 @@ .SH DESCRIPTION
>  manual pages under sections 0p (header files), 1p (commands),
>  and 3p (functions);
>  thus one can write "man 3p open".
> +.TP
> +.B POSIX.1-2024
> +.TQ
> +.B SUSv5
> +Work on the next revision of POSIX.1/SUS
> +was completed and ratified in 2024.
> +.IP
> +Further information can be found on the
> +.UR http://www.opengroup.org/\:austin/
> +Austin Group web site
> +.UE .

Amended with

	diff --git a/man/man7/standards.7 b/man/man7/standards.7
	index 1b685d213..e9e4101b8 100644
	--- a/man/man7/standards.7
	+++ b/man/man7/standards.7
	@@ -318,6 +318,10 @@ .SH DESCRIPTION
	 Work on the next revision of POSIX.1/SUS
	 was completed and ratified in 2024.
	 .IP
	+POSIX.1-2024 is aligned with C17,
	+so that all of the library functions standardized in C17
	+are also standardized in POSIX.1-2024.
	+.IP
	 Further information can be found on the
	 .UR http://www.opengroup.org/\:austin/
	 Austin Group web site

>  .SH SEE ALSO
>  .BR getconf (1),
>  .BR confstr (3),
>=20
> Range-diff against v0:
> -:  --------- > 1:  4d36afef1 man/man7/standards.7: Document C27, C23, PO=
SIX.1-2004, POSIX.1-2013, POSIX.1-2024, SUSv5
> --=20
> 2.51.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--dcey3swbej5nzoqw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlKntIACgkQ64mZXMKQ
wqlsXxAAsZ0JwlSHQ6smyOwQNH7ih+IhWOcu4iBVnKMcxRAabsDE8AYhCDnYEwiV
7RpfQcZ7hxeQ0ZcN8djjYNcslE8m+k47aMoSYDu7HgFRY/ztcirSCUzay7pVMawK
jI+zlE/pqEPNTZlIKMhcZLTkIR+cfnCbHGwuLdkCcalE9u4ReV16e0clvH8SPq+j
peoJdYGnzOfJbBDvkmsMnkaaScvU2nqVma6rzkVbcvXDvd4bKxm9WJn/QWX74Xth
9JCB4oioLPZgXKhCHekp0sdpKDGCwZqmxKhmgWRKluIQXht1CUvRU9z/i4cjFRGD
N6sbBRcgcSB0+0xQ0HriN9GWTVjMOMqez1l9KBV3VQPhnuHPt07+kPZIvFTFetwO
1vPj3vvt7ugYZUwG0kRjl78sE3fA0SzatMeIucvoq5oDcSR5YaGU4Cg4ncy2Jsff
vsYhOAvsSzAkPkz2m+ShkvQZlrOZniYXns9UPy5/KOXj+rlmjr4YI1K0YCC5Uw0q
ekcnCmgZ6uZJZX3x4pKl8Z9xto4jSqFeAdRhmrHNvzxTPYSMXZ44SzdBoN+Dkax6
ADeLgcH3cL9FKT/DY2Yjc39vRBmXv/ANq2JqXM9KLaJuX/6go0fWWjbF2MuoukIe
P/xI/9MsKUWwZK2J6lEC9CAGOPL1xGZpm+U1ygpWeGhmuY/7aIw=
=sDqL
-----END PGP SIGNATURE-----

--dcey3swbej5nzoqw--

