Return-Path: <linux-man+bounces-290-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E00581CD8D
	for <lists+linux-man@lfdr.de>; Fri, 22 Dec 2023 18:27:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1A5C7B236C3
	for <lists+linux-man@lfdr.de>; Fri, 22 Dec 2023 17:27:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8674E28DC5;
	Fri, 22 Dec 2023 17:26:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IOP91+vq"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5233A28DBE
	for <linux-man@vger.kernel.org>; Fri, 22 Dec 2023 17:26:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D89D5C433C7;
	Fri, 22 Dec 2023 17:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703266018;
	bh=Iw/AhZaXyJdKFviCFpdaxBym8Zby/FL9Flw/qMhP5g0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IOP91+vqtrkkzFmRtl8T35MvSb5ouXA0XFPrlG4JtLB20vDUCdQu02oOOL04Boazi
	 g4TJjagTluaz2EEl7nXIbMnJ7wjRSO1PEw2xr1et63cnWc4wVMrCmlc+eSuegftIcR
	 QD1e0C5aN59BcJ9mq5HU177xC2AnjrefQJ+CVLe6zNxzRdchB4tFArC6Nxjt+2ERsf
	 SIvmWSFFci69ZzeyYWbLqbGKUlQNyCBv3ils+PFQv25RUge6ZzXFC3+2FsRFdEoqgC
	 FlzoCm0DPDLew+M/seiCRIGE7TUH5GDhEPxuIop586QBql+aC6BfP8LYLNNkQ5FjGe
	 d7JfffKDU3Ccw==
Date: Fri, 22 Dec 2023 18:26:55 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "Priedhorsky, Reid" <reidpr@lanl.gov>,
	"Eric W. Biederman" <ebiederm@xmission.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: mount(2) missing EOVERFLOW
Message-ID: <ZYXG34n78pvXXyG0@debian>
References: <A1B87125-51E7-498B-B362-502616EBED08@lanl.gov>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vdQ9ujCqcl1FQzBm"
Content-Disposition: inline
In-Reply-To: <A1B87125-51E7-498B-B362-502616EBED08@lanl.gov>


--vdQ9ujCqcl1FQzBm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 22 Dec 2023 18:26:55 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "Priedhorsky, Reid" <reidpr@lanl.gov>,
	"Eric W. Biederman" <ebiederm@xmission.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: mount(2) missing EOVERFLOW

Hello Reid, Eric,

On Fri, Dec 01, 2023 at 05:52:05PM +0000, Priedhorsky, Reid wrote:
> Looks like mount(2) can fail with EOVERFLOW [1], but this is not document=
ed in the mount(2) man page [2,3].
>=20
> [1]: https://bugzilla.kernel.org/show_bug.cgi?id=3D183461

=46rom this link, I see the original report was for mkdir(2).  So it's not
just mount(2).

Eric, which pages need to document EOVERFLOW?

Have a lovely day,
Alex

> [2]: https://www.man7.org/linux/man-pages/man2/mount.2.html
> [3]: https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/man=
2/mount.2

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--vdQ9ujCqcl1FQzBm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWFxt8ACgkQnowa+77/
2zJZtBAAiwCBSyM9tv6THIHKlwDGEUBE8k0SwNaeuWd7d6kuGNLcEIjXyuA7282b
c8u7HqnLqx/h9VvMGjoslDfaY1U88OgQpI3KijgldsqALvN0KUTPt7r0hkwZB8Nf
J/yps2ieXsR/0gjpOqVTuy10+ma5BZwBuh7ibhdoRfscv2XP668MbQmCeX63MGH5
f9YadKu9JtcW5PpZ2SAgnfHApIYAHMPPT2tUkBLWa9BkG/C+rIwunDXJIp+OWm2E
56RcwZWOjeAJ/rNKTNjeRi+aFrv9bW+ZxsIFxUmx1qfBNAqeIXYQRscEwoNJ2lJE
O/KVmM1TJTXXIdew4y3P48gjyywyeuTquxrL8H648/yfG3sJXSt3ROvw1EjYgwNi
q0uRdZuaNumEABkX9IaS+81AKiAWjDjBcX1emMCxy3pl3MThv3kPPUj8t11U5u7y
RC4EFZglmEgSRyy6MddqY8opOGMkwpM9Mw3CxGOnFWVmoZO62IJuuWojna2ZRKMC
M7Z6RUnxsxUTSA4+nkXKCyuB2V0WgvSBFA44dp9z08ACQdKM+BAZehu0/xThBaXn
op6SBR672JcyG7V2eVsyVQmop+mL68jWFNasVsv+eQSbBMqA7kJuc+lrPyg8hM6S
J/BA7pK46osSUq2DQ83d3rJ8Bu190QOOXFfeOO8iwR/pWX19izY=
=5G7n
-----END PGP SIGNATURE-----

--vdQ9ujCqcl1FQzBm--

