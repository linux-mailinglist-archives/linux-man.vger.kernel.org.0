Return-Path: <linux-man+bounces-351-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F046282B3DF
	for <lists+linux-man@lfdr.de>; Thu, 11 Jan 2024 18:20:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DDC51B23ED3
	for <lists+linux-man@lfdr.de>; Thu, 11 Jan 2024 17:20:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FD7951C48;
	Thu, 11 Jan 2024 17:20:26 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 967B15025F
	for <linux-man@vger.kernel.org>; Thu, 11 Jan 2024 17:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020126.0000000065A02223.00190080; Thu, 11 Jan 2024 17:15:15 +0000
Date: Thu, 11 Jan 2024 17:15:15 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page adjtime.3
Message-ID: <ZaAiIziggN9w2Y_Q@meinfjell.helgefjelltest.de>
References: <ZUJaZJzhUkuDV_Fs@meinfjell.helgefjelltest.de>
 <ZUJ6JnryG7BnDf5P@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-1638528-1704993315-0001-2"
Content-Disposition: inline
In-Reply-To: <ZUJ6JnryG7BnDf5P@debian>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-1638528-1704993315-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
Am Wed, Nov 01, 2023 at 05:17:42PM +0100 schrieb Alejandro Colomar:
> On Wed, Nov 01, 2023 at 02:02:12PM +0000, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    that can =E2=86=92 that could
>=20
> I'm not native, so I'll leave this one in case someone reading the list
> wants to say something.
>=20
> Thanks,
> Alex
>=20
> >=20
> > "The adjustment that B<adjtime>()  makes to the clock is carried out in=
 such "
> > "a manner that the clock is always monotonically increasing.  Using "
> > "B<adjtime>()  to adjust the time prevents the problems that can be cau=
sed "
> > "for certain applications (e.g., B<make>(1))  by abrupt positive or neg=
ative "
> > "jumps in the system time."

Ok, then I mark this "WONTFIX" for now, so I don't report this again.

Greetings

         Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-1638528-1704993315-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmWgIiMACgkQQbqlJmgq
5nBatRAAm15ocj28FQCplfoE7qrAJeMncSAc6AcOPi+YyHRTUv8F925OZ6ShdGgc
thVC2Z2aJou+e9fbrfpQanYQinTWqOwqtlV0gUTG9USrw9p5C9xbAxrrluy4UgFc
yU9WqYqp3jIYlYaI3AUDVk3YLC42QhvdbU+bGTAuUiqzuIF9H2pkw/r4slArwnCB
QK59HNX5GuhV2m6CtH7yVRzmVVSyssFMoDNW3uxlS2D0P5nwLSwmesmJPJCsf8bB
umI2zL860GSYRFpMT24DHhcU4IFtPzM7GgGjd/0GIN2hxYuwwU2fWwml8WuMIzrf
h8eWyMNBT+GB5940vFUwy32K6fcJaAyZfJBdt/HP0+a5Mp1327ILZWAbsD6zLqST
cGDsSasxEtmwcjgnYlum77SHntunmqpBMCJ0q0etCiPwwUH3xPdiAtXmNso6/ono
A24Sk+VcxOddV1wfXeY6gBEHQWgleqLPgpJW7Nk7L+U+aXC5a1ALEv5RLBJ2FDOk
6AkBu9dC4rYLxIyWic3Vx1FWBdP6rtIQm2rUwRaO96W9sK7tA8cJuq8urYqiTZSq
reikgSLRFsruIJt+inh2KYwQ2WwVXnxzDMojduvBeFrKOCyY0ORo7w0YKt7jkvRO
NwIJzEZAOncywbTy3Zazuma2zPvZ2H2qc+dIexRn+olE2pEgOtU=
=9jkN
-----END PGP SIGNATURE-----

--=_meinfjell-1638528-1704993315-0001-2--

