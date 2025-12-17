Return-Path: <linux-man+bounces-4432-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A282FCC7DFE
	for <lists+linux-man@lfdr.de>; Wed, 17 Dec 2025 14:39:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BF0823059687
	for <lists+linux-man@lfdr.de>; Wed, 17 Dec 2025 13:37:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C6F535B135;
	Wed, 17 Dec 2025 13:28:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZFrZ5Ip"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D8435B132
	for <linux-man@vger.kernel.org>; Wed, 17 Dec 2025 13:28:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765978121; cv=none; b=sPY9vHKVfSqlc0XFIaxqj2W2okiLdmtexkxuUk5yM+BPoKe9/JHefTj//pmf1Wbe+OH8i2QQeZ8teZzNS7CGkIIToxrA+7+FrHQTHO7+xYiPageUqNpFc0hizaLmMiXzW6WW9LfrLdYaMD94p/ZtzKKSzAydsb4/uBH5ltAy/Sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765978121; c=relaxed/simple;
	bh=sfKKSeUk1k8VXrLkkV4bH6t0sjUkguva3GXRK2wxHZE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h0eNtyQHkj/tVycuFCRpYLBnSkbG1iQpbNDChqfSxnKq6VLcOGRDBJtGA+Fsedk3CxNGTe6ijHeVCqqNVqaNTdvkXKPXwpQOuHjblTzGYzubLu11eD4HRoQgFQETJxpvR0iWh2weGEPsp62rHhzNUVR82rIe2AsVG/Jfu9ZZous=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZFrZ5Ip; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23CB1C113D0;
	Wed, 17 Dec 2025 13:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765978120;
	bh=sfKKSeUk1k8VXrLkkV4bH6t0sjUkguva3GXRK2wxHZE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XZFrZ5IpgehkIOWLumlS5H1ue2KMidvx7pkcFxu3n/4kWbjxwjYLDy1l48r6Z+ScT
	 khjkXlrYjKbw9f2bADZaRJQH/KV33BEoVdS8O0+BVrLcD5q/6nVW0eJNLW0u/JqLLC
	 kY78eeDPyRxZDYs+kmDE4NXxM4+Y5ByzzqJFP1CSVxZovCRY1IOlC1wFZd+aa6OtXN
	 lhVAk9SkY7eWsMwA+J3S28bjWbxqxC+8YmpN1WxuzXTRvukAQUwfd+XKf9If18038j
	 KjjNMj6+IyVi3zSMTvQOYuM+9Cl6yebCCaj6rLrYhihrJllSZoA0jT8rF+Sa8oqXQM
	 uxdk1i4LFrfvg==
Date: Wed, 17 Dec 2025 14:28:36 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org, Eugene Syromyatnikov <evgsyr@gmail.com>, 
	Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, Paul Floyd <pjfloyd@wanadoo.fr>, 
	John Scott <jscott@posteo.net>, misc@openbsd.org
Subject: Re: [PATCH v2 00/14] man/man3/posix_memalign.3: Several fixes, and
 split the page
Message-ID: <dsvd4vko5wh2yq3y7yfutmy2ghnuryyxcwjxa5hdj2l7a5xkox@ndt42hs6zvs4>
References: <cover.1765370035.git.alx@kernel.org>
 <cover.1765809415.git.alx@kernel.org>
 <BNxvXNxDPLUlfS9uEgxC0SDT-Wnm3wASD8N9gP1CTQzTYHN1BIhAxneXfbP2JuIWZxB5n0p8mqWppRKDuZcj_izoyouvX5T6bBltSIdOJWc=@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="c3a2azzjwqbcm3pl"
Content-Disposition: inline
In-Reply-To: <BNxvXNxDPLUlfS9uEgxC0SDT-Wnm3wASD8N9gP1CTQzTYHN1BIhAxneXfbP2JuIWZxB5n0p8mqWppRKDuZcj_izoyouvX5T6bBltSIdOJWc=@pm.me>


--c3a2azzjwqbcm3pl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org, Eugene Syromyatnikov <evgsyr@gmail.com>, 
	Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, Paul Floyd <pjfloyd@wanadoo.fr>, 
	John Scott <jscott@posteo.net>, misc@openbsd.org
Subject: Re: [PATCH v2 00/14] man/man3/posix_memalign.3: Several fixes, and
 split the page
Message-ID: <dsvd4vko5wh2yq3y7yfutmy2ghnuryyxcwjxa5hdj2l7a5xkox@ndt42hs6zvs4>
References: <cover.1765370035.git.alx@kernel.org>
 <cover.1765809415.git.alx@kernel.org>
 <BNxvXNxDPLUlfS9uEgxC0SDT-Wnm3wASD8N9gP1CTQzTYHN1BIhAxneXfbP2JuIWZxB5n0p8mqWppRKDuZcj_izoyouvX5T6bBltSIdOJWc=@pm.me>
MIME-Version: 1.0
In-Reply-To: <BNxvXNxDPLUlfS9uEgxC0SDT-Wnm3wASD8N9gP1CTQzTYHN1BIhAxneXfbP2JuIWZxB5n0p8mqWppRKDuZcj_izoyouvX5T6bBltSIdOJWc=@pm.me>

On Wed, Dec 17, 2025 at 01:03:27PM +0000, Seth McDonald wrote:
> G'day (or night, as I'm writing this),

G'day Seth!

> On Tuesday, 16 December 2025 at 00:41, Alejandro Colomar <alx@kernel.org>=
 wrote:
> > Hi!
> >=20

Since nobody complained about patches 1..13, I've pushed them.  I'll
continue work on patch 14.

>=20
> > In v2, I've removed the explicit sentence saying that one should use
> > aligned_alloc(3) instead of memalign(3).
> >=20
>=20
> > I've also documented that C11 had a bogus specification for
> > aligned_alloc(3), and that OpenBSD still implements that (although at
> > least, they don't exploit the UB). I've CCed them, in case they're not
> > aware that C17 fixed those issues.
> >=20
>=20
> > I've documented that while the C11 specification had a lot of UB, no
> > implementation has ever implemented that, and so it's just theoretical
> > (and thankfully extinct) UB.
>=20
> I had a look at FreeBSD's documentation for aligned_alloc(3) - which is
> just jemalloc's manual - and it does explicitly specify the C11
> undefined behaviour.[1]
>=20
> "The aligned_alloc() function allocates size bytes of memory such that
> the allocation's base address is a multiple of alignment. The requested
> alignment must be a power of 2. Behavior is undefined if size is not an
> integral multiple of alignment."
>=20
> However, I have spent a while going over FreeBSD's (jemalloc's)
> implementation of aligned_alloc(3), and as far as I can tell, it
> appears to work as expected even when size is not a multiple of
> alignment. So it seems the man page is just repeating the C11 standard
> to conform to it (though the page doesn't specify this conformance,
> strangely enough).
>=20
> Even so, it may be useful to also document FreeBSD's nominal undefined
> behaviour in addition to OpenBSD. Perhaps emphasising how jemalloc
> doesn't actually exploit this undefined behaviour, and never will given
> the project's recent retirement. Thereby meaning the point about C11's
> extinct undefined behaviour should still stand.
>=20
> This would also prevent people (like myself, I imagine) from thinking
> that the Linux man page is potentially outdated due to seemingly not
> knowing about FreeBSD's (ostensible, but documented) undefined
> behaviour.

Thanks!  I'll send a revised patch in a moment.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--c3a2azzjwqbcm3pl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlCsAQACgkQ64mZXMKQ
wqn8AxAAp3nr0a3BpP3g3tiYXDEgQkqXG+SKKgfPp1quEL9O6bSWOJ/Oj4L+Nafc
64efG+RLcoCOnI6hrfkJKC8gDwbjbOvlQm5ZjhFyadgPDq1Z0HwmBXJ5QsPPqs0s
Z1OZRdrb7eD07hU/EYSgeU6dSxVyP/9rc5WYZGRur9xYMurrIwne/mjNLqgfnX2F
W8YM3eGfXS4HLKYZt6+Ma9O98habEGqBkhLcn5oHfq6RHtrdRnkeJmKUC2EHQUTW
gbXgH8CCp8QuWw1nrgSLFeb1ZPZyPS4aPzJrt5YiYv8rdz50j/KP4XAx4RQFkRR2
ydfayHJMaQUQG/q3ryqdAp2z0/6MyHpw7xIIW3GdPG7B8zBrjkkMkli/nfvdyMpT
kp3ddcZ1j4WTAclzVtpZIYM6a88gRgUklgI8bwEH1iilCqzXGHz6d6yzz8blW8HR
0PB+zSDjOWrTqjtEhCmO0hRLZ5pod26Kh1/X/ycfF2lpEAOlxujGwuHtfrXP+ugr
JMFr94pPj4Jlr1Op0XeLPkVkO08nwN2Wpag2fZ+XVOBIwnG+h5+07D+jQeX4fwX+
G/fAdRtK1Bl+bzkhDk39grZz/1nUDwozqNmQKa4ULO9SMCezHdxnh1j3yzyi/VGy
sN9cmTFUxP/lPyrtd0M1lSOdNzr6MmJY2WJ1npAqsvoqdA5AKdg=
=tcl0
-----END PGP SIGNATURE-----

--c3a2azzjwqbcm3pl--

