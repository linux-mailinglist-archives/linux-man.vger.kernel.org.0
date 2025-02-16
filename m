Return-Path: <linux-man+bounces-2453-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7407A374E8
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 16:02:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8F90B165649
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 15:02:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB90C195FEF;
	Sun, 16 Feb 2025 15:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwegzgkg"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB71B2904
	for <linux-man@vger.kernel.org>; Sun, 16 Feb 2025 15:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739718171; cv=none; b=tZONkYhJb20pDICLOkV7PZHEprEqg4KlGGtpM04deam7uLl4SZOKCMMd6301pt6lFHVB+hHsChlaI43yF/eOSPdft3BTa9vqsJFOiO60/YOXGfQ26w3lq4tbJB7gNP/OTXL5zGKnGULA/XVl1rkAFBWJ+R64xXqGdMVpTWqIhUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739718171; c=relaxed/simple;
	bh=BdzxaQReeSXZuXw7HxIjeE61fFryumEgqW4kC7iTIDY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fdzM/It1qfZXWCle4j2GiNXwupcOinFPjw/CYIos2HpU265M3uZP30hLf1zYQ/W8uda8FAfpNAXSVScjSFvOXxdfZIDzduNZ1SAzPuLBCmLJDX7g+vvEJyap+QwYPfQ4QvY+14RnzzsVgqXnel2M/B2gMbM7DcqYtA6j/xoAfnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nwegzgkg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 552B4C4CEDD;
	Sun, 16 Feb 2025 15:02:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739718171;
	bh=BdzxaQReeSXZuXw7HxIjeE61fFryumEgqW4kC7iTIDY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nwegzgkgg8aKcyNHScj3Q4Fh5PKG2GlqUPBz53NkA79AHf+6seqRPmoIwHgX9udBY
	 WVoe2li1xNQ9e2oO7YvbHvMJ79XBqyTP4k5YE5wzPjWfc2HM+QyVazzbN0KgbEZMta
	 4L9bYcXOhqCZG3rVY9vfObautTGUxa8VPjR/44mpZjHk9rbbeupjHa6Va6zZPU2tng
	 5XQZWYj0RXX4so8t0GAUy0t13wVUd/Hw6xn4iPDyqtvgRMihLL7w3G5n7RtQNJInPl
	 u3iGf04h9sZy0ZSIDuPE5u47+ZBJj8xnnkOkIzxNQFeGYHLLISjuEyBEDEudyq2Xyh
	 o1S1KJkoAwRog==
Date: Sun, 16 Feb 2025 16:03:31 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Boris Pigin <boris.pigin@gmail.com>
Cc: linux-man@vger.kernel.org, sam@gentoo.org
Subject: Re: man-page-6.10 make share/mk/src/sh.mk:16: *** unterminated call
 to function 'shell': missing ')'
Message-ID: <ljyte26tpo722uqtda3pgp3phfqrarmba2vfenfh4ngzhk4n43@y24ii2qof6vs>
References: <38f900b3-28f2-4854-bec3-5b79759eb5b6@gmail.com>
 <ytgxskuvjqldvv4amftqx27t4fh7lpw32nwyirjdxkeazduyxo@vfi5tfoa72h6>
 <26a527c3-f7dd-470d-8b19-c6ac45a33e7a@gmail.com>
 <eb65be1e-b885-442d-806e-ca209576ccbc@gmail.com>
 <5ajfvthbrexcmjd4trqvfaitnqrvfkyiabhvanm3gwga4y6g7l@qqrdmg6rd2qe>
 <8058a323-1d7c-4af8-b030-8ad69999751b@gmail.com>
 <uvn4vqmdrmsamjjf7n36dtiqndrvbjmipja3iihr4ulcafmqh2@qjo6w36av6wn>
 <85dc5eac-0f70-41cd-9343-6cf4ea5ec8bc@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4fslqkpedtbkseux"
Content-Disposition: inline
In-Reply-To: <85dc5eac-0f70-41cd-9343-6cf4ea5ec8bc@gmail.com>


--4fslqkpedtbkseux
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Boris Pigin <boris.pigin@gmail.com>
Cc: linux-man@vger.kernel.org, sam@gentoo.org
Subject: Re: man-page-6.10 make share/mk/src/sh.mk:16: *** unterminated call
 to function 'shell': missing ')'
References: <38f900b3-28f2-4854-bec3-5b79759eb5b6@gmail.com>
 <ytgxskuvjqldvv4amftqx27t4fh7lpw32nwyirjdxkeazduyxo@vfi5tfoa72h6>
 <26a527c3-f7dd-470d-8b19-c6ac45a33e7a@gmail.com>
 <eb65be1e-b885-442d-806e-ca209576ccbc@gmail.com>
 <5ajfvthbrexcmjd4trqvfaitnqrvfkyiabhvanm3gwga4y6g7l@qqrdmg6rd2qe>
 <8058a323-1d7c-4af8-b030-8ad69999751b@gmail.com>
 <uvn4vqmdrmsamjjf7n36dtiqndrvbjmipja3iihr4ulcafmqh2@qjo6w36av6wn>
 <85dc5eac-0f70-41cd-9343-6cf4ea5ec8bc@gmail.com>
MIME-Version: 1.0
In-Reply-To: <85dc5eac-0f70-41cd-9343-6cf4ea5ec8bc@gmail.com>

Hallo Boris!

On Mon, Feb 10, 2025 at 03:49:18PM +0100, Boris Pigin wrote:
> Hallo Alex!
>=20
> Nice!
> I have to thank!

You're welcome!  :-)

I was interested in using some new GNU make(1) feature in the future:

	FOO ?:=3D foo

which is equivalent to

	ifndef FOO
	FOO :=3D foo
	endif

I guess this would be problematic to you.  May I ask why you keep such
an old version of GNU make(1) in your distro, when you have a very
recent bash(1) for example?


> And have a nice day too!

Have a lovely day!  :-)
Alex

--=20
<https://www.alejandro-colomar.es/>

--4fslqkpedtbkseux
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIyBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmex/jwACgkQ64mZXMKQ
wqkq3A/3etC1pgk2YNFt/Nkdfw2v5puU1f43PLZKgaf2DcW1GqGR+W+7NBZu0oiD
xx+byX3Nr0xX8FPKZuCtNIpWEcYl/X0zff1KM1PD4eIVSqH+Fvv3nusgcQBnZ5u5
VDAksritDdHvxy7dcy1QsrJ3/YrdXWDM3mQ15SWjuhCVA8d8E0z5uWWYelCVD7fO
Lqc/TCy8+3lipuS4WQ/XJHrqdecwe+gyBqEDdwXJW+QziPDm+2ZJIp/YHSzQWajs
B3XyjLHzTSQ09TUCmt2uti+9910jx/l3LLduZF40oEx47Xqe2wgjOF6VG3vM1LW1
2nq6o1FiaOsRZiQsNxTadvlXkJenFjKis68+PIk3vtUM8GeYZYNlCLOBlG8w64oj
1gmdHoYw+nOV9qo7i0/Pkq/u3hwUbR6UYLk+dqa/olxi48LG2TUCz4BmAzkd3Kcv
NM6me9KOqj1cllJU1cNyGHg+6iRqPq0qWlG3Aji5d3VR0iE0Ol/wcYDfaqOaHApO
bcQdnrS0h+rikOEu+qJ1l3HdYy92em+jUawXrm+sQyyvNJ5Fhvw/5bPvwMkBy71t
uRsA68isC5DOeqnqMMQwz1jNa0WJjk7HyOCl80TuzYWmyFsjfand0mR5TZNYts9N
Aw+/Kbc+mnE3akx8iq7Rm+5xdaRNaIzOiG+Po+t7d7mHjnBv3g==
=o9WX
-----END PGP SIGNATURE-----

--4fslqkpedtbkseux--

