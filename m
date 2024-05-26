Return-Path: <linux-man+bounces-995-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 48EA78CF3EC
	for <lists+linux-man@lfdr.de>; Sun, 26 May 2024 12:22:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D98C91F21BD0
	for <lists+linux-man@lfdr.de>; Sun, 26 May 2024 10:22:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A67B6946C;
	Sun, 26 May 2024 10:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjtYPmU7"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675E38F40
	for <linux-man@vger.kernel.org>; Sun, 26 May 2024 10:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716718920; cv=none; b=sdDFhztGLASCo3AUmEB4O7TSLZfhtgphbYsZbYSx/iXJv+guHjob6C5WcnuXR9d+aDRoxLzZNCauSxBJ/3OvnT2A7XDvQfoPVKIMFVLACUOMSwdIXlovV3wMiAJRSEbzTQNPamt/afboRDoaiFIukI/yxpBkR/g4hmIJq9su3zE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716718920; c=relaxed/simple;
	bh=99/AQpFYzKdrQcEt55fVF2ttajZtHaqt9YICiAeLoJY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HM39WuirWe7s/vUgET4RB8mixXFHdb7wE+LA9l379l384ftkvaLCvCIbICukPqkfJrBo8VbKgVtgM48yBJA5WBj5L3mALE/fzB+czqI1vyw1nhWZCUngMUUh+HhpStk0PcdBMFZ90y8ON3BJOQlsDYZPw/pLQ8zEsoD+aIWstG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjtYPmU7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40F5FC2BD10;
	Sun, 26 May 2024 10:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716718919;
	bh=99/AQpFYzKdrQcEt55fVF2ttajZtHaqt9YICiAeLoJY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HjtYPmU7d8pMv0wyrf5i6PFm9tCDcoA4fFgXIu7Q3DFPp57LDXPYpUBfDmUQxAn7n
	 ddpwTzb/WAm/kVnOGOVBoy787ahveO3loCvBxqptwZu/XvWs8p77AUPv6Tyc8CwR1K
	 songdA6TX77DzYB/Jic0ZMpqZLCqVRjJVVot6kQtCzLaPb4aTUWE+LyDQrps3UV7D4
	 UHzjnSPHweAjMWXTWLTukx1QL35SxziihUyAU84ANwNW4bewRNj9luotkHzAG1gBvO
	 Llv2jMH2fQcq9j0ZfEA7cloIYohDhT/5pkAY+KGUJj2jkxn08ZLJuWHdGyN436mZlV
	 qYdI9ffRG5luw==
Date: Sun, 26 May 2024 12:21:57 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Erik <esigra@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: man page for memfd_create is missing the flags MFD_EXEC and
 MFD_NOEXEC_SEAL
Message-ID: <jhpukkr3y67uun65ikkqksabeeedxknvgmwru7b5wgvd2vt6ba@yawhtdhqrpip>
References: <CAKLxpxL2fNEGX3ch6nJTx=zdFjNRwNCf0huHZ0daYzgaxzBMjQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="24x7a6welkkl7pgm"
Content-Disposition: inline
In-Reply-To: <CAKLxpxL2fNEGX3ch6nJTx=zdFjNRwNCf0huHZ0daYzgaxzBMjQ@mail.gmail.com>


--24x7a6welkkl7pgm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Erik <esigra@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: man page for memfd_create is missing the flags MFD_EXEC and
 MFD_NOEXEC_SEAL
References: <CAKLxpxL2fNEGX3ch6nJTx=zdFjNRwNCf0huHZ0daYzgaxzBMjQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAKLxpxL2fNEGX3ch6nJTx=zdFjNRwNCf0huHZ0daYzgaxzBMjQ@mail.gmail.com>

Hi Erik,

On Fri, May 24, 2024 at 01:08:47AM GMT, Erik wrote:
> The latest version of man pages (6.06)

Actually, the latest is 6.8.

> has a page for memfd_create that

But anyway, memfd_create(2) hasn't been significantly changed since 6.04.

> is missing the flags MFD_EXEC and MFD_NOEXEC_SEAL.

Would you mind sending patches for it?

Please have a look at
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING>
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING.d/>

> See also: https://lwn.net/Articles/918106/

Thanks.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--24x7a6welkkl7pgm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZTDUQACgkQnowa+77/
2zIZog//ejYiJsd0pvypFms+GQbJQt4Gn7/R/JpGmgo6TC76ev2y/uHXuL+NrdgZ
Ig126pUIh8tyB2Xnb/3Fn5cBZuciZGUpILgPn5BIAtlNYjBdwNwqSxGy6MmUShw5
SZejmCY9UJaX8PJdVapHhGBOBdBOXKfZjFlJi9XHsLjYlkQ2f3aZlOPjFcBjy6IM
Mz/XB3Am5OtDuNL8uq+DGYsO/+XNETBLD87uuewvMeWscBZuXajtMt6t9wdG0piw
NiLwlnkVWl8ug9yMhbTGtB9WVggpJ86hyo2kqpzW7g1f3tsVJVU/pn3TzgQ6K7YH
y03vEXhJg6cUlylYmuXlTuTTDGzyPD0F5b/Gt0YsSOg1khGNcB7IFneVnO7QiUUo
l+1NPWPAXweRB9JXbz2vkQIZ4zodxfKRxfgoz88ASqwgqWyaQtigj2AWthr+phAf
SXksBqbIQphpXwwxsvLOgXH/bPwL0B+9aMHo+Zt85+XjqTVxe/0pgepp2U0pe5H+
dleObHU87LCBBxh/biESaN8EhhBkYsd+NwZmbi4IX8MfZymBoK/ldpImT10khrkn
Sfd9lJ0W6osFORV6HtZXUpDcmqAv5vJNBxk9gGQzpcjQs+pE48bfEbLlWwrL3a1p
yVJecHAOT72ASsV5xLgYzc3wEft35MqQqTlFSgLyTWby7RKu0cY=
=qSPa
-----END PGP SIGNATURE-----

--24x7a6welkkl7pgm--

