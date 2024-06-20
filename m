Return-Path: <linux-man+bounces-1253-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7706C910D1B
	for <lists+linux-man@lfdr.de>; Thu, 20 Jun 2024 18:35:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2048C1F21CD2
	for <lists+linux-man@lfdr.de>; Thu, 20 Jun 2024 16:35:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BDBE1B29A9;
	Thu, 20 Jun 2024 16:32:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ictrUm1r"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF991B29A8
	for <linux-man@vger.kernel.org>; Thu, 20 Jun 2024 16:32:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718901131; cv=none; b=ddmbbPk8W3t/1K4R9iMF6Lp5QDKKxoOpIgV2AMvpub+TThpLJ9Nt5K2IAcYbxYV8e4gMoNzBslxvNrQ3aKKRqM0cXxhdAh/ITYDplYVMVpkwgY+FZR4JGTb+lGhXddLWVACvSERB0Y/lwDbKtTuITSfD5Q7A1bae4lp2AZIliZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718901131; c=relaxed/simple;
	bh=A1up0o5HmTrS6S+SvhsEwGfaeiCVtbiWE4+te9yw3rI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gmdIFRnXZwXSMItrEbdHydCvn2s62lyc/AaU+tIp+WBXalAxBei48QIqcLS10IDROwKAMvRD+tYGR4xXpnN7mZLQtHgjKOrvjeFvohXHlfpGwXxmY9E2eZLSXqVF+f9vA0ses39HUmJe6m54e8n7jsIVo7A/PluixKQFS2RmqG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ictrUm1r; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E7BCC2BD10;
	Thu, 20 Jun 2024 16:32:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718901130;
	bh=A1up0o5HmTrS6S+SvhsEwGfaeiCVtbiWE4+te9yw3rI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ictrUm1rCH6Gm/ZbA4CeRGKk9vpOB30u98nFDWwLCU/8tAB2D/eyJPO7DDViyrZzg
	 l3vdVteBgONJXUJqXSqdDMBhAKtB/Rd1ZQRsJ7xIPwEILDoT5fsa+3s14JmdUM81pz
	 dliZVHQw8PnvsT/sBGixL4RF/91RqhZzWwhvu8OSkAoiV6Eg64EZDRrQvhzR+1mTEk
	 ZOlxLi2dF79fvla25/aKUjRnL0M0O4uKpL6FWCh3kLw2HMlOh6bz1S9XL31WSB7MFB
	 Z1Nyu6vqLUFTZSo0LTsc7m/s8aSylEVLcF5bgzvhELMd3T0msin6VVPCoo9bVqegsk
	 IjehFA+0iAF3A==
Date: Thu, 20 Jun 2024 18:32:08 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Eric Blake <eblake@redhat.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: clarifcation on interfaces like strnlen
Message-ID: <lpqjinqeylacuismlzsnnhy7hiuv7so6dlcccnclzmmjknnlux@asvvn6j4qrl2>
References: <qqn7wdgo72mn3be67yiyoiq3g5v6pcoejemdpqdb355k4rdto6@d5u32xrwsbrr>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ngm5jhajyidipr52"
Content-Disposition: inline
In-Reply-To: <qqn7wdgo72mn3be67yiyoiq3g5v6pcoejemdpqdb355k4rdto6@d5u32xrwsbrr>


--ngm5jhajyidipr52
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Eric Blake <eblake@redhat.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: clarifcation on interfaces like strnlen
References: <qqn7wdgo72mn3be67yiyoiq3g5v6pcoejemdpqdb355k4rdto6@d5u32xrwsbrr>
MIME-Version: 1.0
In-Reply-To: <qqn7wdgo72mn3be67yiyoiq3g5v6pcoejemdpqdb355k4rdto6@d5u32xrwsbrr>

Hi Eric!

On Thu, Jun 20, 2024 at 10:37:08AM GMT, Eric Blake wrote:
> In today's Austin Group meeting (the group behind POSIX), it was noted
> that there is a potential discrepancy between C2Y and POSIX regarding
> whether strnlen(3) operates on "strings" (the C standard defines this
> as a NUL-terminated sequence) vs. length-limited arrays of characters
> (which may or may not contain a NUL byte within the bounds given).
>=20
> https://www.austingroupbugs.net/view.php?id=3D1834
>=20
> One of the contributors to the C standard (Chris Bazeley) then replied
> that his proposal for strnlen to C2Y was based in part on the existing
> wording of https://man7.org/linux/man-pages/man3/strnlen.3.html, where
> the man pages were not as precise as the POSIX Issue 8 wording, as
> well as the fact that C is already inconsistent in its wording for
> strnlen_s; although he also expressed an openness to revising his
> draft based on consensus.
>=20
> It may be worth some preliminary cleanup patches to the Linux man
> pages for strnlen and friends to follow the example of POSIX in
> distinguishing when an argument is a string (must have NUL terminator)
> vs a length-bounded array of bytes (which may or may not include a NUL
> terminator), to make it easier for everyone to share common wording
> when C2Y eventually adds the function.

Agree.  I wrote a couple of years ago string_copying(7), which sets a
consistent wording for functions that copy, but I haven't revised other
functions, such as strnlen(3).  I'll revise this when I find some time.
In the meantime, I suggest to have a look at string_copying(7).

BTW, I'll revise the wording in case it can be made more consistent with
POSIX.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--ngm5jhajyidipr52
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZ0WYcACgkQnowa+77/
2zKa0Q//Q3hUttKbwVOKzCYwbKpminNP4Op49sPlDqf2V52klYTkKNs8fHt+6jho
5p+Fve0W/YdQ4agVbrLilsfLQe4l/76TsOnW3HFdZXpVsXFtL2FEdLHPvQX6Zah/
avV8f9nt8TADw/s1KnyNrVCndelomcSZG1SP+kBjQfCyW2PN6JylDKeRaQclLtuo
si3SvMLsgS+IVXW/9fYJ8T7c2+12DxYeHr/jlP0aMiq0+4RGb6Bzj739E9+P7unD
snvlPl/WUWYGHEZM1VwtedxVEuwdmnLzqzllyy+Ic2D74oBd57TJhBym3hko8DIQ
nB/JHCTOH+q4qLJ3Rp/tCX69agAmxWqabRtLkk7LTr4VAlkvj2AdbxNoP0li0qn4
rtYzHP60UHA4bPPN/gLmPIW1qoFO/Ni/M2WGIZB6ts1M18DXoQ9AoDBShIyxNVCK
Nv3c9VM2Glf/RrEjYgeo2LOLUnr365r9/vjaSkiJXVPW+HwK4wxN8WSDEEJmU2yA
uPprBqMcZ74jXTu05jmVhKoL3eEk6l9SKcSz2a6RJWkX77p1FSZVY7XffcsYBpP7
nq3rI0b+dDy8egGmUFFW2av5Pw7ui+vuHUWf9VCilFZCKgp9hVCZ5GJEITVpc6Yh
NCiDn8jC8cq5YGjC2SJ8irDSxuzdtiHVItQj8aRjFfhzWF2g3FA=
=9RfL
-----END PGP SIGNATURE-----

--ngm5jhajyidipr52--

