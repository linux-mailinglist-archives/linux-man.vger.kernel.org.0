Return-Path: <linux-man+bounces-264-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E2F8146DF
	for <lists+linux-man@lfdr.de>; Fri, 15 Dec 2023 12:27:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2DBBD283D83
	for <lists+linux-man@lfdr.de>; Fri, 15 Dec 2023 11:27:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DB36250E2;
	Fri, 15 Dec 2023 11:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E6IzuUqG"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266F32511F
	for <linux-man@vger.kernel.org>; Fri, 15 Dec 2023 11:27:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB4BBC433CB;
	Fri, 15 Dec 2023 11:27:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702639653;
	bh=eUMUdJojK04q+FHw8vOGQJQCBbrJBOKifi3MLdZjjnA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=E6IzuUqGGI9N55blKSXpW2LjZZThAybYDF3av7pdTY/wmC6r5s/B5R1uMdbRIqmEp
	 5Q6eqfTAlQQBBFU6SdymO9ISzakT9d5NQtXqOViRB6Pkwa6oRQzahx00jRoBJN9Aab
	 OJjIzSH4pU9S2K8jFKFTDdG/ze2aP5vnkEjIw0L54gYZNkaoBLEsxl70seYy7WnW3T
	 0k6RS3+Z6EfAAJi3kRpZ3fApVTGpLWXL7IYQyDPzxu7iUcW4yuir5N6FOVRyqeIUen
	 G7WvT/kU3W1yDVKN0mZggR0FMgiDGaFVKJlRjO+XIuJ1MZTOKxe2n/djPcxSXdR0Tc
	 UtHSwIX65lBLw==
Date: Fri, 15 Dec 2023 12:27:30 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Yang Xu <xuyang2018.jy@fujitsu.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/2] swapon.2: Adjust decreased value under
 CONFIG_MIGRATION
Message-ID: <ZXw4IuWiejiDqknd@debian>
References: <20231205063017.68690-1-xuyang2018.jy@fujitsu.com>
 <ZXw02jr6CaN3gBfa@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="UpFKvQHkTZADXq3o"
Content-Disposition: inline
In-Reply-To: <ZXw02jr6CaN3gBfa@debian>


--UpFKvQHkTZADXq3o
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 Dec 2023 12:27:30 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Yang Xu <xuyang2018.jy@fujitsu.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/2] swapon.2: Adjust decreased value under
 CONFIG_MIGRATION

On Fri, Dec 15, 2023 at 12:13:30PM +0100, Alejandro Colomar wrote:
> Hi Yang,
>=20
> On Tue, Dec 05, 2023 at 01:30:16AM -0500, Yang Xu wrote:
> > After kernel 5.19[1], the limit is decreased by 3.
> >=20
> > [1]https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/c=
ommit/include/linux/swap.h?id=3D6c287605f
> >=20
> > Signed-off-by: Yang Xu <xuyang2018.jy@fujitsu.com>
>=20
> I've applied the patch, with some modifications:
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/c=
ommit/?h=3Dcontrib&id=3D5da8280ed6eefb3d70f86281579c4afae89230b1>

Oops, my modification was wrong.  I've amended that.  Here are the two
patches now:

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D90ba8cf3ab2536bdc138986c4581c62a3c0b60d4>
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D9e160cf3fd27181a72ec2fb628f64e971510f9f3>

>=20
> Cheers,
> Alex
>=20
> > ---
> >  man2/swapon.2 | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/man2/swapon.2 b/man2/swapon.2
> > index c0e61cbc6..2bc477d18 100644
> > --- a/man2/swapon.2
> > +++ b/man2/swapon.2
> > @@ -164,7 +164,8 @@ Before Linux 2.4.10,
> >  .B MAX_SWAPFILES
> >  has the value 8;
> >  since Linux 2.4.10, it has the value 32.
> > -Since Linux 2.6.18, the limit is decreased by 2 (thus: 30)
> > +Since Linux 2.6.18, the limit is decreased by 2 (Since Linux 5.19.0,
> > +the limit is decreased by 3)
> >  if the kernel is built with the
> >  .B CONFIG_MIGRATION
> >  option
> > --=20
> > 2.27.0
> >=20
> >=20
>=20
> --=20
> <https://www.alejandro-colomar.es/>
> Looking for a remote C programming job at the moment.



--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--UpFKvQHkTZADXq3o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmV8OCIACgkQnowa+77/
2zLDQQ/9EpEVacpAOZ1yFU1pks6pXKHlIcZXTZFwNXia/OrepQpM6TtE4hM6T7Gc
JMDyyceRZV0tC1WMYsx5+ffiJAi9kxMcKCOr2f4ueQG92ATYuW12jWlJYo7Ok/+f
pVdeqSRDNqM9zVhS6WDfUnKVCU2q8hSHCfYoGYF9ywJ8cFZ0arW6p36lm7cnoh5X
yUadtPV1zAMGjhHAQrK689mgSzreYya2BeiQyFzpIqKwRC/KNlkR9vRUkkrTuSoT
cl4Bi9qd6jKBt+LGgpc1g3s9w6ZmzIw7ID6JKW8mlghs1gOq9PSa6Ajthoj0OLmR
/XZTLlVocrrtJOn3KHmSj6zzSfw6X5ow5n5YXZbJkQAhdyK8Lqb67PC2uHRO5xOb
PNwM7zr5ARAgfCgVZ2e7cDiKThqxoew0xg00aMWTamqPTc3dcSP2qQtRcv3aDQk0
mXLuahPkrNCjM55f0HMQgoNNrH0dLa+uQp62fgy1hgnUsFqBO6zIphwoaJ1iZYG1
xLLMZA4tASB1F8s8xisxXweDqbxVJg1Ocjr3Ac17X1Q0UgBXjwtBgt9WuMPEPZP+
nP+UgQG/gghnnwflNAPHqjrz8qYbQJQW3b855uRFyolwgzNRLruk6xWqCPaOY4PT
nepOunUIDCvRm3xmLdc9P0u4cR2aI5VIOXR1nTNmLIf9guDbqUc=
=JXQM
-----END PGP SIGNATURE-----

--UpFKvQHkTZADXq3o--

