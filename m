Return-Path: <linux-man+bounces-2532-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0436EA47DC7
	for <lists+linux-man@lfdr.de>; Thu, 27 Feb 2025 13:30:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5E3857A2993
	for <lists+linux-man@lfdr.de>; Thu, 27 Feb 2025 12:27:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17BD022B59F;
	Thu, 27 Feb 2025 12:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dSR/ap9Z"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCC5342AA5
	for <linux-man@vger.kernel.org>; Thu, 27 Feb 2025 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740659296; cv=none; b=Gxwlc7WGosYt4pk54tM5guN1JP2TPkZAII289odScQvzJpXhbRPwkacl1wzChm3LpEaXsxkEVgIN6r7LHCk0O5WYI7pV17h0LnsB3E4mXZ8FBYdSusfpV2+xrbq2IJQOP/6MHTcdjvzA2r3w5f4DXeGDlQvqoheD+HO6/rHFZO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740659296; c=relaxed/simple;
	bh=6ZOhDEe3OdTyljuJ54r2EnFYpC2kgSOcLvnfl9KYWz8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=auvLSh5GsCUiRmrpEBRmRNl/dgoijThpZKwpXHVyjSLItl6b5UxCreNFLinVa1TcZlr4GVCcVF3gr0h3AMlo+l9PQKpY0sXTNZ6UyLpgsZ8WkwhxAkzwb9jgDOQhDB7ldXGeiyVqQdE430+E9bmk2w44BspUkE6I2cg2OOVViEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dSR/ap9Z; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DBA1DC4CEDD;
	Thu, 27 Feb 2025 12:28:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740659296;
	bh=6ZOhDEe3OdTyljuJ54r2EnFYpC2kgSOcLvnfl9KYWz8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dSR/ap9ZysLLwwrR0Z0qtyoXgpX0RQUK7qpJER2fqNVMq2GvH61syV/DXBHct2biE
	 pHONWrCzrsBOXkg6aY2m7D6BOY3XVEuyzMLN6UhOmdAAnR2+qmHWPGCA9l6dN4KkXg
	 yYHxWcBdwDvuyckJoglf4ia4mPtoHIuBgadelxp33mUTCvobaoNDdTzF5i6fxb0ZUz
	 Z/RxgUYog+rKUI2v9j3LTnQhdsxdAE5MGn4X5KU8/mb3pMfRqncXZhxTaZ9BuFk0BP
	 +7MxMi0fhGRxr7+vy/Yv5rNOr8Fsr+99syx/CiGvXslhfIyySeq1TVFKtSBTUNGkU3
	 szG/8DwAvP6fA==
Date: Thu, 27 Feb 2025 13:28:12 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Sergei Trofimovich <slyich@gmail.com>
Cc: linux-man@vger.kernel.org, Boris Pigin <boris.pigin@gmail.com>
Subject: Re: [PATCH] mk: don't escape '#' for `grep`
Message-ID: <ha62i7u3tqzovwf62evd27erfwx57anmist4odhldi6npzr4ok@esbl7yn54egh>
References: <20250227092142.1822609-1-slyich@gmail.com>
 <5s43rvskakybdll44oj5d5x7xmxjhlindgdokxyjqzqtgkipxl@hbfuwiyish4r>
 <Z8BLSuhHpNxGgg0y@nz.home>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oo7ejg4w7oa3pks6"
Content-Disposition: inline
In-Reply-To: <Z8BLSuhHpNxGgg0y@nz.home>


--oo7ejg4w7oa3pks6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Sergei Trofimovich <slyich@gmail.com>
Cc: linux-man@vger.kernel.org, Boris Pigin <boris.pigin@gmail.com>
Subject: Re: [PATCH] mk: don't escape '#' for `grep`
References: <20250227092142.1822609-1-slyich@gmail.com>
 <5s43rvskakybdll44oj5d5x7xmxjhlindgdokxyjqzqtgkipxl@hbfuwiyish4r>
 <Z8BLSuhHpNxGgg0y@nz.home>
MIME-Version: 1.0
In-Reply-To: <Z8BLSuhHpNxGgg0y@nz.home>

Hi Sergei,

On Thu, Feb 27, 2025 at 11:23:54AM +0000, Sergei Trofimovich wrote:
> Aha, I wonder if it's also related to the escaping behaviour of `sh` and =
`bash.

sh(1) shouldn't matter, because the I explicitly request bash(1) in the
makefiles.

	$ grep -rn SHELL GNUmakefile=20
	5:SHELL       :=3D bash
	6:.SHELLFLAGS :=3D -Eeuo pipefail -c

> Here are my tool versions:
>=20
>     $ sh --version
>         GNU bash, version 5.2.37(1)-release (x86_64-pc-linux-gnu)
>         Copyright (C) 2022 Free Software Foundation, Inc.
>         License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licens=
es/gpl.html>
>        =20
>         This is free software; you are free to change and redistribute it.
>         There is NO WARRANTY, to the extent permitted by law.

	alx@debian:~$ which sh
	/usr/bin/sh
	alx@debian:~$ which sh | xargs dpkg -S
	dash: /usr/bin/sh
	alx@debian:~$ which sh | xargs dpkg -S | cut -f1 -d: | xargs dpkg -l | tai=
l -n1
	ii  dash           0.5.12-12    amd64        POSIX-compliant shell

(But as said, this shouldn't matter.)

>=20
>     $ bash --version
>         GNU bash, version 5.2.37(1)-release (x86_64-pc-linux-gnu)
>         Copyright (C) 2022 Free Software Foundation, Inc.
>         License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licens=
es/gpl.html>
>        =20
>         This is free software; you are free to change and redistribute it.
>         There is NO WARRANTY, to the extent permitted by law.

	$ bash --version
	GNU bash, version 5.2.37(1)-release (x86_64-pc-linux-gnu)
	Copyright (C) 2022 Free Software Foundation, Inc.
	License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.ht=
ml>

	This is free software; you are free to change and redistribute it.
	There is NO WARRANTY, to the extent permitted by law.

Could you please try to find out the cause of the actual problem?  Maybe
there's a fix that doesn't involve reverting that patch.  Or maybe
there's a bug in some tool, and we can report it.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--oo7ejg4w7oa3pks6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfAWk4ACgkQ64mZXMKQ
wqnQXBAAqFbO/PGkPHnsUhJo9YKzbSgFY8Glv/CKu5V3psceT3nJLBubJBESykSF
1J5C9RXMwtEyKU6jB5Ljg4TgWNg0D+A95QvELV/88nXHrWCxE3Yd6aHheI5QZDzn
WuQLiQjazEjs19raSXfFhFHmeaESV0jGORzdeZb4wHOUE5+9zXhZqy7Kq8j0rR9x
A9WYN0VMSQUyYkcbGPYuTzEGR9m4WsORJH+ZgBVxA2LlhNASBkhycItcBe1YNO9a
msFHn5FU5E2eq/Ut3BZ7pkEcw3tbvy1+NIzMrgioHG+pAY6zvl+tJKkL8HgwW+pN
2iIJ8CGl9kEahfgOVyNVyZvm3x0RJWGdNozAX6p+eizIq0J93vB+LtMRXzSiQOML
5PF7kdO9W5qDiKfZYqbB3TImbNI+r84s5PNb/BR2c7Mev4d0mXv2Q/D5tyHR6IrV
YA4wFfRZFRvL7P6Ckf8j0JRN238v2ZeXxPXi5BmQY3D4Cb5YOP6jCDym54dvZfxN
K6QVxZ28xF0vpCkSYK+SpE3rrSwyIvkXYJRT62zeGqHcBO/fSan2zEr2Wu4KqPjI
kopJgdScG8S+SxluKKw4sgNs6zxS+LqAkaLiGd8Zb/G+tjlwBh2yzelDeVh3pM85
uIJf4xCclmSRg2wGy10TvnSpbxRZS8uzapSYCD1kR5H3sOP3m3w=
=oAVX
-----END PGP SIGNATURE-----

--oo7ejg4w7oa3pks6--

