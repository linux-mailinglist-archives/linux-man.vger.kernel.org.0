Return-Path: <linux-man+bounces-816-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C118B375C
	for <lists+linux-man@lfdr.de>; Fri, 26 Apr 2024 14:43:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 288A41F214A0
	for <lists+linux-man@lfdr.de>; Fri, 26 Apr 2024 12:43:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 844C5145B0C;
	Fri, 26 Apr 2024 12:43:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tLI+CYCn"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E411E52A
	for <linux-man@vger.kernel.org>; Fri, 26 Apr 2024 12:43:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714135386; cv=none; b=lrlBWsQbqHuM9Bz60EHFzwVQroT7FaWnR4hANDpSZhMWlUw/kHay2QV1ckajPwGWEIzlqqiH46U1WjmkCiF9lYZGZoJ83zoVpEcSsIiKedPKZjow6hxWZrylaCT2TvaascgbOABuPpdkmI13iwEl8MGle9r6PSnoe2JexUMq9TI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714135386; c=relaxed/simple;
	bh=PVeD1UlXnn18L72LlJ2O/Ynw/SMUwCKWUvl5ikwwTpg=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rA+0n9A6Fx2817rreT/7PzVBo6s7lJS95lbf2AzPF/nwX8r38JrRsyRI1msAiVLFdqcfeiZLdtEPxzWoZWkaVUctMnnF8WFprVrnmNoYigfm95dCNmXLnfoQwllj0yTlt9hhyPa6nOE06JamcNWfW6Y0pRIEEexrXQinpEGq/DE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tLI+CYCn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF65DC113CD;
	Fri, 26 Apr 2024 12:43:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714135385;
	bh=PVeD1UlXnn18L72LlJ2O/Ynw/SMUwCKWUvl5ikwwTpg=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=tLI+CYCnaASFUe+3mPFHy/oEndn8yMWJwrgyHsA4PxR/pA4dGqgbs/Kt3wNMCA2db
	 nvf8CX7jRjYm0DpjVkTbJgw+KtUhdhN66n4df/tbPr52yV8BjrbVgeAO+S23uLP2Kl
	 J3toKunGzOIAPZDgRxICE8le+Y3qD+mMpGZvBHe+JvCBLSoxS2ovi79s1Z7Z+4zZb6
	 hfcgbORs8mNbzRj8ZcADvWKMcJCRWuMEzhhDYemZo/waiuvHttJ4QSk8crl2WOkodb
	 u2lwt2kFNCU57uSxRYlvlfFIpuv9F9lHWMAjEuQ+pTKK0jX64hVkJ6pH7Mwd6HahnX
	 EY3Y+SqInjFDg==
Date: Fri, 26 Apr 2024 14:43:02 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Petr Vorel <pvorel@suse.cz>, Stefan Puiu <stefan.puiu@gmail.com>,
	Jakub Wilk <jwilk@jwilk.net>, lnx-man <linux-man@vger.kernel.org>
Subject: Ping: Re: Move man* to man/ (was: Revert 70ac1c478 ("src.mk, All
 pages: Move man* to man/"))
Message-ID: <ZiuhVmLAnm2r5xaQ@debian>
References: <YxcV4h+Xn7cd6+q2@pevik>
 <20220907205304.nlqce37l26gezjqi@jwilk.net>
 <7b9c2ab4-6cdc-b4fd-1001-8721083695fa@gmail.com>
 <CACKs7VADwh0Qs8Zo7=biVzpOhSgMt5xD1BSBXdg82sPAcdjYOg@mail.gmail.com>
 <Yxr9WN7f3FEqKVRg@pevik>
 <ZgIk4mN4bXfsiiYy@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="RU/RGONZ9TBq25GO"
Content-Disposition: inline
In-Reply-To: <ZgIk4mN4bXfsiiYy@debian>


--RU/RGONZ9TBq25GO
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 26 Apr 2024 14:43:02 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Petr Vorel <pvorel@suse.cz>, Stefan Puiu <stefan.puiu@gmail.com>,
	Jakub Wilk <jwilk@jwilk.net>, lnx-man <linux-man@vger.kernel.org>
Subject: Ping: Re: Move man* to man/ (was: Revert 70ac1c478 ("src.mk, All
 pages: Move man* to man/"))

Hi!

On Tue, Mar 26, 2024 at 02:28:59AM +0100, Alejandro Colomar wrote:
> I'm thinking of adding some features to the build system that would need
> having a clean man/ directory.  The main one is building several books
> for other projects, one per language, where languages correspond to
> every directory within man/ that doesn't match man*.  Currently, I'm
> workarounding this by running the build system several times, for each
> language dir, but it could be much simpler, I think.
>=20
> For not having a regression in the number of characters one needs to
> type to edit the manual pages, I thought of adding symlinks in the root
> of the repository, so it would look like this:

[...]

> What do you think about it?

Ping.

To be explicit: I want to

$ mkdir man/
$ mv man* man/
$ ln -st . man/man*

Should I assume that no-one has reasons against this?  I'll still take
some time before doing the change, to allow replies to this thread.  But
please manifest youselves, even if just for saying you don't have an
opinion.  Thanks!

Have a lovely day!
Alex

>=20
> Cheers,
> Alex

--=20
<https://www.alejandro-colomar.es/>

--RU/RGONZ9TBq25GO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYroVYACgkQnowa+77/
2zKGiQ/+KgtlKChG7me9NAaAB6mxgc9of2/78z4V5T/rwSBuazLsCwhN5PnAIifv
UCftor/TKq7NKAWteYDMeUhxXZtGkVhv//jmioiytFtfpAH3HdOS73hoTRBuTt6D
SzIfwwjO3El2hbjQRKUKPk5ohSktJKv8G1GI2KnLEuxpdyR37AJmH/5GLVcXNKzh
mF51UFKlCsk0r3BpzBFlPGAwui0q2UpbvCYA/XDwQv3bDqLN5Wp4fp8mvVqX5fQu
6+qjlUWEbEI2+Y52dNaqVtzOVHK4N0J195ZtGm0cUsbbZPkeu6Qg02mlCe5+6NXC
8jMKgRg1LJzbgB1wUqfsgMu7MMdg6enfBygvOwrbtOy0dtCTgelmJV6Y0bDSFpfL
CytllDi3HBJQoVGTyPgHy4Sbb4ZDxckfHmJ+u914XcCl+2vyCb5T0JQ1bn8t3DJh
ypK0VEzhW07uxJ/1AypNdedLuZfrdzMlN2rdLhyIeU/gx0qCmXfQ3zovFgt4mN0O
2UUVkXGEw8w7TiO+mijrK3QlsjatcnDOBWSJJv0puzwi2qE8vxe4ZGcWO7b2SiBh
NzmbBCNN9GKKPQCqKjGFh2m0rG2uvYxtrDgmDG6yb57jxUMMP4WUDuIUqC5TAsRq
mzJ7CgNeUkuedCsCM2Gk2j9UXelEcM28T832ZDJai0CWZvRgtpU=
=WI0b
-----END PGP SIGNATURE-----

--RU/RGONZ9TBq25GO--

