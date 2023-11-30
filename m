Return-Path: <linux-man+bounces-193-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A09977FFE8E
	for <lists+linux-man@lfdr.de>; Thu, 30 Nov 2023 23:38:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 29ED2B20DAB
	for <lists+linux-man@lfdr.de>; Thu, 30 Nov 2023 22:38:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C98ED22070;
	Thu, 30 Nov 2023 22:38:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TAtyccHD"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87B045FF1E
	for <linux-man@vger.kernel.org>; Thu, 30 Nov 2023 22:38:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65551C433C7;
	Thu, 30 Nov 2023 22:38:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701383909;
	bh=cbHDKr+vBrMtxBJfdPOKsSfzG0zaWIyBDsjNjhlYd3A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TAtyccHDOU48qxIdbnMWftFndj3YH0N4WONvNIILMuQpzgA0YpxR6zCeT2mR2+UwQ
	 U64OBGYziR82CcIUurW5hnyssfLcNAKd0/2awYgGp+RIfcxO4KFMOjZOhlyvLAZNnG
	 CweN1UWHUfCAddgK5Gddd7bPRi5WO1YKBoeYCdJvdj9YzPDQSDr+28xJOTuMzgBLh0
	 B62m2mZA42xrlONlHDnCCAfk/6z8/ZQ5uy711AgDyw/Z5FojGDI7JSdojhs9F5u073
	 nQ0F5JXgLrMS5mY/bDUjpI7C2pob3HrD9tqtKACJxw86L5Mw/Vh4/U7fevLfS33fAa
	 GvdcGTsm73Iyw==
Date: Thu, 30 Nov 2023 23:38:18 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org
Subject: Re: Optimize script for generating LinuxManBook.pdf
Message-ID: <ZWkO4qPC4BxkwBNm@debian>
References: <ZV4XNnNlv8OK1B1m@debian>
 <ZV_OXhw7V6Vk1HBR@debian>
 <ZWCNHM9qQnK96ksZ@debian>
 <17198161.Vt6cx1TxTY@pip>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mu7jWMvDTsd1dFIG"
Content-Disposition: inline
In-Reply-To: <17198161.Vt6cx1TxTY@pip>


--mu7jWMvDTsd1dFIG
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 30 Nov 2023 23:38:18 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org
Subject: Re: Optimize script for generating LinuxManBook.pdf

Hi Deri,

On Thu, Nov 30, 2023 at 04:56:38PM +0000, Deri wrote:
> Hi Alex,
>=20
> I have attached the latest iteration of my work, managed to knock two sec=
onds=20
> off the current code in your git.

Nice!

> It no longer uses temporary files,

It is creating a temporary dj.Z file.  Is that a leftover?

> outputs=20
> the pdf to stdout, can be run from any directory and runs groff once.

Great.

> It replaces the complete LinuxManBook directory and the executable is now=
=20
> called BuildLinuxMan2.pl.

I'd prefer if the huge groff code would go in a separate file.  Would
that make sense?

Thanks,
Alex

>=20
> Cheers=20
>=20
> Deri
>=20
>=20



--=20
<https://www.alejandro-colomar.es/>

--mu7jWMvDTsd1dFIG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVpDtoACgkQnowa+77/
2zIkRg//WUczcSOk9POjDJUP7aWunDS0WbHtppIJ2CqNMVxSNRWr2juhWGWJRt0S
FloiSVyIBx3nrSr1xBAOqx/pv6H0+uDxflwTnnaVqYI0RB836noYQaq0u381Eh6/
qpTcWopVaSPEru+V0ZW/MsrObrHuh59Gkffe96z70ZVS2e0QYcNpD5wI5y30FYVr
jVJpMv1J4iezXVMcQfhPT24dJyQjZs+I2WZeyTMGaZu9MfSviPdCNeagCUcSFEIK
vl1OANZaqipcY2HP8vndFTRyz7pSuaCAFUROnglM+m3NM39fo2DolmkXYKVMwvoD
HO2HXY1XDNnoVFkk/Vh3V52OUKYn7M7UrkZtERBloMGWw6kZhrAhugF6obGiSBNY
0EyIzoaVRMq70vQgNwxA3CIkrBfPuh3hlklRFtNh7cZ8MfYsO50o107TJ163pu7O
pVCqg3hdfO87iGfndXc/mH9COdfdlZGRbyemgHz69oZ24rLnIAjAxkJDEdUWjz9m
DZXoZKyvLnDf8206P00nqEQg3tkgH5IEcMYApQhavUXzOEKclp80LV/aexOgUJn2
Q0wXfYSbVvw1vRKQQqPpoxx1VJU0OsrAN1EoJ7QvkIDHv7MkFPj7EgPUxu3hM2TY
f8ecnMeGrPVCm/JyfXrdCWHGVVHlni1NOkyOxaosOgDabG7RbZg=
=Mqvo
-----END PGP SIGNATURE-----

--mu7jWMvDTsd1dFIG--

