Return-Path: <linux-man+bounces-4630-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 567A3CF4416
	for <lists+linux-man@lfdr.de>; Mon, 05 Jan 2026 15:56:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B04FA303ADFB
	for <lists+linux-man@lfdr.de>; Mon,  5 Jan 2026 14:51:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B03D0337694;
	Mon,  5 Jan 2026 14:43:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RkVV7vwH"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF0E133508A
	for <linux-man@vger.kernel.org>; Mon,  5 Jan 2026 14:43:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767624192; cv=none; b=lY7d4NwMjMSTaP2pNu3djE9NF7uHFLeanU1E90hdNn/bnHupjBhJum0onWJo3J23nEU3qNyhfb83gYEsm2Y6hfFsSOVCRJuWGTOXBX02eisAS45j6/n12/TLoUfyKHve7OiEeZpNasZ0Jqyvf/GKtSTG8TfeP6HF9TS36blsaQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767624192; c=relaxed/simple;
	bh=tFWVXjjoRyT6C6ZLK70lyUKROuxmS/MdgnOxWDu1MU0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TiqXX2tHdOEv2rbNgnt4Zi4JlH5DngJAw5t7dDondB/QsXM9VDWYniOVDXhHkr2d4zAW8MrNoYX79kuAHBR/FdShXFVSD9feLTs3vnehPaBsImdvSt0kvPiYMvls1QDB8IlUnX5IC2aYg/TyskCOUOaf+2v/kiTB7cqP9iKgZ/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RkVV7vwH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C356C116D0;
	Mon,  5 Jan 2026 14:43:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767624191;
	bh=tFWVXjjoRyT6C6ZLK70lyUKROuxmS/MdgnOxWDu1MU0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RkVV7vwHS7trawPV/896quXPfmGuLyRDZIChgCybLc1D3Ag1/FgWKZxa9vYzidvBr
	 f7kyDNlCh42YNDZhpjo7x0UB3attLTEFuDmgsRWoetHo93nQn7T0AA5YlI3sjRvL6c
	 sCBu0NtXzNc1+N4Up7xlQZf5vjfPyFDZ+0xm6M9AMmdbYPXySbMl8LUFWKtxDn2njg
	 rwAZadCgFn2RWIPaaOu+NHkcAMY/ICXvnSNjnXZSkYCDLx+9KZ5eNyaBjC7nyFs7Pz
	 y0Umimm2IlXHuxKLmQvEDcg1UPRUjvvWdINrLcwRM761TSX5cG9As8+NkKGGkQhtKc
	 9Eh8MTkfljiSA==
Date: Mon, 5 Jan 2026 15:43:08 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 00/12] man/man{2,3}const/*: Update POSIX history of
 constants
Message-ID: <aVvN5ICfYt7CjX0v@devuan>
References: <cover.1767599119.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="epn6si3qcwthj2u7"
Content-Disposition: inline
In-Reply-To: <cover.1767599119.git.sethmcmail@pm.me>


--epn6si3qcwthj2u7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 00/12] man/man{2,3}const/*: Update POSIX history of
 constants
Message-ID: <aVvN5ICfYt7CjX0v@devuan>
References: <cover.1767599119.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <cover.1767599119.git.sethmcmail@pm.me>

Hi Seth,

On Mon, Jan 05, 2026 at 07:18:36PM +1000, Seth McDonald wrote:
> Hello all,
>=20
> I'm continuing to update the first POSIX and SUS appearances of various
> system calls and functions, but I'm doubting that it's a good idea to
> wait and send all patches in at once.  So while I continue, I'll try
> grouping related updates into patch sets and sending them through
> semi-regularly.
>=20
> To start, this patch set consists of updates for documented constants
> in the 2const and 3const sections.  I've provided a reference to the
> relevant POSIX version for each patch, providing links where possible.
>=20
> In general, each patch concerns a separate page.  However, if two pages
> share similar names and are referenced in the same section of POSIX
> (such that the citation given for both are the same), then I batched
> them together into the same patch.
>=20
> Also perhaps noteworthy: if updating a page required only adding a POSIX
> or SUS version, I usually added it in a new line and left any other
> listed standards untouched.  While if it required changing a line shared
> with other standards, I typically reformatted it to list each standard
> on a separate line (for nicer diffs with future changes).
>=20
> Seth McDonald (12):
>   man/man2const/F_DUPFD.2const: HISTORY: Update first POSIX appearance
>     of F_DUPFD(2const)
>   man/man2const/F_GETFD.2const: HISTORY: Update first POSIX appearance
>     of F_[GS]ETFD(2const)
>   man/man2const/F_GETFL.2const: HISTORY: Update first POSIX appearance
>     of F_[GS]ETFL(2const)
>   man/man2const/IPPROTO_IP{V6,}.2const: HISTORY: Add sections
>   man/man2const/IPV6_MULTICAST_{HOPS,IF,LOOP}.2const: HISTORY: Add
>     sections
>   man/man2const/IPV6_UNICAST_HOPS.2const: HISTORY: Add section
>   man/man2const/IPV6_V6ONLY.2const: HISTORY: Add first POSIX appearance
>     of IPV6_V6ONLY(2const)
>   man/man3const/EOF.3const: HISTORY: Update first POSIX appearance of
>     EOF(3const)
>   man/man3const/EXIT_SUCCESS.3const: HISTORY: Split EXIT_SUCCESS(3const)
>     and EXIT_FAILURE(3const)
>   man/man3const/EXIT_SUCCESS.3const: HISTORY: Update first POSIX
>     appearance of EXIT_SUCCESS(3const)
>   man/man3const/EXIT_SUCCESS.3const: HISTORY: Update first POSIX
>     appearance of EXIT_FAILURE(3const)
>   man/man3const/NULL.3const: HISTORY: Update first POSIX appearance of
>     NULL(3const)

Thanks!  I've applied all 12 patches.


Have a lovely New Year!
Alex

>=20
>  man/man2const/F_DUPFD.2const             | 4 +++-
>  man/man2const/F_GETFD.2const             | 4 +++-
>  man/man2const/F_GETFL.2const             | 4 +++-
>  man/man2const/IPPROTO_IP.2const          | 4 ++++
>  man/man2const/IPPROTO_IPV6.2const        | 4 ++++
>  man/man2const/IPV6_MULTICAST_HOPS.2const | 4 ++++
>  man/man2const/IPV6_MULTICAST_IF.2const   | 4 ++++
>  man/man2const/IPV6_MULTICAST_LOOP.2const | 4 ++++
>  man/man2const/IPV6_UNICAST_HOPS.2const   | 4 ++++
>  man/man2const/IPV6_V6ONLY.2const         | 1 +
>  man/man3const/EOF.3const                 | 3 ++-
>  man/man3const/EXIT_SUCCESS.3const        | 9 ++++++++-
>  man/man3const/NULL.3const                | 3 ++-
>  13 files changed, 46 insertions(+), 6 deletions(-)
>=20
> Range-diff against v0:
>  -:  ------------ >  1:  24e850c16b1a man/man2const/F_DUPFD.2const: HISTO=
RY: Update first POSIX appearance of F_DUPFD(2const)
>  -:  ------------ >  2:  2ebaafd23033 man/man2const/F_GETFD.2const: HISTO=
RY: Update first POSIX appearance of F_[GS]ETFD(2const)
>  -:  ------------ >  3:  318b6e1e5d8a man/man2const/F_GETFL.2const: HISTO=
RY: Update first POSIX appearance of F_[GS]ETFL(2const)
>  -:  ------------ >  4:  355603eae665 man/man2const/IPPROTO_IP{V6,}.2cons=
t: HISTORY: Add sections
>  -:  ------------ >  5:  82a8170800bf man/man2const/IPV6_MULTICAST_{HOPS,=
IF,LOOP}.2const: HISTORY: Add sections
>  -:  ------------ >  6:  daf65319f3b8 man/man2const/IPV6_UNICAST_HOPS.2co=
nst: HISTORY: Add section
>  -:  ------------ >  7:  bec94e780a3c man/man2const/IPV6_V6ONLY.2const: H=
ISTORY: Add first POSIX appearance of IPV6_V6ONLY(2const)
>  -:  ------------ >  8:  b8028fb93420 man/man3const/EOF.3const: HISTORY: =
Update first POSIX appearance of EOF(3const)
>  -:  ------------ >  9:  25f4fa02d941 man/man3const/EXIT_SUCCESS.3const: =
HISTORY: Split EXIT_SUCCESS(3const) and EXIT_FAILURE(3const)
>  -:  ------------ > 10:  0b59f68ab057 man/man3const/EXIT_SUCCESS.3const: =
HISTORY: Update first POSIX appearance of EXIT_SUCCESS(3const)
>  -:  ------------ > 11:  966063053cfe man/man3const/EXIT_SUCCESS.3const: =
HISTORY: Update first POSIX appearance of EXIT_FAILURE(3const)
>  -:  ------------ > 12:  bbd81741f759 man/man3const/NULL.3const: HISTORY:=
 Update first POSIX appearance of NULL(3const)
> --=20
> 2.47.3
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--epn6si3qcwthj2u7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlbzfsACgkQ64mZXMKQ
wqkxAQ//QBxqns5ynctX5XalRcUKtud17PUBMRvDIEngRkM4kX1Pd4mf0Eu9Q8La
n+JWWhXXs/VBA6T+FDph74vDuJ+Odxx++tjqqsGPuaV/rnFLgWtDx2Oq1R+ksjhp
DzJc1vEI/nLem+Pw7q1sU59blMpRqAvlaJjgJtf+QS4hP7SuTEKBg1I/G5a4eUXa
K0YP8sDXbIMCaH+d7HI582LYXDsrBRzARoJIX4dEt7AHUX67Nf7dD5wKOH6sJ5M0
a2ll7GqsDC7h9pUWFCqRQgl0Jwruv9+hEKrlpD1h/KtJk3vm8nfihBEZULFI16Yd
z7u/OhQZiyRS67+e5Tor2l16yl7mHgGHXfHkr6YilDQFvhee3th/BxDCK/JsoKad
sR101lTY5vIGaQz66HzJnkhMowthm12fnfEDnj5W3kMHiN2LwuHyrc7/7lQZANX/
yD4mey6acCDyPb1ItAOuOMlitOsZVGLBcgdbbwF9EiJDXr915qzGUbIJTKoWe21b
FtbkzYaJLzcW3fAXbhtz8Y7J2OH19DRK1almqwPqU9BBCYH00vMfATZ+H1xG8gY6
NJ9MQqCKDm+M2JNaeMEXNEvx7f8GRgVRYtSnTPR85ociG7AgC8om689oK0GRo9kE
BRJNVNkWVw5xGh/ryj9HTlsFykDWeFyzthtnh0wYPFNOoe3Grzs=
=kfre
-----END PGP SIGNATURE-----

--epn6si3qcwthj2u7--

