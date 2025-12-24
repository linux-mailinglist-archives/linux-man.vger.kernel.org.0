Return-Path: <linux-man+bounces-4522-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 37EF3CDCAED
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 16:24:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7C8943017623
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:24:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE1911DF74F;
	Wed, 24 Dec 2025 15:24:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIhtiScM"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE8133859B
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 15:24:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766589866; cv=none; b=c7HOAgAVoYF9XyCnMlAo2yI3vPNdaXW5MaeaH0JARL0IttyGL9/nKQSuQ5PiqzKG0+ZJHZL+VbMI+BcCZo+DbzQiwhu1LOsR7C6ikvw9Pt2l+wXpKOA6eVCmy8yeaucfuOTdSxGUGESWA1GGhOzJv+WA7K2p48IUw+MY4uJHkAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766589866; c=relaxed/simple;
	bh=B0neMgTfM5sDK3pW1fLxsrXBOCUB5yj/ngC0TDTXsZ8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jW/rcD4LjB+xlIeinRYq/ob92A9AugvWa1Z8QlO6yTJa1MWt52YeU82LA7leh+IRG/8oV3LiM1njFSpfsXssGTZV6Xs8tw/8vLih6QRKUsDjlZmAgGFvaUEdNaPgvyGCG7f8q9AWzNd8EqFhGE+zdWkAomFUlR6i+c9jJfrCyQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIhtiScM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2310DC4CEF7;
	Wed, 24 Dec 2025 15:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766589866;
	bh=B0neMgTfM5sDK3pW1fLxsrXBOCUB5yj/ngC0TDTXsZ8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lIhtiScMJT7K9WdHzWrhWBm0qTaHWvvQvbLsYxAjcDFEF2O9K8MCjPCyBdFgoVa5q
	 COZg17Z5f4i51T+e8xAVGNyY1044TEj6M64rBPOSjGaxS5LyPm3X0L0m/Z+u3izDHQ
	 JW1c2ZE3pl2Q875VgHyfvt9Fzkj3J2yTtx/917sXl2e8Turm7MI7aou27vLmLlWcl8
	 rZqjJpFRGu4vpt9yLTgo6DWy0UgtYmgCH83w0X/61U6td5qcJDrg/BOTbSFs4rpLtZ
	 Gaw5gkXKBb+3UYE6ZOsJq8qDjs6+1QaoB7sUZ3JeJD8ucLrCByvBBmwQWXrFy6fHzX
	 msgoxLAg//nJg==
Date: Wed, 24 Dec 2025 16:24:22 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page isalpha.3
Message-ID: <aUwFOh1nSLS7fwmE@devuan>
References: <aUv63EGuHX_jICjK@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="np5o2cj5u6ghazmm"
Content-Disposition: inline
In-Reply-To: <aUv63EGuHX_jICjK@meinfjell.helgefjelltest.de>


--np5o2cj5u6ghazmm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page isalpha.3
Message-ID: <aUwFOh1nSLS7fwmE@devuan>
References: <aUv63EGuHX_jICjK@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUv63EGuHX_jICjK@meinfjell.helgefjelltest.de>

Hi Helge,

On Wed, Dec 24, 2025 at 02:38:20PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    I<(isalpha(c)\\ || \\ isdigit(c))> =E2=86=92 B<(isalpha(>I<c>B<=
) || isdigit(>I<c>B<))>

The current formatting is correct.  This is documented in man-pages(7):

     Expressions, if not written on a separate indented line, should be
     specified in italics.  Again, the use of nonbreaking spaces may be
     appropriate if the expression is inlined with normal text.


Cheers,
Alex

>=20
> "checks for an alphanumeric character; it is equivalent to I<(isalpha(c)\=
\ ||"
> "\\ isdigit(c))>."
>=20

--=20
<https://www.alejandro-colomar.es>

--np5o2cj5u6ghazmm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlMBaYACgkQ64mZXMKQ
wqlL8w/9GRYHnph+e9sAYHPl9jX1AlcB+PMl+7XK0c6XuPMLw/Czs8unKP3u/VE1
vZoebO3AcU4UaeEpazz/Fax4LUgjDItzeNY40PtHzA3QLaS+nJSDE+GjOT5H57Ky
u6B0kFnVdDUWZEruvTxOLQ23AUplge//wuhVn3//H0rGAysLEzcOZirn2gxrVJih
7gyGBO/4K+6oI8eCdbzoGqYy8+E9O/kqnXoomR/7jV9RYww2MMLI23+r8GRioMo1
jEcyfHiyK/vZCLIUepXFJCgIqDSQ1XcjkHQ9bc1Rcs4I2yLl8Ndj9pSVgkh/5kYv
hwKro+q2sQW9GlMN/b5txJx+ewbG93JpksZPkpuA/z5kFABUmSV/ocEmmWzC2wEG
qQR/GJeM0MNrFNdDL7r/GK8KY2pCJueHBZ/MNKmdeDxuftqiFgUOlKA7GgiZuYLs
N/0BNPFzDAEqVwp/jTPYO+pY5pqSVLkZHaDS4AYH6Ji7JPoPy9FeZwWDWWrMkp38
Ay+J2OH9zilrj4/ESnWWnzzHfMpLDCQmkXUA6CzNzDfPvdJ5VkuHUnXwD2/vRwSp
oWzsSzvQ8Wu15OQM7P8nNp0xHsjTKxsmXMWQkbd4w/b8HST4Dzt8/I9il7R7GqHn
QeFgblbhOOLOaunMIjtTlLCUxDk5Tcydux3OoR5KcQk5MkOqp98=
=GZSG
-----END PGP SIGNATURE-----

--np5o2cj5u6ghazmm--

