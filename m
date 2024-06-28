Return-Path: <linux-man+bounces-1296-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C463C91BD9D
	for <lists+linux-man@lfdr.de>; Fri, 28 Jun 2024 13:38:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 76D531F23219
	for <lists+linux-man@lfdr.de>; Fri, 28 Jun 2024 11:38:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62EA1156C65;
	Fri, 28 Jun 2024 11:37:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YyhtTmCv"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E5E158D7F
	for <linux-man@vger.kernel.org>; Fri, 28 Jun 2024 11:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719574645; cv=none; b=FWBxB4DelPGNGV0l6W0bjskCDQncrAlcswXPzXuoOFXG3rPhkvyfdk82Tg7DCq0ETQlTTAHWsItUG9OVM95PphgxZjpYH1IVZoxhqAfdSLGdxPXD2W2f0nvTOqw/ZyIWZvYG/9U+ZHpa7MDHb3pIGuw/m+zFWR0G3TbzJBr+eaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719574645; c=relaxed/simple;
	bh=I73rI7ITRhRed+DOFWM29RxmIl51o+TV+NR1yBS69vY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gMRzdtoToO0lk41+ySix+yUsE/cEkevv69GnPQnlYq4XMdMHIX82vqq38uS5qSlm4NIdksMZRz6p0d2TZ71lJBLEOzEggJd+GnZ0qdv3p7JPsjcjumGT4Yx/BB821GFn6RTae5pXHRCAdUAfMQJ23WeQ71HgcROdR2/IbsYGi5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YyhtTmCv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D865C116B1;
	Fri, 28 Jun 2024 11:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719574643;
	bh=I73rI7ITRhRed+DOFWM29RxmIl51o+TV+NR1yBS69vY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YyhtTmCvkgBxZLwDtcNDLub9iHWRrhQFWVfasG9KnLqXoHl1yYrclZkaj7QiLF4pB
	 MleZ1CEc0JVmZtcUWaeYkvcxQchsDvabaGaBXHOzymktiCu7Khh2QuTQXpptqngwwP
	 z+AdXPQ9YEL2Hx1rsHWc5PUUhuNQthgtpCKbbRDFFZcN/JW9sQDq9+gsbdzrCLdtcK
	 WCOvtVbwy9mM0KD3+s6n7sLzFBs4WrjbaRL7+Nyrp4J2wiMO5eL5J4PmvxTIYJbIuP
	 M0wvoqhbFfkDrd2D7isBmK+WqRtRXPLWuKpvGKtxYb5XT5IVg0jIt0KKKcWWjc+bRo
	 XpCfw3sRtRHiw==
Date: Fri, 28 Jun 2024 13:37:20 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: linux-man@vger.kernel.org
Subject: Re: setcontext was removed in POSIX.1-2008
Message-ID: <wcv623spl5kb66qdayqcw5fjiwbb5jijhvc3bdcdqwzh5fyck7@bilbynnucopm>
References: <28696710.B0YPrGVBQ4@nimes>
 <qhi5oglxihr5ztjpp34bzgqh26l7nhegoja7hxj3xue2jrdzxz@34vhgndb5sql>
 <9340430.UesdLuknzO@nimes>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="subhrpyekiq6lb3m"
Content-Disposition: inline
In-Reply-To: <9340430.UesdLuknzO@nimes>


--subhrpyekiq6lb3m
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: linux-man@vger.kernel.org
Subject: Re: setcontext was removed in POSIX.1-2008
References: <28696710.B0YPrGVBQ4@nimes>
 <qhi5oglxihr5ztjpp34bzgqh26l7nhegoja7hxj3xue2jrdzxz@34vhgndb5sql>
 <9340430.UesdLuknzO@nimes>
MIME-Version: 1.0
In-Reply-To: <9340430.UesdLuknzO@nimes>

On Fri, Jun 28, 2024 at 01:10:27PM GMT, Bruno Haible wrote:
> Alejandro Colomar wrote:
> > This was fixed in
>=20
> Thanks!
>=20
> I had looked at "gitk man/man3/getcontext.3", but the move and move-back
> of the file fooled me.

Sorry about that.  :)

>=20
> Bruno
>=20
>=20
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--subhrpyekiq6lb3m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZ+oHAACgkQnowa+77/
2zK4uBAAp9+YTJMd5yIXyw9qAmPzR+PSt/My2ZFy9TwdpJ5UazIhSuPTw+/zDF0u
7mNV2lEtsZUSR7V6dZpkLAHq952aGuSvJfVYV8w9VAUBnUchy1oCIzSYvwjoxpPu
OybIn8GKhGiWbTZK91D8uaiicxl5uYoKlAq3YET8CVVfkbRzhHIsVylYDWFpp4hh
ln4lpYrHo3dHtRtUa3Pe3ujug7Mzik6RN/rPAjrGNOgBj5KRgYsGt/ythoiaOLh+
7rRGTTnQG6u4+/bBJVkJ/mdSYceRNJxJnadFVu8tCnXzUcV6stnc12k7MTe5W3IS
zoivXgTfal4LbeLnG0Y7PpOaqHujDCrDk0Bd8VOBfyRA8gitpamalJq3tQds84jR
P1mocuEkd0Cm/Rcx89CJbM+3kjwT6Lmldusf3/nRZvf/yJIdf+S9SkB1DQL6KxXt
7pXewREBrub7Hs/EFhiqqAd/9tuRKhfzvTkeMnzujNSdz1TM9xdRnQ1EDpRCpqva
ds2hfyfJi2py2wEr1eQy4bA+1qZWRbLor4vXDREbOZHZnO95tCeWer9PPOd/br3l
1MOdZxW6s20beaOo4twj1zUfmvvkEgD80kyGBlDPDL1i+pwr0cLtK4vgCV3TBmWJ
2RF+M+MYGZNkdES7PP6LoBHanwk4en8Jf17TRrvLGXLjvt5hk/s=
=4vtX
-----END PGP SIGNATURE-----

--subhrpyekiq6lb3m--

