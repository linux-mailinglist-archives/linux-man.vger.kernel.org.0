Return-Path: <linux-man+bounces-31-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 646A67E8C5B
	for <lists+linux-man@lfdr.de>; Sat, 11 Nov 2023 20:49:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7F64D1C2048F
	for <lists+linux-man@lfdr.de>; Sat, 11 Nov 2023 19:49:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDB0E1CFA7;
	Sat, 11 Nov 2023 19:49:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qMMm6YTJ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 743801CF9A
	for <linux-man@vger.kernel.org>; Sat, 11 Nov 2023 19:49:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE24CC433C7;
	Sat, 11 Nov 2023 19:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699732144;
	bh=i8z/FX0IjBNMrw4zJS3LbvGyALiQBU2BDhynzTK/0Vc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qMMm6YTJOmsPtVKkfxEpTft4gYxfww/GVtdFXQVXzfq35ELSs8X6myKK9wh/gcOPj
	 LBV9oNiOjMW7m0qtN5uPdkq2XiOTYLZUuv5yT5lJDS5twU09P+CM/NEC0mPXihsnMG
	 l2dY27hVjrhlk6DTQJ9lhi84ZVxzuImhFzmTdqAuqFeRaXl1O+YitKxchsgbPmWwfB
	 vGyW2gHaUPb+2ZHbYunGRgmT5DqWRDjTQz33qPBbKEVrblLBy0L3FrcqLWF1y1Kumc
	 9flRtNS8JxzQCgOdNTceSI8Ps+dQlcEdD5FTepoUoH3i9o1p8lOOVN+eDDx4rmrlPF
	 q7WlR4QTNqI+g==
Date: Sat, 11 Nov 2023 20:49:01 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org,
	libc-alpha@sourceware.org
Subject: Re: Issue in man page getent.1
Message-ID: <ZU_arWFMvWAc5997@debian>
References: <ZUJaYg5pUzF_9sP7@meinfjell.helgefjelltest.de>
 <ZUJvA_RpJtEEqjal@debian>
 <ZUJyeuoNdIArAOzl@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vJT49SzRgE+HtvyC"
Content-Disposition: inline
In-Reply-To: <ZUJyeuoNdIArAOzl@meinfjell.helgefjelltest.de>


--vJT49SzRgE+HtvyC
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 11 Nov 2023 20:49:01 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org,
	libc-alpha@sourceware.org
Subject: Re: Issue in man page getent.1

Hi Helge,

On Wed, Nov 01, 2023 at 03:44:58PM +0000, Helge Kreutzmann wrote:
> Hello Alejandro,
> Am Wed, Nov 01, 2023 at 04:30:10PM +0100 schrieb Alejandro Colomar:
> > Hi Helge,
> >=20
> > On Wed, Nov 01, 2023 at 02:02:10PM +0000, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:    No "in succession" here on purpose?
> >=20
> > I don't understand this report.  Please detail.
>=20
> In the other paragraphs (above and below) the man pages explicitly=20
> writes "in succession". I wondered why this is not present in these=20
> paragraphs. It could be on purpose, but it looks like an omission to=20
> me.

Hmm, I'm not sure.  I'm CCing glibc to gather their knowledge.

Cheers,
Alex

>=20
> Greetings
>=20
>              Helge
> > P.S.: Please send to <alx@kernel.org>, not to <alx.manpages@gmail.com>,
> >       since I'm deprecating that address.
>=20
> Thanks. I updated my scripts and documentation.
>=20
> --=20
>       Dr. Helge Kreutzmann                     debian@helgefjell.de
>            Dipl.-Phys.                   http://www.helgefjell.de/debian.=
php
>         64bit GNU powered                     gpg signed mail preferred
>            Help keep free software "libre": http://www.ffii.de/



--=20
<https://www.alejandro-colomar.es/>

--vJT49SzRgE+HtvyC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVP2q0ACgkQnowa+77/
2zLtGhAAga+QsCiJYOCId/JKa7o/NtKuwSDKUhhFdPeGlH2Oek0zIJ+01fSUFYec
dtFwR+BOASwGwEVi7HRbMko0Vl8LLN+PxSuYLXhHMzZqWl1C+YGY+ih7wQsbIx6c
XAPADq39wijr5tbf6KHAphHewnZXzmPsh4nrtFEKthYRDCtZf+FYvBdd78N89Lwm
jPH+beL261AY8seQ88HeYAgJmpoqtZ0h78gGANFtvgcY6tlYBjD8uqmmBVuv1Yl/
rJwjBybUJcB7C/ROV4Anm195Lp+NnUxAyjqpnxRuJLcMOMN4OnBTqG9gMr3zOx4y
ZzKajTCKuWJuy9AcNC7SnwwynfFKdD01vd1xvDeYJyciAXPCiKOQPLNLY9Tt8Pbb
bLR7Lma+4rFsHDVpPluDLmyYpO8XlJbpMEeiq81LSesrkALgvMq6iRAVBZba8S8V
vGqhD140myMCjswjF77v/XoRWKU8uomIP4pMt48TxFSgWFUfIx0LnW2lwe1aR1xK
YAnyuDMxoKOWlQJjW6LYhiUHZIZyR7Vq5wABUE6Yeybhs7Swr/XZDA6kCIY8e2Tc
2Hi2ZcDfYgbLkBLbRBy/to0ON39RxSC0khHBVJCyn2OMpPanKnqV0y8chIaECXQi
W9vesWq7c0f4g2HH8CE56gI4EeI3VbxuKrCskUlKURey5x32jIY=
=Ewrk
-----END PGP SIGNATURE-----

--vJT49SzRgE+HtvyC--

