Return-Path: <linux-man+bounces-2015-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8609D046B
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 16:06:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 797931F21928
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 15:06:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1D4A1D14E9;
	Sun, 17 Nov 2024 15:06:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PQV6S1aC"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 833537DA68
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 15:06:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731855961; cv=none; b=XRZhZL159EblWGkIrEcJxwnxwis1jYPvjaAhigPOSffeXQMebDvGJEcMAIZopQa9srlSZiHHoLhkgyBexX9XrF40juvjzznI5DsGUwg4orZukPgZ/Bwr0meB2kXJUZpPObD/Y5lP9LN5sp2kEN51dAmM5feXnvPDXpiGEq5olVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731855961; c=relaxed/simple;
	bh=5SWkYb2SvapBNruVIOODw7HyJNbsX0/BkgfckvvelDc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AriRX3u8208UU12MHX6PY1GLRIigtKskFOSUjWdiA/RdaHlsy+xSnyI5HAaT+52Prv6uZlMP/8qvCxZW+V9ic1QPr+e/Mt/ZxoVjBFYOBr3/UXpUrcyXIg61+GnfdcVwV88qLQNn7/DCot8Bwl9Dk79y41U/653ksn3E95bWG9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PQV6S1aC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47E28C4CECD;
	Sun, 17 Nov 2024 15:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731855961;
	bh=5SWkYb2SvapBNruVIOODw7HyJNbsX0/BkgfckvvelDc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PQV6S1aCfqYECQ8AoeTayCmF2BL4XaRBL+X6bgdsc7nsBeoZPqOzufJbLKFICkfxa
	 tfJ7URfKPzWaDvbEqYoYyYcKG626xYFphJQzxAfElkBX+DYpUHOdN2qnMAPlpaYTmj
	 g4uo0r3n1rB1Dw41P/Suk1QdhHOytnNyDNkWMLtRTHthhp74Ol9uA4EXGdBinAVsJk
	 kBSQwKiOOCbiYgPftOP0rqu5Bk1Bn/cSKvd2QJlYytSbedZ4j28wyT9fpIvjO6MIux
	 3lCtGqLLPxUVe2SxbKrrILvYFwUar28q6xDawGFrnInjePC2ylqYwyuTYOm8xsNqQg
	 9qk05rqAVckLw==
Date: Sun, 17 Nov 2024 16:05:58 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page fmod.3
Message-ID: <4ldq3fge7ybnbjf7r6ivpbeqk3pbhwmlcjym4qrdycav7e7ekw@32di2urjdbjs>
References: <ZznJgQGHh77fpY8Z@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4gywokygoc2btpau"
Content-Disposition: inline
In-Reply-To: <ZznJgQGHh77fpY8Z@meinfjell.helgefjelltest.de>


--4gywokygoc2btpau
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page fmod.3
References: <ZznJgQGHh77fpY8Z@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJgQGHh77fpY8Z@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 10:46:25AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue 1:  Either B<fmod>() =E2=86=92 B<fmod>    or =E2=86=92 I<fmod>()

The formatting is correct.  The name of a function is written in bold.
(This will soon change, due to the use of the new .MR man(7) macro.)

> Issue 2:  What does "cost a branch" really mean? Branch of execution?

Yes.  Running fmod() is slower than an if().

The wording is a bit weird.  I'll revise that...

Cheers,
Alex

>=20
> "An alternate way to express this is with I<fmod(fmod(x, y) + y, y)>, but=
 the "
> "second B<fmod>()  usually costs way more than the one branch."

--=20
<https://www.alejandro-colomar.es/>

--4gywokygoc2btpau
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc6BlUACgkQnowa+77/
2zKTRg//Xk7CbpKAC+wFlq69Pjx1qzVNx1m1E/+3CJFCEdMu3UJmFAkgTtttKMYj
LSuEbvGofdh32ZXkgO4Kjf7uWxaDrQSdccXkyWG712AOCmkW6djP4aOVD5qEsWYS
CuT4k4DJI03vQHlmqs03EYPJMH7E0Y197ndEwJ7LX7iWZCKtdrZzgM+IClx2H9Fq
vB4gkB7AKnW6HH0yNXypY0E4PveNzMY/gVGP0zxiuw+XDPsBql3QeHVT2x6nxYgr
UkjAshmf+OXzNz9H5vo/mr9YJEUAboo+IBFMZ3mBYBLTUevuYN+a3WhfAgvuPug+
DRYzXqExNIcdWQX9pKsJQCkyZy+MuTufPaN5LuBAgf/TquD5QtsUQP37jFt6ncZQ
Bv7tRnzhOh36gyhOHu2nnPV+1dQgKciiXkENtjR68rR+oHi1YciO38EYOB3EG6Zc
qKlaOHfrUeLkukeyVFzz2KsJCXx0wUsZOslobspwZ5dNQycs/ThaOTt2FtOXPGld
m+BKRa/MJYbW3goDFoF0mpnEy9SJ6+TTVcluVKfuGSNgoRv3qVDhcD7pdtt/mwOI
UZhEo+mAF//zpKzovFsaWVg9muyhtFnCHpMqKPnCY8aMjVKhEpVgKUSs2Wt2EoWE
fCop/OyUT0OF7Dc/kUhvzjQIP+B8Xhiv2RBgE0l9wNjFbwdnmAI=
=wmUF
-----END PGP SIGNATURE-----

--4gywokygoc2btpau--

