Return-Path: <linux-man+bounces-3809-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E367B3E6B4
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 16:10:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BE14C1A81033
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 14:10:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D35D22566DD;
	Mon,  1 Sep 2025 14:10:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLHPIVAj"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93CDE19992C
	for <linux-man@vger.kernel.org>; Mon,  1 Sep 2025 14:10:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756735810; cv=none; b=akg8zQ2tGVUth4XRw6AOVluFBGueBu9SJc4ufN08HAJZMqm3RfXaEA4TxVxUwmzS6faX/d/8TOr6It+5vO36Na3aoZG4Qo5nIY65V2/sC5/2fFx5mhcpcOLOXXZBoiT6KFt/PEQIbrlNFIxQgpE7xBgXGtLcWHIzRgNmu9tc69Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756735810; c=relaxed/simple;
	bh=0cY0O+DUmXzLIaDZaMSCsCEel5F7tW2YDMkzzXD1D4I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=As42J72/4eUbm1cxzzdsI/AjD3/jKofoQyzRHnABJazoSKqW22Ky+TbFDtYK7ZiIhAXpfe6yA8sCKdVvAoIsbuy3okE3P5l/8pIoEM+yi0G7JPVFTVnPJfScrwVv6BuV086gUj1aWKwIQNX2Ie/6P+gzmOw3hTtDynad1k7hu3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLHPIVAj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A72DCC4CEF0;
	Mon,  1 Sep 2025 14:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756735810;
	bh=0cY0O+DUmXzLIaDZaMSCsCEel5F7tW2YDMkzzXD1D4I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CLHPIVAjj82ONhEwXGu9wEeHRNqphcYz/ppDT3WTRjmAC7F9t7E9JGe/EmqJeo439
	 tlnE0QD7t8EaQn6UKGDGsGZeuh/lsHBB97/J18hlgxxMA0sdEsM6jv43qb7NTfdVP3
	 iRbyqw1lKdMBV0kg1uPHwezV3QU5aLybeucxeQG/x5VwrRn6VJfI6lwcAverDcwz3F
	 v7E/jTKR75bYPVom2qbWp6XhF5SSmZCwgi3WQTbNc0Q7G2c06nUVwL/3/+MrksyKLU
	 pN+kFMvDCB+uGO1yAj8LcnwT2CYc8Pk3RqbTelGucsEkyNTzDUngwOGNC47NTOQRWj
	 fbR63tB6MO0+w==
Date: Mon, 1 Sep 2025 16:10:05 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page fgetgrent.3
Message-ID: <7bttw5ma6tqltclmidsuhwdxfg2vy7mcjiuhlhaaov3xgm7fvf@wvdvxkl5v653>
References: <aKsmRhNd2ZTsr_W9@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dnmacr2ecrms7apw"
Content-Disposition: inline
In-Reply-To: <aKsmRhNd2ZTsr_W9@meinfjell.helgefjelltest.de>


--dnmacr2ecrms7apw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page fgetgrent.3
References: <aKsmRhNd2ZTsr_W9@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmRhNd2ZTsr_W9@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Aug 24, 2025 at 02:48:38PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    Does this mean, for glibc 2.19 both options are applicable, i.e=
=2E _DEFAULT_SOURCE AND _SVID_SOURCE are necessary?
>=20
> "    Since glibc 2.19:\n"
> "        _DEFAULT_SOURCE\n"
> "    glibc 2.19 and earlier:\n"
> "        _SVID_SOURCE\n"

As said in another thread about this recently, I don't know.  Some glibc
maintainer should come and clarify these.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--dnmacr2ecrms7apw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi1qTwACgkQ64mZXMKQ
wqkVORAAsUMwyA6q926t1X786ekUl0Oi6OPugfHDVe/JerSrYxegyowCAGvhfZFv
a98jRDl3jPDBZYG5x3nhTRfC23PRTJ6UyvuxoysOSh8fKs8YdIUhbFsSu7+X7QGl
NfKfKprKgGfcClh92SGBqKNvbqW649TnIcTPL5z9EdXXvhkgVz4R/p7rye8uW7cv
GeTdtApW/LgGcfyNXsSrNftLqNLt9pwXjkPXo0Hj13Szs8zPwThyYDvtepYY5Ell
r1dLAoCtAq66Kgj65K+WMcNoxT4cbgLdTvh8GTCmiBpR3mlduSaIpLswHGgTqzoB
Z/WrS5cbVhM5KIcnQKVejKHzwi6z9i8/KB7YmycfiNewodBso1Xmp2z6jOAF9Gke
JN+fUFedTtNipd0rYDvEhmgtcI7wnS7BsslSz21KXUzsoRinUbaKlWEqo2CNKn8R
UUS71PurrJj5gyxPq+94G/0uZe3IfIckajvkiE1kTVocFEPqQ13jMxERdXpJnFaj
DVzJluHiUoe+K8EONlDW17z+GRffyM28PMt7WcUC2b7Oz+mp3wNiOsa8Q2iIeQO3
UgE99gxwhgN5VOnGrrba8aDk0CV/3SkwC5bHCxejwdgg7P0OKpwzWJ8AeBo0HfJk
4E8KgAjNaG3mRR7EFNl9puQTlLhasZIyie1YpQYVo//dsRW2c6o=
=qnli
-----END PGP SIGNATURE-----

--dnmacr2ecrms7apw--

