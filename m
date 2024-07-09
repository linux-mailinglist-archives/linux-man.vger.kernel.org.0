Return-Path: <linux-man+bounces-1427-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F5B92C4C7
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 22:42:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E318C1F209B3
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 20:42:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E212418002F;
	Tue,  9 Jul 2024 20:42:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="Or61PNdl"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F09A17B05E
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 20:42:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720557750; cv=none; b=hzIHcex7nKHXnU0yr0YHPzgxTRo2SIB5WxIcQkmWclrU9RmZj9kgXnL2C5mpXnpPBe6eyapeNTMQ+9YdcQbnWiVDSjMsS4F1QdB1sWGB7K+wyVi8AQe6D+o00abfQPEDVSm1RUq66yzVKu3JEVhBB3AikYY9KeQYssfMrIY6M0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720557750; c=relaxed/simple;
	bh=Pn781gVgR2bvtpi8f7TaBY3FHOldbtsZdJ9lIXUcY5Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Cy7PQ89vy4GAcWTa+1SspCyrwxpuGnFMQWK0hb6TLiXP7PHUywRvh54Jrmetc325GsoQ41tkw2ebnWDb8i4mCkKUeR80lDm+fU6lq57ApDPpRrw+7p5QGMs8+r+O19IWIePijgzCKe8nZqrJeVRLK7OrH9Sifd83IumvjLalb6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=Or61PNdl; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1720557745;
	bh=Pn781gVgR2bvtpi8f7TaBY3FHOldbtsZdJ9lIXUcY5Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Or61PNdlLeIKHyYj3RQvCJYOjENTc260UVxTJEWHoT2+I2dy4YZQfFZjLSkeGs9pf
	 bg90ILXWD8mG8texChZ/Re71Fxes0e4Uun/Ano6NhI5iikZI5JpEbzIRz9Mq2/0+Yf
	 ET+fAAvm11kvJ8B1/VpntVCg1wP7MfeSEvkWSwrg0JNZS5Vsjy5r3pndSanXI84ZdG
	 NVHzwAxvHWHfCH5/Cwu3BCaYRUgUk/VuJlEPdxoCHcdacn7UA38oXaWjLszJL9bEKD
	 ziCKhjuVwUaxyUkcCdCZG8vcZavm9ckEFOrd5T5/mU3Qb6bjZb7dfmmmo3wybEBtUl
	 UAO1ZylVRsUbQ==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 220198374;
	Tue,  9 Jul 2024 22:42:25 +0200 (CEST)
Date: Tue, 9 Jul 2024 22:42:24 +0200
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] sigaction.2: setitimer(2)/alarm(2) timers yield
 si_code=SI_TIMER too
Message-ID: <p4qolypdt4njg2dcmnopcqhxkb2z6lqtkqahsppq2auulhrp63@tarta.nabijaczleweli.xyz>
References: <xnwurjcbcwr3nrdpeqtt3afnafem7pbvlkiula5vvnb2mummw6@tarta.nabijaczleweli.xyz>
 <l6nvhqqcvytn4kgx6fnh4kalip6sqhvh2m75q5ee32n7k4vy2d@razgfd4n2zn3>
 <5j5iwu7spgp3jxwiiiup5fxo2cldim4vaexgcnmzwzpe5gtwnc@tarta.nabijaczleweli.xyz>
 <bgvpjt2rb7lkzphzxix7htcuyp2kfgxfzndfhwzr7i6ll2klxy@kuj35deb4dfh>
 <i2mpm6u2p2jphzecto6oltr4wmjqcnvqxjawtztyrl6mm6f675@tarta.nabijaczleweli.xyz>
 <eimffawrhk22n7hx6wcc3c3lqmukwkzxfjyglnzgau3cbvue3d@njs4kcjerncp>
 <5ydleo2v2m4nxi2w4tiqysq2hmoxnq7o3sc7767xbkgcsmdoyy@tarta.nabijaczleweli.xyz>
 <5qu7xeen2fmmht3j6k64tv4we6f4s4xe27lwfhzwg533q2kdf5@u7cqsyfgueei>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xngq3muuaqdpb5bc"
Content-Disposition: inline
In-Reply-To: <5qu7xeen2fmmht3j6k64tv4we6f4s4xe27lwfhzwg533q2kdf5@u7cqsyfgueei>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--xngq3muuaqdpb5bc
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 09, 2024 at 09:47:22PM +0200, Alejandro Colomar wrote:
> On Tue, Jul 09, 2024 at 09:36:34PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> > On Tue, Jul 09, 2024 at 09:20:28PM +0200, Alejandro Colomar wrote:
> > > Anyway, for 2008, was it non-standard behavior?
> > It wasn't "non-standard" so much as it was left up to the implementation
> > (still is), except for timer_create().
> >=20
> > All implementations agree here, so there's no point in splitting hair I=
MO
> Okay.  Then, maybe, I'd remove the "Linux and NetBSD" bits from the
> commit message, and just say something like all implementations do that?

Okay, wider implementation survey:
         alarm     setitimer  timer_create
Linux    SI_TIMER  SI_TIMER   SI_TIMER
NetBSD   SI_TIMER  SI_TIMER   SI_TIMER
FreeBSD  not       not        SI_TIMER
illumos  not       not        SI_TIMER
OpenBSD  not       not        N/A

(Well, OpenBSD doesn't have POSIX timers, so the value of comparing it
 is questionable.)

I wouldn't call it a "Linux extension" because implementations are free
to pick anything for setitimer and alarm signals (just like they are free
to implement alarm in terms of setitimer).

But also clearly not all implementations do this.
But also /some/ non-Linux ones do.

But also saying something happens "Under Linux" here is goofy,
because these are linux man-pages.

Maybe NOTES: "POSIX only guarantees SI_TIMER for signals created by
timer_create(2). Implementations are free to also provide it for other
types of timers. The Linux behaviour matches NetBSD."?

Best,

--xngq3muuaqdpb5bc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmaNoK4ACgkQvP0LAY0m
WPFXlhAAqi5b5YhWEU83ilCIjsapwOiFsOPWDGTVDmEBq92OZdf1BfyRVmVqsx/G
plmjUEkUr/y+U5RDp+3FO6HZm4hviAikvyNcnSAVnijM+wupG9cFeUnMkoVTcA1W
LLJuzOzbSHu6Sx9KVPjV/FLxKjGNmefYF0wMv5t+oHpkmv6BoUd+5s9JAjl8o3P4
/+uPuyFZj9dQF4lKk7NQ6UTQasV4kNh0WIftY+pGBIoV9huw1B6X+25du1eQDide
Cauezs6GNG8eYRo3Lx4rELqvgzVSQEX5WsiIOpyTM60E6x63CyDxCvBOGVuwl/kO
i+mjOKx3m08xeCUAuuvCLHQV9WgRTzxZhpOsqxDd/p1eDpiL5qWNuLoFnXBD8NhV
JSrexU7BRcPS/q42KKMPmGrkYQv2dwjiLbrSnRYHpjkFiVgTKXgE/rO/xY1jJlS1
vNdKPlbsHh4lpkdh/jaou1YlerZRwNnpQnfbMRkeDAKoLEAzMvC7UAPiNm388OtD
XWlvnnZ128VjgLRzg+ppkMn2deHWNH9aghzwkKsW3KFB6IR0IxxQikS6NEXy382J
FAi38qqSiS2HXXmoftRJezUPkVXZqpMoAyUKohipI8Sf6D74BK0wBeWu3jvVS+M8
WjPbbFVMmz9YvjnJPoKbP1wo3JVBzp6TLaSyJr10t9XscZ1qJc0=
=w5BT
-----END PGP SIGNATURE-----

--xngq3muuaqdpb5bc--

