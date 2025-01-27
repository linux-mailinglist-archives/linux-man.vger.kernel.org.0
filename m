Return-Path: <linux-man+bounces-2306-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4087AA1DC67
	for <lists+linux-man@lfdr.de>; Mon, 27 Jan 2025 20:05:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 972287A2996
	for <lists+linux-man@lfdr.de>; Mon, 27 Jan 2025 19:04:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E93A18A6A1;
	Mon, 27 Jan 2025 19:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UlNAPeYm"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C12521096F
	for <linux-man@vger.kernel.org>; Mon, 27 Jan 2025 19:04:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738004696; cv=none; b=lAYF7Vrz+CLWY69SQDPtGfKLq5nFxiHxSPYca7uuXJpFAFXddYpPfbEl9PfK/dzNNRaeGn7ORvt4wkGEcAjjHcRcfyEeBae5g/ldm70NZL/j0r3MA7L+4kWUHcNlCUe2O7TIu3Wle11lVjMHzF8wA1omWPOnGi5bqgmxauajfOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738004696; c=relaxed/simple;
	bh=25xK2BoRF1SE3eaNcnPmtOuACbTybvG8SqGvn80jcX4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QwnJl+QPIvtEe606u9UUYiVLpQHpdg53AClLdmfqTTtaMgBojllcNWEoiRHtZk/76fN74NJvcp49zraC77I+2GU/ShX5UPM0nYuM6fK4SDZoXLUZyFoOsoMfc6JmXL2u3DkMr28ki5TxkWiJuj/owMKZvIEgDePlGHkvsmGl1mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UlNAPeYm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BEB8C4CED2;
	Mon, 27 Jan 2025 19:04:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738004696;
	bh=25xK2BoRF1SE3eaNcnPmtOuACbTybvG8SqGvn80jcX4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UlNAPeYmbTcr2J85tREWfIimHKZqIfvtt4kEVRMoHK++0Y/thts7bKEYzqXYJOwoK
	 M/qLSjs4b6mVNonDUrw41HWbOAws9okE2B59zpbXBCXSHqegpzcABjko3GXWMDJvDG
	 D2Eof8QrWixX4ro+hORO3iMrcpDGon5l0sXFG0Nv6kCxCgG7y03M9CGoixppBdTxhA
	 VMdqM+ozfVwycbeGGHyv9Uvf0lb6+qOgbgprLzeb5MsAE9IUky22T+9QsYyLaAXnbO
	 P9ikgSeZYeaWlSi8uryNk0u8y2XsL7W0RksnM+mmp+PHwi1K1BJIoaf/y9G4bLpUPP
	 7zVIefvDqTjZA==
Date: Mon, 27 Jan 2025 20:05:13 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org, Jason Yundt <jason@jasonyundt.email>, 
	Florian Weimer <fweimer@redhat.com>, "G. Branden Robinson" <branden@debian.org>
Subject: Re: [PATCH v1] man/man7/pathname.7: Pathnames are opaque C strings
Message-ID: <sotummbpsajmtgakisnj6ppliot4pula67o7xbu3clsuhzrnkm@voadpeybyvct>
References: <ru2mlbwytntlel3jwwjcumn4i3v65bishfymxemiwvqpeeddmt@tarta.nabijaczleweli.xyz>
 <b9f5079f6bdeb29594f8ac24bd2eb4289e562613.1738003465.git.alx@kernel.org>
 <6blf4yxrx7cyqubqdpkzbifqcnvpvobpicsinquhwcv5hcd666@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fgjh6lida5ymfyhq"
Content-Disposition: inline
In-Reply-To: <6blf4yxrx7cyqubqdpkzbifqcnvpvobpicsinquhwcv5hcd666@tarta.nabijaczleweli.xyz>


--fgjh6lida5ymfyhq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org, Jason Yundt <jason@jasonyundt.email>, 
	Florian Weimer <fweimer@redhat.com>, "G. Branden Robinson" <branden@debian.org>
Subject: Re: [PATCH v1] man/man7/pathname.7: Pathnames are opaque C strings
References: <ru2mlbwytntlel3jwwjcumn4i3v65bishfymxemiwvqpeeddmt@tarta.nabijaczleweli.xyz>
 <b9f5079f6bdeb29594f8ac24bd2eb4289e562613.1738003465.git.alx@kernel.org>
 <6blf4yxrx7cyqubqdpkzbifqcnvpvobpicsinquhwcv5hcd666@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <6blf4yxrx7cyqubqdpkzbifqcnvpvobpicsinquhwcv5hcd666@tarta.nabijaczleweli.xyz>

Hi,

On Mon, Jan 27, 2025 at 07:58:02PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> On Mon, Jan 27, 2025 at 07:46:21PM +0100, Alejandro Colomar wrote:
> > Thanks for the detailed response.  I applied this patch based on it.
> > Does it sound good to you?  Please review.
> Can't really find the base file for this,

It's the contrib banch on my server:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/log=
/?h=3Dcontrib>
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Db9f5079f6bdeb29594f8ac24bd2eb4289e562613>

> but the deletions look good.

Thanks!

Have a lovely night!
Alex

>=20
> >  man/man7/pathname.7 | 87 ++-------------------------------------------
> >  1 file changed, 2 insertions(+), 85 deletions(-)
>=20
> Best,



--=20
<https://www.alejandro-colomar.es/>

--fgjh6lida5ymfyhq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeX2N0ACgkQnowa+77/
2zKjUxAAiUZ7GuEOyCCtgten/bC+HRKASqN/1oHJrrGoPlHRj+66hj0/79uCtANP
GRh9e7Vdb96CcSjG6RSIn5JiAZeLTPbnMkc04wtxLI+NacOIDvK2psNZS66wL0Md
MKgyZCEMpDdQ4Vc3wkILL6YunMo+9mpjwZmusYLKd34Nb3qzcmZ9yteN80RFeNTe
h9yOvciiscE8VPvlroOSdVt5vuoidSu2/ZayXCsxd5llo9ekNNVd8vLnZziEiKVc
nZ2lM+RURn4miab4wczFzVSv5ui5ROyAneP12lTVCuSJW5Iqqr2LdrQUC6GiWPFb
67ZjTeoPkmeIeAvkMn+HApJtjOFAkEKngsZLeyLBaeQ4g7kj6NT57T3txofD73qa
YoWnMZ5R/ZG5vxDotFWZSohQbNbZXWg2CxDgVfKcSlfUCv503t/zHwAQ6IIp2STq
o1CDDPvfM2k1YgjVwA9HpWfEn89Yu0ERwD/VpaSafZnMG0clPuw70+J6AMiPUbej
t0YuU7WkCQq4cIE6th069q29yO4Tj8S0cSQU/RGCwKV1TLPnbgE9ylt27OnYq+r5
mbTCpN5dZOzv0LGD/R8HDDqAGizOsDHkImFkhhYtd3JQNpwgzVDD6wLubHOQFR/W
1DZqoDLTrBrckUGtZcRuS8RarCwK3SOF9kR3vFtbPddLAsZ3tHU=
=g7RU
-----END PGP SIGNATURE-----

--fgjh6lida5ymfyhq--

