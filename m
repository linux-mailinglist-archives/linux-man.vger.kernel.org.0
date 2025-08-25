Return-Path: <linux-man+bounces-3719-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A88CB34AA2
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 20:50:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 24B4A4866B9
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 18:50:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B17B27A129;
	Mon, 25 Aug 2025 18:50:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s1T5MSAz"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1F8279DB6
	for <linux-man@vger.kernel.org>; Mon, 25 Aug 2025 18:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756147837; cv=none; b=rrfAaS0nHBimmCuxgfSEagOeOp+S+LzLpvasZfVbp028cWZDVroHoiDChxYz1gVlvAqlZXUXfEfJm8Ovh04J+3aHz7Bme5dUctR8zPNqRXogSJd91x5zuqLCvSbc4S73DnKmr7+duTUlzoncSGqGnp2rQOKEjEnCA8HBT5//mUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756147837; c=relaxed/simple;
	bh=uZ4AbpAKZ9BrBOoHB3O9eptzRHV3+fspnpUnT3TOK48=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YT+GBlmMwg7TQQM5iCLDzvABLFZyUljgJ20kbxqBnp+1eIE3YZrjEUfG5PHeomByF5yP6agLK5uhrlZJ4WEVzeNkTiLKkdsq2/8Ln+Dr3hYUp7NmOtaQjHfkXFbgTXe9dTztQwMW1ychL799uFndJJIIAD0ao2rHhXXwF/YVooY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s1T5MSAz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53E0BC4CEED;
	Mon, 25 Aug 2025 18:50:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756147836;
	bh=uZ4AbpAKZ9BrBOoHB3O9eptzRHV3+fspnpUnT3TOK48=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s1T5MSAzL+82gdauO3eYY1YCcV2h13SM46T4IJzPn31HrXEaD5f27eggi4eJzeu7k
	 SC/D9dKToqO1D6PTLIMW4tVGHHkIJCWkbK7wkmlb22QZuMDPWLFEXg7FpaEiMB1VGx
	 hd4/IzaEZPs9vBqGtD6q1LPOS6ibCyh4UE9V/8kC+w03dZ9Nm+3zrP++xvGZy9DQBx
	 vGH6I9v1x0yy7+jc2NNqV8DUsdl22QTKWqIm1FpwN+Wx+D0CnDjCCQJYes4PV7ZosA
	 6yDDvMhKlhAEyEv8QLnRb5swn2Whldc0EgTmbylcuk5KbCwfVEriXIDCybqOQFU3ST
	 lmXVlXX5H+yGA==
Date: Mon, 25 Aug 2025 20:50:32 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page resolver.3
Message-ID: <opf3rzwliiwfo3chyk23iqdtsq6qnwk5ehjye5crqd22a6qg6l@oy3h24222gec>
References: <aKsmQBB8CZKAhQvH@meinfjell.helgefjelltest.de>
 <x25fz5cv4jolv37nec5btlbyu7d2ciulxwnb5bipgpzgorehrs@qflc77gpwpne>
 <aKs8ipbVrLo_fFC-@meinfjell.helgefjelltest.de>
 <qiswqsy2zq4yxmkblwuw3zxj2ev3utg525bfhst2sthvpecvyb@enfc6paekaj6>
 <aKyGmOPnZmlZhcgh@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fcieb6gcv2lhjiga"
Content-Disposition: inline
In-Reply-To: <aKyGmOPnZmlZhcgh@meinfjell.helgefjelltest.de>


--fcieb6gcv2lhjiga
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page resolver.3
References: <aKsmQBB8CZKAhQvH@meinfjell.helgefjelltest.de>
 <x25fz5cv4jolv37nec5btlbyu7d2ciulxwnb5bipgpzgorehrs@qflc77gpwpne>
 <aKs8ipbVrLo_fFC-@meinfjell.helgefjelltest.de>
 <qiswqsy2zq4yxmkblwuw3zxj2ev3utg525bfhst2sthvpecvyb@enfc6paekaj6>
 <aKyGmOPnZmlZhcgh@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKyGmOPnZmlZhcgh@meinfjell.helgefjelltest.de>

Hi Helge,

On Mon, Aug 25, 2025 at 03:51:52PM +0000, Helge Kreutzmann wrote:
> Hello Alejandro,
> thanks for the verbose explanation.
>=20
> On (hoepfully) finale question:
> This new formatting is not (yet?) reflected in man-pages(7)?a

Correct, not yet in man-pages(7).  I should note it there soon-ish.


Have a lovely night!
Alex

>=20
> Greetings
>=20
>          Helge
> --=20
>       Dr. Helge Kreutzmann                     debian@helgefjell.de
>            Dipl.-Phys.                   http://www.helgefjell.de/debian.=
php
>         64bit GNU powered                     gpg signed mail preferred
>            Help keep free software "libre": http://www.ffii.de/



--=20
<https://www.alejandro-colomar.es/>

--fcieb6gcv2lhjiga
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmissHgACgkQ64mZXMKQ
wqlTJQ//ZJE2ZLnGEHUBXtEmMjxW22NAvcc9xEaBTwmek7yK0jzDQYoaegaOSfs9
9b4zEq40DvK8ruvYUuQ1goGAYJd4LbqUidO/XWa9Brl6m6ntB3F7VYf/moMFLajI
Dh35gtKoSPzIdNuUWnLsaC7tOGK3QK3ef7lwJqTsaNdYHNXBOVHkEZZ4BMnMPG2U
MFM50kwhQVmoM1J/G9Xp0vVxRQ5ZAveu9mD7m0kTSH3K5mDDAYlZVVj557Xj9/oY
yN67DXYBhc73awrZNmSl3MSKlo4CfcX1Bz0Jrnivm+iT8dkQzGKx02YbUgxoWV6v
2Q+O4brqSv6wnx+8c7KdT4DTGD/kSeaF/Ave1BY9VsMxXQczVQ2KzxBtd/q1al5i
uPplrUm4YVdCBu2ZOxyRnIyQ0J0xYdOlaf/1asaoD2fLJpD6KYJ3jZa3JceN11mV
/h6DsxrZTSkc98Sn/PF4yX8XAr37X/eRgSVipi9qCIedLshhQGKLN0CjUrB2uMBo
+w+eEJrnTU6viq8fe03o5EUxhxTAM1zDxRr/V+oTuEPojcafLVOUNYqYB+KmsG3z
U+Q9E2cwCZFT+t2G0cuadqL5V9KJgVl4lEeW1txWzz+0nVul8Kc0OlGYpYjUFxQe
SYbNti0yZw9m/nAVxOdEKmEUv4fecLsiEWNewPfoI7p2+4ISexQ=
=/kSw
-----END PGP SIGNATURE-----

--fcieb6gcv2lhjiga--

