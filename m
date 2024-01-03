Return-Path: <linux-man+bounces-337-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7A08226A3
	for <lists+linux-man@lfdr.de>; Wed,  3 Jan 2024 02:49:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9FCDB2842FC
	for <lists+linux-man@lfdr.de>; Wed,  3 Jan 2024 01:49:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F1E11100;
	Wed,  3 Jan 2024 01:49:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALb1F441"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 026501365
	for <linux-man@vger.kernel.org>; Wed,  3 Jan 2024 01:49:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D164DC433C8;
	Wed,  3 Jan 2024 01:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704246575;
	bh=xZcInulvG6+nF/6OgLXT9PDX8zq7E0PsdueDGKE0jMo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ALb1F441NnBXlHlno++iNnMrTnrB4Tod3e/ua5PGPqSq0wIlQW+3a1FG73aY+VM+y
	 +iU7+ta915iHBtobMwCLKRKZop4tWFu9eVrHDfcMGSEf6RT3UYwOqlAmJ7ZUl5lhSw
	 XMMcvOHzEoGI4VwbXPU1FprwiCbKSWX7D4J3iHME1mr4XOVWeQtR5D9r6+N/cEHR8D
	 4HWqnIEjpb8DvvQ+4ilEJLqEf/SUIAbmrhqnPm3LSiF6pnZESWAA/00HK90E6xfuEb
	 qvos8SznCoUGlnGO82o213L9oxCkFonKuTPkFFfQiya+Co0tPviDcEHbuBW/gfqsyK
	 8y6egO4ErllGA==
Date: Wed, 3 Jan 2024 02:49:32 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Morten Welinder <mwelinder@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: frexp man page: FLT_RADIX vs. 2
Message-ID: <ZZS9LDDna5lnjA_K@debian>
References: <CANv4PNkqQBPn_oyfdYZfOck-7gGwzP6YPPA9hDaiaJPUj+c3xw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GQ4ivxxOIsK2jI0x"
Content-Disposition: inline
In-Reply-To: <CANv4PNkqQBPn_oyfdYZfOck-7gGwzP6YPPA9hDaiaJPUj+c3xw@mail.gmail.com>


--GQ4ivxxOIsK2jI0x
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 3 Jan 2024 02:49:32 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Morten Welinder <mwelinder@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: frexp man page: FLT_RADIX vs. 2

Hello Morten,

On Tue, Jan 02, 2024 at 08:29:08PM -0500, Morten Welinder wrote:
> A very minor bug:
>=20
> The main body of frexp's man page says the exponent returned is for a
> power of two. That agrees with, for example, the C99 standard as well
> as https://en.cppreference.com/w/cpp/numeric/math/frexp
>=20
> However, the sample program in the man page uses FLT_RADIX.  The value
> of that macro need not be 2 so the man page should be changed to use 2
> directly.

The value of that macro is defined to be 2; it can't have any other
value.

ISO C defines it in
<http://port70.net/~nsz/c/c11/n1570.html#5.2.4.2.2p11>.

POSIX defines it in
<https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/float.h.html>.

Maybe the definition of frexp() by ISO C and POSIX should be changed to
define it in terms of FLT_RADIX instead of 2.

Have a lovely day,
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--GQ4ivxxOIsK2jI0x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWUvSwACgkQnowa+77/
2zJLoA/9GzYo4TwBFNCxjkJq6E9K77e/ZRXbYvU+cGhU7uB9x0rZkZMZORFllzhj
+LTSKJf6fuhwHQpTJ2cjM1ZPGYD/ZDAThqVuTv8sjyL5Ye1p/Y162bonXSzWLzkc
rRfq0yIJ1TZq7Hd6AqIDDfCy/5PGST/mqJ0l08sD9vHz366AJGk0F/ff6LLZoAEk
iJQT8fkMUffM5cLRsUt4s12to7Dav6CpfIMKurj3MYn0xnP9xgAfGWbgiPvEMc9k
6iz+tGxRPOP4BffXM/fTIWkU67KafIBbQIrs+8wNdkZ1310er/t7NykAYUwUbZrU
JY4MAEbWNiD6+Tq0dbB8Hjbb4DtAN2glQrj32LzScs3T9MdkZ90GrLzFpDBzmhQE
il7TtrSR6M3qnXpV5ptO2Jnh1e5W50ZGcpZhJtGyiocLbZtlRZ6hKtzVvJ3kMbXc
cLa3brVX0XZw/LUe4UvH+j5+1zrBNrcGkCJZLaSH17SH0hxhmVuIlZWXjbOGqnFQ
4KteMnIBaEwjNQLbKf8zhwaWADj/wwZgKR7XKiPDNGGCp75UkmIH2+K9X0tWQKTA
Ng8KiL3/sJGwjOSss08Sdai+PoiawDjTKsdUa6S9MUV7rr6xIEw+GDNo/KfFicyv
USjoXIiPYkCCtk+SKxMAi3/nbldP3lwmWTz465QsdNV91xsKzXo=
=Bs6C
-----END PGP SIGNATURE-----

--GQ4ivxxOIsK2jI0x--

