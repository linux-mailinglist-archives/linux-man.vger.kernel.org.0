Return-Path: <linux-man+bounces-4408-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D40F7CBB2C2
	for <lists+linux-man@lfdr.de>; Sat, 13 Dec 2025 20:37:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7B4613009805
	for <lists+linux-man@lfdr.de>; Sat, 13 Dec 2025 19:37:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59B4F26E6F2;
	Sat, 13 Dec 2025 19:37:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SU8nkM0v"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107DC22A7F9;
	Sat, 13 Dec 2025 19:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765654662; cv=none; b=eSq2B/ZA7yoQ3ZA9LTfUgc3KPgi3p0qHWhM4t8N0IU5yt1eAqJBuWX7SVg8Xg5IHYg5f37dUWb2yykaMSNEaDl5VkBirnBYNl025xV7fut7bGnnJ6yENP0hxRu18pwSIr5EfEKfNswpl78YX2UMsfm1mFppMFSLeCk5VEAUoU84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765654662; c=relaxed/simple;
	bh=jCKnDFXAT9ztcqBLIB4qFkyf3PCWVVSwY4yI/nlE+Dc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S0xgnvelCiikP1qeIuQ9Wh1NfzNFHsgJTMtUSCAcAfDAVO4hD64o5ff9ea95iN1ziWLy89i9T0UmUjxTv2sFgA1tUzUIt8NajZ/rSK62W+PzwL+ITW0pFZvbgLsop3C+hrLZv6GXlbtSiGWPeFmJqiYQN7Sgvte6/eKhIm9zTqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SU8nkM0v; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B58EC4CEF7;
	Sat, 13 Dec 2025 19:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765654661;
	bh=jCKnDFXAT9ztcqBLIB4qFkyf3PCWVVSwY4yI/nlE+Dc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SU8nkM0vSzDa77l8Lgbg+aEpR/rliu4Qz+mWanNuyxsPz2jRDHlTdFwokTdA2Qilc
	 NySC4zPHrQ7Ds+iwFZl8DaEymtFbdv2jhdLqi7pSI3z/pTRRMg6VEb+KSJN/w4gNSs
	 XeROXESVd49iJygxeBr0DrDnf4yBqGd43Cts4xnvexB0wLTeu6xq1LSGDPZ9eZjIgb
	 k43f2XsDkP6DFU3441TiirG6pG+D10iBsAqJuE3tqr+SateuIVIjjtuCIURs0+D3Zi
	 VP7+r2AwN8F15SCI6iBE9CuU6OZh+YovDFhEKJp8HIO8c1r4hZTS8IIp+XyHTXu5Yx
	 CtDibGJxt0QWw==
Date: Sat, 13 Dec 2025 20:37:37 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Alyssa Ross <hi@alyssa.is>
Cc: Christian Brauner <brauner@kernel.org>, 
	Al Viro <viro@zeniv.linux.org.uk>, linux-kernel@vger.kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/setns.2: clarify type of nsfs fd required
Message-ID: <viwd2c53bnfyflny7sdmumawimwjy2mcmoigk5shhkmiabtbm5@3vcv3a3664cc>
References: <20251213175853.555517-1-hi@alyssa.is>
 <iddnfcdrppivtq53zrajuiidfmg6sw6bxdg57j2ielnnor4mlk@i7ddvvhfu7dm>
 <87qzsy5htz.fsf@alyssa.is>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="arhazmjudhburdss"
Content-Disposition: inline
In-Reply-To: <87qzsy5htz.fsf@alyssa.is>


--arhazmjudhburdss
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Alyssa Ross <hi@alyssa.is>
Cc: Christian Brauner <brauner@kernel.org>, 
	Al Viro <viro@zeniv.linux.org.uk>, linux-kernel@vger.kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/setns.2: clarify type of nsfs fd required
Message-ID: <viwd2c53bnfyflny7sdmumawimwjy2mcmoigk5shhkmiabtbm5@3vcv3a3664cc>
References: <20251213175853.555517-1-hi@alyssa.is>
 <iddnfcdrppivtq53zrajuiidfmg6sw6bxdg57j2ielnnor4mlk@i7ddvvhfu7dm>
 <87qzsy5htz.fsf@alyssa.is>
MIME-Version: 1.0
In-Reply-To: <87qzsy5htz.fsf@alyssa.is>

Hi Alyssa, Christian, Al,

On Sat, Dec 13, 2025 at 07:59:04PM +0100, Alyssa Ross wrote:
> Alejandro Colomar <alx@kernel.org> writes:
>=20
> > Hi Alyssa,
> >
> > On Sat, Dec 13, 2025 at 06:58:53PM +0100, Alyssa Ross wrote:
> >> I was surprised to discover than an O_PATH file descriptor was
> >> insufficient.
> >
> > How did you discover it?  Could you please link to relevant information
> > (or kernel sources)?
>=20
> By trying it!
>=20
> Presumably it's the fd_empty() check at the beginning of the syscall
> implementation in nsproxy.c.

Hmm, thanks!  I don't see any documentation about this, neither in the
kernel Documentation/, nor in the commit messages that introduced this
code.  Christian, Al, would you mind checking if this is intended?  If
so, it would be useful to document why O_PATH is not accepted.  Is it
a security problem?

> >> Since the mode of nsfs files is always 0444, tell
> >> callers to always a file descriptor opened for reading.
> >
> > Missing 'use'?
>=20
> Yes.  Feel free to add it.

Thanks!


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>

--arhazmjudhburdss
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmk9wHwACgkQ64mZXMKQ
wqlbEA//fiiugEWMyzP7pX4xHojnoA5VF2IhLPSknBRNHOGWjTt7hhuLQZqUrK3y
zWNgp2EEP29880601mub4Fa5Tn0x/Evt0PMpT8+9NxyZQcnARVjxCwWLODXJi9C6
0sm3qtmAfJ3vmFCFOboGypVRi0yiNAZXl8gIH6TQp64Eie+/Di7k1ItjzSdncdvv
z/Qwy25xq3TdSWyPb9+EAn15BwDX5NsL+TThwrBh0whU9/WMBeQkbxHHaKLiGg02
yLO1pWAQ4ZrYsMI7urYhaKZjIMfdNs36RGfdSF31nO0YGVQfO3IqjkXgOw2ahpnk
Ga9rtVTsb5ZuvVjkx/pOQYgGpKOyzkIqu3jTn19QJ4n4xnQ7Rb4mb8GyC2ilBAch
WnzDvRvr/Oms/xgxOiifF+e85OUB1290IBFjsHFCYjg/Ku4jeClZa18tf/QjiEOl
nRQ36XBNG3tEHRxfv1nhEXTg1HohH5dSR0bGt6sNRwkdGaXRIjjTSTJeIkXz7/eG
c6zWwqhSJiK2KZlj8Fpgpyh2d9GgPKeyxHwUDAk9HSwBaKLxM+gXTDpp2vIXMtIY
QfmcZRRusGejNCVCh68cKlGmNkc5uGhx+cMOmEoMVFoW44aUXFuoCxAqxSLsD9Kg
CnYHg1KQV5ttk+mlBIKdxFa8CqHnAs6UWNdBk5CvhqQ4pEx2YKs=
=azf8
-----END PGP SIGNATURE-----

--arhazmjudhburdss--

