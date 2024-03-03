Return-Path: <linux-man+bounces-503-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC44A86F4CE
	for <lists+linux-man@lfdr.de>; Sun,  3 Mar 2024 13:21:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CEEB0B2319D
	for <lists+linux-man@lfdr.de>; Sun,  3 Mar 2024 12:21:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9940BE5A;
	Sun,  3 Mar 2024 12:21:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R5nzvH2R"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692461170D
	for <linux-man@vger.kernel.org>; Sun,  3 Mar 2024 12:21:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709468490; cv=none; b=HvwH8NI0MoQp1thpWn7aFw+MPM+3Nf/4tgOQFzLd6xIlLNmnL1WemB5znsk3vfI9IbuBdHsWPUs9Gfq6iS4iydnTn69zbgWPjt2w9dcqh1SbWPBBj5SVy+KA/M7YI9hWVVnLTmeJ1CgR5Z+1npi79r6/cRAeaIIn/Cy2GCHLR8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709468490; c=relaxed/simple;
	bh=slc+CtOKURwwqj9Yi/EptW4ZieJDJE0dx0I7I1vIzys=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FaoTrMRIq+59yPIIPCG3k1OzJtw81r/QAk9BrhRtXip0PfMhsPLLawdx64GflLxl7hkPYS57/Zz+7QXH4srNIL98h1Wt7XD+aQ6R2dsA7TbyKAQKpR5E3Nmz0pJQRdcbQF2E8wC/Ft1oDxr1QE2odzb8SfZhKUHpYZW7UsmmzsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R5nzvH2R; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7812CC433F1;
	Sun,  3 Mar 2024 12:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709468489;
	bh=slc+CtOKURwwqj9Yi/EptW4ZieJDJE0dx0I7I1vIzys=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=R5nzvH2ROyg6dPc9EajB3q/q72Hjt/+nBUGtcm6shRfISRNKzO/PC1CmrxMF9OFQp
	 D1mNMbsMAm4VzImnimTEfKnVKab0RZi6BMopRtoJjhqbPHCHaMqzaAshMCvVxiypAs
	 Y3a66WkiJCdS1HVm7w1GM84CiYXt0hWMVs/LSIw6haFwOkhT+Eg03vybHPGPPPbUV2
	 TFrofzSBKyjr/SUP+iXO2mtgx3va6+h3EPjru6q9TXh7TdkaJUrCjD79SkDhwkCB6d
	 z682ohgdgFcWQU2nwbcG+Css+7BuGpB605V/79oIz6mTZQKE4HwRqc8RLG67FE8+jX
	 V4q5+eCZMc9QQ==
Date: Sun, 3 Mar 2024 13:21:25 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Lefevre <vincent@vinc17.net>,
	Morten Welinder <mwelinder@gmail.com>, linux-man@vger.kernel.org,
	libc-alpha@sourceware.org, jsm-csl@polyomino.org.uk,
	newbie-02@gmx.de
Subject: Re: Man page issues: logb, significand, cbrt, log2, log10, exp10
Message-ID: <ZeRrRgEvvxjvHi-K@debian>
References: <CANv4PNkVv_0eLgiSP3L_KfC-eZJaVLZ5AP1AGfD0GNrR5M4Hrg@mail.gmail.com>
 <ZeEnJB96mMC5bfBz@debian>
 <CANv4PNmMpiwfv5acr7U6VEVe7PE_AMTzkkpNoNN9jrtVzk_93Q@mail.gmail.com>
 <ZeOgFPCtzqY90kIR@debian>
 <CANv4PNm0xvB-GVb+z1yXPRVfeZYHU9533+VRTQfysjaycSbHBw@mail.gmail.com>
 <ZePerBa3QAvoFVSR@debian>
 <20240303114600.GA3653@qaa.vinc17.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tubtEdBDjeqjUcqK"
Content-Disposition: inline
In-Reply-To: <20240303114600.GA3653@qaa.vinc17.org>


--tubtEdBDjeqjUcqK
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 3 Mar 2024 13:21:25 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Lefevre <vincent@vinc17.net>,
	Morten Welinder <mwelinder@gmail.com>, linux-man@vger.kernel.org,
	libc-alpha@sourceware.org, jsm-csl@polyomino.org.uk,
	newbie-02@gmx.de
Subject: Re: Man page issues: logb, significand, cbrt, log2, log10, exp10

Hi Vincent,

On Sun, Mar 03, 2024 at 12:46:00PM +0100, Vincent Lefevre wrote:
> On 2024-03-03 03:21:26 +0100, Alejandro Colomar wrote:
> > Maybe just add some headers to core-math, and package it as a
> > standalone library.
>=20
> The issue is that it is not portable yet.

Well, one could package it just to the systems to which it is portable,
if that's useful.  That's why a standalone library has more chances of
being available soon than glibc.  You'd need to make it portable (and
other things) to put it in glibc; but if you say "here's libcore-math,
avaiable only in XXX systems", you could get distros to distribute it
already.  And then provide headers that don't clash with glibc, such as
<core-math/*.h> or whatever.

>=20
> > > FWIW, it appears that the author of the glibc exp10 implementation
> > > agrees with me that the implementation is sub-standard:
> > >=20
> > > https://codebrowser.dev/glibc/glibc/math/e_exp10.c.html
> > >=20
> > > /* This is a very stupid and inprecise implementation. It'll get
> > > replaced sometime (soon?). */
> > > return __ieee754_exp (M_LN10 * arg);
> >=20
> > Hmmm.  Still, it's simple.  If pow(10, x) is strictly better, maybe one
> > can prove it and send a patch.  Or for something better, it'll take more
> > work.
>=20
> If by "strictly better", you mean that for each input, it returns a
> result that is at least as accurate as the one returned by the above
> expression, then, probably no. The reason is that the rounding errors
> in the above expression may partly compensate on a random basis. So,
> for some proportion of inputs, you'll actually get an accurate result.
> And unless pow is designed to be almost correctly rounded, it will
> probably be sometimes worse.

Then glibc's current code is good, I guess.  It's simple, and works for
most programs.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--tubtEdBDjeqjUcqK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXka0UACgkQnowa+77/
2zJNzBAAj9teFaV3W0zS1F1p2STuOW4tGwzdidmrJ4fO/fMfPJUVd4hEvc0R0Izq
6A0yL+6AxPg4fR+nZrWhv/Zhu/cUFlqQTCdz+SeGoJzCQg4fmKN1LDXL7arA7Wt3
xq+LC2LnWeddtiR+j49DYVz32Y99zrN6YPL1m6vHkdfsca2mPw87QfdyXjd+FW/K
vjBfZjBxJFM6BRjAgLebvBa6tuzx2ae8mmk7NTBN2NTtaW0XhJoS0se+rrCDgh1U
CbxF7s3Od3oO9zHg8YMtNLS/t48cMw8kdU7sVI7YlvHMZcX4DebsqjlIEXJBB0iq
78ET5GW5eQXqlTR8JP4rEnlQ21V6AjLCzGCIZ3kO/IfTJH0XqQyITd4ls7mZlS/h
LHsuNxT7XXrV7knRK9LndKhgGtVm/vhaTH9u3/BanRT63y3Lfq6h04rBqmuBXP9Y
WY59oGyXLKIRRwmc+qWJ1VeoTNsiBR5uHmsKAln9+AGDa/4o8mEqaGAsJ79j6Wt5
oY4VOh+3w4jny6TCu3wICmkqbWUPqoQMMrIB3YreQAPNXF0rTawgdu3e0aIQFfek
PYDqXtYeQ+rVPepYNUVxHkI46NLrBlonLjFE+HJU8dncoCZghHleW2hKQCddxZ69
fbwDZZamlN/leYIl8kT/ComYX0oXKawczUryXuBQG6ZwsQwBYLI=
=Bs3P
-----END PGP SIGNATURE-----

--tubtEdBDjeqjUcqK--

