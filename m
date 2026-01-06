Return-Path: <linux-man+bounces-4696-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B537DCF94FA
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 17:21:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2BCEA3001017
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 16:21:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98E06242D6A;
	Tue,  6 Jan 2026 16:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nf+sRtv3"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDC1E25F798
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767716034; cv=none; b=EFbiJBlkw3rLD6H8UBtdo+1qFoMX718yDWJc/sWsRw8q8b3HA6w5PnCEHaE0KzGcolyttn0thykl5eKRLqbNqZJG6DsIWBMSwclaP6IP1bXYUxJhhL0rV2kR/biiHZU41stIpRETacFvzqf8H9570i/nAs0X0rRY9DyEr/2QqnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767716034; c=relaxed/simple;
	bh=z+0ADux/8SkjEscpRrdEo3vAEp9aDqGjzAXST+7HYQk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mmxtimriNB5xdhR3MjxWcCRKz9hdyHNSW20hwxtwuu3EnQJihJ6gkvEUcXautrRX7xFsGSjfyBfT1jK2qkmtmGFkazlQH1+hhu4Nn+tIuBef2ibIKP9YxMRzvQJEcWFYiTlxFdZHh/MjQIEJYdpal/QX6Z/K2OoOVKVwYBss8XY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nf+sRtv3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6D88C116C6;
	Tue,  6 Jan 2026 16:13:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767716033;
	bh=z+0ADux/8SkjEscpRrdEo3vAEp9aDqGjzAXST+7HYQk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nf+sRtv3CPxigj67dxXT7kO39Unbq+FEqVuJzJ3Chz2lu06/9PzT6+enS3Nvl52gx
	 Zdklu1W+uFhG9XBieSWFPwxOn+3XQAg/GIzmYxasUdHlyImY3qhBxUGX+wX1EvtXST
	 ghm7GBg7QupgDDUepUwNPe+Hd9Q1m4y6UtYHFe7QGj5NP0OcbE117oskugSB++Uo+c
	 dXTeZ5z6L7s+WGhtQpRhIa8ol6zfrRnVoSYBxHJ4/wsWtvJsjO+wi8n+J8AEg0Vk89
	 D6aj9p2hrhhriA+9kzyAZ+X/Zq8DIb0VCnlDmjjHqduksgE/WKoaO0bJOJXKp13sX2
	 kn1XF36kmMtVw==
Date: Tue, 6 Jan 2026 17:13:50 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Angel Ruiz Fernandez <a.ruizfernandez@um.es>
Cc: linux-man@vger.kernel.org
Subject: Re: EADDRNOTAVAIL in sendto(3p)
Message-ID: <aV00SxqJtA78WkMy@devuan>
References: <4204a137-3e59-46cb-8652-447ca66343c0@um.es>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tltjbcu3ymanc32l"
Content-Disposition: inline
In-Reply-To: <4204a137-3e59-46cb-8652-447ca66343c0@um.es>


--tltjbcu3ymanc32l
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Angel Ruiz Fernandez <a.ruizfernandez@um.es>
Cc: linux-man@vger.kernel.org
Subject: Re: EADDRNOTAVAIL in sendto(3p)
Message-ID: <aV00SxqJtA78WkMy@devuan>
References: <4204a137-3e59-46cb-8652-447ca66343c0@um.es>
MIME-Version: 1.0
In-Reply-To: <4204a137-3e59-46cb-8652-447ca66343c0@um.es>

On Tue, Jan 06, 2026 at 04:44:18PM +0100, Angel Ruiz Fernandez wrote:
> Hello,

Hi Angel,

> I think there is a missing error in the ERRORS section of sendto(3p)
>=20
> When doing a sendto() to a Link-local scope IPv6 address on a socket that=
 is
> bound to in6addr_any which has not been set setsockopt(IPV6_MULTICAST_IF)=
 to
> a valid interface value, it fails with EADDRNOTAVAIL because it does not
> know which interface to send the multicast packet from.

Possibly.

> I can make a patch later.

Thanks!  It would be good to include (in the commit message) a small
C program demonstrating this.  And also include links to kernel source
if possible, or CC anyone who could confirm.  The more help it includes,
the easier it will be to review.


Have a lovely day!
Alex

>=20
> Regards,
> Angel
>=20

--=20
<https://www.alejandro-colomar.es>

--tltjbcu3ymanc32l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmldNL4ACgkQ64mZXMKQ
wqlBfBAAmk6HVG4eQy4qSCe+Iy8/NCIsQ2lQqzkCas0JroqAwVTmGJZew3OmxATD
l0xxhr4FPBARu1PiWlV+KQugtWwEBvh+YWWepNK9pOwE4gr0h4gMIc+ZRY+4OJqE
D4HpL9hCgt5oijqRKXXYaOo0iFxnYZwuIBo0u/ErSjOwudkLwtrADR7UTIMXIVKO
HZq10BSOE+xrfRERzb42WargGscL3I9tm4Saz3lGgA3wLhn7ribQpFxl/iHTIBSx
S1mXnVS1h2GVJxuzQGDZ47jh6ub7onn7/IJyYqb4jEkiUJaT7KRDUEx1OZXA8cUs
RaxSIwb1E0A/I/kjfvvHqnplOY8wG7sHNiLxeEbEo4ZqY6ShNrbwPDV42cRCODvQ
1lCDvCzeJvoyP7EEaS/mVJEgN7y9y8EP6reqQN9CtzxZ+Tq640r4qOGgxzErFnTq
/YUf3CtKfl2vZIqBiOdH0EawQc5BhWaDDQQRriKCqp6JMYIGI9eFGHw5BKDlnTQ7
q0iKt1p12ZP45iQz3Y0ESqjjqZU8bKtcMQNuASrseFXzhoiCaMlpL3uCYabJVjKC
q0Zukgy6hFIjqXe58ItVA+BEgSd3hkb0VmK4EWhScWWkRryLQavjz/eT4ooQ9BFf
ZQEHDap5jd1SMSmsV4CoSLHindjhmAZ70bZ4F76ys51G8e9Gs0g=
=oUdd
-----END PGP SIGNATURE-----

--tltjbcu3ymanc32l--

