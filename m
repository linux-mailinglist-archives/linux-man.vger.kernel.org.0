Return-Path: <linux-man+bounces-801-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C562C8AD39C
	for <lists+linux-man@lfdr.de>; Mon, 22 Apr 2024 19:58:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 647761F2281E
	for <lists+linux-man@lfdr.de>; Mon, 22 Apr 2024 17:58:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BA37153BFF;
	Mon, 22 Apr 2024 17:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P4Ad+Mn2"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDBC0153BE7
	for <linux-man@vger.kernel.org>; Mon, 22 Apr 2024 17:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713808723; cv=none; b=Ggv5ZOfDPohfi84LzhOawM7/s/dvUfwgaBqdy58pI6u/fx3/V3pP1Nf/LWLsr8Hr+wuRS1N+zB9bKDcXZ4xijYhtYiZEQFXuvaX6rFT+7aXxvxZAz9kxr1GlJyx7HURkjO8ywoKY7gah7bcwV/PH8PJIBpzXIx1rhRFkjgOKQRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713808723; c=relaxed/simple;
	bh=j8aBzrdSunp3bMBtTCnyECNNpzT5WXN9P9BSBw4oy4w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nKZI33RSS9W8eIea8KlEost7zmC+mgK0eluNCWoJogaA+Vp5SebOGaC7zUgomwqhCPkX6kHjtc59p/+BFR2e5lWWzP8tmv5FBk2MU9FoGVrNH8rnLghDCQocNjGZDxSFWiNj/Nk+ocpma4qWqj3zXEUx0s+DntEQDzHZfvfwcUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4Ad+Mn2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D8ADC113CC;
	Mon, 22 Apr 2024 17:58:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713808723;
	bh=j8aBzrdSunp3bMBtTCnyECNNpzT5WXN9P9BSBw4oy4w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=P4Ad+Mn2aZXVwzDiwJ/Hjuo2rUqeLumVmfVd6adP5M6E7KCESDj0HivZcH6KSeITT
	 2OeLbHlAZThRHI8+C0J7RYm42+bqb1iyTJEJzlD1SOM9mWxTuaUE1/ePUGtsBTraxT
	 TbM94Wjedt4rtWNktNmnaXoZzKe+K+dTu95LvXLIQWGNTdwzv1U5OyP2ULG/Y2v2n0
	 ycyPaKWI3w5Ufi4j/RCdFXozdtJTxgf5gOpA3XGQxO92eGeCjrfKlWvFNtQwHWknkQ
	 fnjHbN/ai2LIqNW0qlqIpFrj1wzU5mAT4Y5bSWwOw2NXQ0lqJgMT02G2D9zM5TANAO
	 8QxaPmkqc2Bpg==
Date: Mon, 22 Apr 2024 19:58:39 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Joseph Myers <josmyers@redhat.com>
Cc: Joachim Wuttke <j.wuttke@fz-juelich.de>, bug-binutils@gnu.org,
	linux-man@vger.kernel.org, Mike Frysinger <vapier@gentoo.org>
Subject: Re: elf(5) and ld.so(8): DT_RPATH deprecated - really?
Message-ID: <ZialT7CDXzj28K4Q@debian>
References: <643ad7be-1cf5-491d-bd0c-d87e2b260912@fz-juelich.de>
 <ZiXpBp-vigNCwpHx@debian>
 <48c28639-f09d-dab2-10bb-9a6813b28062@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7aesIZ/QnJ4LRTzK"
Content-Disposition: inline
In-Reply-To: <48c28639-f09d-dab2-10bb-9a6813b28062@redhat.com>


--7aesIZ/QnJ4LRTzK
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 22 Apr 2024 19:58:39 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Joseph Myers <josmyers@redhat.com>
Cc: Joachim Wuttke <j.wuttke@fz-juelich.de>, bug-binutils@gnu.org,
	linux-man@vger.kernel.org, Mike Frysinger <vapier@gentoo.org>
Subject: Re: elf(5) and ld.so(8): DT_RPATH deprecated - really?

On Mon, Apr 22, 2024 at 04:22:13PM +0000, Joseph Myers wrote:
> On Mon, 22 Apr 2024, Alejandro Colomar wrote:
>=20
> > Nobody said it would be removed soon.  But it seems people want to
> > remove it "eventually", with that eventually possibly being in a couple
> > of centuries, if computers still exist.
> >=20
> > But if you have the intention of using it in new software, or keeping it
> > in existing software, maybe you could give your reasons to those who
> > deprecated it, so that either you convince them of its usefulness, or
> > they convince you of not using it.
>=20
> DT_RPATH is just as useful as it always was for testing purposes, when=20
> you're building binaries against a sysroot and use -rpath and=20
> -dynamic-linker pointing to that sysroot, and you really do want the RPAT=
H=20
> used at runtime to find both direct and indirect dependencies and=20
> DT_RUNPATH would *not* serve the same purpose (because the sysroot is=20
> intended to have exactly the same binaries that would eventually be used=
=20
> in the root filesystem of the target in production, it would not be=20
> appropriate to set DT_RUNPATH in any of those binaries).

Hi Joseph!

Then I guess we must undeprecate it.  I'm fine with that, as long as the
maintainers of ld(1) agree.  Joachim, would you mind sending a patch,
and CC binutils?  I'll leave it a week or two to gather reviews, and if
nobody opposes, I'll merge it.  I can also prepare the patch, if you
prefer.

Have a lovely day!
Alex

>=20
> --=20
> Joseph S. Myers
> josmyers@redhat.com
>=20

--=20
<https://www.alejandro-colomar.es/>

--7aesIZ/QnJ4LRTzK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYmpU8ACgkQnowa+77/
2zLbFg//d6DRQKOvr09rIpBWelf7dW+iuF7ySMyIg1FLbp7z7Thz3dfoZmhtMjHX
NlvAWcmrAC+0I2TpFZzCA4NgjuNczwK8eryrRDNPSsvjXQ/nrZxvnXqEm1RL+apo
4zXrUOUPSadyebV9Q70iQsYIrgQG6PeMuyxM2aIiBLCpoXt8VKgH+KLDrh5FWyLi
HxOmaVyABtjjaB8A5G97LEnJ/VHrJDBEFENjo1L7k6Sl27pIGWNl3MN8xu5tvoDT
8KVId8XYyhn4ig8Jcz9vo4AD1vVRhvPQctIalfAoI2/bQ737YXCj+MMgr204/V4i
j/HsSG/Mp6rzdO+xcdqugrLIatMs37VeU1/tu+6Jnyp9ub80/UIBEfbtPIEyyhBv
OzExhts79r+p9J4VqHDjLOrjaYOb0gc3iOP4K0WPZDoOY1GfBC2eOxCKo3PhbgHU
yikDwofhRpVc48DtspQ+AoeYz8U4izI8AYO/GSoj01NSveY0GlNsTCgsUcBbsIxA
23Qr6b4kZD6FWthx3jrC3RUpSXrkHMHCnNgRmKaLb6aVDx5k5E5YcpwdlplPnT+P
50XOB+muYivzliZ/snnLZhN5IatMYPu4PGkCdpIvyE5r/M7R7o7wm4I+7tIdypj9
gTR1n2WUKh9XZcHMPx76cNk9tRVYn6Zd7Zf+xdUmEJyZgex/LF8=
=TcD/
-----END PGP SIGNATURE-----

--7aesIZ/QnJ4LRTzK--

