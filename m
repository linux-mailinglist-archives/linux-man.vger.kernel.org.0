Return-Path: <linux-man+bounces-206-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 335C280194B
	for <lists+linux-man@lfdr.de>; Sat,  2 Dec 2023 02:08:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D9C361F210FA
	for <lists+linux-man@lfdr.de>; Sat,  2 Dec 2023 01:08:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDFE21385;
	Sat,  2 Dec 2023 01:08:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HR12Jy2L"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 915137E2
	for <linux-man@vger.kernel.org>; Sat,  2 Dec 2023 01:08:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA926C433C7;
	Sat,  2 Dec 2023 01:08:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701479289;
	bh=HOa4ZoWYMeJignVlj9hfWoJm87rJTTO7mhv69pXSNyo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HR12Jy2LrJXssh+nqUCtW2gLUj8Zk4j20ut6P7bIOOjb+VBMXsr75iVZW+kmUB9r2
	 M/JuwmqbmklBcLqLbililtfqXkq5IvXIxa60sSwdMMnj9+rkuWRlr6/rpwju9aBXaU
	 Y9FEDfj8F8qsPYIjoC6EdZnE4zCIIZPiWviETU8/wBF572/bBBk2mV2kt6yO0Pn2Rn
	 BJAgk6YjMUkmZvslGGVXLAVFrYwrbKONbz4kWiIWAwgiUOzhCNIfh1rMFJSyUzuo1C
	 GVQoHdOht4s5qbfIqpzDtcPcP2su+Il4pWoUbTh6bxgmwFB6vlg8EKK4HzqanQw5TP
	 8l0tYlxYEeULw==
Date: Sat, 2 Dec 2023 02:08:05 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>,
	Alejandro Colomar <alx.manpages@gmail.com>,
	linux-man@vger.kernel.org,
	Hanno =?utf-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Subject: Re: [PATCH] ioctl_console: Document new CAP_SYS_ADMIN restrictions
 (since Linux 6.7)
Message-ID: <ZWqDdeoRK2jGme5S@debian>
References: <20231201122645.3237941-1-gnoack@google.com>
 <ZWnYCcuJql0Pm4Yr@debian>
 <2023120253-handed-protector-fc81@gregkh>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pirkJeZT6tQS9oBN"
Content-Disposition: inline
In-Reply-To: <2023120253-handed-protector-fc81@gregkh>


--pirkJeZT6tQS9oBN
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 2 Dec 2023 02:08:05 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>,
	Alejandro Colomar <alx.manpages@gmail.com>,
	linux-man@vger.kernel.org,
	Hanno =?utf-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Subject: Re: [PATCH] ioctl_console: Document new CAP_SYS_ADMIN restrictions
 (since Linux 6.7)

Hi Greg,

On Sat, Dec 02, 2023 at 12:14:06AM +0100, Greg Kroah-Hartman wrote:
> > Are these requirements expected to be backported to stable kernels?
>=20
> I don't think so, do you think they should be?

I was asking just out of curiosity.  Unless someone else speaks up,
probably not.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--pirkJeZT6tQS9oBN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVqg3UACgkQnowa+77/
2zKTGg//eoSC+adSC6p4VBgB0TN60td7gwsl1orGqeFrzjesUt2E/basag9dbJVU
VmCl5aGRQmhAFgUQrJoUkhK4E+FmtE+/OPrXtf2h/qnEcj+gLBZl7836OjBfFtWm
98q8PZoXzABMTmhfWWU7q4J0e7SbGt1/RXkz2pR/Md/5GJJ/M65868no50S9aowT
Zc3IGwrzES1YIX6ivoGspOIdUt4Bs1dE3tbyPReLbExn4pCXhFtgi2sr+5ecVId0
8QpspywPBQmm0iMj1YuxqR1YnMWe70XxXNv2Ig19deBgTYD1kAkMck+js1jJXQRm
FdCKXF8waQ1R+rikZ4hr+LRY/q0Gh2GXBK+6zuyq9hg2fQhUkw9URCIGn4zRJleh
8VS+kA0TSw0my1j6HTJwZLB4cWd+GkiYPbyhyODenmuON6udForNgz8lAl/ix/12
EbcXc9x0ztPzYF74eLcCEhqa7D1PVriS5Ivp40hdQzzPXZ2W4Kg05IQj3Y19489H
g7VbWSxZAtNPYm9P6rsaaJy6nPcLLBhZrvFBueO19SwJ4Ja4FL+f742A8bPYw5Bc
jV9mIQkPxSDrBdxbx8I0So30ZRNw+ZIOw7fUmvJdfprs/nX9WaYqrQ02kD1kmax5
qP2VJWFCwIu5BN9rWWZeTfSSFCxus/osmjc4snPhq+zxX70J9DY=
=sssB
-----END PGP SIGNATURE-----

--pirkJeZT6tQS9oBN--

