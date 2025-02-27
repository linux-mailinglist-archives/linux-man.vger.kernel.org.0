Return-Path: <linux-man+bounces-2528-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDABA47A4B
	for <lists+linux-man@lfdr.de>; Thu, 27 Feb 2025 11:27:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5A9677A41AE
	for <lists+linux-man@lfdr.de>; Thu, 27 Feb 2025 10:24:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1939821C18F;
	Thu, 27 Feb 2025 10:23:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQqaOU5d"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCECE22A7F6
	for <linux-man@vger.kernel.org>; Thu, 27 Feb 2025 10:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740651830; cv=none; b=h4J8/mu9JTkEv4ybT6Rm9RdNWxQQLcF162961DXdC9Lj4/2BI2kA0zJfotsfWMoI2zb9ndEp7XpNjOQaIhn0r15lkOX1Uv50otnpxMir6FM0o7QGFjGPFWcH0KtLN7CoJsxQuEyTgUziFcwRPuEH7JrEMvI8zk0SwBbqDZVFIKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740651830; c=relaxed/simple;
	bh=1dUopjtmVPpfU48p2wgbI1oa9mglJSbqkzG2wEO442M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M5E3KcXvpR3DnGsyFWIYmfoZZUsvvMKHs2tJlIelqJdIFvCPFCkiQsM4wo9zPurl7D6vDYNu38Ssb7gqCwC1jVUoiBCZBmUcKxGbd0d2tFykXQZJ66kIMlyG/TRuaQ2YMdj+h+Vt+k2pPKJ5xXRz7/eGt6L/B9ba04I6sey3Wak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQqaOU5d; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F02FC4CEE4;
	Thu, 27 Feb 2025 10:23:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740651830;
	bh=1dUopjtmVPpfU48p2wgbI1oa9mglJSbqkzG2wEO442M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dQqaOU5df6omFPvKwRSxCObnLJelHcC32152XZTdV1uMu30JB/0PVufNdILpG2wKJ
	 PgdtWeNVxQtEJoAveaGjLh3pbxnh43UlrH4vBflBIHnF/4py+oXDj30ELR+hWZbfC6
	 ucdnrYdYIpKe8sAt+wGYQ9FbkeYzPnYqYmwsIZWG3IujywvGAafxW6RwNnmUKpqI0n
	 RMWJFiafMHxlzZUyjU5Astb/ZlMW9NlZFT43j+CFPI8zO3MD4ABxOxQPwIns15ab/t
	 eTmcDQgawVwE4rPWx2eJ/TOQF1laQeEhglReqaduAG0iI2K/E2wvmnXyiAqX4m+9wC
	 NbLPZpGMrAMJg==
Date: Thu, 27 Feb 2025 11:23:46 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Sergei Trofimovich <slyich@gmail.com>
Cc: linux-man@vger.kernel.org, Boris Pigin <boris.pigin@gmail.com>
Subject: Re: [PATCH] mk: don't escape '#' for `grep`
Message-ID: <5s43rvskakybdll44oj5d5x7xmxjhlindgdokxyjqzqtgkipxl@hbfuwiyish4r>
References: <20250227092142.1822609-1-slyich@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uxqzr7kxc644dawz"
Content-Disposition: inline
In-Reply-To: <20250227092142.1822609-1-slyich@gmail.com>


--uxqzr7kxc644dawz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Sergei Trofimovich <slyich@gmail.com>
Cc: linux-man@vger.kernel.org, Boris Pigin <boris.pigin@gmail.com>
Subject: Re: [PATCH] mk: don't escape '#' for `grep`
References: <20250227092142.1822609-1-slyich@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250227092142.1822609-1-slyich@gmail.com>

Hi Sergei,

I'm CCing Boris, since he had the opposite problem, which triggered
adding the stray '\'.

On Thu, Feb 27, 2025 at 09:21:42AM +0000, Sergei Trofimovich wrote:
> Without the change build process complains
>=20
>     $ LANG=3DC make -R help
>     grep: warning: stray \ before #
>     grep: warning: stray \ before #

I can't reproduce.  What's your version of grep(1) and your version of
make(1)?

	alx@debian:~/src/linux/man-pages/man-pages/contrib$ make -R help
	make: warning: undefined variable 'GNUMAKEFLAGS'
	To see a list of targets, run:
		$ make -R -p nothing \
		| grep '^\.PHONY:' \
		| tr ' ' '\n' \
		| grep -v '^\.PHONY:' \
		| sort;

	To see a list of variables, run:
		$ find GNUmakefile share/mk/configure -type f \
		| sort \
		| xargs grep '^[^[:space:]].*?=3D' \
		| sed 's/=3D.*/=3D/';

	To see a list of dependencies (package/program), run:
		$ find share/mk/configure/build-depends -type f \
		| sed 's,share/mk/configure/build-depends/,,' \
		| sed 's,\.mk,,' \
		| sort;

	alx@debian:~/src/linux/man-pages/man-pages/contrib$ LANG=3DC make -R help
	make: warning: undefined variable 'GNUMAKEFLAGS'
	To see a list of targets, run:
		$ make -R -p nothing \
		| grep '^\.PHONY:' \
		| tr ' ' '\n' \
		| grep -v '^\.PHONY:' \
		| sort;

	To see a list of variables, run:
		$ find GNUmakefile share/mk/configure -type f \
		| sort \
		| xargs grep '^[^[:space:]].*?=3D' \
		| sed 's/=3D.*/=3D/';

	To see a list of dependencies (package/program), run:
		$ find share/mk/configure/build-depends -type f \
		| sed 's,share/mk/configure/build-depends/,,' \
		| sed 's,\.mk,,' \
		| sort;

	alx@debian:~/src/linux/man-pages/man-pages/contrib$ make --version
	GNU Make 4.4.1
	Built for x86_64-pc-linux-gnu
	Copyright (C) 1988-2023 Free Software Foundation, Inc.
	License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.h=
tml>
	This is free software: you are free to change and redistribute it.
	There is NO WARRANTY, to the extent permitted by law.
	alx@debian:~/src/linux/man-pages/man-pages/contrib$ grep --version
	grep (GNU grep) 3.11
	Copyright (C) 2023 Free Software Foundation, Inc.
	License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.h=
tml>.
	This is free software: you are free to change and redistribute it.
	There is NO WARRANTY, to the extent permitted by law.

	Written by Mike Haertel and others; see
	<https://git.savannah.gnu.org/cgit/grep.git/tree/AUTHORS>.

	grep -P uses PCRE2 10.45 2025-02-05

>=20
> Signed-off-by: Sergei Trofimovich <slyich@gmail.com>

Please add a tag mentioning that it reverts a certain commit:

	Fixes: 76f12e3fd3ea (2025-02-10; "share/mk/: Escape '#' in regexes")


Have a lovely day!
Alex

> ---
>  share/mk/configure/build-depends/cpp/cpp.mk | 2 +-
>  share/mk/src/sh.mk                          | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/share/mk/configure/build-depends/cpp/cpp.mk b/share/mk/confi=
gure/build-depends/cpp/cpp.mk
> index ef12a848a..8a4ccc442 100644
> --- a/share/mk/configure/build-depends/cpp/cpp.mk
> +++ b/share/mk/configure/build-depends/cpp/cpp.mk
> @@ -21,7 +21,7 @@ endif
>  CPP_HAS_ALREADY_D_FORTIFY_SOURCE :=3D \
>  	$(shell \
>  		$(CPP) -dM - -Wno-error </dev/null \
> -		| $(GREP) '\#define _FORTIFY_SOURCE ' >/dev/null \
> +		| $(GREP) '#define _FORTIFY_SOURCE ' >/dev/null \
>  		&& $(ECHO) yes \
>  		|| $(ECHO) no; \
>  	)
> diff --git a/share/mk/src/sh.mk b/share/mk/src/sh.mk
> index 05c9e0449..487eaf14d 100644
> --- a/share/mk/src/sh.mk
> +++ b/share/mk/src/sh.mk
> @@ -14,7 +14,7 @@ include $(MAKEFILEDIR)/configure/directory_variables/sr=
c.mk
> =20
> =20
>  BIN_sh :=3D $(shell $(FIND) $(SRCBINDIR) -type f \
> -		| $(XARGS) $(GREP) -l '^\#!/bin/\(sh\|bash\)\>' \
> +		| $(XARGS) $(GREP) -l '^#!/bin/\(sh\|bash\)\>' \
>  		| $(SORT))
> =20
> =20
> --=20
> 2.48.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--uxqzr7kxc644dawz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfAPSsACgkQ64mZXMKQ
wqmpWA/+PMgVhPmmwBgdZ/Pko1jjyynplwJy3z36N3SeR7u3c5GuOM7k3JN/9fKw
BK5U//GjRpworo/APmOiCW+WetJMC6Sq91QA0zGUHfCwEPFYFOgNoV0MDZ+IY9Zp
FHalWNvZrHxFpZmDOM3pIK7ci7HKJBslCuTxrGPA768fZHHP3ty0DnHgjCgammhW
8aTH/1eOwdIN6OVtNF5k1YhUAkJ76Bv0KzHfmrFU7s1WkI2H727122QhVe6133f2
U6nlz+GunXSRWnVSyetWVeNF8786XMZ0ywEGJ8k85Md6JMf++v5UTgrCpFKfxc7H
/NxbSqY+IUhgF4Ehl4OqheznlerPgODdJlN8jksLkEIJjTBC3WyNO8rsyNdOPUFj
GU84/GPEMrbM4LpMvr+N78w0c2DDewC2LiFvHKEujuf6N95S2IEhillA/x3211l8
rhq7s3bxUIN+JHKsa7xG/Ix6idlPULdJidZwIbZWQqtaD73AOG+8jeb8AaV1Xt2g
anWKvQzeGJTJiZmsYhsQjWxrfUk6OFWB+TtdwmqW+0joG6Ct9aUaf1lPzrzwq4vD
HqirbbhvkaqQ4W5503DDejh82b6LPmKUk15JFgAHfvRclj54Ii0sIdNCnv8FGoGO
vPWWdhwEtk7pRVAUUYVHosZKE7r/9IAE0RVB2xqU4fNDUF1+97k=
=e8Yt
-----END PGP SIGNATURE-----

--uxqzr7kxc644dawz--

