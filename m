Return-Path: <linux-man+bounces-355-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A723E82B7D0
	for <lists+linux-man@lfdr.de>; Fri, 12 Jan 2024 00:02:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D6C228A26C
	for <lists+linux-man@lfdr.de>; Thu, 11 Jan 2024 23:02:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E29356748;
	Thu, 11 Jan 2024 23:02:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ab21pfdx"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE8C35810E
	for <linux-man@vger.kernel.org>; Thu, 11 Jan 2024 23:02:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59C2EC433F1;
	Thu, 11 Jan 2024 23:02:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705014169;
	bh=9bxy6eDIhpFfx4lU0qnLLHFimr2c0uPFl45H+hdKWLM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ab21pfdxjrRM0P+cw3QjSnGrUqICMNk3b9orBCiTpaclgQR2dL0vxMH2f0tiWA6lp
	 pk7vr0XRYWdD+GOodjQkwt825A6fqvmYyI0NOyh14dlOjeadJIMHli7x8YXcEk6Sgm
	 ICzohcdAbJ1cLZk0AJrSy4sKvi/nuPH7trwKrpTgwp7QpOec0hkZOjOJcU8Qm7DmDn
	 G/UJJXKnfjTpln61805Jg9WdXWMAGCyDUvmz5a/6QmlI3Rr2JOfPzKasEkjIBZ0tBV
	 f8hxg8Wflt4w8zJ90b+SbFE2BV32Ch+U/tUGOlcVe1gyY3QcbupKak9e5LXdAeAw8K
	 iA9WUsiRvrH8Q==
Date: Fri, 12 Jan 2024 00:02:45 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page adjtime.3
Message-ID: <ZaBzlVVjMx0DvATK@debian>
References: <ZUJaZJzhUkuDV_Fs@meinfjell.helgefjelltest.de>
 <ZUJ6JnryG7BnDf5P@debian>
 <ZaAiIziggN9w2Y_Q@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="r+HTHU6VashGVhE0"
Content-Disposition: inline
In-Reply-To: <ZaAiIziggN9w2Y_Q@meinfjell.helgefjelltest.de>


--r+HTHU6VashGVhE0
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jan 2024 00:02:45 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page adjtime.3

Hi Helge,

On Thu, Jan 11, 2024 at 05:15:15PM +0000, Helge Kreutzmann wrote:
> Hello Alejandro,
> Am Wed, Nov 01, 2023 at 05:17:42PM +0100 schrieb Alejandro Colomar:
> > On Wed, Nov 01, 2023 at 02:02:12PM +0000, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:    that can =E2=86=92 that could
> >=20
> > I'm not native, so I'll leave this one in case someone reading the list
> > wants to say something.
> >=20
> > Thanks,
> > Alex
> >=20
> > >=20
> > > "The adjustment that B<adjtime>()  makes to the clock is carried out =
in such "
> > > "a manner that the clock is always monotonically increasing.  Using "
> > > "B<adjtime>()  to adjust the time prevents the problems that can be c=
aused "
> > > "for certain applications (e.g., B<make>(1))  by abrupt positive or n=
egative "
> > > "jumps in the system time."
>=20
> Ok, then I mark this "WONTFIX" for now, so I don't report this again.

Re-reading it now, I think your report makes sense.  I'll fix it.

Have a lovely night,
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--r+HTHU6VashGVhE0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWgc5UACgkQnowa+77/
2zI7fg//XWm3SEhw9fC8yYyU4fmaI+3sU7NrsElZ3w5PuIcpvXO6EqzQg1fCxO+I
uZKY7JLlYFJW84t/Tbqvg2cbA9FvHIXQX6In+IucWUeS/4Jpt3Eix9DC6EUM/f+A
7YhQZiyJhvsazT7IoHtI/K8+C1kmFXPIzkZ1peGF+MAibv2gNbKIHDwNeh7Le+f8
vcXauLsiUBgEQrRBzUTd+snNtu4r+CvvryNSP4tsYwLBiXQE4wSqNJ+055E9l/2l
rCFvAcGD7W4jLadQP9YgIMhNinBG/1kxuy8Hcj3PFGnzzpKQeDj0geYy0JVKR633
bhv/uZY5NijlRsDogKaDdszPOGZuiFnVXELEzfQDjVj2QCvuyM0WP/Bo/rUaHYIu
d+47hukssxJEnEfQy84DKzbyQowuaHjcxE3m5ybv5cvAgvbDXeSl9+Cku+6AqsBk
mPS+fMglABjfo19Bh8rHjfnUJCxFLz7JCsHwJ4Z3V62xwSdYqrF/ux3saY+1hquS
vKk3jkJSe5tv5k7/B7ESWtu6wueabzuGNv4RZUq71xz+Q2mLDbCQCgCW1LeyJwKM
KeyQZ+b/GWVGzVIEtRFTlT4lBffqKzo0XZGvNagt58MYL8PuuMYoYQ96faqom/lF
bstQDEPTVbiRiC4XtMpUDHfd105FgH935plSLaDLDtxdNCl9H8g=
=4IGV
-----END PGP SIGNATURE-----

--r+HTHU6VashGVhE0--

