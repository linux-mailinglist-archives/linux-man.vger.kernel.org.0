Return-Path: <linux-man+bounces-3455-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DAAB290A3
	for <lists+linux-man@lfdr.de>; Sat, 16 Aug 2025 23:21:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3B6F27AAD5C
	for <lists+linux-man@lfdr.de>; Sat, 16 Aug 2025 21:20:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35D2322ACEF;
	Sat, 16 Aug 2025 21:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NF3J+j9Z"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9E392185AA
	for <linux-man@vger.kernel.org>; Sat, 16 Aug 2025 21:21:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755379300; cv=none; b=TbPlaCM3CeJtbqXumQmVpj14xkb/64H1TL7ISQGZqf2KA5NMRy4KrFaAoBtpW63h32tdXR9C5GYLI5GktmtYIe/QZ52p0AooF5ZX43rgSwgaRJQ8rcknkeoMFkMf+ZlbXXuJECIUCRABWnOW12tlSRveEOtj+mifmCRzYXdFRBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755379300; c=relaxed/simple;
	bh=2NbdCcMZow+QLcfXRGHFWuLME4e0zoSDmVCcXklDS4A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gd21ALS4LJv3IkhI3xfwW7XNgA5GzfpnQKBCTf82JxB4nT6TOZWjwwifTt/mnTRwrIt1foFGMKKadpAK7OstneKDro0wggz1iphnjjTCo+i38YQETSvHG3E4QulmbRxGlD+2dCgWfbIvruRo0jmNDa1u8g21bcxH+5eqfvrJ1Tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NF3J+j9Z; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3631C4CEEF;
	Sat, 16 Aug 2025 21:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755379298;
	bh=2NbdCcMZow+QLcfXRGHFWuLME4e0zoSDmVCcXklDS4A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NF3J+j9ZKbnqhc6bwfs7PRl/Ty0i95v1GYDchb6Klsds+gXSYaYWvTlNnldUk1DJK
	 SFbbJ8iasgQp5oOeIwe7HV2k0q5Iv/FKKBkmBpNaFp++QWjXVU6vc/3n9nRma6WDuf
	 z/X5Sm20aQgcJkIrPPirLUofLK8pOGxCt1BGGKIoLCTcdwY/3qO9LfNM+JaDtMqXlF
	 YgwxwVMBGlwXnmqIv1fY7Vq2xd/AVvZ1ufbl8Fgx1CAs+zGkkhNJsrVfv17TSuh9yj
	 FDIKwWn2SU7fYaJGtTzlao+mNm+IJiLWCs+fzbmJVEj4rv4PgEyO1cL1mpyY3unlMS
	 kNANJ/arZmARA==
Date: Sat, 16 Aug 2025 23:21:35 +0200
From: Alejandro Colomar <alx@kernel.org>
To: dave@treblig.org
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/mallinfo.3: Reduce MAX_ALLOCS
Message-ID: <r3l4gjreeimddrobyieqcxmvbuiijxwzp35nebyf4p6pweffzv@lxrnkneptbhx>
References: <20250816204252.63616-1-dave@treblig.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="syezkk7iasnhlbdr"
Content-Disposition: inline
In-Reply-To: <20250816204252.63616-1-dave@treblig.org>


--syezkk7iasnhlbdr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: dave@treblig.org
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/mallinfo.3: Reduce MAX_ALLOCS
References: <20250816204252.63616-1-dave@treblig.org>
MIME-Version: 1.0
In-Reply-To: <20250816204252.63616-1-dave@treblig.org>

On Sat, Aug 16, 2025 at 09:42:52PM +0100, dave@treblig.org wrote:
> From: "Dr. David Alan Gilbert" <dave@treblig.org>
>=20
> The current mallinfo2 example segfaults on 64bit Linux.
> This happens because it builds a large 'alloc' array
> on the stack, which is currently 2M entries, each of which
> is a pointer, so hitting 16MB which is more than the default
> Linux stack ulimit of 8MiB.
>=20
> Reduce it.
>=20
> Signed-off-by: Dr. David Alan Gilbert <dave@treblig.org>

Hi David,

I've applied the patch.  Thanks!
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3De7dab53687ed61b451eb1b5a2e46ac251f25c22c>


Have a lovely night!
Alex

> ---
>  man/man3/mallinfo.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man3/mallinfo.3 b/man/man3/mallinfo.3
> index 5e722e38e..0e1deb748 100644
> --- a/man/man3/mallinfo.3
> +++ b/man/man3/mallinfo.3
> @@ -282,7 +282,7 @@ .SS Program source
>  int
>  main(int argc, char *argv[])
>  {
> -#define MAX_ALLOCS 2000000
> +#define MAX_ALLOCS 500000
>      char *alloc[MAX_ALLOCS];
>      size_t blockSize, numBlocks, freeBegin, freeEnd, freeStep;
>  \&
> --=20
> 2.50.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--syezkk7iasnhlbdr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmig9l8ACgkQ64mZXMKQ
wqlp/xAAqIXuS7zbTjKyWrN6ajlrf4lQqJU6H1IfrLb7gn0gs7yW2hUY9J2VFgYf
65HbnWeu7+iFkBfq+tX0+FcfQtapuFot2+SPrMc7TpIoA2OIrW+uWIIfKoEnkSIs
BsiuI50iGOuwZ09AjgIyzg1k13q7EoZTYEyq6Gy2aeHMuSaqehR2rZJzx2Ojf3+X
CNUZGRdPq62kEomxSE8Hey63fwnDQ9H7iiCUzNEUb/v/gIN0DwHcr+/8cWydhniZ
aVpe2VQxNL6gR8RDXLi/PHMS/YoiJQC3IKXjjNTk9fyNQRLDdw3W4StHvrz30Qve
gGcLTE+cxdu9I1ksoF6ql9zwS6cYYeep+IS7Z1hneN3at5Pn1ovEpChiY3Rbjfcq
2O5TW5ND9DBQhsABMGfpNwNNMrVWkmDY7Lrn2lD86CPs0hNrn2vh+o272wD6tmiU
tlNJ2pgH63nABCT4CHSVVfjwlrlQS/NqkE5AlSTJ2ORfAMMyzJ0V6lYbZQJnuOvW
4ULgr0+rxlif3HBOau5bTFqxUabmHDbDix9ahXbU6YeHLWe5zs/ci8GW7E+L4Pag
hICHYcIvl95xjpeAy9SSKdoJaZyIWSB/DbSWuwGPAR8I32kY9RrL9oHgCzuaG/hY
fn9+Ku5UY2KZlhUpQlSJsN6eBHvxBqI6rMNdOgb40gsGPQghq6M=
=tCbX
-----END PGP SIGNATURE-----

--syezkk7iasnhlbdr--

