Return-Path: <linux-man+bounces-3219-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F307DAEAD3B
	for <lists+linux-man@lfdr.de>; Fri, 27 Jun 2025 05:18:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F08431C211E3
	for <lists+linux-man@lfdr.de>; Fri, 27 Jun 2025 03:18:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0824519882B;
	Fri, 27 Jun 2025 03:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7Qn4Lk3"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC10B38FB9
	for <linux-man@vger.kernel.org>; Fri, 27 Jun 2025 03:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750994302; cv=none; b=jE9lAixbfW/mPw6z0PZje8NlE0cVs67PQPUhJje+G6tCGI9uJGeH27982zW6nl5UPYLZmQFAjG6SH2PnSgPbSEkL3LQrA/GfOuqBWIWlVDgGGr+pmk1jpTwFws6DMGE40YiawHyJSt3SqPZP9ek4T4BwWtAzzdnvIJmFpxj7m0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750994302; c=relaxed/simple;
	bh=6wIV8TQThHCYgMxsQsdvbTAFH3OtagjToweIc7dYF6A=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=NOJXgGpSVJ5le5kC3t/uLh8PFFhHnAMlSuOO186QXBF6XtIoTXn43o/+AreLfDGUeFvH6OwvL6xIwltUdQOGvFtM/9kjRV81ywq0UWIIXSzFc65uEeXDi4xnyK7HY26lZTFhGFIVdtNa2XFNZPNxep5mgrkfQDVuCRAVgotFFHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7Qn4Lk3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C18CC4CEE3;
	Fri, 27 Jun 2025 03:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750994302;
	bh=6wIV8TQThHCYgMxsQsdvbTAFH3OtagjToweIc7dYF6A=;
	h=Date:From:To:Cc:Subject:From;
	b=c7Qn4Lk3FSMU4xtVvx7LYRXA9/116ewIE12c5DRnkJ6AopElBOOfVOxU2vHYeMRL7
	 SDn9ZqiQURUvWWIhKIORkK/Fcszal49aq26mdXIo2DHpX06mMp35YFBx87FJG/JXPL
	 b7+m4RAUKmfZMcNo+vj5mqDnDMVe2JNYs/UZCWco/+P5L3d6YJG1l4FWITufEZeRjN
	 m51fIXKcA6fLJLgfktg706BJBUZnZ+nUtuBdE1EIXnT+EKX5Wvtujh02QL2BYqDxyS
	 yKMoD9JJ2WF5QOF9VsIiEEK2J/ztSY7xaNYXt1+SFivo3gU69flIOoSDmU+7a5yT/7
	 bWImQw04AfVhA==
Date: Fri, 27 Jun 2025 05:18:14 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Aaron Ballman <aaron@aaronballman.com>
Cc: linux-man@vger.kernel.org
Subject: man3attr/intro.3attr: Add intro page for this subsection
Message-ID: <7sl3u2alzj64sre5fxpmwnc2u3r2uhmszqmggo5qbng232fwnc@uoupwcqtwb7m>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7l4z5fom6fiipz2h"
Content-Disposition: inline


--7l4z5fom6fiipz2h
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Aaron Ballman <aaron@aaronballman.com>
Cc: linux-man@vger.kernel.org
Subject: man3attr/intro.3attr: Add intro page for this subsection
MIME-Version: 1.0

Hi Aaron,

I've added an intro(3attr) page introducing C/C++ attributes:

	$ MANWIDTH=3D64 man 3attr intro | cat;
	intro(3attr)                                       intro(3attr)

	NAME
	       intro - C/C++ attributes

	SYNOPSIS
	       [[attr]]
	       [[vendor::attr]]

	DESCRIPTION
	       Attributes  modify the properties of a source construct,
	       such as a type, a variable, or a function.

	       The standard syntax allows specifying a vendor for  non=E2=80=90
	       standard attributes.

	VERSIONS
	       C  and  C++  dialects have provided various forms of at=E2=80=90
	       tributes before standardization.

	       __attribute__((attr))
		      This is the GNU syntax  for  attributes.   It  is
		      supported by both GCC and Clang.

	       __declspec(attr)
		      This  is  the  MSVC syntax for attributes.  It is
		      supported by Clang.

	STANDARDS
	       C23, C++23.

	HISTORY
	       C23, C++11.

	Linux man=E2=80=90pages 6.14=E2=80=9084... 2025=E2=80=9006=E2=80=9027     =
         intro(3attr)

This page will go as the first one in the 3attr section in the PDF book
of the manual.

Please let me know if you find any imprecissions in it.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--7l4z5fom6fiipz2h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmheDXYACgkQ64mZXMKQ
wqk1sxAAgGmvgK1lJWPD1C1/cpvZne8u3EBHnV1+yDhiQ6DVu6Dcj2/twm1DyKND
DP8wp8GMpXpfUg6TRm26G0WGVRuIlebvbXm/Ne2momsGdh7pfdkGXUcnAezn9Rqr
L4FntJdqMvtVhxbs6IJuAH8JZf3i+MCOJHSdagBZkgS/lvTaZi+kFvSBdWSm9XeG
lgcBlNy38JITRTDGV1IbSBW0c5UV7GuH1+GcQ4l5O1TOUHqVvacrLzJj43gz5+vh
xOAKAQtNj1HzmZUCqXeewM/53TL/9nlQJgWsDHFhabrdXpBD6t99H60qG7p7HMZ7
IS8gLAuY7Xm1Co19jNSAK1VBkpowz0qSDz9UWYWpkZQkUqU8OHZFKXFMlmYG90nb
MgfjzK27BlmLVPdiLnn7z9nw01QKlaCInaboFByM8xNUq69D9ykLQWiZEcjBaHWN
Gqg4tKCCbxtS/AUeSaTCyjFsv0V2iKRYpLe3OwSCNKcb8llAN+TfBeBZhUVA6VU0
wx8/i2AwKvkaWwWBwXUgYVT1qlmwAT3Bg/1Y59TiWoL4wV4gum9Ju2Agpncs3HJj
oteQ2YGyS0l2c2EaDBtplL+mqYsdoMu+SmUdiJctjf1V9FJbZ/nONexEGwaNSlg3
3loCtXoSrmbHdl68XAhWXX5X8QTQBgHB/uiDR9sasWZlGHzeaXo=
=KT3a
-----END PGP SIGNATURE-----

--7l4z5fom6fiipz2h--

