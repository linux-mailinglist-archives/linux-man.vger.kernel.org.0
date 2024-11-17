Return-Path: <linux-man+bounces-2007-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D0CC79D045D
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 15:47:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 569CBB216EB
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 14:47:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 042281D27B4;
	Sun, 17 Nov 2024 14:47:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKZVLRo0"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9AB628EB
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 14:47:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731854850; cv=none; b=bUnbOIODVsZNne/ZjPogh9t1bkSeyE0lZTrOsYSTqixlKUGBbmsf02fmkXzs9tnXOsHJZpYCafiRqt5gsLaI2G1UYzkldaBQ3UTmP+PImp/1qAcRywxJ/Ig90jnGIv4v6+Gz6fwexRqQSKl1n5SzIiBJdv86f48PlTP7up1TE1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731854850; c=relaxed/simple;
	bh=HgyZxxi0wl/pCl03OPny1x6Jiza7pzjrFN3HU0TBKwk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L2f2XgVvKhyWb4i8Q4wU6Y0LNJIXNXwJSA/bao8bXvfEDTapKW7GZ1X6Ss34lWcJW0q/ZV+ptkVrgOligmXMtqctN8Cbhy752WZMCFq6xG0qcuvUgMPUnq3W+b72OE7N/BQZVGxpBDsPGFkDkBSrj7lVY7SPDLXzuRnRTOmqdiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKZVLRo0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FED5C4CECD;
	Sun, 17 Nov 2024 14:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731854850;
	bh=HgyZxxi0wl/pCl03OPny1x6Jiza7pzjrFN3HU0TBKwk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gKZVLRo0XoaceyQBJWWhufpMbriftuyzUWn1L77C6hJOjyhnRt9VYPslkKNWErUTR
	 VV2Wd8Ba7L80Hb+HoLSHKa1Q6g7lV8I1LIPew5xyfl8sjmFyNzlSwA/bty3RmyPzDI
	 aXe3pXs7lxWAbGraAzkiOUiO+8JL6IBXXdIhUTwrDBLdKBVoyvtjUiD0vjqUAysdRF
	 guOFS98WB35QFBj9LaWcwh/UI0uilo+ItnWuXs+/Fgvsagbgt8kuxdCRSwU3/RkMLG
	 lhauq2GfxetJpHyJch/UllObfJwYAchw4gpg1Y+21FTQ/zSI+MXIFRNhv18j83Fz54
	 tl7NS2/N0VV5A==
Date: Sun, 17 Nov 2024 15:47:27 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page charsets.7
Message-ID: <zdew7riqkeywiwstzz2jecvet63zwozvjtpeudr2ef7z5ezvhn@tvow2a5qofwe>
References: <ZznJgUpx_AoG7C8T@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kia73ieixztetiq7"
Content-Disposition: inline
In-Reply-To: <ZznJgUpx_AoG7C8T@meinfjell.helgefjelltest.de>


--kia73ieixztetiq7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page charsets.7
References: <ZznJgUpx_AoG7C8T@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJgUpx_AoG7C8T@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 10:46:25AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    (it) is \\[aq]/\\[aq]s correct (the final s is a english plural=
 s)

Would you mind clarifying the report?  I don't understand it.  Thanks!

Cheers,
Alex

>=20
> "Note that UTF-8 is self-synchronizing: 10xxxxxx is a tail, any other byt=
e is "
> "the head of a code.  Note that the only way ASCII bytes occur in a UTF-8=
 "
> "stream, is as themselves.  In particular, there are no embedded NULs "
> "(\\[aq]\\[rs]0\\[aq]) or \\[aq]/\\[aq]s that form part of some larger co=
de."

--=20
<https://www.alejandro-colomar.es/>

--kia73ieixztetiq7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc6Af8ACgkQnowa+77/
2zJdmA/9EetbSE9yTwtac/qclDlG8ZLqvzz6akTU7gwYtzOe/iw82C6sGP0ZdKfJ
Xx0E3pfNNUfzu941JoRoLYSeY2vYZjxrFp/XmgFL8q6WeBqyNW566Ubq4B4BzDJj
sbFGrJNXzci8iLB6yOUYn3o5oiyRJZr2tInJ3D+Qj4xoXt14ki2PwwPUkFa/AWQu
tC4+vJMKyS6uX70zJrDxHKQ+sXtAc2GS86cCDH6iTX7bhXrEZ9FBEyYT+38i882i
Rq8Zg2I41pcJUbX9ohR3Gs4+UvdEF5XtjC099uUhVvzAhuUXG+2nEaTT7cLF9vnr
UBmrudQXHItImu+Zg172moyaEzXPz/M7hL4yNLz6Zvr7SAc750httoV8FvI2Zy4a
pvsArYytc4+15aazqFl6YRwkJO1fEXMgHc2+y6eLVYXjau/Wi/ElZOmJ7a+ZIkQW
/DElMBzY+eEBiJYblCbW9W3OF4OLJ6s/aH3Ic1iBWWrZmWhlONKChGCcQNoxSEkv
HsFPs+4+Ab2cR7GZoaLT/78zt3Ke9WW6/fvaMHu2AjU4j8Lao6ZerMTJzOiXP28J
ERSEWR0QDQBwgXTCBBJ8vOX23946royegHHmmdf6cjD27qhxbyQcpKnbpMieQLxu
Uiun7NGotHoqPRugoaBeMJBRNmrdQGfZ4cxDSj7r1CpEJ/ggSF4=
=bOtB
-----END PGP SIGNATURE-----

--kia73ieixztetiq7--

