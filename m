Return-Path: <linux-man+bounces-32-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6BB7E8C64
	for <lists+linux-man@lfdr.de>; Sat, 11 Nov 2023 20:53:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B8320280DF1
	for <lists+linux-man@lfdr.de>; Sat, 11 Nov 2023 19:53:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 605301D526;
	Sat, 11 Nov 2023 19:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8jCuwpJ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1960C1D524
	for <linux-man@vger.kernel.org>; Sat, 11 Nov 2023 19:53:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFD07C433C7;
	Sat, 11 Nov 2023 19:53:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699732406;
	bh=tGxSbEkZ1/QbYID1+5Dp+FVAkXmETtmK7bn0j0/gmIk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=H8jCuwpJmiMARIaEbL55mAz4c5goWvH3PZ+hEGVvYSlAWW+Wixax4/iI1CkzTd1xF
	 ViEGQPJW4WcztKzcL7HbpGsBMWJBHtEJBqNI3XvQviTUDVluXBz5zJtx8CGPL86i3P
	 CMSGJ7evnk3oGaqonYbN4peZApPwZTglmwoFkWUbccFOLnX/gwmUBcOvEw7ganNf/b
	 g6oQh12/h9wSiWSdGgE0PNOd3EAQU+unhi3Me1/FNlkXJYXTyAiOAO1jH8l+SeVqfd
	 w28n+xC2Q4eB0uHBwmEI/YDLNsbX+4XicVJXiuSl5NGMhWFIm5l8omV71upq4RQ93G
	 K+s/CZNoAXW2Q==
Date: Sat, 11 Nov 2023 20:53:23 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page hostname.7
Message-ID: <ZU_bs7LL-xVIAVS_@debian>
References: <ZUJaY9YthI-EXLzi@meinfjell.helgefjelltest.de>
 <ZUJxn0JHxBasvKGf@debian>
 <ZUJy3qmi9tRg0x-4@meinfjell.helgefjelltest.de>
 <ZUKEB7bFCE-btgFZ@debian>
 <ZUKFV1p3pffJEHzz@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VMbmVBiyQaIk9Wt5"
Content-Disposition: inline
In-Reply-To: <ZUKFV1p3pffJEHzz@meinfjell.helgefjelltest.de>


--VMbmVBiyQaIk9Wt5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 11 Nov 2023 20:53:23 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page hostname.7

Hi Helge,

On Wed, Nov 01, 2023 at 05:05:27PM +0000, Helge Kreutzmann wrote:
> Hello Alejandro,
> Am Wed, Nov 01, 2023 at 05:59:51PM +0100 schrieb Alejandro Colomar:
> > On Wed, Nov 01, 2023 at 03:46:38PM +0000, Helge Kreutzmann wrote:
> > > Hello Alejandro,
> > > Am Wed, Nov 01, 2023 at 04:41:19PM +0100 schrieb Alejandro Colomar:
> > > > On Wed, Nov 01, 2023 at 02:02:11PM +0000, Helge Kreutzmann wrote:
> > > > > Without further ado, the following was found:
> > > > >=20
> > > > > Issue:    B<nsswitch.conf> =E2=86=92 I<nsswitch.conf>
> > > >=20
> > > > Please explain why.
> > >=20
> > > Filenames are usually in italics, not bold.
> >=20
> > If it's a filename, I think the full path would be better.  It could
> > also be a manual page reference, in which case, it's lacking the sectio=
n.
> >=20
> > I think the manual page reference would be better, but I'm not sure.
> > What do you think?
>=20
> Yes.
>=20
> I'd prefer the latter, i.e. with section.

Fixed:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dc4eed0a0374ae69dd785f6f35c62256705cfadfc>

Thanks,
Alex

>=20
> Greetings
>=20
>         Helge
>=20
> --=20
>       Dr. Helge Kreutzmann                     debian@helgefjell.de
>            Dipl.-Phys.                   http://www.helgefjell.de/debian.=
php
>         64bit GNU powered                     gpg signed mail preferred
>            Help keep free software "libre": http://www.ffii.de/



--=20
<https://www.alejandro-colomar.es/>

--VMbmVBiyQaIk9Wt5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVP27MACgkQnowa+77/
2zLpzBAAnhFpnF4Dc43rWX4UfM+uLICROqYR9rIllzZsVBHLl37iUQwhEcB/O045
2snhEUCDmL81wWSYDOgipSen2R0j/0gAL74wAIUvmB1CM+oMZ3NvmGrAFauo6dWF
hmJ5Zg1b+WIPr73QYQwu7WixT4l9N5I8D00N8SA0MrWzrCRXrLcLLZ+gN0xRo2tX
q+6xPKguR8vRZtOnjPEoHK0o2kABEQ3pgk2AEer0aG6mGdBcAqzzpSuymcQM9ETM
zmXpStG8nnnBL2sLz2gNLRs62nweGFOhq9h5Gw4Gw0efNxHuSWLRa/NATCMBBH8y
HAY0+CARwblZ/SVMMi4Yd4rn7MIYi67EqSQbi9qcBCg2NLXEeCsuW62aQQsB2aR8
LGlgDOOzK9q9NMQ84TfSZuQDPBA5XLvG1Ifal0GliwnFKsi4OAV4VPGuu98D9Hcn
/zgHReqFqA2saj6tpwisk68RzM6+BjZC3XWOEh+eI42bLCaOiDSmMr6vc+Z98Fk1
7I8rOmHTlumHXeZp5PL4/eajnBy4HP9dX78wwqXx7lDEb3Hq6GwRkdF5Ve0cYqM2
dZwEdFrjXdl3Z3fiSTUyzP0iXhQ9rw8fzN/6PCfDGNHwE+iAO3j1puItd/5iGxlU
gECcthyr35qNdXxrBuzYGljwJUsezot3DmHGJnEq2hA2kAev6/c=
=4lKN
-----END PGP SIGNATURE-----

--VMbmVBiyQaIk9Wt5--

