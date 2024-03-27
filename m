Return-Path: <linux-man+bounces-702-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6B488EFF9
	for <lists+linux-man@lfdr.de>; Wed, 27 Mar 2024 21:14:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 36FAF2991D3
	for <lists+linux-man@lfdr.de>; Wed, 27 Mar 2024 20:14:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1DF214F9C8;
	Wed, 27 Mar 2024 20:14:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YgYxWjMV"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 603A512EBF3
	for <linux-man@vger.kernel.org>; Wed, 27 Mar 2024 20:14:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711570476; cv=none; b=F8MOCe8FE0F8ZMVz3X8g8IocQXyBwrR+0cjGqhJLZUNCxMalqfINI2M9PLqXr4sZLXMef3LtXWSjcmNlfL5On9IlShKHtP6QfBHeJBAgizn6PqtjtAlVSus2AH0uY2W9FYBj9bDZPTN2mqOOz/KEd8OzubQAChdVgcU1LYlj0Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711570476; c=relaxed/simple;
	bh=SwqghbY79xHNN4yfg8ok8Ofl2JRdvgKBJXrMzHg22ZI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p6gm/L4f8TtsCYPpkQ3wIpIPTBOWPhOUh6S6Y04p1hZTKGPeSsSvnSouiWwKxxN26vpnS4j1o+3R3SQ3rK0LXuSy95YPJ6t2N5qNxDTw1O3Wfxcl7gQbSRHis2KqycbjGZhWoDFQUYpG0yGAozyQizPaey1wOLtgBBtiLmmf1qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YgYxWjMV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38888C433C7;
	Wed, 27 Mar 2024 20:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711570475;
	bh=SwqghbY79xHNN4yfg8ok8Ofl2JRdvgKBJXrMzHg22ZI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YgYxWjMVbE9A8wZ5cC13MfHsHOQzmLGIsC3iYRoHSazJcMemjISVD5hkMEYEN/XcL
	 Js6tJ7BOMs7FLOxNlUkcUnXHqIItS2nYj896A8dMCR4JtE1By/WEDhYJTWE/MLd5Jb
	 UTFJ8wJGhZLxkVZja1gBB8ly1hAdHXyYbjOyHZX9bU17Gc2eAA/lzgJVDcOfjQXz1E
	 lRxK9acFLvn2RVD93ReTQFR5rA52osA/ubGhkJ6qQ7wUys1lqU0S/W3nuS58p8Ko/f
	 4D8ZlhKtDzuKnbsLaR024OgGADP0W/LNuV0DUSUzNX762Z7/ANuorDPLaC7mcJN12f
	 okdPoqQE/L2+w==
Date: Wed, 27 Mar 2024 21:14:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Fedor Lapshin <fe.lap.prog@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] getgrouplist.3: EXAMPLES: fix error handling for
 getpwnam(3)
Message-ID: <ZgR-KSd7GnuegUNf@debian>
References: <CAJ_gjBp=_zdy3p3HdWSDD9XHexfNznhwSSCkASe-c71FHA99wg@mail.gmail.com>
 <ZfTnYiGBuXUDzWzG@debian>
 <CAJ_gjBrWz69eoo1_eGMXZOwY5+_=rPesmD80GFZRKYhH=8wH7A@mail.gmail.com>
 <CAJ_gjBon2AS+j830RBe_FmvBtYqkiR8eQeLAz_+VfcmoPZh-2A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jkr0L2aKJO7BR0fZ"
Content-Disposition: inline
In-Reply-To: <CAJ_gjBon2AS+j830RBe_FmvBtYqkiR8eQeLAz_+VfcmoPZh-2A@mail.gmail.com>


--jkr0L2aKJO7BR0fZ
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 27 Mar 2024 21:14:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Fedor Lapshin <fe.lap.prog@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] getgrouplist.3: EXAMPLES: fix error handling for
 getpwnam(3)

Hi Fedor,

On Wed, Mar 27, 2024 at 10:23:21PM +0300, Fedor Lapshin wrote:
> So sorry for the email to your personal email without the cc!

No problem!  We humans make mistakes some times (and AIs make them all
the time).  ;)

You can configure git to always send to me and the list for this
repository.  I have this in the man-pages <.git/config>, which might be
useful to you:

[sendemail]
	to =3D linux-man@vger.kernel.org

> =D1=81=D1=80, 27 =D0=BC=D0=B0=D1=80. 2024=E2=80=AF=D0=B3. =D0=B2 22:20, F=
edor Lapshin <fe.lap.prog@gmail.com>:
> >
> > Signed-off-by: Fedor Lapshin <fe.lap.prog@gmail.com>
> > ---
> >  man3/getgrouplist.3 | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/man3/getgrouplist.3 b/man3/getgrouplist.3
> > index 41389b6c3..cf23dfa78 100644
> > --- a/man3/getgrouplist.3
> > +++ b/man3/getgrouplist.3
> > @@ -162,10 +162,11 @@ main(int argc, char *argv[])
> >  \&
> >      /* Fetch passwd structure (contains first group ID for user). */
> >  \&
> > +    errno =3D 0;
> >      pw =3D getpwnam(argv[1]);
> >      if (pw =3D=3D NULL) {

> >          perror("getpwnam");
> > -        exit(EXIT_SUCCESS);
> > +        exit(EXIT_FAILURE);

In case errno =3D=3D NULL, there's no such user, but the call succeeded.
Calling perror(3) in that case will be weird.  I suggest:

	errno =3D 0;
	pw =3D getpwnam(argv[1]);
	if (pw =3D=3D NULL) {
		if (errno =3D=3D 0)
			fprintf(stderr, "'%s': No such user", argv[1]);
		else
			perror("getpwnam");

		exit(EXIT_FAILURE);
	}

Have a lovely night!
Alex

> >      }
> >  \&
> >      /* Retrieve group list. */
> > --
> > 2.34.1
>=20

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--jkr0L2aKJO7BR0fZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYEfiIACgkQnowa+77/
2zJUPA//Yvn46IwadoBwsDj6uuyyGdFaV+MQQ+RkIsY7R53vxHWNdq+Bk8Fxc9s9
EEcqXALdEE6wNG9Izqo2qCVblC69FJFd6us1yqnSALaRMDGNsCvsBXcuZgahSJLr
jklt6GPOxWMAZ6+Gw9cg/nHUHUp3IdhEvp/UXv/yl7zfeZKq6Rt4JngLWLvk08zP
Bc2Io6hMUfSQuLB4VyuRAIg3c1O3AIFYBtd0M9XtdTXzqGhF5PDHwaBvnV97px5e
ed1eDVyRieIF693D2iAXAEftlHKj8QcW5m3sfi3klg8JF4K5J81TwX1kUbvhJwAj
HU0zi80n1OjMDd371kG+9DGKB+21o5G2HYgz3Urq4/R2H3XonI2FLiSiCrg/1AYZ
BQt9SBxuu/R1rcpAqR5zl4yOIkuB71+0QDaptPz8yh/8js02mc2MZJJHmB9s0/3P
wFj0t1Gh5iRa89BkUI+p5PC/2SJNcVpPsMQtcX2N+LqZNQwO4/1QSU+dDs44zlpm
bVDAtshmNy7gmknq7qJdqQ8fq4Cwv3duzb9BED9zG34OQxREAko9Fijf3bRrDnkU
vdNU1t5ipEtQUGKIwUnJZvWoZe+5/oQLMnGBG3NsnxOwkWO/iQHMVtVW8xy3AHAs
sJndCSkMoRugO9AvGWLTHG6Xc8K/q+T4k3EcO6QeVYrWsunm9Gc=
=m9B/
-----END PGP SIGNATURE-----

--jkr0L2aKJO7BR0fZ--

