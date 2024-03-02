Return-Path: <linux-man+bounces-495-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B2286F29E
	for <lists+linux-man@lfdr.de>; Sat,  2 Mar 2024 22:54:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 254E11C211DE
	for <lists+linux-man@lfdr.de>; Sat,  2 Mar 2024 21:54:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 804A742057;
	Sat,  2 Mar 2024 21:54:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQarCAoQ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40AEB4122C
	for <linux-man@vger.kernel.org>; Sat,  2 Mar 2024 21:54:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709416472; cv=none; b=i9ydnjZzw76Ks4lSRGJkp5w1bZGSciCutpS1R6vF9ZyjhietvbcCzSmckXy4Z06ilUk+ibP8ojr3JPcFAlYyjK0s43mh1Egi7FRALXevxVzUbvntEDdaOjoV9V0jzUUUfjHPLh59hJUL03Gf3WYIeLSHC4/ddexpWmQLtsPnLgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709416472; c=relaxed/simple;
	bh=uMv6oiXeNOjWjqSPq+swo5A7BCWrnItuHgdLUODFrf0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Oe8X4NaTQZKl1Kp9GpA/jIMzYUjdIHtZHc8sSqco1tj0FzxJg8ICfI0Y9E8LRtT6k9uKrHwZy7/K34OYAj21ObSNL+uRPLMN0yj3Xs45E2jac9w5wpBcvJCfh5q+l0keWJu2G3IB50C2sr7RGMkaC4FmsrYF6VVQ+/0W7gRFixE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQarCAoQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C721DC43390;
	Sat,  2 Mar 2024 21:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709416472;
	bh=uMv6oiXeNOjWjqSPq+swo5A7BCWrnItuHgdLUODFrf0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AQarCAoQcStfY9j5qzSdp9CVuxsWNuu+aPpIjLrvkyXuHH8K0nmL0jqIeCN7peZB9
	 A8VOZ7Z3dFIAwSzSQ8xJo/QymNWGgN22CPCcihifNnRE4KTmjiUCOutHJgsimV7oe4
	 MJrfWoX8OO5WnU0OCsZxCS9+VeRk+SNIbD7iaV+4PMWRKyNXcAx3D3re7Zb8/a0coR
	 yCc9lqt9XH2KpW60EZ/ovOq2CwPUAGsFP1q4vCZ3P0SIAjHoio8muysVpQ/fvDpfnN
	 RjTGmoIUqgIYCauhRia3RzpO7EYkNEg6EX0oC4UF5O8y6suNzBRDf2lr9qHR6VI+Kl
	 0q/sp05iEOH9A==
Date: Sat, 2 Mar 2024 22:54:16 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Morten Welinder <mwelinder@gmail.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org,
	jsm-csl@polyomino.org.uk, newbie-02@gmx.de
Subject: Re: Man page issues: logb, significand, cbrt, log2, log10, exp10
Message-ID: <ZeOgFPCtzqY90kIR@debian>
References: <CANv4PNkVv_0eLgiSP3L_KfC-eZJaVLZ5AP1AGfD0GNrR5M4Hrg@mail.gmail.com>
 <ZeEnJB96mMC5bfBz@debian>
 <CANv4PNmMpiwfv5acr7U6VEVe7PE_AMTzkkpNoNN9jrtVzk_93Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GpN2BNHO/z4HmDsp"
Content-Disposition: inline
In-Reply-To: <CANv4PNmMpiwfv5acr7U6VEVe7PE_AMTzkkpNoNN9jrtVzk_93Q@mail.gmail.com>


--GpN2BNHO/z4HmDsp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 2 Mar 2024 22:54:16 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Morten Welinder <mwelinder@gmail.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org,
	jsm-csl@polyomino.org.uk, newbie-02@gmx.de
Subject: Re: Man page issues: logb, significand, cbrt, log2, log10, exp10

[CC +=3D glibc, and those involved in the glibc bug report]

Hi Morten,

On Sat, Mar 02, 2024 at 04:17:36PM -0500, Morten Welinder wrote:
> I think what happens is that the compiler (not glibc) computes that
> exp10 for you and that the compiler happens to be more accurate.
> Here's what I get for the loop:
>=20
>   for (int i =3D 1; i < 20; i++) {
>     printf ("%.20g\n", exp10 (i));
>   }
>=20
> welinder@CarbonX1:~$ ./a.out
> 10
> 100
> 1000.0000000000001137
> 10000.000000000001819
> 100000
> 1000000
> 9999999.9999999981374
> 99999999.999999985099
> 999999999.99999988079
> 10000000000
> 100000000000
> 1000000000000
> 10000000000000
> 100000000000000
> 1000000000000000
> 10000000000000000
> 99999999999999984
> 1000000000000000000
> 10000000000000000000
>=20
> Here's the bug report to go with this:
> https://sourceware.org/bugzilla/show_bug.cgi?id=3D28472
> Note comment 6.  It is clearly not a high-priority item for glibc.

Thanks for that link.

I agree with glibc that the standard specifies that these functions need
not be precise.  That lost precission probably results in better
performance.  Most programs won't care that these functions are
inaccurate.

If you need a correctly-rounded version of these functions, which is
perfectly reasonable, the right thing to ask is that libc implements
the cr_ version of these functions.

I also understand that adding functions to glibc isn't straightforward,
so glibc maintainers have reasons to not do it at the moment.  In fact,
lately I've been leaning towards thinking that libc is a huge monster to
which nothing more should be added, at all.

How about writing a new library --maybe call it libm-cr, maybe
libm-cr-pow, maybe libm-cr-exp10, depending on how extensive you want
it-- and add cr_exp10(3) to that library?  You could do that, and just
support the systems you need to support.  The effort would be certainly
smaller than adding the function to glibc.

Regarding the manual pages, I don't remember from the top of my head if
there's any page documenting that libm functions are imprecise.  I would
prefer documenting it in one place, rather than adding caveats to every
libm page.

>=20
> M.

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--GpN2BNHO/z4HmDsp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXjoAgACgkQnowa+77/
2zINfg/7BYEdmNvs/knAaMblJwwcDI9spGHjIYc7AaMsr0W1jo1soKNZ21bpO+ub
hBun8Ldv/6+99Zqe3K4Gn6Of3obQhoKj96wltZGYKI9gf5W1Lo4xCrJir2LgmCuj
moKiXv1K1udEfvt88jtEulQd4mksSiVATjDyfZN32UfSGSvM6nvZTCzzhJXD/qGj
1MFOWIVu5d9vJ3oLG5uVSlrDkWWmHi/hdILZJTSuwfDyCQXiWyR5ven/KXyDRvj4
bCNQDvqS9iN7oayvM8uPLUpEnMfZyiCmfnpNB7G43MV2NOnT5LHhhjvVTUZ9x5uN
rjJtJ6c3eNXAblHsmhJKxmsiUuyd14ETv0ilAjnERQEpmgDExvHq+7vDppUw2cbi
FDcIf/58zvtF3EukENYT1O4tc+yxA2vJ9wkqXb3Nyg/G0M111C/Nrkm/awKmtqNY
sbHoyrrMW/4HanwZru3eYyMiG1B1jMjOzu7NYmN0sezoo9NJtKqgB2xrQHxwcAp3
M1m5ivQV0bZQ9gR62R2Zda7IzBFGEt0sF6dUDmtdzSG6f4KXlU44sOLg0Xmg1LtW
gc3vWi0Z+oOPo3Y0hCuHniSR0EXG55OfAkh2flkgj1qWVXkUk7kO/rkfZZo398dz
FebyFGCo5KsCALUeNnAhXqF3DC+PZiChk2CjurXPGIpAn4Xlerw=
=J6yH
-----END PGP SIGNATURE-----

--GpN2BNHO/z4HmDsp--

