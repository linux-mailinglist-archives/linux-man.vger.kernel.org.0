Return-Path: <linux-man+bounces-2297-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1BCA1CE6C
	for <lists+linux-man@lfdr.de>; Sun, 26 Jan 2025 21:33:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 51CC41668D0
	for <lists+linux-man@lfdr.de>; Sun, 26 Jan 2025 20:33:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58FB078F46;
	Sun, 26 Jan 2025 20:33:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fourp8cL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1611925A658
	for <linux-man@vger.kernel.org>; Sun, 26 Jan 2025 20:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737923629; cv=none; b=U2GjwxjY1pqCJtFPSsDRuJpn0qZ8flW2cEPYtUwLDq5/0opp0tfx/SpxPR+3E9mrZygnrXnlamdSrF11Yn/Wu4zZfsPCuXWIPvVd9+9V2V+ZzpZAtvmZwSADfCFbCDUWceiPv6S7imDjPtPqKpphEtltZt1YMxxRQrjTbj2maOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737923629; c=relaxed/simple;
	bh=vagJPF3pBQkyAJnTtAucQlcbWJHn91K0NYXVDmQkF5Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ox/TmnvGZyowr/RWE4d6uGrOmeBsikwciNmj53omJVmwbwjYUpftIlLMz9aUogStDBeqYkJe/2aodR8zpKjeKwHpd388nbad/XoyIHf57xYjD8D3sBJoThtZwcnD2lORhZ6jTuCIzuTpX9ehX4su8da6O+zK+t4SYMOoJjQREf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fourp8cL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4E3CC4CED3;
	Sun, 26 Jan 2025 20:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737923628;
	bh=vagJPF3pBQkyAJnTtAucQlcbWJHn91K0NYXVDmQkF5Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fourp8cLsdymQnVQGGEUuWDBW3Y6HuG1WVvNw1VTZS9xe2bSeWsstzPFNWHy5A18B
	 rIFikAGKzS7waWPJ4nog87u5zu6wlecGlxmprWFbEh3daFAUSvLKYEF3CXyUq4fXW7
	 tjuaF1zo/lLb4p7N6gk4hH8zGkNnbMpkz6bz0b/+Oypz+4CR9aUMrQXBNWPeOZMolo
	 2TslqOydv0K5OrUNxxz6VWSwVGNMDZehiwKJjr1ymORtE8YvonLtcwR8eYCLFfjN9u
	 0OqXDvBgwSz1NKb7irQ9k8wC/Ok43wTX2kZTgwidQn1kTuARpHO9tlKplswZp1YUBn
	 4zI8DCpBzxpzA==
Date: Sun, 26 Jan 2025 21:34:06 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Brian.Inglis@systematicsw.ab.ca
Subject: Re: man-pages-6.10 released
Message-ID: <uz4ve2croztfwchqy7xtgmbnr2kkmzxbctgk4wwhhesktjcpvp@mu57vuzkpt4d>
References: <glkd5bliwzofuoevcr5uqxkkebrwnwfqxiea4dblnjjj24sl72@22f5lir52umy>
 <34ff2ea5-cf9f-4401-8fd9-7292a4b4b4d1@SystematicSW.ab.ca>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7cpxitosuqz3agl2"
Content-Disposition: inline
In-Reply-To: <34ff2ea5-cf9f-4401-8fd9-7292a4b4b4d1@SystematicSW.ab.ca>


--7cpxitosuqz3agl2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Brian.Inglis@systematicsw.ab.ca
Subject: Re: man-pages-6.10 released
References: <glkd5bliwzofuoevcr5uqxkkebrwnwfqxiea4dblnjjj24sl72@22f5lir52umy>
 <34ff2ea5-cf9f-4401-8fd9-7292a4b4b4d1@SystematicSW.ab.ca>
MIME-Version: 1.0
In-Reply-To: <34ff2ea5-cf9f-4401-8fd9-7292a4b4b4d1@SystematicSW.ab.ca>

Hi Brian!

On Sun, Jan 26, 2025 at 12:20:08PM -0700, Brian Inglis wrote:
> On 2025-01-22 15:26, Alejandro Colomar wrote:
> > Gidday!
> >=20
> > I'm proud to announce:
> >=20
> > 	man-pages-6.10 - manual pages for GNU/Linux
> >=20
> > I'm also very happy to announce that I'm back to maintaining this
> > project.  My work on this project, this release, and many more to come,
> > have been possible thanks to our sponsors.  Thank you very much!
> >=20
> > 	-  Adfinis		<https://adfinis.com/>
> > 	-  Google		<https://opensource.google/>
> > 	-  Hudson River Trading	<https://www.hudsonrivertrading.com/>
> > 	-  Meta			<https://www.meta.com/>
> > 	-  Red Hat		<https://www.redhat.com/>
>=20
> Hi Alex,
>=20
> Welcome back!
>=20
> Thanks for the new release.

:-)

>=20
> But *last* year is in your release notice and "Changes" document:

<facepalm>

Thanks!  I've fixed it now:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D43c1b600933d6c5f64ca0a08a6a848ec19cbdeec>

>=20
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Changes in=
 man-pages-6.10 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >=20
> > Released: 2024-01-22, Aldaya
> ...
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Linux Soft=
ware Map =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
> >=20
> > Begin4
> > Title:          Linux man-pages
> > Version:        6.10
> > Entered-date:   2025-01-22
>=20
> ```
> $ head -3 /usr/share/doc/man-pages-linux/Changes
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Changes in m=
an-pages-6.10 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> Released: 2024-01-22, Aldaya
> ```
>=20
> Cheers!
>=20
> [Since the release of Single UNIX=C2=AE Specification Version 5, POSIX=C2=
=AE.1-2024,
> IEEE Std 1003.1=E2=84=A2-2024 Edition, The =C2=AEOpen Group Base Specific=
ations Issue 8,
> and
> ISO=C2=AE/IEC DIS 9945 Information technology - Portable Operating System
> Interface (POSIX=C2=AE) base specifications - Issue 8 (ISO=C2=AE/IEC 9945=
:2025 pending
> approval), are you still interested in updating the POSIX man pages, and
> have you heard any more from the Austin Group, or reached out to them?]

Yes, I am very interested.  I heard from them a long time ago, but they
haven't come back to me.  Does anyone have a contact there?

Also, I'll be at FOSDEM next weekend.  If anyone is interested in
meeting me there, please let me know.  It would be a good date to talk
about things like this.

In any case, I'll try to ping some POSIX people.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--7cpxitosuqz3agl2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeWnD0ACgkQnowa+77/
2zKdyg//QLvW0TnoK1UDFsn1AYGp3MnoQY5ItYdsM02Yy3bKP/MNXHH69WYIb4so
hur+PUt3/zJBMkh8ZB0P4vyfIEECCqqx9kW1ltDhAjeoL8ybrWuOeNMsifRdvK+l
YO0onlJ9zOHlt0js3HswgrUQqQV4ktS+WuRPmciAXEIP0DTBwR6hYVFXrPAN2804
fiPbOp9AOA7A6vmkdLoedAZtZzJkA5ShSkvNNQNhYL/I3xA5t4Z86u7NSOsw4p8N
WzP5/Yllisl7t+5vI2dDnCopNrPyiJZImV2gjcuSWJKv2HnWVrnLbjAgwtS1KbkS
Wa2bJWQdhXgZHy10dV4YCj2lABg7y6rkMGi9piLu0Z8M3ly77Mr/MqYHnK2Tbjky
zvAmiGyde6aAWD/PmkMiyVD+2iO4cDs0dWo394A8MievY0ALCzmWteSfPhmbyqRv
+C1Jun3h8nGuJYuXwf2jPiZoZf8GfaWtl11VuGwr9Ho4LgMu2RctnevP2wFCFUde
hcLDx5fr3npkpA3yKVu5AQlDoWxHYZUVXSPaXhHwzfI/6cR4XQ3XGh5VDDXY1EsQ
5TGvn3xaCVK/CPNR71CCQQ7MJjKajiWJOxGQfqgsgQulTs3GyhZO4UBTRRqVf986
Q3sFbGJKHEjKGiivSJYLqMFqpRDdxG0s1wQgI+NEbujrBvCtTWs=
=gm8l
-----END PGP SIGNATURE-----

--7cpxitosuqz3agl2--

