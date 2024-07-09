Return-Path: <linux-man+bounces-1422-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E5492C3DC
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 21:20:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 533561C21D42
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 19:20:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFD7C1B86EA;
	Tue,  9 Jul 2024 19:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3jl1TCT"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1D2B185607
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 19:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720552831; cv=none; b=n8E8rxQtiHGPUJ0H4OmxoerFCUtrwSP3dc+wbb++5JepukIX50HyLIcb7rhY9wyTk5sobY3qGpJmz+B7boM8PgEAgRelbArlimDSueizm2epsLmfKmOrEJiTwSCzJVOe/EcjjiOIX5PRHtFu60GoS31RdtVTb42NppUNyEoNv0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720552831; c=relaxed/simple;
	bh=26brBebB9EmVUIVgMQXXp6TpGgX0TN990H1bRWOe4lg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=leFIMPA5hpbSgqodcGsPwShu8B3brmbU95OEy5pMlBBH+wb2LSXDC9n3HzYJobDFE5DVig0W8w1r8Uy47NbQlj92scTkdXoqT6RykqhkuDuY/3URJOAq51PzpBiGMZJZmErahTt6rVCPVVNB85/qqzQnUTZgBiGOddM50LiIQsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o3jl1TCT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7770BC3277B;
	Tue,  9 Jul 2024 19:20:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720552831;
	bh=26brBebB9EmVUIVgMQXXp6TpGgX0TN990H1bRWOe4lg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=o3jl1TCTTR+CQELlVtFMCY7IDlt6xhXg8tZK7i9lUOpapHrVgB3ndGApqjDTzjQls
	 bDM2IAGxoXkKyA1Rh6bDkb6h4QHo+E3i15Nn3Cdqhj646rVpY7uCZrUaklDoaVNuXy
	 nANgQEmEN96burzIY15JivKeFYom/30VXxyiIEXC7AKw5k9z51BiVG1UCvlNx4z27u
	 ONhNTxbW4Uywi22z/ST4EwdFltJ6RS0If+KgmorisfZq6PM7/xsZoff1fB1X9/RWGq
	 LY1h2DzavAGT/EVvtw5KntAsDJd+T0yBpbPFKSZzdSrR7ODBcK2MfRxwu5rMPwKp3/
	 yxz/tfTRbipAg==
Date: Tue, 9 Jul 2024 21:20:28 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] sigaction.2: setitimer(2)/alarm(2) timers yield
 si_code=SI_TIMER too
Message-ID: <eimffawrhk22n7hx6wcc3c3lqmukwkzxfjyglnzgau3cbvue3d@njs4kcjerncp>
References: <xnwurjcbcwr3nrdpeqtt3afnafem7pbvlkiula5vvnb2mummw6@tarta.nabijaczleweli.xyz>
 <l6nvhqqcvytn4kgx6fnh4kalip6sqhvh2m75q5ee32n7k4vy2d@razgfd4n2zn3>
 <5j5iwu7spgp3jxwiiiup5fxo2cldim4vaexgcnmzwzpe5gtwnc@tarta.nabijaczleweli.xyz>
 <bgvpjt2rb7lkzphzxix7htcuyp2kfgxfzndfhwzr7i6ll2klxy@kuj35deb4dfh>
 <i2mpm6u2p2jphzecto6oltr4wmjqcnvqxjawtztyrl6mm6f675@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4l24b3upzu6fp3bs"
Content-Disposition: inline
In-Reply-To: <i2mpm6u2p2jphzecto6oltr4wmjqcnvqxjawtztyrl6mm6f675@tarta.nabijaczleweli.xyz>


--4l24b3upzu6fp3bs
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
MIME-Version: 1.0
In-Reply-To: <i2mpm6u2p2jphzecto6oltr4wmjqcnvqxjawtztyrl6mm6f675@tarta.nabijaczleweli.xyz>

On Tue, Jul 09, 2024 at 08:43:40PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> On Tue, Jul 09, 2024 at 08:42:14PM +0200, Alejandro Colomar wrote:
> > On Tue, Jul 09, 2024 at 07:53:34PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> > > On Tue, Jul 09, 2024 at 06:38:42PM +0200, Alejandro Colomar wrote:
> > > > On Mon, Jul 08, 2024 at 04:03:40AM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> > > > > Applies to Linux and NetBSD.
> > > > Is this non-standard behavior?
> > > In the case of setitimer(): "obviously yes" because the interface is
> > > not part of the standard.
> > The POSIX.1-2008 standard specifies setitimer(3p).
> But the current standard (-2024) doesn't.

Hmmm, do you want to send a patch for that?

Anyway, for 2008, was it non-standard behavior?

Thanks!
Alex

--=20
<https://www.alejandro-colomar.es/>

--4l24b3upzu6fp3bs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaNjXwACgkQnowa+77/
2zLyUxAAoen1gWc26+k49kKqS9u3yvkISQk2HGTgYU4OrqbNv335nDa179qMiU0g
JSZ2pIEw+4G7OPCHIpLkEvNn8GZXtRXILAkr+ht4vu75XdQ5WIID1tz8psWgzeEM
Of0Uvljn4QuO/kvbY5ba03prNbpOgDqux838Lp5MdOAmTO+RIf0nyxp+qXfCI8vW
XaCMyaU5VvM+FJ8gGr1dbbyQ6+NOTb48QOSi2LAz4K065uqpuO4kF2QnnFUscR1V
B3s7sRHqpNnRXUyH0QKcrATqQzGGy5By/Xn+kR0njDONieU105EmirNAQ7tlhs9o
Tk18Op7eS44i1rms8Ds5vWr17TPz8ognat/uMvHpVIfc/jqq4FrUvwyEZUOjvD9v
E2y6sCzMuBTF2nNEyPriuZv7WyUVyH6oszqj4mUcysJr5ntEM/4bDlDdLECUkFc2
b2W2agvllEJekhSlpf1l3816RdeMSg5n9n+en7GLpD8UnHVAulSrfzAGuU19SLUV
850jT4uuPCb7CRPDk28pSQsfnRjrCN3jCCtgfFaL21kbcHVXEMpqo5gatUI0w0DP
i6zUsgyJAL+MN7lpgE88Vu3fgHm/s1x007RNtYHXJk7TqF5LgNMEX6AtitjCe+Qi
nbgebjta10hCZ/g5dHSC9+GfQPQHno4e6xAxyZkfT/6BZNvsU40=
=c65e
-----END PGP SIGNATURE-----

--4l24b3upzu6fp3bs--

