Return-Path: <linux-man+bounces-1409-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F3992C2E4
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 19:53:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A8BCA1F235AA
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 17:53:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E29B617B02F;
	Tue,  9 Jul 2024 17:53:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="WG08DOc4"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91C5D17B04F
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 17:53:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720547621; cv=none; b=E85hLSZSngrcdyweUh7pPkXIKR07hNwyNU96FDs3aNkjDOZkazA9pPah5L668+Bee3bHA/TmpjFTAZYTiC4KTTZZpegMHvVdQiOwRBJ6wExPRxA8kwgPNjOsy8K4UET/eyJhv1zOV+xVOLvh4LeKTv4Bm7sDNwu337vwax30yg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720547621; c=relaxed/simple;
	bh=LpWgW7P4fp337kn8aPW4psptUP/WDHFlyB7tPaHdGk8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NNpgSZ3dj1xCl+HUG8JnRwcvtprMzyonzCCu0Wph1TyNgMqLPPnbd0iWqzYlnowYJqDmnJSgEh4VmvRuE2c2W94vSEc3me90PvYZMWkqgbHnx9+rjZEeNg9oM+VFumCT9Z9j9mdsFzl5NdSyRIo9htIQzmMhhDzMyKRN4PVN5RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=WG08DOc4; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1720547614;
	bh=LpWgW7P4fp337kn8aPW4psptUP/WDHFlyB7tPaHdGk8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WG08DOc4wuTYmPJ8gMRcKOEK3qjb6f6ApFiftamm8mF6N3UXblOQdk7Cruh9SbEql
	 388KFZASOaAkiS8gb/m8x7naPL3T/2+bM3TBlTGhVHnxAxiEeRF7lj3SKIYEULzg9U
	 nT5bPCg6ixFNHxTwY44ZwEHPLeBIkfAqbW+EJR3dCjuySZUXjAdVOzrQX+cof7nqtn
	 r2PFXxBZQQPjz9eAhjNvEJxi3nHgiRbWUcOkLtps95NAVV/obeIPiNNbQ6+JExsz5g
	 tG+c4/kgnCKCxlgEDVTcfV8kXDonQRX8PyvXu9LA0vr+9N2qNIbNcOeJ7TEslrgwpf
	 mXlLn0ctGzhng==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 9D18D817C;
	Tue,  9 Jul 2024 19:53:34 +0200 (CEST)
Date: Tue, 9 Jul 2024 19:53:34 +0200
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] sigaction.2: setitimer(2)/alarm(2) timers yield
 si_code=SI_TIMER too
Message-ID: <5j5iwu7spgp3jxwiiiup5fxo2cldim4vaexgcnmzwzpe5gtwnc@tarta.nabijaczleweli.xyz>
References: <xnwurjcbcwr3nrdpeqtt3afnafem7pbvlkiula5vvnb2mummw6@tarta.nabijaczleweli.xyz>
 <l6nvhqqcvytn4kgx6fnh4kalip6sqhvh2m75q5ee32n7k4vy2d@razgfd4n2zn3>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nqa4j24gk6avtfrf"
Content-Disposition: inline
In-Reply-To: <l6nvhqqcvytn4kgx6fnh4kalip6sqhvh2m75q5ee32n7k4vy2d@razgfd4n2zn3>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--nqa4j24gk6avtfrf
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 09, 2024 at 06:38:42PM +0200, Alejandro Colomar wrote:
> On Mon, Jul 08, 2024 at 04:03:40AM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> > Applies to Linux and NetBSD.
> Is this non-standard behavior?
In the case of setitimer(): "obviously yes" because the interface is
not part of the standard.

In the case of alarm(): the standard doesn't mention anything here.
But alarm() is allowed to interact with a lot of stuff.

The only description of SI_TIMER (which repeats twice) is
  The signal was generated by the expiration of a timer set by
  timer_settime( ).

> Should we mention something about it?
All systems seem to agree that "when you get a timer signal,
it'll be due to SI_TIMER", so "meh" imo.

Best,

--nqa4j24gk6avtfrf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmaNeRwACgkQvP0LAY0m
WPGy3BAAry+La3CPajZChj5thAGnWP/NZY68DnjofPS6OImbSEnXnws85kXZc8S2
7+/gltrp0CTaG+RmmZTCnpkpH3lWNiKJVhYUTuGT0uhRAmlVOEjw164bLoW1gFDH
2r+sB/vXuOAS1VTRjlei6eiu7tfELaqtV++5lmsnS9DJuOw2Hcr8/0Hg78CaWNt1
BrXtY4hBit+/lep4Zxnh1BE9xoXLwviNmbew8qGYfozao6gzXMCArnMeSDnJrPaY
dXfrpeuh9S7aC2EvmhHMPfbRXqHuwpXTHk2WJG3aNRKBJhEpOYpQPiu9xM5uCIQq
rc3NDTlraRJFyYgD89mmAQ7ZDUWClgorOT5lX2efxrhYLHaP0hXHcYth049YxA7h
8cG+c8RQzWa7dgDYGpDNW9E+vttcF8dFXnHbyEberIIC45cagAJQWeEj1RoV94iU
pGYXo8BPMVYFAYKiICLhsqRIBp7tmzmJpUHuseoQc8AnHrXjcz0x/a9hbXvJCzqS
Td3QrFc3rUiVn2OOZPpU96OgkYaKtV6yHuttfdiMupBkQmImo3e3ljU3IN1ZvCT5
mr/Of9NiEIuegf4M5T7bRM5YmLgM0RuwCk7wvmCBMJOIaT2qhOo3jkFnwZpzjqRO
XY3jq3sVish6lsKdXoikepmsGnv2cC+XzgaEYxUNLSlNc8suYRE=
=8RFz
-----END PGP SIGNATURE-----

--nqa4j24gk6avtfrf--

