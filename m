Return-Path: <linux-man+bounces-4547-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D55CDDD1C
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 14:29:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 98A0A3008CE8
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 13:29:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BEE62F12A5;
	Thu, 25 Dec 2025 13:29:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxgOJIAu"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFB6A2DCC13
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 13:29:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766669351; cv=none; b=ILST15oA+uNSEvHEAP2ICBk9+jGwK/VVgpdkYCUCAeJaM+SEAWHLEZvybJtsruzznXw1b6ZJR0hoqFn7iVXrBXHzFbmyjpD50RO6aEKBPQHNGWU1Xq0P/dQzTX2d2KGe9lLauX5kGcGs8cGxnIsnXBwcJwNqYfPGdeBBwSdfaD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766669351; c=relaxed/simple;
	bh=RYPIyP866+5qr0gVl2DxsuNe35MRiKC3jVGDQmLGxXs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bmnsG+HT+qlmzy9PnP+kPSr3q5jX5hQcOCGF2hOkj8IZ/P0Q25rqxW8jqumshyySKbNzlwUwljnKF5DoEy8MUq6rEI5DyzO81ebsDO7luVXhCmELhSQirZhyZzlNGWvCqrNH/WjRoBAz02W5M7cIC6WaehEpFJoiPGlqJKQTmhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxgOJIAu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66BC6C4CEF1;
	Thu, 25 Dec 2025 13:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766669351;
	bh=RYPIyP866+5qr0gVl2DxsuNe35MRiKC3jVGDQmLGxXs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mxgOJIAuhMeifIsBIJVnKnz5gRn5/HJuS872bvriTRAsDqXpA/AdZ3mqOuWf5BOyR
	 zAfwpXjBJ/NKwy8FsfV+CtHFcBu1+WNFEGNgEpE21Pi1HL49NikViNh9JCE/EfJM40
	 wowD1AKbgCK1fWB6idMZFG/DP3Fg+aGXc7HkjhYWGqHzPsaVTJtlWoMof1MVeIrN8t
	 Z9WKGZEFPb6q4nvNyp3+61XemPFqz7J81SEkJFKqRPJFF8VEGUf1jmFAyTTDh+kg93
	 aEQpGsJFWe3rqVE0/wX3KUakeeJc+fdOsJdFNHNJ04qKbf/mZYLmFY9YSJNWwJcghi
	 785/8chMWlpnA==
Date: Thu, 25 Dec 2025 14:29:08 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page fma.3
Message-ID: <aU07-d_JMzS3mB7e@devuan>
References: <aUv64cN0_EE0VVlM@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="s7yp2jx6mmt6dvdx"
Content-Disposition: inline
In-Reply-To: <aUv64cN0_EE0VVlM@meinfjell.helgefjelltest.de>


--s7yp2jx6mmt6dvdx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page fma.3
Message-ID: <aU07-d_JMzS3mB7e@devuan>
References: <aUv64cN0_EE0VVlM@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUv64cN0_EE0VVlM@meinfjell.helgefjelltest.de>

Hi Helge,

On Wed, Dec 24, 2025 at 02:38:25PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    According to above, a domain error also occurs when I<z> is a N=
aN?
>=20
> "Domain error: I<x> * I<y> + I<z>, or I<x> * I<y> is invalid and I<z> is =
not a NaN"

I think this was fixed in

	$ git show e86f9fd0c279f593242969a2fbb5ef379272d89d
	commit e86f9fd0c279f593242969a2fbb5ef379272d89d
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Wed Sep 3 16:14:10 2025 +0200

	    man/man3/fma.3: ERRORS: Add missing error
	   =20
	    There's also a domain error if z is a NaN, so let's simplify wording.
	    See the comments in the source code, which remind that POSIX doesn't
	    mandate some of this, so this is GNU-specific.
	   =20
	    Reported-by: Helge Kreutzmann <debian@helgefjell.de>
	    Suggested-by: Adam Sampson <ats@offog.org>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man3/fma.3 b/man/man3/fma.3
	index fa0562858..433f1e2ee 100644
	--- a/man/man3/fma.3
	+++ b/man/man3/fma.3
	@@ -107,8 +107,8 @@ .SH ERRORS
	 .P
	 The following errors can occur:
	 .TP
	-Domain error: \f[I]x * y + z\f[], \
	-or \f[I]x * y\f[] is invalid and \f[I]z\f[] is not a NaN
	+Domain error: \f[I]x * y + z\f[] \
	+or \f[I]x * y\f[] is invalid.
	 .\" .I errno
	 .\" is set to
	 .\" .BR EDOM .

but please revise in case there's still anything that needs to be fixed.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--s7yp2jx6mmt6dvdx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlNPCMACgkQ64mZXMKQ
wqmeQxAAtxLafjTxibKEHGq1mBOS9RBrVYDIhx050C6D4H7WPId80tyA0CMlEpTL
ay5rSVuZyyuYKrzbnKwMGUh4Wn8sIcQ9Z4dizESApzc6vV0a20fI602fDHYF1bD0
+3vsibwVKPGU9VBRZBD0EfBVqVhhwdEYeZf09DB4/ONId0bdIvQ1MMbeJ7/R6Kyt
yA6emmipjCzp58iEA98wAtxaVikgE5UL6BlaMCx/9NMQfQaWkLt0loyT6oQvJXrA
M58LotWliwx4+Cico8tL6qNV4Hos8nK6EvYqZt+OZI9RKZk5CXF/M4wS29WXGjWz
AwbrNhMaydEUpH+az4u458fqlmuRLrB6g63ABvWQw0AsASHjAkx23hpJquRXzjjT
A8bgrktdqHY83ockj1/y+kH1IiGtplmAxSYHJ5XOuCpwWJ7ZWzfZH8/XXagjb1PT
6kPKT7wDjRRp7GW/YxmCZfJizsV8wCjFv6xQP35nCe60+9bwgQk+J5PxaiNSqDb0
WK4gPpSj434J9ZaTHtd9+VS3hRR1Plzr8LGI8b8I8RJNAPberO29BFzqlMnC2czE
0rsCGuvpAXHl+R3sGwIAxRUbSaY+ID4i4wsIjHPWDX5LvO4CSWkEQ6efE/TIypjb
7dWKL3oxF0x3d2J+XdVBtUHtJDH5q9oXvDwv5caQYO6FjZwbzJM=
=4ENR
-----END PGP SIGNATURE-----

--s7yp2jx6mmt6dvdx--

