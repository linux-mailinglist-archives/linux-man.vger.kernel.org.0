Return-Path: <linux-man+bounces-1426-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BEC092C40C
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 21:47:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CC435B214B6
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 19:47:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3338413B7BE;
	Tue,  9 Jul 2024 19:47:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdbZ4SQD"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7FB31B86DB
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 19:47:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720554446; cv=none; b=l6i7vNTvjAZ/3aVGIoJouCs2gpJmSef1rrmSnz0hsNkssHSEWFBEStQMmvnjduG+r6rRFisz7G1PUywGoOw5GI7aK+nPJTgxkgEP5Pr8mnheai0WQ9udeFFHUh4h8GMl10TyzVl8MQRe8xVgsWo1X7Vus3CJN3W5KuIHc658oFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720554446; c=relaxed/simple;
	bh=ogzve8aToRcvz6icSNDGw/mXjdjiWNYRFIeIBtRyimM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y/3EZsfz2WFxjJQlz5AonU/MSFATNzOa+8GWMWaM52fdI6Rg4XQCQkhosMphAcxQSc8TVekj7OkTObK7jHOoVDg58h8havL4fjak47fSN3LjJT49f0cercS4OqUqIL+3SQO3eKuIy589zLgH+PHSXmdFtfVTQ5+ASNAy5VgTyX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdbZ4SQD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4AA7C3277B;
	Tue,  9 Jul 2024 19:47:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720554445;
	bh=ogzve8aToRcvz6icSNDGw/mXjdjiWNYRFIeIBtRyimM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pdbZ4SQD+A17sz6Gyyf6FFXn+tNajtjK+cwrzWVD7I5PPGF+X7PuzjdtodV3pzPru
	 0iOjmgEXPKBMm5/t2EZQV/1BVKKO8ehBqr1wLCJ+jgWLlP7WF83pU7d4rQrNz6LroO
	 OLnQ0EZCY/3KqC0XZ+czrHX52y1/yL7xcyYHaBws+SWN7X4RIhAV09pBWrKati+Qf2
	 ZoXCJ+iTWF9yhB8g5tGBKkurconK0uz8Pket4x/4i4R+cKcEGvAu6lu9q6c95CnR7L
	 4D8X/ARmlzhFFXm4cL5OG9gKAWXQPqwIzNvjdFGyWU7UJ7gpHztb4d3XHh7wpC2zCf
	 gwXQtXbPhN6PA==
Date: Tue, 9 Jul 2024 21:47:22 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] sigaction.2: setitimer(2)/alarm(2) timers yield
 si_code=SI_TIMER too
Message-ID: <5qu7xeen2fmmht3j6k64tv4we6f4s4xe27lwfhzwg533q2kdf5@u7cqsyfgueei>
References: <xnwurjcbcwr3nrdpeqtt3afnafem7pbvlkiula5vvnb2mummw6@tarta.nabijaczleweli.xyz>
 <l6nvhqqcvytn4kgx6fnh4kalip6sqhvh2m75q5ee32n7k4vy2d@razgfd4n2zn3>
 <5j5iwu7spgp3jxwiiiup5fxo2cldim4vaexgcnmzwzpe5gtwnc@tarta.nabijaczleweli.xyz>
 <bgvpjt2rb7lkzphzxix7htcuyp2kfgxfzndfhwzr7i6ll2klxy@kuj35deb4dfh>
 <i2mpm6u2p2jphzecto6oltr4wmjqcnvqxjawtztyrl6mm6f675@tarta.nabijaczleweli.xyz>
 <eimffawrhk22n7hx6wcc3c3lqmukwkzxfjyglnzgau3cbvue3d@njs4kcjerncp>
 <5ydleo2v2m4nxi2w4tiqysq2hmoxnq7o3sc7767xbkgcsmdoyy@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qg7wf3ic4kqwf64b"
Content-Disposition: inline
In-Reply-To: <5ydleo2v2m4nxi2w4tiqysq2hmoxnq7o3sc7767xbkgcsmdoyy@tarta.nabijaczleweli.xyz>


--qg7wf3ic4kqwf64b
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] sigaction.2: setitimer(2)/alarm(2) timers yield
 si_code=SI_TIMER too
References: <xnwurjcbcwr3nrdpeqtt3afnafem7pbvlkiula5vvnb2mummw6@tarta.nabijaczleweli.xyz>
 <l6nvhqqcvytn4kgx6fnh4kalip6sqhvh2m75q5ee32n7k4vy2d@razgfd4n2zn3>
 <5j5iwu7spgp3jxwiiiup5fxo2cldim4vaexgcnmzwzpe5gtwnc@tarta.nabijaczleweli.xyz>
 <bgvpjt2rb7lkzphzxix7htcuyp2kfgxfzndfhwzr7i6ll2klxy@kuj35deb4dfh>
 <i2mpm6u2p2jphzecto6oltr4wmjqcnvqxjawtztyrl6mm6f675@tarta.nabijaczleweli.xyz>
 <eimffawrhk22n7hx6wcc3c3lqmukwkzxfjyglnzgau3cbvue3d@njs4kcjerncp>
 <5ydleo2v2m4nxi2w4tiqysq2hmoxnq7o3sc7767xbkgcsmdoyy@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <5ydleo2v2m4nxi2w4tiqysq2hmoxnq7o3sc7767xbkgcsmdoyy@tarta.nabijaczleweli.xyz>

On Tue, Jul 09, 2024 at 09:36:34PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> On Tue, Jul 09, 2024 at 09:20:28PM +0200, Alejandro Colomar wrote:
> > On Tue, Jul 09, 2024 at 08:43:40PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> > > On Tue, Jul 09, 2024 at 08:42:14PM +0200, Alejandro Colomar wrote:
> > > > On Tue, Jul 09, 2024 at 07:53:34PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> > > > > On Tue, Jul 09, 2024 at 06:38:42PM +0200, Alejandro Colomar wrote:
> > > > > > On Mon, Jul 08, 2024 at 04:03:40AM GMT, =D0=BD=D0=B0=D0=B1 wrot=
e:
> > > > > > > Applies to Linux and NetBSD.
> > > > > > Is this non-standard behavior?
> > > > > In the case of setitimer(): "obviously yes" because the interface=
 is
> > > > > not part of the standard.
> > > > The POSIX.1-2008 standard specifies setitimer(3p).
> > > But the current standard (-2024) doesn't.
> > Hmmm, do you want to send a patch for that?
> absolutely not, even the subset I have for voreutils was hell

No need to patch all pages.  Just the ones you want to.  I don't expect
anyone to update thosands of pages.  :)

>=20
> > Anyway, for 2008, was it non-standard behavior?
> It wasn't "non-standard" so much as it was left up to the implementation
> (still is), except for timer_create().
>=20
> All implementations agree here, so there's no point in splitting hair IMO

Okay.  Then, maybe, I'd remove the "Linux and NetBSD" bits from the
commit message, and just say something like all implementations do that?

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--qg7wf3ic4kqwf64b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaNk8oACgkQnowa+77/
2zJosg/9HW1itcFPDA2g4gspnEATl/WUx/S0aA9bXca9l5kg/ZTjXeR0t28RuuNs
XSg3Oz6Fv0ryJjkv6U5f5b7cIhTzv4xSB65LYOuZknFnbECV+denroQI5ojnv3XP
O9xKwJoqXGwf1SE5VNOEXrnhAgw2Z5LPOTFF+7ToCe0DqHsgxxMqBnNfdASVUtgq
JgoZxOHrhrpmyBhAQ72FvtgoO9OZn2urXn7SCRtj7KYYeipAEYu2KZnn75GOp/5X
c2U0n6/y4ykFBnltX2Y9hOZs2dmLEnz8j800MAtH0IWUeMzJa4q2FG5fdPlW4hYs
bzXMUvz1GhY03qJDagiV37P36pIA1BFdWXGLVGykJr+pEorVjM5pIgEdLOSs5mjy
wvNh05EupIznQLvuYq5Ppme6n9mv8u543kcUjg5jLTCassnj1Ye1hZGswiALRzu2
xMJsuWgM3Ca/LrDoGvFFptFKaSrTy+YHMX6KCzh+ZJ6Kks1W8MJ5/hiB6k6Xa4pk
3mxQ6PsOP14Y+IZHf/HeCF8g8m34YWNHMQWczSgNKUdxEGToXX18cDBxrlxcOTzR
7YoPbzIvvBYMnpkZYsUvqQWf9ytovdOG/MlOZp3D5tZtwn8nucSE/Ww9pbY2VVn8
a1uv/IrG/7zy66vDne192a7ZdvO4qFWTgoIp0VaE4Npr0oSfCAA=
=4U1S
-----END PGP SIGNATURE-----

--qg7wf3ic4kqwf64b--

