Return-Path: <linux-man+bounces-4545-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 746F4CDDCF5
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 14:24:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AA34330210FC
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 13:24:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A617F217648;
	Thu, 25 Dec 2025 13:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQYlFajn"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6412BA55
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 13:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766669065; cv=none; b=jkjpAiVr6SyqQuM3JVn0zaflGRcM8zMFC2yEmZZy6yZA8Rx69Jvx2kFHseEBzlBFYbA0ARTrD3dyEREn6OZnDvpXSEACc7cCTbouMgq0QqtakvQ87FGXi1BwXxDq6pAWIEAuAtSJHq+VrGNg3GbVdt4ZmZ0KyqeG6ttRjYS6EeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766669065; c=relaxed/simple;
	bh=3gvLPKwpJYv442T/b5YwbZ4/UntIcNv3P/4s+7Rz344=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P4YgBtqqWvCt4dKRgtZIrFuuCuODzNYaMDlM0FznDVYVFyNanYR51FtnXIup3vvdRuwNqeESd9+oxOjolcvsw1qBU7c3A6UL0tvNtZnWawGD8ptlG6ifrRPf9zij6n8K+Dw6QPOqtI4riVEuCpiPgXT3QhE2rFY3Kn7Al13iKW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQYlFajn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 283ACC4CEF1;
	Thu, 25 Dec 2025 13:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766669065;
	bh=3gvLPKwpJYv442T/b5YwbZ4/UntIcNv3P/4s+7Rz344=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TQYlFajnufn/v+CJJMXdHQ4gDESx5J3g0Zi7OApJK5ly8uY4uSw2eAtg+06yXBKL0
	 eSAv8GI2ygMdjlEOkQb3cqW9yr+UdhR6fHs5uVvRCz3bEH59e1Zy0UQGmgnkFo03OW
	 BSqG2b42DTsNJHUE4T8urGTcuhZFP7zdojfk6mO6dUrTp7D3atZLZkb8YJu4u/x62t
	 QJx/eo4xXyAKzeBwez3lahZginOJlWh5ZQDK45Dn6wT7fC6BBRXfiC5QeaP1dKs0Xv
	 UeJ6E8NZVetqHuwQXHSiu6ZDektVs6XZSB/yufdnVblJRV2suD5l0SKAtQ62FU50lb
	 yXXbmIG0xPDSw==
Date: Thu, 25 Dec 2025 14:24:21 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  wint_t.3type
Message-ID: <aU06_1vpjdVIBjjg@devuan>
References: <aUv64ae65sznmeE7@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="udj6jls6lfiaq5ci"
Content-Disposition: inline
In-Reply-To: <aUv64ae65sznmeE7@meinfjell.helgefjelltest.de>


--udj6jls6lfiaq5ci
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  wint_t.3type
Message-ID: <aU06_1vpjdVIBjjg@devuan>
References: <aUv64ae65sznmeE7@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUv64ae65sznmeE7@meinfjell.helgefjelltest.de>

On Wed, Dec 24, 2025 at 02:38:25PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:     of =E2=86=92 or
>=20
> "wint_t, WEOF - integer type capable of storing any wchar_t of WEOF"

Thanks!  Fixed.

--=20
<https://www.alejandro-colomar.es>

--udj6jls6lfiaq5ci
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlNOwUACgkQ64mZXMKQ
wqkCmg//QStt6Vh8EXVIYPSLPemuJ2pRpi9BJyMXwf+mos1K7DM5QzLBTyHX0tAj
qSD+8rGzsoWRRtRCoO5g/WNhamIOcEBvqrvpVDo7kehoorUHu12KUKqZ0JISfOul
jJBgUvxR/ObYTMCyj5qkjFLAsmck3pKEOEj3XMVR0twE9mLQjKS9W7uLlUfIWrP4
+OE+A8jJMH5sW46oZiTqZRZ/ePsL6sIjBjWsbK46fcOcGZ8j0Dfu8YwDQWDkKosv
69CfDnQBfbEFdFxtHD7L4aoDwXgA//sWTYmYPZtu2uQE9c7ekh4EIv5GvSsJO2gB
00EzZlPtmUKcuv48QShAWhnrRUAC5hCUZA9Hacohs7y9KuzkBNrlbzsnSwfsKJ4T
gYK31rV79ZQwN40E7Rlwhi88HXmzwBVjRcT6+ROzWHabiz2gSw/dY207AssnjmC/
zSuDdiGQjYcCc/LcNjzzDqaCUBGblUdsBU0JkkjS5opLAutpzwDi74As6F4gi8MP
cG/pU6iirasjoVVg+vW7HsKyrrSdSGzZtbOZUe5uKxWI/0aKlnv2wrJwkzyXd7Rw
Ua5zhccX5cV7Cof6nmDao7Y7m/DfwEDZrFyOGixz7tBOyZoS/Gi93eOOi4N4ii97
EYAf0sJedUmHyvFfKf/EhdMCLeWePdVcAfS3FdaFiX6lebO6DPM=
=mtCd
-----END PGP SIGNATURE-----

--udj6jls6lfiaq5ci--

