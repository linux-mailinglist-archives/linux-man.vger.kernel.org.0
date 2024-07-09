Return-Path: <linux-man+bounces-1416-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8217C92C364
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 20:42:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3AF42B21CED
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 18:42:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E6B3182A40;
	Tue,  9 Jul 2024 18:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6+fDogN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CAB0180059
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 18:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720550537; cv=none; b=BLmbxUstvTPXCeoXnsRrCVyEQK3bMfx+dJfPlRQdo99c1300EJ+BLBNyBdx2GpCSh8DkQ+ZG/ZK1p2p74qJliWvoJDckQh6PN74b/nbyO8XqzyOkBBL9agJB4cnsvcdMqmsrGqV+xocSCEWs4HaW4UxCh1r/bNZdwKsDETWjUQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720550537; c=relaxed/simple;
	bh=VCXjJ5yCzX7zAuXID6cpdtqhySCAs/MgnFIu/WzVx1k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WOevEo2ZqXCbF+GIJdc+KDWtZLoJiqJTcOfDbjgMMaItERv87JdLNXcVBuIYYCTu3NiAbAOyay34RzU6+OMi3h8Fc2zTzjJ1SbL03QXAevO8FymNrpV7JawUBFTbx/+EJNNG+GSPlFwymN+B8oLFVw071G5Pv8LiODrZPxBkzLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6+fDogN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A243C32782;
	Tue,  9 Jul 2024 18:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720550537;
	bh=VCXjJ5yCzX7zAuXID6cpdtqhySCAs/MgnFIu/WzVx1k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X6+fDogNOAEP0g58QjrK2drLNvAvmC5RDnry19lxezlxxO41FfQXqDDdlAS0TT1BN
	 bBSTHw88KdCkx9Rgt4tGT7aovj6KaOKLZTMaNUrkKEEgZqzP0oOjmF4yOTR99IdSVG
	 GzO3OOlWAJ+W1Q7bUT7SUsup1V/QDOd3BMFhemEMQPAnnZPbzPrwke5mxdaCFz057o
	 23OHdVmXR4gtUlDD+7AkqPh2USZPCSOLiB6a/6G+TXhxwIusQNf1g/wrQeDPqYN7EL
	 WOzBCJIFyKqrFW3Kyy3OsJME0DvmZf2thHuk+3/tT7XXxyvExYvkvWqoA3nbdJL+Ct
	 9kBXzmK3MH3tg==
Date: Tue, 9 Jul 2024 20:42:14 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] sigaction.2: setitimer(2)/alarm(2) timers yield
 si_code=SI_TIMER too
Message-ID: <bgvpjt2rb7lkzphzxix7htcuyp2kfgxfzndfhwzr7i6ll2klxy@kuj35deb4dfh>
References: <xnwurjcbcwr3nrdpeqtt3afnafem7pbvlkiula5vvnb2mummw6@tarta.nabijaczleweli.xyz>
 <l6nvhqqcvytn4kgx6fnh4kalip6sqhvh2m75q5ee32n7k4vy2d@razgfd4n2zn3>
 <5j5iwu7spgp3jxwiiiup5fxo2cldim4vaexgcnmzwzpe5gtwnc@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bt2xbl3crh4ucvhz"
Content-Disposition: inline
In-Reply-To: <5j5iwu7spgp3jxwiiiup5fxo2cldim4vaexgcnmzwzpe5gtwnc@tarta.nabijaczleweli.xyz>


--bt2xbl3crh4ucvhz
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
MIME-Version: 1.0
In-Reply-To: <5j5iwu7spgp3jxwiiiup5fxo2cldim4vaexgcnmzwzpe5gtwnc@tarta.nabijaczleweli.xyz>

On Tue, Jul 09, 2024 at 07:53:34PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> On Tue, Jul 09, 2024 at 06:38:42PM +0200, Alejandro Colomar wrote:
> > On Mon, Jul 08, 2024 at 04:03:40AM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> > > Applies to Linux and NetBSD.
> > Is this non-standard behavior?
> In the case of setitimer(): "obviously yes" because the interface is
> not part of the standard.

The POSIX.1-2008 standard specifies setitimer(3p).

> In the case of alarm(): the standard doesn't mention anything here.
> But alarm() is allowed to interact with a lot of stuff.
>=20
> The only description of SI_TIMER (which repeats twice) is
>   The signal was generated by the expiration of a timer set by
>   timer_settime( ).
>=20
> > Should we mention something about it?
> All systems seem to agree that "when you get a timer signal,
> it'll be due to SI_TIMER", so "meh" imo.
>=20
> Best,



--=20
<https://www.alejandro-colomar.es/>

--bt2xbl3crh4ucvhz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaNhIYACgkQnowa+77/
2zJDKA/7BHGkzXkZyhFvp6G+N9XIsQ/5DnZ4GL8IYwyFyn93rEcG028aW/2Upiam
wiiYqtvlLCCeG7bwsU3zTg+qRJXSoR1JaX6xgJYFsFp9er5G/SKY/dKotoZj4nx4
2fGUJK808hc4hubvj4KUC2x7WBJ8XH0g+kSm0GIml0sSY5fRThXm07ek9p91q7Pp
6IdlNToqvQ+IOotLM0xibZZHJMA4U1ftU9DQayKxVNwVGHnpmDkQVH99j7gnxAQJ
xxY8rspsi3NZ5zj/a8Hc6TWSTCEKKpKLLwxpTOcoQi4SDc8jCgXKlR+NAEXIeSHg
52HPrkjElay/lff8+9BZtpZBmXjuKoc0eLirWmKVgr460Gsjr7Ys2cRcBgamBDLo
Rj1fB19ksWaoFHXAF4xw6om1UhD6+UArnX0mwptfRklNsKT/kuCP/d/yEwMv1PB8
fGF6UDwk3yRty72niHxWtnH4lND4JkRFk10RG0Wn/EI6M5EApyEtPbZmX8IUYpx7
vYMMra20nnKLqRZ9yWYLAyhglS5o4//ZiQR9PiDpbl9QP5zMPwdE8DUb4abrDFDB
okGuhdDlLWy2jz3UT8d/TBLF/mxtve0HoVodwyZE/xntVhw+P4Vm6bRulf6qKvW5
yc0hJ3YXOKNJmrk9uWb5h6lVTMnfBI+tib1Kl7H9Y1i/tJVtAno=
=MgfE
-----END PGP SIGNATURE-----

--bt2xbl3crh4ucvhz--

