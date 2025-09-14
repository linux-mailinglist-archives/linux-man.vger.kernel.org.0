Return-Path: <linux-man+bounces-3861-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A00BB567DE
	for <lists+linux-man@lfdr.de>; Sun, 14 Sep 2025 13:22:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EF996189D748
	for <lists+linux-man@lfdr.de>; Sun, 14 Sep 2025 11:22:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0216247281;
	Sun, 14 Sep 2025 11:22:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u6Dc1MC6"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F8271CEAA3
	for <linux-man@vger.kernel.org>; Sun, 14 Sep 2025 11:22:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757848923; cv=none; b=nxEbBVRudz0Lxkrz+Nywi4zF6Je9Ez5a7nsu4osX8sm+QDhaPsDTtfURbqKjHgyMKCJ/ZehrMdI7uIFcLi6QvN4kV3Sm7wKI0U0IWwJcIuK35U3c1jQ1HT+qySr4ZkVoJYfhHl6jq2h5dRjk4nJVXEynzxZe3t32AeG1JYF5BTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757848923; c=relaxed/simple;
	bh=vdFEAq24N9SUwbwIXmOnn86Gb6E4w+ncC6l0ozIJMLg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T6A6OXhG5KR+tNYliuDlFrAmiOiWFCzygO/AgxoIMJOnjELTFeXX5T3JglEiNhudlwBvtpNUFjRZlBylrO5lgrcSAsgk0bj3fbbO1fOgalc160rI56S3+v9B9aaJ7ZgXNzAr6gFvCT/ro1G5w3KqUT46gVOr9zXio24HfnHfSE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u6Dc1MC6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8672EC4CEF0;
	Sun, 14 Sep 2025 11:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757848923;
	bh=vdFEAq24N9SUwbwIXmOnn86Gb6E4w+ncC6l0ozIJMLg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u6Dc1MC6fsHwMzd+DH2jNyGYwLMVk3uPGLAT4wIyl3rYlnd58Oy5w6BhSsik54+dE
	 ERyHNFvkuyBZ1cfJXPJyp5ntGvSj4YlGflP+N9QW9FMdxZOMQorwOJOjkqk+yLsPsa
	 5mPGSllxnJycF2iLIR/o12r9XmhQoM8CHz9q9V6uSZj7zjgDKhK1nIBBb8HfFrvy1o
	 ChBp/i0BHVg9Rq7jbMpLhs/xE8LbskGiz+5JedhnbutsQfrfEJFN+ON9/x+aih+FhG
	 QbDWUxIk/j3h3Ta7Y63/2xOVO3YKRFPTiQqKfCE6iMpsg89UXM21qJp+0iqSGuA58U
	 guU6cFYye5RBw==
Date: Sun, 14 Sep 2025 13:21:57 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Christoph Anton Mitterer <calestyo@scientia.org>
Cc: linux-man@vger.kernel.org
Subject: Re: locale(5): country_post CERT_MAILCODES?
Message-ID: <no2yfcq4fcahoaqtzrvqenat3bsbnilkzyin7zniljeuzbyy76@v7v6mnnfcq7w>
References: <3b8ab6fa7721a8bedc776bb92f70ad13139a2a5d.camel@scientia.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wvqxzwypns4si2nw"
Content-Disposition: inline
In-Reply-To: <3b8ab6fa7721a8bedc776bb92f70ad13139a2a5d.camel@scientia.org>


--wvqxzwypns4si2nw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Christoph Anton Mitterer <calestyo@scientia.org>
Cc: linux-man@vger.kernel.org
Subject: Re: locale(5): country_post CERT_MAILCODES?
References: <3b8ab6fa7721a8bedc776bb92f70ad13139a2a5d.camel@scientia.org>
MIME-Version: 1.0
In-Reply-To: <3b8ab6fa7721a8bedc776bb92f70ad13139a2a5d.camel@scientia.org>

On Fri, Sep 12, 2025 at 07:39:47PM +0200, Christoph Anton Mitterer wrote:
> Hey.

Hey Chris,

> The manpage says:
> >   country_post
> >     followed by the abbreviation of the country (see CERT_MAILCODES).
>=20
>=20
> I tried to find what these CERT_MAILCODES should be, but found not
> single reference.
>=20
> ISO/IEC TR 14652[0] on page 59 has:
> > country_post
> > The operand is a string with the abbreviation of the country, used
> > for
> > postal addresses, for example by the CEPT-MAILCODE codes
> > designating countries in Europe. Other abbreviation systems are also
> > allowed, and there is no specific way to identify which abbreviation
> > system is being used.
>=20
> And these CEPT mailcodes[1] actually seem to exist.
>=20
> Maybe the CERT_MAILCODES is just a typo?

Yep; it seems like a typo.

> Perhaps one should ask someone from glibc, though.

I think we can fix this as a typo.  If we are mistaken, which I find
unlikely, we would eventually realize, and can fix it then.

> Also, since the field doesn't seem to be *only* these CEPT codes, at
> least not according to the TR, one should perhaps write: "for example",
> rather than "see")?

Agree.  I've applied both the typo and the wording fixes.  Thanks!

> [0] https://www.open-std.org/jtc1/sc22/wg20/docs/n972-14652ft.pdf
> [1] https://www.cept.org/cept/cept-country-codes


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--wvqxzwypns4si2nw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjGpVUACgkQ64mZXMKQ
wqkx2Q//UGKG8sZx1UARmCqSr6zHdFKHprcaoQZA3bV4ZXQQtzfjWbBdT4cHHuGu
z08HmZN6Cp7zr4lDs+Q8N/vhGKTYcVXZkVP2STJMiGb1qsui+iiakiCtvG3y5VpJ
NX8MReCSjSHzO+Ty9Le2Sf5sEsVP5BubebBsgOxObzbO6WMqxHK7q3fVkRpVE1jS
fIiCw5qeRBVDyrZepzYaH32qYsC3kUd2qLJjGxgGxVw5omK0vquj/jGrkT9/7YMn
EmHeihayCpvTvty8pdnh1O2bB/Xnirer/3Yn06zbOelsBpxe8R87DmBvcWFN4GvS
eD2a+VvsVyyuqriJ3H/PoYfIS/7+xp4gAEOAcU2bIuYDVHFjr4Mzg8/bORadmuZk
PhMmEJoosS8JcUHEf6CpTPdJS6Wnoiz+WaMahlphYWz9duYjXzVKacMHOm1ly5/q
MefHj551gElQ2EwtEPQbFe6XaQrpa83utu09aEfOrDP16yrCdadaJorZtKZRsqWO
T1oYGCbgkIBFeD+B/nX39WaTJrFqWBqmj0eTxZfqwbSqo+73i/486HRnONvwo4A/
4qY5Vi1HiocGtgb6MVfM4iwyileixHgWe7ApjcUYmzuyuotz9pqBW81fZ7Nwjp1g
eUa7ygL5urx5NEcdUMy4J2I/vlIlM08WlFQRb3W7ewMqi14B/kw=
=2HRB
-----END PGP SIGNATURE-----

--wvqxzwypns4si2nw--

