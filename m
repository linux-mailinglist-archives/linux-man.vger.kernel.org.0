Return-Path: <linux-man+bounces-1918-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A36E9C955F
	for <lists+linux-man@lfdr.de>; Thu, 14 Nov 2024 23:50:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A7ADD1F22FCC
	for <lists+linux-man@lfdr.de>; Thu, 14 Nov 2024 22:50:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E51D01B0F34;
	Thu, 14 Nov 2024 22:49:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Di7TfOGG"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A64D41B0F2C
	for <linux-man@vger.kernel.org>; Thu, 14 Nov 2024 22:49:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731624592; cv=none; b=hD9zs4H4j+ezpRLs09ASOg2X0ePEtvIG6xxwVIkHemw3O/nxkFC5f+Z+wUyLkEzrznDQvY0Dnb892AAoPOyUQe3tekk1eoPI9Lm3MZ/m/02In32ZWxJKE6w9nVbhymjLTTHfSpHkxqpyrjGF+M+ET+JEgwBlHJ/JLq/Ah+S9uPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731624592; c=relaxed/simple;
	bh=iav0YTGcw/OpJWxuXSmu9zogCMMFi8H7LAJOoytnKOc=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=GQTL3Q8KqOz4/SIZtD24f4v41ws3Up5BInnP75e/R8QS6MDD0MATaaKi28QJ/dA7FNUp7NKLKrGVcl0F+Nnl7uLkYoEgo8t5BpK9U3Rsq1KytUiwamINPNOwJOy15zopieka5B6Efp6XyqVB9/hzjnMiHJXGp2/MoQx4h3Us4+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Di7TfOGG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A17E3C4CECD;
	Thu, 14 Nov 2024 22:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731624592;
	bh=iav0YTGcw/OpJWxuXSmu9zogCMMFi8H7LAJOoytnKOc=;
	h=Date:From:To:Subject:From;
	b=Di7TfOGGnvPybP4c6TDwhs5gFQD+keNMjIjjMKKtu6HhbZr1l8/a68qtiOFgJFaan
	 b6ST8Y5vxaxc4MBSE4nkQKvXjVI1ppkascGopVylLORMoKMlJ43KRRZaDB91SfYht2
	 GB5XTFjVSEPML3CDQ5HT8zbnf4CQgUeiu/E+sPkhGwne6VwaPxji6Bh/BUi1Ng5JbR
	 wZQdDYuAHPsbwnhIXGXUk6zGb5YrBV4QydsFDjgi3D/AsaMGXRsIBUGrTrlDo+Fgi4
	 WvYj9k+phZrqhGX3r+iVKztNeTtanvShTxDzA3UF/rYso+wQPBhBB9B0kRRqkAEbJL
	 VqHRiXBcu6uNw==
Date: Thu, 14 Nov 2024 23:49:49 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Martin Uecker <uecker@tugraz.at>
Subject: lsearch(3) nmemb dereference
Message-ID: <d62nemy6v6e27axxegnh44jzoliv4ki3unlghx3vc2xrrn7cpj@v37q53k7adc3>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qoxfmoprnqoifkwg"
Content-Disposition: inline


--qoxfmoprnqoifkwg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Martin Uecker <uecker@tugraz.at>
Subject: lsearch(3) nmemb dereference
MIME-Version: 1.0

Hi Martin,

I've applied a patch after your report.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dc0399060705501f7b85b4bc701dc686a1ea2dbcf>

I'll push to <kernel.org> tomorrow (probably).

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--qoxfmoprnqoifkwg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc2fo0ACgkQnowa+77/
2zK3Gg/+NqnPn+BkPMsQt6ac+XZdaLKH7vv7N5iurLR7PrLdBjzKHhRTI5N1AU26
e5bpk5/+FfHWre9VbC30oc2b0w6g+0Sc7CMN2MACA9qzvYcIL5fYt7WJw+GAHAPW
BlYc6zeeohMzORJxYm/Ia3gpLGB+3oZazkv335+khTPTftV2x8eY20i4HSkYCrxv
44tUTgDoKTEeoYwyFNNfEygu8E/UNvwSbGSdFeSPQA2VPKmTmL4XO/0MmEldivlI
jrS02pplXDyuY7HvwgZm2YqTE+2MbjwgBgyiZ5PZyxn6yX5HBeAAWliDrrFTBe5e
nj72WA50/kM6Gj5XTqDecQ0Z4LfsDHv80IGfWmr1bsaYo/49VvGNhvSUhcVivzKI
JWkF0LR+wEscJXSMIvptq7M1fx0H2k3vtR1GeFoCDt19eCNvU7JytT/Z1meGPYjJ
bcPjkhe0ICNH4nR7Uevsji638tRFToqn7Mlpqyeoi4AM8QaGoXbMYcS0XhJFTIVv
7afSwMEdxyhHazrDczylUR+jLiYLrIirIwTfISDyFSw/tMc0CJ9FbKpVWAr09n/n
Rhl5ztvXI00Z43whkdOyR5c8QcBcf9ESQmOyzVuT9ZTPAD5TBGfxUORMaSpfz6pJ
nUkvCTjRLr6y6W+VudKlofsST9wig2D2ZOWFPaH9hETE5GX5+KQ=
=fvbD
-----END PGP SIGNATURE-----

--qoxfmoprnqoifkwg--

