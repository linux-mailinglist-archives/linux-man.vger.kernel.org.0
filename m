Return-Path: <linux-man+bounces-4532-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 70BC8CDD5D2
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 07:24:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id ED67C3007210
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 06:24:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7A212D8362;
	Thu, 25 Dec 2025 06:24:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="WNlMMyGP"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A98247280
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 06:24:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766643843; cv=none; b=PJPCdMFgHERDz/y38H5mr5TY5QwTbE+FSHpMriIVhvv75S895MT4QFAScQJBo49fskMKTtIRcJDyEdKXNU353KEkcI0rHONYKuVVljdRYJQPL8ukFVCUD5Aflv2vXLVCazdJtf6diBqXJd+0vLyJRJWntFEmdoe/jNMjRLBbXF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766643843; c=relaxed/simple;
	bh=bF0cu6Y2okrHVRuXzyBPyXfzqLY8mYbe6vPIyu+FbX4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TDTPhDHBZwEFd1NVIXN6L09pp40h11VCs+lrXblJ1C39nABfLV0qtuJvhnwRJSEGUgZ0ImvV00nrqNePp5TrpHVhU9azv/cmsxupbk2sBiDluOOPrUuqw/Njbo1g3z0eyn96ambbAtcJMKJWDuot5IXzxw2B8UQ3M2Ux4fG2Zes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=WNlMMyGP; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766643840;
	bh=B31jtdF0UqKVOv8B4zFmXMrFosLUm+YlZnu7LLxA7dY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=WNlMMyGPiQTsVmlY/CfZ1fogW7MxahUku8ZFVu15FnGQy/84r3TDSmRyQw88XKL1d
	 gyVjwgNkmARyZDNy8l8tRu3YC2lcOH3I3LCx96NPYEs7H7RdlvDs/TFLuEBH4ShJfI
	 XzXBg/KgNe/RmbakOElOE15y8TyaO0PHohpFw6JzIsgCOMwk4U7g/PgfGXuxITFS7H
	 1Gz9KlCSSONaRUeNiUas4saUReddSRR8qFShOddQS6+q0sdPwjxVRuyc37Vvdy75Un
	 6aMCuBoMnCCu41SqOZUjuxxJckF5FACsKaJDc9gJYhOHguUTlDkAH5/OuRQxk0d/LJ
	 cHdNAd+XaEJmQ==
Original-Subject: Re: Issue in man page mansect.1
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200D3.00000000694CD880.00071905; Thu, 25 Dec 2025 06:24:00 +0000
Date: Thu, 25 Dec 2025 06:24:00 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page mansect.1
Message-ID: <aUzYgFrjDGlGFhgW@meinfjell.helgefjelltest.de>
References: <aUv63faCNiITftgX@meinfjell.helgefjelltest.de>
 <aUwGZCvGKIGBOAet@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-465157-1766643840-0001-2"
Content-Disposition: inline
In-Reply-To: <aUwGZCvGKIGBOAet@devuan>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-465157-1766643840-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alex,
Am Wed, Dec 24, 2025 at 04:29:49PM +0100 schrieb Alejandro Colomar:
> On Wed, Dec 24, 2025 at 02:38:21PM +0000, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    In Debian unstable this programme yields: Binary file (standa=
rd input) matches, add "-a" in line 23
> > Issue:    Even with this patch, the output of this command is just a si=
ngle line. ".lf 1 /usr/share/man/man3/strtol.3.gz"
>=20
> The issue is that Debian compresses manual pages.  Please consider
> changing the policy to not compress manual pages.  The storage savings
> are irrelevant in this age.
>=20
> Please CC me if you talk about this in Debian.

I just submitted the bug in the Debian BTS as #1123959. You should be
in CC.

Greetings

          Helge


--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-465157-1766643840-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmlM2H0ACgkQQbqlJmgq
5nDiNQ/9FCP1oeCGxLneUOjwNfON/0J/IuFgSKAFZ39acORC6GvxluYCG26c5OKi
0wtMAQhYxP+RKUHCWWYMxuwnK3AUDdVO1mg+t8NewVRSuGangvbUCVc6F4fVIkpm
e+JQqZU51SfpvarpAMx2MAOikjQ/TxkokFfxizksnCGKR+TMLwQyPrQqTzIAbB2i
lLJGzumBAQwFvP5jO7SblQuTyE5ro9ISl9KS5FOSR/DhyoOSnIDMpmOnqUPpHIKI
H7K6a6DrQTpvE8uKrBjDUO7zo9CMX2P3yE9hDOlShxyCoi+PTk8RrTsxwKNG10Ob
xJ57i21J+U6k1Pz84PAZvEGS4I2chjkoiZbwU1zC4Xf0xOVT+F52heTvsF+oG+ik
Kra90fx/iTravdVCFL8J1yk3q3AHzefxmqA5L+LmQnEF/UldOO9Bf0Zs/LNgzWEK
+Ay/XWagExu6HR92hL9p8N1ik/5VsMzU9+RHmYqmkqjNvkqFMBDwfZmemMor7yOe
MjktJA8nEvB4qhZtvgibYxLFt6J7uBQMgPee2+5t8ZqvcEwZPcUHDP0+0HcLKLSc
N7rkhQKiMOmYczR5C4kfFYpQ9Lok0l/7NpZc+kFr/fUpe1zxdXpX2n6lBftHuIuN
AwyJQr0fDIABdwUDMD90Cv8ynKWbj3rBQS0wuTKosyg5eyEXl1E=
=kDLL
-----END PGP SIGNATURE-----

--=_meinfjell-465157-1766643840-0001-2--

