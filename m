Return-Path: <linux-man+bounces-4549-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B61CDDD3D
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 14:34:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 334B8300B8CC
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 13:34:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1EA9220F2D;
	Thu, 25 Dec 2025 13:34:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpd6jUl9"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9213813C8EA
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 13:34:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766669691; cv=none; b=gk43QBTEIQUTf2Y/rKl+8ivG3tdwobt6UMG6YdwR7VqraeA6+KlRu3920l4F45NzO5gZn6p9ZGnJ8JsOS7WuS3pE9gWnch3CdsXRQ8DbE02RYVRVf7n/mB2IlPpjsgqjyN7AyqdrvpLxd1a8dJZlC4Df1z8xHrZGH7A9FMsH6J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766669691; c=relaxed/simple;
	bh=WOVyNRP1cKBAsPVF8M66f4BgWY7kwEtYqIfxZ1G3uAw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HJUaF8bg1NFGNbal3OsLs+9FsI5eIv4G/fkeAQfqtmOQE5hxedHTiRNNOOuEOj/SvVD91/sqghnB5cTcz2CxMWHna5KNtA28xQ2JBTTgD0SQWsy/C+6wXqdhc+I1eCxHTcn5UV4/Le0NSJs2zNXHiRlT36Txk21gFRdaNnkdVsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpd6jUl9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41051C4CEF1;
	Thu, 25 Dec 2025 13:34:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766669691;
	bh=WOVyNRP1cKBAsPVF8M66f4BgWY7kwEtYqIfxZ1G3uAw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lpd6jUl9VeUpULj3eNCKAfV2AomvpxOg4g2IfSG/hSLVJ1WHK7RE0ij7jgTxcs74w
	 niflx4v4BP1NdJynnsj9QSrIQVGvO6tON1o22Xx2ReB0lxc70bQGFNg3el0oD05H5t
	 QHD8IpZp6noeELq5/9PNNjrOPNk6t8gWQ0LEZi/UqsaGVQB/Bd8XvtsR/qsC1qV3ys
	 rekz2aVgUfzupS7RmUP1CD69wO+mRsqnu4AnrS4aI3DI37rgZDDinRuSQ0cBfL5465
	 zo0ecQf3e+fKV7tCJEHOnOYd6oOJvku9AQkYFoRdFqEmnUE9MRvX7M+PoRwmlLIshi
	 9OR4PB2xlXFFw==
Date: Thu, 25 Dec 2025 14:34:48 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  __riscv_flush_icache.3
Message-ID: <aU09SWMTQHSh25gP@devuan>
References: <aUv64AqCY2_fdHAj@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nj6amprvkfyjaut5"
Content-Disposition: inline
In-Reply-To: <aUv64AqCY2_fdHAj@meinfjell.helgefjelltest.de>


--nj6amprvkfyjaut5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  __riscv_flush_icache.3
Message-ID: <aU09SWMTQHSh25gP@devuan>
References: <aUv64AqCY2_fdHAj@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUv64AqCY2_fdHAj@meinfjell.helgefjelltest.de>

Hi Helge,

On Wed, Dec 24, 2025 at 02:38:24PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:     flag bits =E2=86=92 I<flag> bits

The parameter is 'flags', not 'flag'.  Thus, 'flag' can only be the
English word, and thus not be in italics.  The text is correct.


Cheers,
Alex

>=20
> "The I<flags> argument controls the extent of this ordering, with the def=
ault "
> "behavior (a I<flags> value of 0)  being to enforce the fence on all thre=
ads "
> "in the current process.  Setting the B<SYS_RISCV_FLUSH_ICACHE_LOCAL> bit=
 "
> "allows users to indicate that enforcing ordering on only the current thr=
ead "
> "is necessary.  All other flag bits are reserved."

--=20
<https://www.alejandro-colomar.es>

--nj6amprvkfyjaut5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlNPXcACgkQ64mZXMKQ
wqnYSA/9HEKuAycWZOqBkouzgazz4tbG01jIhPX1y2uSJdYSCE0KVlHzHZ129/aF
dZolRZkfDOfyCPYAx/+lBTKPMihEq+F8N3+jksdmiP2xxEybNdJDVxaU36rcH3aj
5dwtMXXxYJE1jdN23iVVrpLo4PSoF/q0E+c2Ue1x9/GrSuSecInl/UB6SDcYQKvc
Lk9Vcue3NvuL9elQhRZLi1ZZbKNOu+B2/U+Q5qDV4W3uVnB/K6xyu1Eq14ljSfah
xVnnGwPtz58CMBL4AVHrmWE5V7ttNetltn+vUWKpzchvZ5u0fLRJyyRQGbQJWtkS
oaw748mhn0Voo8YqlL+Qp2akX/veBEw83REpi4wQFOyMXKWkREQD7CNx7hhCuMhE
rjh0wKkJf0REK4iauoU5RcAQ8dzBcKBvuNBL9Ea6hv9D4VAZmJFSSYrbPtCkorFI
IjX0ji5ZYSDM8kPs3x7D3M34bbvkpwwfKfCXrbCJV9wPXP1aWTujrlwNJU5llVbZ
nXh2N/6XPb1xaNbX+XlMuE/Zr8BGuazowS+udbKvY92IbokCcZgnl6AdNThrseLN
fh39DuwVIQTzXE+F8mXM+rgtG3YdHqa2uOdvSFoI1ePxzwI0KrGfyzjAm+/4Pldl
lxZ92V/GGY/Po+BqHy8nqrn6Vug4lXxSkBD1dcfDXrhz4Puyoic=
=Ap+2
-----END PGP SIGNATURE-----

--nj6amprvkfyjaut5--

