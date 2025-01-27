Return-Path: <linux-man+bounces-2307-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 93087A1DC80
	for <lists+linux-man@lfdr.de>; Mon, 27 Jan 2025 20:10:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8B1277A4249
	for <lists+linux-man@lfdr.de>; Mon, 27 Jan 2025 19:10:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FD811925B6;
	Mon, 27 Jan 2025 19:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="UB0oHnL5"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE4115FD13
	for <linux-man@vger.kernel.org>; Mon, 27 Jan 2025 19:10:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738005015; cv=none; b=twEL/vcH5iVKAaq3UuLuW4RWcLEu1lZPxOCn8HMor7wgXwgKbuc+kHjd26xhscZXqGXuHq8aHL3iZfA/A/wGEi2i5QLR9PRmLAwf0QiVbKL6VxbnLH/TDam/q7GOOnX16d+wFJoZecn9+PNQZhnpSDoD64aFFg3pOIMa0MWjPI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738005015; c=relaxed/simple;
	bh=I8O9LMzlsLXLYemxCC7XmBdeLRB6w1R7kjqvx63WssQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H4u9/VJAtPyn/uH7EIC52EYiIyVkyfNA6wh26nTOds73aM9FJVpk0E/m5X42/OfiPr+Z8vQYRoJ5GXc+iJKuYtPerrHHANCW9mIiHo3USsGorVdJLRPGzzyDFW+B1gYlQX61IPajcb8Tc6Bout1JyisnI/EJVVAK0n8iHfAoSRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=UB0oHnL5; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1738005010;
	bh=I8O9LMzlsLXLYemxCC7XmBdeLRB6w1R7kjqvx63WssQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UB0oHnL5f6oqMNteZ6hLcvn7Z34H3eeuZmiGZ8UXsC1WBJsBKvrOPVZDnxteoAQtQ
	 hqmwyYahSkBBVEqOyplwVjWjrJaBaUiIk85i73YzJtZ83kaMIMNb7STg19IaIqt8vO
	 Jc6poJjtNoRGBrnWZIJ19UdmNDz7ayZSHlwFWBTLknYzyw+h+G0fNzKw9f36/jiADg
	 +G0c7A92yNTPcfgrLuhugfDqlykrdnteKt3c+pihEM1toyQggU9T8DnK5nXnMAMR3/
	 9VDgOu4By+aUNfz/tbW2t5m2cryNzmCCJ+Ax2WQKUKZckOKNkH8/J8V2bd/p2qwwd5
	 JP9XA+b5sy/6g==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id DAEEE60CC;
	Mon, 27 Jan 2025 20:10:10 +0100 (CET)
Date: Mon, 27 Jan 2025 20:10:10 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Jason Yundt <jason@jasonyundt.email>, 
	Florian Weimer <fweimer@redhat.com>, "G. Branden Robinson" <branden@debian.org>
Subject: Re: [PATCH v1] man/man7/pathname.7: Pathnames are opaque C strings
Message-ID: <pc6puqvi23matgg5lhs7fat5pitbula3thlb2fiedzclk6z6sl@tarta.nabijaczleweli.xyz>
References: <ru2mlbwytntlel3jwwjcumn4i3v65bishfymxemiwvqpeeddmt@tarta.nabijaczleweli.xyz>
 <b9f5079f6bdeb29594f8ac24bd2eb4289e562613.1738003465.git.alx@kernel.org>
 <6blf4yxrx7cyqubqdpkzbifqcnvpvobpicsinquhwcv5hcd666@tarta.nabijaczleweli.xyz>
 <sotummbpsajmtgakisnj6ppliot4pula67o7xbu3clsuhzrnkm@voadpeybyvct>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lp6utvdfyrvwncun"
Content-Disposition: inline
In-Reply-To: <sotummbpsajmtgakisnj6ppliot4pula67o7xbu3clsuhzrnkm@voadpeybyvct>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--lp6utvdfyrvwncun
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 27, 2025 at 08:05:13PM +0100, Alejandro Colomar wrote:
> On Mon, Jan 27, 2025 at 07:58:02PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> > On Mon, Jan 27, 2025 at 07:46:21PM +0100, Alejandro Colomar wrote:
> > > Thanks for the detailed response.  I applied this patch based on it.
> > > Does it sound good to you?  Please review.
> > Can't really find the base file for this,
> It's the contrib banch on my server:
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/l=
og/?h=3Dcontrib>
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/c=
ommit/?h=3Dcontrib&id=3Db9f5079f6bdeb29594f8ac24bd2eb4289e562613>
Looks sane;
idk about "limits.h(0p)" (it's limits.h(7POSIX) for me),
but there aren't other limits.h pages so whatever.

--lp6utvdfyrvwncun
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmeX2g4ACgkQvP0LAY0m
WPHbsxAAjx0x/Hxl/cWD5xHSTYkSpvI1UbN/Blqi+yPwupyzDBS/aDenIGwz4JQw
2UK8TACup0u7ZFosHrGtOSjy8ToXmlvwbBNWBVhymF/FxfAqLLSWB5/D8Tpw8VB8
8OyumF9C/ckLZM7AfWY2aTla0KMMnyTlIzet3sbzqjJmuFZi8LDTsGAVB5UFtaec
CAUg5eJyarJWh348LHmDLPAv91WBPeHwhXucgbjxjxcpcsnnJJqLjc4s6NK8J0AV
FvtykcqE5sS69mRVLB5Vq9v/mOWZYlQRE++G/VcW2FEhaCU7e+Qzie7kWziYxAQg
V7pe7txMDGrkxaKDfOCI5otJ2F/5SKX9x1RdFTKTOcPEvA7IUhrj8yKtrZqxK7eF
VU9AmcAm5kux79Cr4jpIQ6mvSNhH04WH4PEHkqPFJpILfN9RQz1JwMmuthOfZya6
QhMlWCTUS4851Vg4P65IzWDvS/N1kdzr7JYgy/Wn6/uIv3UsSQm5n9elxIzUQcAa
5dPHM/89K500Vzn16ZHRjDm3SlDlnwn896ZYMNY4bwgcd3R/nSPcN10SM8HjRDCf
rXNuf2CE9D4b9fjkIFygYDLE9owwaDTRrKKCXGqnfeq8QDDBfM/dcB516HXaBtyj
MXB/T62ZAylW20m3iGOzZX3zhBd+kVJ0UPChhxTvHOjvJNGJnm8=
=lFNp
-----END PGP SIGNATURE-----

--lp6utvdfyrvwncun--

