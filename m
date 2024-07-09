Return-Path: <linux-man+bounces-1428-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C462F92C4FC
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 22:48:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A9341C21750
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 20:48:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18464146D74;
	Tue,  9 Jul 2024 20:48:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XB6XCoQ+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB9F94D8D0
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 20:48:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720558119; cv=none; b=TDkmzvFmsdnWdv/Exr1TNkyZxLBlf+d3lvvZsQ5vHfQDnhSPsjrcBYSyoVJYfSuywEYg+gNQZ56ldjdmUBeKUkiXiGZLKxbNI6yAYCKUJsCSj1VpE5p9IvZQAtKdbSF6wgbx+nYvbmviwpgOEXHI75LOoBChi/M1wNFoosxitvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720558119; c=relaxed/simple;
	bh=9xnASNBvGBgHWwomU4T4IomeMZyCsTwMZ6vHyPVJhE8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=snw0eKg+8Qaf2btqZywtB4YpFmaJheqetQIQklB3NE7xV60oOcSOgk9t+SMyv5SFp7/RAwnvvYAI9loEQRsRlzg7Tbs7bxRnRu0fdwq7fvC1B31xKR8TvF9byhd+s+52lkaN/jyqndWI02PdoaLvkIUMM1OlbqfClrWpvjjNbPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XB6XCoQ+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2194C3277B;
	Tue,  9 Jul 2024 20:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720558119;
	bh=9xnASNBvGBgHWwomU4T4IomeMZyCsTwMZ6vHyPVJhE8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XB6XCoQ+mjrCML+zcrUf5NTEC970qL89/JE1qT1J6xPY/NOGrcZ2/PAbkspm5Gp51
	 7pRPHhN0Ntq5E7RkygufyY1c/x1Aueher/CtNGYZ9+iyVX7R9kTwFV7St3Gb1OE7fx
	 niviDckY+n46K9sJAGF8VikkULu7Ms6nD46TNjwSfkw6/NdtYwGgd+RWA1vaxi4iYu
	 OueA0uLne/ejgZ6ckUPqs3djtg8haWh2CPE28dL3DYSevWIAzhKjbBHQKxTl1TW3zD
	 aSuzAW8kbl4hw2Z8SmIO04aGYxi+AiVEDsRSAxu/9uEGwdJFOzCaLUgP0kP7WKjfU3
	 ca8Gpk3zH6RCQ==
Date: Tue, 9 Jul 2024 22:48:36 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] sigaction.2: setitimer(2)/alarm(2) timers yield
 si_code=SI_TIMER too
Message-ID: <yih3rw3544itslu2skdb5ok2c3musinqn2fxono3q2pl6oesd3@r5e4eyctfcwt>
References: <xnwurjcbcwr3nrdpeqtt3afnafem7pbvlkiula5vvnb2mummw6@tarta.nabijaczleweli.xyz>
 <l6nvhqqcvytn4kgx6fnh4kalip6sqhvh2m75q5ee32n7k4vy2d@razgfd4n2zn3>
 <5j5iwu7spgp3jxwiiiup5fxo2cldim4vaexgcnmzwzpe5gtwnc@tarta.nabijaczleweli.xyz>
 <bgvpjt2rb7lkzphzxix7htcuyp2kfgxfzndfhwzr7i6ll2klxy@kuj35deb4dfh>
 <i2mpm6u2p2jphzecto6oltr4wmjqcnvqxjawtztyrl6mm6f675@tarta.nabijaczleweli.xyz>
 <eimffawrhk22n7hx6wcc3c3lqmukwkzxfjyglnzgau3cbvue3d@njs4kcjerncp>
 <5ydleo2v2m4nxi2w4tiqysq2hmoxnq7o3sc7767xbkgcsmdoyy@tarta.nabijaczleweli.xyz>
 <5qu7xeen2fmmht3j6k64tv4we6f4s4xe27lwfhzwg533q2kdf5@u7cqsyfgueei>
 <p4qolypdt4njg2dcmnopcqhxkb2z6lqtkqahsppq2auulhrp63@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ae4tj23rqhqsbgts"
Content-Disposition: inline
In-Reply-To: <p4qolypdt4njg2dcmnopcqhxkb2z6lqtkqahsppq2auulhrp63@tarta.nabijaczleweli.xyz>


--ae4tj23rqhqsbgts
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
 <5qu7xeen2fmmht3j6k64tv4we6f4s4xe27lwfhzwg533q2kdf5@u7cqsyfgueei>
 <p4qolypdt4njg2dcmnopcqhxkb2z6lqtkqahsppq2auulhrp63@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <p4qolypdt4njg2dcmnopcqhxkb2z6lqtkqahsppq2auulhrp63@tarta.nabijaczleweli.xyz>

On Tue, Jul 09, 2024 at 10:42:24PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> On Tue, Jul 09, 2024 at 09:47:22PM +0200, Alejandro Colomar wrote:
> > On Tue, Jul 09, 2024 at 09:36:34PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> > > On Tue, Jul 09, 2024 at 09:20:28PM +0200, Alejandro Colomar wrote:
> > > > Anyway, for 2008, was it non-standard behavior?
> > > It wasn't "non-standard" so much as it was left up to the implementat=
ion
> > > (still is), except for timer_create().
> > >=20
> > > All implementations agree here, so there's no point in splitting hair=
 IMO
> > Okay.  Then, maybe, I'd remove the "Linux and NetBSD" bits from the
> > commit message, and just say something like all implementations do that?
>=20
> Okay, wider implementation survey:
>          alarm     setitimer  timer_create
> Linux    SI_TIMER  SI_TIMER   SI_TIMER
> NetBSD   SI_TIMER  SI_TIMER   SI_TIMER
> FreeBSD  not       not        SI_TIMER
> illumos  not       not        SI_TIMER
> OpenBSD  not       not        N/A
>=20
> (Well, OpenBSD doesn't have POSIX timers, so the value of comparing it
>  is questionable.)
>=20
> I wouldn't call it a "Linux extension" because implementations are free
> to pick anything for setitimer and alarm signals (just like they are free
> to implement alarm in terms of setitimer).
>=20
> But also clearly not all implementations do this.
> But also /some/ non-Linux ones do.
>=20
> But also saying something happens "Under Linux" here is goofy,
> because these are linux man-pages.
>=20
> Maybe NOTES: "POSIX only guarantees SI_TIMER for signals created by
> timer_create(2). Implementations are free to also provide it for other
> types of timers. The Linux behaviour matches NetBSD."?

LGTM.  Thanks for the research!

Cheers,
Alex

>=20
> Best,



--=20
<https://www.alejandro-colomar.es/>

--ae4tj23rqhqsbgts
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaNoiQACgkQnowa+77/
2zLv/A/7BjIQRRAHbPPUPg9qezJ4eSHmknhc04XgSf64w+fFMZk91c9e+68+0YfL
2DyYjS+850mf0SNGQohOdiqNA2TmNRybuyHMNoLSCgtS4sLggaC1rthNxGVdMesQ
ttvAGvW9/BUoSZaaH4/1ZE51LpSX0DdlQenmX7OYX6McW63jAU0H746hDwazG8JK
CZfr4+hLz9WFddTiZuStAqTYDyLkwVaSqvW+EoecX0k48GOE1f41fcByTY+1DsvX
+J7eMsxntR0qRufyf90wK8rHmBPl+J8BWyGuY7xVsoBC7s4EoX2qerRkltOpYhAO
ayU0RQrO+y2aJ6O/sqjNymGAqSVNIYMdb4ZcPQocFvQ+tjwbfh36XPVVB3vDVI1s
zD6XIvvLu7XFNJ+DhohRs1BodSPyCNY5rY5qbauiw1G54lJpdOrPDMO0i6TQhUsP
fHXhtgHXW1VZ5YZN3JAEsG65w/M6T+b4s2kD1AVY9gIZi1DLbqYq+VHmssp1faki
pIrYh+lJs982nKTUpxGFGbaugI7nqDUz4H3Ktw9fC0zaO633du++yvTt2Nhptgwc
JcSy+cebS+kA72mc6cYRi2QETQkqbDxgPXVebt0nX6UwrFnEWcKMv3cLN5xNY8do
rmdbONQEEFGa6INq9HqjR8Ikw1ilW8VNnaW8NqgaS/SZJbg0q/Y=
=BlgL
-----END PGP SIGNATURE-----

--ae4tj23rqhqsbgts--

