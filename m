Return-Path: <linux-man+bounces-3784-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E9EB3D465
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 18:37:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 671C9176CD8
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 16:37:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D30E2459D1;
	Sun, 31 Aug 2025 16:36:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEdcSu1Y"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9FC1F2BA4
	for <linux-man@vger.kernel.org>; Sun, 31 Aug 2025 16:36:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756658216; cv=none; b=kpbriZZpYosN1i9OlacO+MC76ZvOkEx9S9VKH7OadQs4kbqC7Z3K4BsoZuyiIb39HH19BSefUa9JrUcfJoiBvkHQs53PkEjTfX0TxiW7ujndLlSy5F/Y5oGUAx2YGsOpU7N8IBHgSiPLhD/Gy5K/nnmFYKIHRoNFESc9hql26iA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756658216; c=relaxed/simple;
	bh=Dnr5sE2GzChu+d3GDjIJ1QI/EprPPWCJhcqJuOpz9+Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bNlo8ACgvIXy51A2z0/aon0mLq88C/uWLm8GiYX0p2qXoF2c8M4TyIh2dFE9+IybTPQGwuWMED6qHt7FiWa8jIyCMTPyJkDq6aIQlvRh29500DkfaL0r3Mc9rc7NxkLPHgSOoAveGxZfjcydhIKHwZ7mvFb8Fn5k0yxWS0VU23A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEdcSu1Y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86AB0C4CEED;
	Sun, 31 Aug 2025 16:36:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756658215;
	bh=Dnr5sE2GzChu+d3GDjIJ1QI/EprPPWCJhcqJuOpz9+Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jEdcSu1YRQwtlvWetvAk7n01loqsNNUCBdE2K80ZRoW9eeeAPYaY1m6flK0Vr7fNj
	 +sxqlEvdtFtd8LxCoSm/q+KoB57UV+N1uVmyz9991y7kwi62JVSvWagk4V27wj2qL4
	 UCH1P4HV0EKP7o3Gq7K4R2KSbPtBadV4HKgay6g3FIMtKMJZQc4l0lbwsug+WRPuyt
	 kG0pZc8xhxW4bZ3rVBQQ2NKiPchzpWusPyGW9Bs34hT9sgOJQz6//GXGgENYsRrh1h
	 xGJpXZ4oyI3qxTMM11WYrDo0uq/8Qzxv+HJUEWiGP7HhwTWHJu4z6ZuHzdfff/LOlS
	 MJ2GM74rajxrA==
Date: Sun, 31 Aug 2025 18:36:51 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page getpt.3
Message-ID: <oa6mzyidr2664jmviev3tejy5mfngoz7zsblk2gybi5w7az22o@2pscshkovdba>
References: <aKsmSaMGovnInrf4@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="u63vjp74kqazvxhj"
Content-Disposition: inline
In-Reply-To: <aKsmSaMGovnInrf4@meinfjell.helgefjelltest.de>


--u63vjp74kqazvxhj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page getpt.3
References: <aKsmSaMGovnInrf4@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmSaMGovnInrf4@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Aug 24, 2025 at 02:48:41PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    multiplexor =E2=86=92 multiplexer

My dictionary says both are correct.  Does anyone know what's the
difference?  I guess it depends on the country, but I couldn't find
which uses which.

As for the Linux man-pages, there's a tie:

	$ grep -rho multiplexer
	multiplexer
	multiplexer
	multiplexer
	multiplexer
	$ grep -rho multiplexor
	multiplexor
	multiplexor
	multiplexor
	multiplexor


Cheers,
Alex

> "B<getpt>()  opens a new pseudoterminal device and returns a file descrip=
tor "
> "that refers to that device.  It is equivalent to opening the pseudotermi=
nal "
> "multiplexor device"
>=20
> "on Linux systems, though the pseudoterminal multiplexor device is locate=
d "
> "elsewhere on some systems that use the GNU C library."
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--u63vjp74kqazvxhj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi0eiIACgkQ64mZXMKQ
wqk4JBAAqAtr8Kat/+hBceTS1SY6ITeY4ZCtmu8WoubJpvFkReualXXPEUpa6/KL
zp7IyDKhC3jibkPurkTjzwIRG5UehaFjZFGWQZdFXIiVJ5e92wM2yay5/8Opw9MS
ImX3PM3gIhLLDTbh3CuqJo71PuaNAbpScRo+ZagMq5EltJeUOwvqEwEOhPmyaMWo
Y7IPP9e+WH1zoyPaq5gnQREusfJa4TYz2vJqNKjc7sPP9r8u97O7HJv69vlRa8RE
fB1Ec3E677TvEXrEeqLnMmjakveV0Y2m1hbVKof+OSxvTOvC0GuD2TisJMVvw4X4
7uxlc2Nm1VmpX7aWBn/w+Iw3WGDilxfnuXoTQC62yvIOEZlZqLTIiag8zcbhsA30
3EVDqVmKDZNQXozbmjihhuqVNAYj9/48FOo1Tzd8RX7y8Mn+OVhksNOtBaegN+Hw
Np5P4YBxNz6SpJJh1TYQtCpPi4zkTkd0QK7WWVPAdx5QSLRrwmE20/ML7SJnjjX6
Y5zq6S6ebXbitinQdlN+pDq62RtquMdxB3uNrDmzZn/oiJtPfxXWcxvGjqmd8LMu
hljEMBtm/EmhHkaWSEV+TrZ8mIVJja18Aaa9ViJWMlgjfzXKZQ4KXMlUPk69kvIi
VahB/CdawWnJUfJM+WaJfWTqhyMjHYeaK6Oa6CD9CCfR0WKRU/o=
=6Aq4
-----END PGP SIGNATURE-----

--u63vjp74kqazvxhj--

