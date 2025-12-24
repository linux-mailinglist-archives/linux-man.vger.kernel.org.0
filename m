Return-Path: <linux-man+bounces-4528-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E21CDCDCC2F
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 16:51:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 079E4302758E
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:50:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 072FC327C1A;
	Wed, 24 Dec 2025 15:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4bqdrp+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8B123271E6
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 15:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766591450; cv=none; b=rEa/56MIlF2r7dzq6SEhltCtGklbRxWNHqIlsnyCJhrKMgwigZndt4RgEc/awV5dPzwbpY+C8Ar0sI3irrjj2qnlzIjAQOhFkurhrUHQtMwfZDuanv6gnvclwaNbJK4DGnkCsaQW1Mkq2aXsa+TAE5uPjpmXKf1CRCqU128Jl5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766591450; c=relaxed/simple;
	bh=yrczDLTTq54cbavD65Em9OvQxTxa5bk1JuXzZr3/AtY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YBNGBHRb7t3ryQW8r0DEUKJnUCwCcP2/tbaGGNf1WftaIyU7kKCsYBcYtr49Z4tcsoy+GzS0sAuy5Hn7/JpmJclOvm5Z5HY9lOA7mqEPOe8PMc6ZxSxw/3+Nq3voGHzCe7bkhgxFIBZcDNaFdognJVqpivfCKkl3QqliUBEL4h8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4bqdrp+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69F18C4CEF7;
	Wed, 24 Dec 2025 15:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766591450;
	bh=yrczDLTTq54cbavD65Em9OvQxTxa5bk1JuXzZr3/AtY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F4bqdrp+YZM6/cIeFdtJqD9HoN+MKs83Ysdv3c0YQhpBV7sdSST2Gm9gRmaEBjtlx
	 PG8X0/G0k1pFdewG/k8K5Qn9pqt5RO/Yp+ZRl7W3ANReHHDbJIvo7a/wtdyrU8+9rF
	 lNwk1kkDKkp3ND4UbIQMU3dlJjNt7DeglIYrJF5sczjl1oDZxAznM7alMkikP8Y9X+
	 q5LTBQ1VbWQH7vPjRNBB/6sqjiASu+yRHgvp6nNILZXniV/GTRXJhKUjmFFV3GTk/O
	 r4YgCJOEEM90HibXeIFIC5bL5elzIUXblzDy8QgBUgJClfZyhQ25OjswgUFuaoa4Sx
	 ZrmpQJOO5ZPBQ==
Date: Wed, 24 Dec 2025 16:50:47 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page PR_FUTEX_HASH_SET_SLOTS.2const
Message-ID: <aUwLuHeOA9MaF7Is@devuan>
References: <aUv63fBRjmONXg93@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2w6kalgcizwy5aow"
Content-Disposition: inline
In-Reply-To: <aUv63fBRjmONXg93@meinfjell.helgefjelltest.de>


--2w6kalgcizwy5aow
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page PR_FUTEX_HASH_SET_SLOTS.2const
Message-ID: <aUwLuHeOA9MaF7Is@devuan>
References: <aUv63fBRjmONXg93@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUv63fBRjmONXg93@meinfjell.helgefjelltest.de>

On Wed, Dec 24, 2025 at 02:38:21PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    behaviour =E2=86=92 behavior  (according man-pages(7) american =
English is used)

Thanks!  I've fixed it globally.

	commit 9ba35afb6c5be6f41578842a416ac90e3d418b0f (HEAD -> contrib)
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Wed Dec 24 16:48:03 2025 +0100

	    man/: grfix
	   =20
	    The American spelling is far more common:
	   =20
		    $ grep -rhio behavior man/ | wc -l
		    561
		    $ grep -rhio behaviour man/ | wc -l
		    31
	   =20
	    This change was scripted:
	   =20
		    $ grep -rl ehaviour man | xargs sed -i 's/ehaviour/ehavior/'
	   =20
	    Reported-by: Helge Kreutzmann <debian@helgefjell.de>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

Cheers,
Alex

>=20
> "Use the global hash.  This is the behaviour used before Linux 6.17."

--=20
<https://www.alejandro-colomar.es>

--2w6kalgcizwy5aow
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlMC9YACgkQ64mZXMKQ
wqmb3Q//bt2nECnJymxBDYXuHBX1VOn7wrQnvMHVTEwrMHUZlFrXPuYkVQD0Fdow
3BAPeK/ltKjBCEZX9N7yfcpeLr9WHz7SB1vjfdYBDK7NCtPN9Hb0ttSVgX7LGuEd
PepLgdbVr9tqZbLquPHkm/2GF6hpsloWPbsZO5ABL07BMszNTChyXGVKRsZl8iil
7xSiHJFLJ/iVDeC20T78XmlVML0rqvuCQhGg8kW9M+ubRg+smGCYIErMeQvsaYaP
ibVdCYul1AXlKjDzC30U14qHKcKOVPcDpyfgZXhuxf0lMoSgqfTQr6rAHF3sSJ7V
igCFPNr4fLamShWxt2dZQhyCdnUUEBHpex9w7ZXOB7LwKr+cQ/db4ensb3wY7KHx
peUK9JNRjzNXyuJyCoxcBDhPtktu1jbT5um5bC6vxZYVgqNaRn9mGg7yBzWmBt9q
uhXz+r7pYNk3CkDMfuBTr+Q+t9kaPwHuosycC9PRyhH4SX+399CR7AXjgElOYbdz
kSpa+1aMWF3PYunJ1wqteGglIkHZfYdIaMLi926/6OCYNNs8NNgrtW4M4Kp/FbZr
0jfxAeNlwQnfBZfhfdSncNEI8TPn6UUob8QNCfatQnqoE2cZx1CuNOads9uU5lCr
Jw/A9iIoC/P0oJabOFUUvvrMBy/fknOchmgNjAC3gwItHbVQ4k0=
=RjgG
-----END PGP SIGNATURE-----

--2w6kalgcizwy5aow--

