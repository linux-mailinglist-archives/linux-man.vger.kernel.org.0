Return-Path: <linux-man+bounces-73-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 157767EA775
	for <lists+linux-man@lfdr.de>; Tue, 14 Nov 2023 01:25:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F00CC1C20918
	for <lists+linux-man@lfdr.de>; Tue, 14 Nov 2023 00:25:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44451EBE;
	Tue, 14 Nov 2023 00:25:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tej3JN8G"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1D5717D8
	for <linux-man@vger.kernel.org>; Tue, 14 Nov 2023 00:25:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0C88C433C8;
	Tue, 14 Nov 2023 00:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699921519;
	bh=NPsVTVvoDRFwAwCj+v71VNY7gsBSTE2yhQnK7TV91Ag=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tej3JN8GELX/J/3k36ucr90t5NbgKPI2/opw+lBDDb3nJPQw0nMJ3YwDh1+WOG2Uh
	 BRdlZDT0zEtOUoj1JlA9jFwvVdR7kn2151TgtWnWrhbbdimPM68aN2yuap2hrg1gRO
	 PUuLBh1LJtrBKX91q7xZuV3asG2CiB9hZE6WbIOBpjoCvUel9b6kWTWP2/uIr3vm5v
	 1s5lpfLt24BlbYnUkrlrHKo7LiQUjGpy51L9/iKuD5j2HCpAjeO499IWyq5CXiaDxU
	 /esU40jE7kn4Q7SSIFd9D5IufpRlJ+nLlEJR7Q331G/sYoZTd6yZL4U2D+JZ1eeVa+
	 y2TImIad+nUfA==
Date: Tue, 14 Nov 2023 01:25:09 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Sam James <sam@gentoo.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org
Subject: Re: groff 1.23.0 stability (was: using the TQ macro)
Message-ID: <ZVK-bD5lt6RuyBUm@debian>
References: <20231025141103.savwphtepufpget4@illithid>
 <ZTkvY8egIrf9pcxF@debian>
 <20231028131325.vloorrwewruhy4lq@illithid>
 <87edhbz9jh.fsf@gentoo.org>
 <ZUDvXuA3MVZVSOF7@debian>
 <87wmulnri2.fsf@gentoo.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="c8UHermiIjFLDD3B"
Content-Disposition: inline
In-Reply-To: <87wmulnri2.fsf@gentoo.org>


--c8UHermiIjFLDD3B
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Nov 2023 01:25:09 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Sam James <sam@gentoo.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org
Subject: Re: groff 1.23.0 stability (was: using the TQ macro)

Hi Sam, Branden,

On Mon, Nov 13, 2023 at 11:48:29PM +0000, Sam James wrote:
=2E..

> That's no problem - we regularly have things which require a new
> dependency to become stable and it's a nudge if it hasn't happened anyway.
>=20
> (See below).

=2E..

> Yeah, this is fine - go ahead. The only issue would really be if
> groff-1.23.0 was causing many issues which would prevent us from
> unleashing newer man-pages any time soon, but that is not the case.

Thanks!

Branden: wind calm, visibility 10, sky clear.  ;)

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--c8UHermiIjFLDD3B
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVSvmYACgkQnowa+77/
2zLwTQ//RP6dLynzf/upVdIBBwY46F+yxPcvHRK+ZkFqrW1BCQKL5AmE/sdE/0Yf
j6QWoNFG+65fyf/eftPxY9i9JFny0VmPULDx5znJ8om8w3kTsRgN+MZkOkDKY+lY
pwyLd8xmx9HmAdJrVrVx/QpCsMfzGmz7NXZ7cZCkWM8E/swFsKlDs435/JDLQlFY
Grx4NzG6wEs+cl5uqxwFTRynM9y+p/B/+apiI6AeMXF/9YAvF+rUiGClkQiK/C3X
XAphmDtcTWJ+2hcI8o35d6/h3WiE+NTTowKAeyi7cU+cCLYrQKnB9mpjQKcWrH0K
F/KXHK2b3VvY3+bdzKn++SemT1J+ft6Ho09j/lkyS+ukwP5eq/auStugMHxVfeyE
t2Sm4UMHXb7g+eT+zpgjbPVXvbuK7uRyHTAivggGvhUavOnzld2asF8hqenE/naW
dVrMdMcOf+jWzpmpBeST6DKlxYYlT/iOVxGkHDXYfJGXQssAbzS7Q3/S/u4wclMU
DA5oz7cK8kk7rRx0yQv6hd5Q0HBxRr/Exa8nPxXsx7A8QDw2kZqw0JrWru9W1mxy
hd5q5O4Hq+MP+nz7guxN3othkVuGGEVjx8TXmo6OwJjCffrGnZhbLoe89v6p6eXV
3YcjYzPQdZ6Fwm/olffpJf1SxWiob3DEBC59lTxm1pqCSBdZmHs=
=ijG9
-----END PGP SIGNATURE-----

--c8UHermiIjFLDD3B--

