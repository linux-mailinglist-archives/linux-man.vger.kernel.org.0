Return-Path: <linux-man+bounces-4546-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD52CDDCFB
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 14:27:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3EC6E30087B2
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 13:27:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B684A31A812;
	Thu, 25 Dec 2025 13:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bEKQX37+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72FA52EE5FC
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 13:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766669253; cv=none; b=d2kr6JGVOm6FqKwBpYjWPJkgvonM2CgkRumTbq3A1zVQLpq97qr4o4z1aocnqnDNRL3lEvpRn2vhecM3lZ88R80TIpslsN34I8fGvgyMXNIQy85auVCOaGVplnGSLCFQmMHaA/GTlMR5NuzIUqOB7tfdZvteIAe7g6v3uGuoWtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766669253; c=relaxed/simple;
	bh=teIRc9y7Wl7tarNl7gUE2/nXGUUUlIDSAXD4eazuxWM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BFa5ncO0SjwJT97vrW97cUNCa6wU7FUmpqR/UQb4mEl2Rqt74sPeTXSdGYfQ2LuQUlKZ+Ie9vGyEQrZUQ0O8IWhvtXEM10jOjMRlGTCUQdYVkXM4kYT93H90YgjRMXTlcstz0l2zfGCzqF9fbcoPkzoY76OX2z3c7SKS66HQFRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bEKQX37+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74F19C4CEF1;
	Thu, 25 Dec 2025 13:27:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766669253;
	bh=teIRc9y7Wl7tarNl7gUE2/nXGUUUlIDSAXD4eazuxWM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bEKQX37+Up9CHyxq+OxncOuVPkjiNNi1d6b0uqtcJ2cGrRBOH4ZpOSGiBR8RT/g1P
	 CJz736GF9nAUDCmKEq/s+LSlO3YUKzWFlT3kW9ncxXac9FnWu5AxP0fJbOfRXy0TPZ
	 VBX2sNxd4ajSnph+Pg5pRAYuYzRN+scfqSzs89PbJ8v/or1atkf4oPmP+YKgBjbtFw
	 I+TwBmIW4V4sTY04KkdiKi7LzsaA8CU+BS9OpACQ2g8qS9jympzEyR8XIpW67cj4HN
	 9F2+T/iOBGkASzppwUdSuzlBbtgU+hSv8IcFWwPZFQcXT1y0mqi0ncMioZv8PfubnY
	 1pK1RYX846AyA==
Date: Thu, 25 Dec 2025 14:27:30 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  timespec_get.3
Message-ID: <aU07uW8bFJnx1Gab@devuan>
References: <aUv64coBiLDIm9NP@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tsaffhqa3ucs7iwz"
Content-Disposition: inline
In-Reply-To: <aUv64coBiLDIm9NP@meinfjell.helgefjelltest.de>


--tsaffhqa3ucs7iwz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  timespec_get.3
Message-ID: <aU07uW8bFJnx1Gab@devuan>
References: <aUv64coBiLDIm9NP@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUv64coBiLDIm9NP@meinfjell.helgefjelltest.de>

On Wed, Dec 24, 2025 at 02:38:25PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:     No trailing comma
>=20
> "Standard C library (I<libc>,\\ I<-lc>),"

Thanks!  Fixed.

>=20

--=20
<https://www.alejandro-colomar.es>

--tsaffhqa3ucs7iwz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlNO8EACgkQ64mZXMKQ
wqklwg//QslQ3QoCTWQZtFguni99UIGLamAT0kiE0NA/6VOeNNNplenTE6Vq78vk
W/dTD/6j64Dxmn1LTDPB1f/TJZWr7mFKz2szzJdRXr9SsvETvbLe3L5gZrC5rwZg
vy/V0EZc2vCEf76MqcXlHaFakTEx5yqwuL2Zeg9VT69eBH2mJhNN3Kx78xIWkXUM
Aunls6RcZahMJQbn1uVf8EV6wEBL1EybbFPPSX4M7hRV22+QoPye7v2XaZdAdIdD
5Su6YxZ+Dh90j8Vrs9gQ4Xi1hhqi32BdsKq3PgsZmfVZQ+n+HiuL6muK+Sz2vL5S
Sf3Mi3e4ZjHIMssUwO4zxUQnuVif8K2rzRdDg/3Y+h+/mdLRc/ij5cb4eAiKvCip
jDdk7FoQLB3OaNCqj6DlKfodDmN/uIFJHiUEMv8pWqVo1sARxOwQxAqbvm0Zxn7N
SPANV2Fnmq5lvyz1fJHsY0KarDI2MJ0vA+aVJwKTR0h6SLa6Sud91h4YGZi51Gwh
/QRPnu+b+1U6twpATd1uiPCLtCIknXlkifDslSSfOQrFzaHv+EN8aQbehIXZDI3b
ZgKndG+KWRkldiiT5cDZ6fMHQzR1EBfPhcoUA9FUqMQSEFxvQG5BshcwtFUq45MX
f48cxZ49/rzqoIKi+AEPG/JhiatFaD78LFX//zfRjuNuVNdnDZw=
=BeEe
-----END PGP SIGNATURE-----

--tsaffhqa3ucs7iwz--

