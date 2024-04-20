Return-Path: <linux-man+bounces-791-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D12C8ABB9E
	for <lists+linux-man@lfdr.de>; Sat, 20 Apr 2024 15:00:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 90A631C20977
	for <lists+linux-man@lfdr.de>; Sat, 20 Apr 2024 13:00:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F195168D0;
	Sat, 20 Apr 2024 13:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BP8hs48h"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9D2C127
	for <linux-man@vger.kernel.org>; Sat, 20 Apr 2024 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713618035; cv=none; b=S7202cI3tc/NWfzAd3DtGBrklfVy91bwjQEgkjUpOzm/cAc8O2Q0m14IpxWDTOwTcAy9x6EDCUkp5/2S17DcLSAMpjZ+/X20oTefyEaAZrrY3XQidra4e/pyPkikM+H+POobnv8ypIMi1ruRw4K9o2mvKUloqBQE8Tcq3q3xebU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713618035; c=relaxed/simple;
	bh=OAScQiDcUbd5DXFV8V6AK3V6DhJJ9yBm5S0KtUtvQlk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jbyuDuYlS6OHG6MmkPXWQNhkj9+fyCAFVJRPszCMw9FfoWcXRnEwzrvKX56IgWknJBXe/RUTzWoZmfOwMVhfKkuur8WaLnaIFHL9uA6m+XdU+nZ0EUl+gQ5+EnlzEOYfcpzjh52S9YvnKXaog/iWVSNtX/tZmSt0gyPirHFjAgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BP8hs48h; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD329C072AA;
	Sat, 20 Apr 2024 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713618034;
	bh=OAScQiDcUbd5DXFV8V6AK3V6DhJJ9yBm5S0KtUtvQlk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BP8hs48hW1L1ltgxG7pyQEkHwlkhPkpxhaKKDB3JYyBDGFb1qpF4t9lAIrxojhQBC
	 MujCVgVaBxhENAKliI+c5wLjECej73qURxCyr/oYyn9Nb5yXutmescxHlSrNhI1uPO
	 EjflgVTOUGd+bDEgFCOHPfPq92q0wy4V/yDIKjJJnjuZd1r1HgM3MlP4LUFixtS/DR
	 Uy/mSAqu3u00ZfpfcptlPsvD2EFarfevw84ZrsKVisiHL0ZebPojlFJFuUl8yhk+N1
	 hdiRheFbQjHVRO3FXwrGbTqdoExINkx9FXclpc3B6mTN44eVpiaP/DHOJOFK1NEHM1
	 sy7daixl2nV4g==
Date: Sat, 20 Apr 2024 15:00:25 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: branden@debian.org, deri@chuzzlewit.myzen.co.uk
Subject: Re: man-pages PDF book: fonts
Message-ID: <ZiO8b9ihTxdU9_lc@debian>
References: <20240325041954.fofjtgghwhe4znm6@illithid>
 <47bb0480-0d74-4509-b55a-b460c460e843@SystematicSW.ab.ca>
 <ZiOvsLhqU2IxibuH@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="amlu6LQqEz+6HYfI"
Content-Disposition: inline
In-Reply-To: <ZiOvsLhqU2IxibuH@debian>


--amlu6LQqEz+6HYfI
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 20 Apr 2024 15:00:25 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: branden@debian.org, deri@chuzzlewit.myzen.co.uk
Subject: Re: man-pages PDF book: fonts

Hi Brian,

On Sat, Apr 20, 2024 at 02:06:07PM +0200, Alejandro Colomar wrote:
> > As Tinos is a serif style, Noto [NO TOfu] Serif Simplified Chinese may =
match
> > the style and meet your needs.
> >=20
> > Of course, you then have to groff_font-ize the downloaded and installed=
 font.
>=20
> Hmmm, and that font comes in the same texlive-fonts-extra and
> texlive-fonts-extra-links Debian packages, which is nice.  That'll make
> it easier to get working than the Unifont, with which I'm having
> problems at the moment.

Ahh, no, it doesn't.  The Noto that is packaged there is not Chinese.  :/

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--amlu6LQqEz+6HYfI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYjvGkACgkQnowa+77/
2zKO7Q/+J+jKvQ+dYGn20Zf5jlWKyTgYWdvtP1DvDkMGAkQeZe5itG5bWZ/8l7L/
IVuMjGjZMYR+EvYvQCJoixQqDDLlsVL/8b/7ditfT5/bIB+arn208smv54NBVJ0H
pmUpUl0hv/eN4WRYFA4S5O/7S//GyhXo8a+8u7rXntlB0JRy0pHxPIqBqDiBhQGp
iCaFTwYgJuiBdimFRjqAZ8s9Hpm1rVdTJYQXlWxvM3FaWaWKC2RomY2vNjV7uGIc
LVgITn5gP2O6u9tMokV8lYv3ox9T0v2M6ThhzV4s90e5v4taM21L3iz6fun8qyNp
g/S865O9yb1bVQCf0dkNlzMfOdCFlA9QnynLSqsDPM73gY8bMn7jPDoIjvgCEGd9
wvrldW6vLsV3q/EvNVvOzsJWcY0nogfJBSMgzrQTfCr4KG4uShv43D9NbLrVvUW7
KQx7VN0cabFqG97VRDSVDImW86LnADHhke7hg/IM4jWVv+e0Bjp/T+Q5XXvQvU95
xyubbNiuscSTUeOgABbXmKrIMF+tSf+dS3/aso5uvBHtnwK94Tk1Psf4RsCaU/SD
dWrVvf2WsNwJGJqae68fkwPYB7heJyaXjL5A/HjLq2I44E5H2dV3ZtjPhRhgN6P1
ESHdJkGvfxFMldlz+OrtS1fnUrllRDhKRC1XoXy71/rUvNsr39M=
=JS3M
-----END PGP SIGNATURE-----

--amlu6LQqEz+6HYfI--

