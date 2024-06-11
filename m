Return-Path: <linux-man+bounces-1114-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F83D904055
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 17:44:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 48E89281954
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 15:44:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B576D2033E;
	Tue, 11 Jun 2024 15:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLt9PxW5"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 759122E417
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 15:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718120625; cv=none; b=CvqEuNbFauFdf+4HmjJyDEJ67WhauCYLQSjeA24YH69NHTVNrwY8eLma4knjUVQICWV0o+mcuDScRK/NoCHJE/QQ1LhIXz/KsdWiyUSX0c0ia+Evh9X/sckZoY5SCYBvKxVn1TwGqdYPYQeywPTOCRViaRPkeZgBYxWSRORNHDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718120625; c=relaxed/simple;
	bh=R5tDEDWf+igtLTDICeJMzDswOoijJ1D8vOxeR2055dI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nn9ECiwhoz9rJ2lmOysHwe27V32YzQBVKrqlNnh8hLvm4UHAGrr19zHMMoTGssLaVRsPEbV96krwlJXFR8+L/+pYkobF+EemZDuqCUWrAA15mfG1tNmZG8vr49UEEtXxm7Dj9B5ugV6EUPyl0+wMgVHXEUgpS+fz8vEhZwG5eXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLt9PxW5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5590FC2BD10;
	Tue, 11 Jun 2024 15:43:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718120625;
	bh=R5tDEDWf+igtLTDICeJMzDswOoijJ1D8vOxeR2055dI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HLt9PxW5h81u+x+6S1v1UU1Nu/vkESdeLcfxCiUBUi57IJVvxAV2nvFc3cNXI9Qw/
	 ZIw9VbiSBTXPCY1FszqXVFQv+7L/55D4jkgdNqivwYBNuUoKA0lktaFwaeLDDmLl20
	 uSqjtEB4XJsY0nh1HZXC0oTxjug1+z03/vrrmDp6Z00xEOGjG2dfwqVuIedK6u0iLS
	 GKnRxyt1+rX6ioQDrCmmNVn4hP0TFMcyvwek0xr6MPcb1H7rBMJozgVTIyEVcnHHGB
	 3lKzUfE3zl5EdFW7EbScSLMEAvmURqNzuKUtz6sg5oiO2rF/iu/24GLXvI6pt4fvzP
	 igueRlgFGvDDQ==
Date: Tue, 11 Jun 2024 17:43:42 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 02/12] tzset: state vars unspecified if geographical TZ
Message-ID: <tgilcn5bj44oeppjqhpgib2ev5lsxqmwoichu65tb4zxtnchgt@4vsebkuqzi3z>
References: <d054fc63-6ea4-425b-94ce-14402d448ccf@cs.ucla.edu>
 <20240611153005.3066-2-eggert@cs.ucla.edu>
 <qupp7ab3hqxer7mqiw55yzx5k3osuwzvwisdrv2ewksj7mdtgw@gll5krm3hxoy>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vtxzp3omngi2sbw2"
Content-Disposition: inline
In-Reply-To: <qupp7ab3hqxer7mqiw55yzx5k3osuwzvwisdrv2ewksj7mdtgw@gll5krm3hxoy>


--vtxzp3omngi2sbw2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 02/12] tzset: state vars unspecified if geographical TZ
References: <d054fc63-6ea4-425b-94ce-14402d448ccf@cs.ucla.edu>
 <20240611153005.3066-2-eggert@cs.ucla.edu>
 <qupp7ab3hqxer7mqiw55yzx5k3osuwzvwisdrv2ewksj7mdtgw@gll5krm3hxoy>
MIME-Version: 1.0
In-Reply-To: <qupp7ab3hqxer7mqiw55yzx5k3osuwzvwisdrv2ewksj7mdtgw@gll5krm3hxoy>

On Tue, Jun 11, 2024 at 05:42:44PM GMT, Alejandro Colomar wrote:
> Hi Paul,
>=20
> On Tue, Jun 11, 2024 at 08:29:05AM GMT, Paul Eggert wrote:
> > ---
> >  man/man3/tzset.3 | 8 +++++++-
> >  1 file changed, 7 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/man/man3/tzset.3 b/man/man3/tzset.3
> > index 8479b17b0..6e89dd530 100644
> > --- a/man/man3/tzset.3
> > +++ b/man/man3/tzset.3
> > @@ -63,6 +63,11 @@ In a System-V-like environment, it will also set the=
 variables \fItimezone\fP
> >  have any daylight saving time rules, or to nonzero if there is a time,
> >  past, present, or future when daylight saving time applies).
> >  .P
> > +The
> > +.BR tzset ()
> > +function initializes these variables to unspecified values if this
> > +timezone is a geographical timezone like "America/New_York" (see below=
).
> > +.P
>=20
> Do we want this in a CAVEATS section?

Ahh, sorry, I hadn't read patch 3 yet.  Never mind.

>=20
> Cheers,
> Alex
>=20
> >  If the
> >  .B TZ
> >  variable does not appear in the environment, the system timezone is us=
ed.
> > @@ -155,7 +160,8 @@ TZ=3D"NZST\-12:00:00NZDT\-13:00:00,M10.1.0,M3.3.0"
> >  .EE
> >  .in
> >  .P
> > -The second format specifies that the timezone information should be re=
ad
> > +The second, or "geographical",
> > +format specifies that the timezone information should be read
> >  from a file:
> >  .P
> >  .in +4n
> > --=20
> > 2.45.2
> >=20
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--vtxzp3omngi2sbw2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZocK0ACgkQnowa+77/
2zIiMA//fa+d8OiDAe0FHR368/SD1mHhRHEQUEHABP0LNF/IIkipREIHpBcl9pHL
nM2GeBwF56od80zCY2pm3LJyui0ilDqv0fqw8NJNKerHx0uemk7GqRYnN2yld4a9
yTo6wjvOWgNiTxzXcHqAmbxxQ/t6NRJsGob2ojTzkQKU9o196NAmRAOlY6si2gQ4
+0EGt8NZ6pyArluMYHsQOEUn0jctIV5VKb2jwM+pqe1t7KNvMvBo2LrnJLfpblWv
kxZMqfACwmGKz1QspXalfMXHtvxYi3bRsKPfudi6Q1aQbk9zx4Ja04LgLces2Mct
RzldDnGfmXeRO4nEyWacNqOcSBCblCQG4r+euUIe7KF4AQq4nOm7z+aCvhd4Uk4y
yxdgEXqh+yQXZebOlCawLfBJ5I3HuiBlYxzuNBZ/0X+U2xShCSIWhx08GGaPvxDs
PlfAwodfGeW2XajmiIRcqfP8G2ckv99orgHnlMp+NtiMLlNVfc9wRbYzAppVSQVy
AWiVGo2dVcFvRGDH0vUFd37nixjBeddy/rh5oPrN1GXvlsFgQ92WQUWyoX/SW72f
rwbe+lckSSbKGyv0PQzBEwGOsAOM28eEk4X42d9fxQRi2f0+jr/DtBdrM3z2St2l
OpKkK7EPNeTtzLO7UzPzzVlkWwjmq9Xe8VxlkV27sQh/MYyNVW8=
=mfMe
-----END PGP SIGNATURE-----

--vtxzp3omngi2sbw2--

