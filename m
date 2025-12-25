Return-Path: <linux-man+bounces-4551-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DBC7CDDD52
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 14:42:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EC4DB300E178
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 13:42:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28C8A2F25EB;
	Thu, 25 Dec 2025 13:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KnsqxZ3e"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA12F7FBAC
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 13:42:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766670141; cv=none; b=CM2snbkfzTTelX/a6IOgfZKdYkEkZ/dpObIKIDfBrYOl6b+1Q4G+w3inCUtYhWMGoJw2K6IzuJF6ICfaYoxtya0+yuy8TUJWcAH2DxIJVYw+cI7tD6revSUH/s9HJqY1ypBBJ1nBbv23+WxH/P3OkRnLkG5DZEWqxvFVJO7OHxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766670141; c=relaxed/simple;
	bh=Gap1LEnjP4u/GTTar7ACoWCeQ9pt4sfQNTwkktSVrhE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aJ+YF0BuSg74twYWV8RbXeAKfOH0NriHK/nV3Z9AvmzJ38ifxnAvs4Af2LLq5oa1dGCvUtKkf5wbdntWU9xEeqdZo+9DGMSqbFUeI39w6Y4opRRRvIrrbDwXNb4AV6xva8szyvEF2AptO8SSHQVJIXQHqi1IWQC9LlnvG4hovm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KnsqxZ3e; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D2C5C4CEF1;
	Thu, 25 Dec 2025 13:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766670141;
	bh=Gap1LEnjP4u/GTTar7ACoWCeQ9pt4sfQNTwkktSVrhE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KnsqxZ3eHlCCN+xKUJQ/In3Lxabh7OaLW0NV2jqeptQ2Ta0v9v1mFHAsNic8i3NNW
	 qptHbDKFyZ/0FhtQye683+1M52s6ljSBfr+pYtXgkVMu2xM0Fu8SXxUE7lHfhwMu0e
	 Kbh0DFknsfiEG5mCYjOEOJTpzZ7Q9MLe9u9xUH2sCe627XSJpmNlmVVIcbDa96hzWv
	 UWZHBTJ0TAqJk+jSiSZigeF4jMdrP8sGjA/cNuVjAExuinQmbPxtKxBkJlMKrq5XZj
	 Y0nQnsS3dabwWV9865Yd0EpJI/v0UDJUiyCc3HKPYUHXj8qWsyzdsPTeV0Szftxb3F
	 8C2FOAhUbCYjg==
Date: Thu, 25 Dec 2025 14:42:18 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  sysfs.5
Message-ID: <aU0_Ljfc4R8kTTuP@devuan>
References: <aUv64Oi-OYpIBxVA@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="36wpuve5baywapfz"
Content-Disposition: inline
In-Reply-To: <aUv64Oi-OYpIBxVA@meinfjell.helgefjelltest.de>


--36wpuve5baywapfz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  sysfs.5
Message-ID: <aU0_Ljfc4R8kTTuP@devuan>
References: <aUv64Oi-OYpIBxVA@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUv64Oi-OYpIBxVA@meinfjell.helgefjelltest.de>

On Wed, Dec 24, 2025 at 02:38:24PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:     This strings is slightly different 3x in this file, unify for =
consistency and ease of translation?

Thanks!  Fixed.

>=20
> "[To be documented]"
>=20
> "[to be documented]"
>=20
> "I<[To be documented]>"

--=20
<https://www.alejandro-colomar.es>

--36wpuve5baywapfz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlNPzoACgkQ64mZXMKQ
wql1+hAAmvb7B3Z22i06eDmAVVmxwCUl3c9Ie+gjZ7Pto70/it2xZcGaIOR0r3xs
/v3O6NYBU2cLP2nfWW5xyw5joHuwboM2ygS2lGrUIOhD6ssLLSjvNeqcgERqiNoB
e8049dZyOXmgtkeEtwAOAxM8ohpwN3wPHt/3Aaic7FAlJ8HC+K5noTsjOBYom7rL
uOstbMTed+2nuDpbCaC6Qaw6PBz/ZVmiTrn15qDeNs6iviyoNEDwlb8ZNqp+XOvT
99SjCQQuMhdokBVbc93P+NJLuYPkmugNR7J6wHKsluVc3sFFsWB4/93Xq4G1pTya
f9ah8Gz//0NG5uLD14At1w1a9rckbhF4BtjJQUw6RpHrBT2qW9kUM1sIl/4AMZF9
FkKQA1IPZoqcycydTLPW+QsXVE/ZQE+RNTrHz7Z6PkXxJ1Xye2yu/zhGDtOirrGZ
vuaRBoh8Dw7qrIFAR2cX8RjMOqacHXKAYO8R/lQVMApO6jIcw513/WPIbY7hmcSq
7RMnw/nw/O8l+Jk44KKENIFygfS5eyyrbNRplYEHi8yN1QTs83N2igecvi+kwura
lb9sPtJmILy/F+worg7CiOy/WiX/9qEqyhsdDMPH3y6DpgVouICkV5eBPSH0IbER
FO0MLtzK25aP1sI5U5LExQiA87wB7jjUITEFAV1Dj08a3/+oTzs=
=PWoc
-----END PGP SIGNATURE-----

--36wpuve5baywapfz--

