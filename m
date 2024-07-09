Return-Path: <linux-man+bounces-1418-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 651AC92C36B
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 20:43:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9639A1C22790
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 18:43:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D56C018003A;
	Tue,  9 Jul 2024 18:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="eIHKYkfl"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6C3A1B86E4
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 18:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720550625; cv=none; b=k4Zj36rQDz7XD+pQ8AqpX9KT5J26y9994j9/aQLZwvdsXlWdAw15M1QI7312LeSxfU+6UCmiuv0ruDh9YhXJZguKu7QJcp4JTpjn5Ul2Yw3NienfBwuatjCgcg8Gv82tlOAgpXYAiGkdAvF9Jfq8lhi1/OFcR3R1Rb2W1TthjFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720550625; c=relaxed/simple;
	bh=CJdoXOPNiR2Gn15cGo/acUF7J0gXgusw6x/DzFt35Bk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KGfRu9QnBlDJnABSsiatSzbXZ9irpMbjVerJvpjvEQEhoGm8m9JmcRlgmiNDr0Af8M1JAcaWLXZrAsfDngZBIKMH5CYuOdF3Y2l/RUmaj6v37psz5w5egX3K7a6nO2I6KSaXsgPuLwVCe8ihpxAJTG0AfAnPA9I9A2dUxYfXHoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=eIHKYkfl; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1720550620;
	bh=CJdoXOPNiR2Gn15cGo/acUF7J0gXgusw6x/DzFt35Bk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eIHKYkflazufn9ieMCFmemjyzijtvl7Ads+QO7N58HBx4KplH4c0gItbVlKrj/82O
	 KLJmckp069DXI8oaUw3Ooef0D58EV1DX3VpubOshSSY/0p9PrzX3ddrNrEXkXY5+t4
	 wLXbn6uCf9RjXXkZguGfChmRJt3OdjK7tUlXk7LoyCnKS1A9JDFilXsfW4WhRRT4ol
	 lYd29fZutXxRp4ZATn3kcirySdAyiTvY3n3cci+vmav1W1VtxHCjONkzgn5DPHOwEK
	 zjRef2FOn1qz/ZnWjOSdv7bnANRraQiu0l+b16/t1H0niPIwqqunNHd63eFV+iyYLs
	 rBTe2FUNfA0LA==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 5B7C78C08;
	Tue,  9 Jul 2024 20:43:40 +0200 (CEST)
Date: Tue, 9 Jul 2024 20:43:40 +0200
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] sigaction.2: setitimer(2)/alarm(2) timers yield
 si_code=SI_TIMER too
Message-ID: <i2mpm6u2p2jphzecto6oltr4wmjqcnvqxjawtztyrl6mm6f675@tarta.nabijaczleweli.xyz>
References: <xnwurjcbcwr3nrdpeqtt3afnafem7pbvlkiula5vvnb2mummw6@tarta.nabijaczleweli.xyz>
 <l6nvhqqcvytn4kgx6fnh4kalip6sqhvh2m75q5ee32n7k4vy2d@razgfd4n2zn3>
 <5j5iwu7spgp3jxwiiiup5fxo2cldim4vaexgcnmzwzpe5gtwnc@tarta.nabijaczleweli.xyz>
 <bgvpjt2rb7lkzphzxix7htcuyp2kfgxfzndfhwzr7i6ll2klxy@kuj35deb4dfh>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4twqs3gqfdj44lxw"
Content-Disposition: inline
In-Reply-To: <bgvpjt2rb7lkzphzxix7htcuyp2kfgxfzndfhwzr7i6ll2klxy@kuj35deb4dfh>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--4twqs3gqfdj44lxw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 09, 2024 at 08:42:14PM +0200, Alejandro Colomar wrote:
> On Tue, Jul 09, 2024 at 07:53:34PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> > On Tue, Jul 09, 2024 at 06:38:42PM +0200, Alejandro Colomar wrote:
> > > On Mon, Jul 08, 2024 at 04:03:40AM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> > > > Applies to Linux and NetBSD.
> > > Is this non-standard behavior?
> > In the case of setitimer(): "obviously yes" because the interface is
> > not part of the standard.
> The POSIX.1-2008 standard specifies setitimer(3p).
But the current standard (-2024) doesn't.

--4twqs3gqfdj44lxw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmaNhNkACgkQvP0LAY0m
WPFdVg/9GJt2hfo74Ov7/WyEnuEwQJre8w20s1637o4xXjqZOiVUkC9pV2fqGlFh
uJ2ZXJiSo+/rAQcog6SQozuXk1BtR20M28ioj979wyQb7pCsLV/ph25Ymq/XP96R
c1uiDdswJMqxg38r3yPufGvh4exjUwEMa6XyryQlFfHWU4UsAxuQFSbrJ3z26CpP
xqeYsj7fg9/Zyu98MwBLTHIUzGJ6zX3v8i8Gf+OfgEy2Tpq5K/Af/kVXTyIqh+Lw
GLj8q3qhMVv1uqZQWBEd1ZO+pvMuFWdDyFk7fE0qjIasyf4p36loLAsENh0VVtmH
6KiI9Xwq87DnofOa7o6AUw707Eq/jo/rDN883fP8OjSjBrlH0zORbjs6uJs/sHSm
7zLJ1bVcbupllzd+F0Rt1nx7URjXczH4HKQ+0iZtm5K3gIKUcpgVZVKMCGGXZFLp
c8ZQbSFLHmrjL6xC9129ZOhoutL2EkvR/Sz117/zNRI5yfv9Kdsbhvm4d4TXZVsY
aLa+OSXtOmftYsXGd2X71CDaGl258lZ+lElbpcqrFFygXfS48GcTCaXZxJemQ2rw
yMU696J/9XhekXFfiLoJ2UjDkZdh7tUBUDz3MOU9XhAAXb6L8kCz/BuNPaHJmxEb
Z8VqeprcHf83pHeikwiQ+NvDHg3umCq6mXfAZTUFxBpMzzBrF/k=
=fxK7
-----END PGP SIGNATURE-----

--4twqs3gqfdj44lxw--

