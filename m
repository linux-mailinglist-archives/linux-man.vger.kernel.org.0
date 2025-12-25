Return-Path: <linux-man+bounces-4541-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E47CDDCE2
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 14:07:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1FB1A30041E2
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 13:07:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8090F2E1722;
	Thu, 25 Dec 2025 13:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VljObqyb"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3879623F42D
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 13:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766668071; cv=none; b=Vk+KurO1dA/xgXz9P+Y2CCQPxMsI2KilETh1PmSz7bvWXB1WrzKMhbFevmpDg6GI7nzr8KlXczRXCOrVAtNya/RIiQVT/ALDToT0isrQ+GGj+gHozhJrFkOzrkwej/pZva2bp0fB0+WEzZb9bMjVP8hh4q23TNwSO1kFTQ2BOq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766668071; c=relaxed/simple;
	bh=kIxG01IeFnE7z5CdxBGhb3WxdWagiuagjcxoxfWcP4I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S8xTxCbxIbReMKUcfv7UXTM/DNRGN8+x73ay4Rj4G5WbS2LYyDsvR0okAXQMqQ4vUykB1/nhqnJmhgZnUPY702NvUKz3h9SIJUN1kLqYlG/Lh4da7PO/h5zdRyd38JZe1laFYy15hedUVVaUAFykn/SpdqNcf3YSQoMuLzRMEbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VljObqyb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F11F1C4CEF1;
	Thu, 25 Dec 2025 13:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766668070;
	bh=kIxG01IeFnE7z5CdxBGhb3WxdWagiuagjcxoxfWcP4I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VljObqybICstAGMiv87a7RkdesAxNtn3QCKFQgkf1l9YyuVtUEtlCMLo4J0DIinHm
	 igyMb/vUDefcfw+6fTajNZQI9v7TqCgjB+FMrN8HWKZnb4kwC7ZWE/wrnktd6dRlb3
	 8ABFmnhdJ7NluPItSMyoN+QHV/m5IPYO2+0+tG6ANFTy5u/4vHtGDWtvOhJtSQO1+w
	 mnQTruxQDBtA/7zYn5Fb0acHL5vb7OHr4Pp+F2VzUSQJui820s5oHsG8QA1PlXb2zv
	 9ImjTStK9uhuYwkSaGeddtTeaQPfY/Zwt2MsMCKpj9UVt0089kF/eJgLp934W+5QVH
	 U1GUh1bsmfSlg==
Date: Thu, 25 Dec 2025 14:07:47 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  sysfs.5
Message-ID: <aU024sLZjpewLBBN@devuan>
References: <aUzkDrEHd4qo-3rG@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jye4dvmd2bkeshnf"
Content-Disposition: inline
In-Reply-To: <aUzkDrEHd4qo-3rG@meinfjell.helgefjelltest.de>


--jye4dvmd2bkeshnf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  sysfs.5
Message-ID: <aU024sLZjpewLBBN@devuan>
References: <aUzkDrEHd4qo-3rG@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUzkDrEHd4qo-3rG@meinfjell.helgefjelltest.de>

Hi Helge,

On Thu, Dec 25, 2025 at 07:13:18AM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue 1:  Documentation/filesystems/sysfs.txt =E2=86=92 Documentation/fil=
esystems/sysfs.rst

As mentioned in another thread, I've done a pass through all the pages
to fix many linux.git/Documentation/ references.

> Issue 2:  these are only under ./Documentation/translations, so I assume:=
 I<Documentation/*/sysfs.txt> =E2=86=92 I<Documentation/*/sysfs.rst>

Yup.

> Iusse 3:  Missing full stop

Thanks!  I've fixed this.


Cheers,
Alex

>=20
> "The kernel source file I<Documentation/filesystems/sysfs.txt> and variou=
s "
> "other files in I<Documentation/ABI> and I<Documentation/*/sysfs.txt>"
>=20
> --=20
>       Dr. Helge Kreutzmann                     debian@helgefjell.de
>            Dipl.-Phys.                   http://www.helgefjell.de/debian.=
php
>         64bit GNU powered                     gpg signed mail preferred
>            Help keep free software "libre": http://www.ffii.de/



--=20
<https://www.alejandro-colomar.es>

--jye4dvmd2bkeshnf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlNNyMACgkQ64mZXMKQ
wqkUkQ//cpO04Bzsze677I4T5ioPzRlZudbc9MIENNtN/S1oJBzrJTsEIaUikqVo
qbVtLGYJ8J8Dpsu+m69ZoDcmrXoyZqdeBXRQNVImM3CQyuVgCihrrC/4u509vz8B
2g0pX38rcQQ5Xwkw7GU5tIa5nrEfluGjUrrYcbFCu/fR+SZBU/gG/o1YFTWVk4o4
unPalSAJKaG0S/mhhtmrOvHo3Al5/GzClyKlBMLaL4lf0jOdpYHOZpEEWZAPtRPW
Cd2chBFx0uCqzfCe5iBNe+kXOqv5dC1k0fXwAsFD43sn7jPEWY1skv5iG6+1oBcZ
3zEERg+/mSWCF0pfgkRv3MTIUYDfMCd774grBxC8ve4+G59Z0Uq3G4OT153sS9dI
LJJ5Wa4AxgzPfv5RQSfEfaD/FUB/O2zOo5rMfVbRzQIkjMkwLMqqLdV19PK6VQuW
SC2gDlN3/PlQCg/TsnRmVGZQKbXjbc15sw7HTPz4fxPU7jVtpStN09OygJKMpqC4
tHh9Uy9lSwQu0zucKlRkIXiOFOdN6MAldBrnxpMTLEOgQEY6yus+FEg4rnEzjBVO
voRUR9uv/5Q9sbum1xtMe3+hN+1dHmS1Nxr1v3JUD6avfs1lgNuicqT5TGsgi6PO
WkAVq7CEwfMQSyb+SXUwEY92GSQ3RdBJ1UVP7yiqGAyfwvzZXO8=
=pszO
-----END PGP SIGNATURE-----

--jye4dvmd2bkeshnf--

