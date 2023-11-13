Return-Path: <linux-man+bounces-62-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C77BE7E93BE
	for <lists+linux-man@lfdr.de>; Mon, 13 Nov 2023 01:53:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1BB2D280AA5
	for <lists+linux-man@lfdr.de>; Mon, 13 Nov 2023 00:53:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70389256A;
	Mon, 13 Nov 2023 00:53:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BjH5bMac"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B7B3D72
	for <linux-man@vger.kernel.org>; Mon, 13 Nov 2023 00:53:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09C5BC433C8;
	Mon, 13 Nov 2023 00:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699836787;
	bh=tmFL4/XTvsVYoRb5bpIg9uvCEMovDb05F1KEFXk+uX4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BjH5bMac3Hxdy4HJrEx/eLEx7N5XCg0cgNOeAMXSckuNjzAkwcm7wnNQRA4NLWka+
	 zIHTdyMUL3ytTkeORzMcvMYotwWzSVe3EdCcKbh0yb2o/xTu1Y81zbK6tk6cu+QGbY
	 n762BvlHud4KnAHHa5iNlKDS+NPJlXtAazYIYLpZAm/eYTqP05NFs+OQTb7ginEWUH
	 lytt2goF1wKQZD0PSkuyIU+G63/FiWx+hHLjI0m6hSH86we3eZ0ATxW/2QdIiTYruF
	 9PoiUPyyhbiUjWvGMg/N92/0G/6wMV3yz1rjlqHtABbYxMd3IW81c5UzM5DoaztDfQ
	 Dit2Zl4vxTlww==
Date: Mon, 13 Nov 2023 01:53:04 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/4] string.3 fixes
Message-ID: <ZVFzcACjZYkjDOAZ@debian>
References: <20231112235218.80195-1-eggert@cs.ucla.edu>
 <20231112235218.80195-3-eggert@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="AJiiK402FtQp1gzA"
Content-Disposition: inline
In-Reply-To: <20231112235218.80195-3-eggert@cs.ucla.edu>


--AJiiK402FtQp1gzA
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Nov 2023 01:53:04 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/4] string.3 fixes

Hi Paul,

On Sun, Nov 12, 2023 at 03:52:06PM -0800, Paul Eggert wrote:
> strncpy=E2=80=99s src need not be a string; it can be an array that
> is not null-terminated.  Reword so as to not imply that
> the result always has some null padding.  Use =E2=80=9Cbyte=E2=80=9D rath=
er
> than =E2=80=9Ccharacter=E2=80=9D to avoid issues with =E2=80=9Ccharacter=
=E2=80=9D, as
> not every byte is a valid character in (for example) UTF-8 locales.
> Replace =E2=80=9C=E2=80=90=E2=80=9D (U+2020 HYPHEN) with =E2=80=9C-=E2=80=
=9D (U+002D HYPHEN-MINUS).

I fixed the hyphen typo in a separate commit:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D6be4cc77bb91dd25c48952b647ff49d52c16ab7a>

> ---
>  man3/string.3 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man3/string.3 b/man3/string.3
> index bd8b342a6..4037fce47 100644
> --- a/man3/string.3
> +++ b/man3/string.3
> @@ -185,8 +185,8 @@ bytes to
>  const char " src "[restrict ." n ],
>  .BI "       size_t " n );
>  .fi
> -Fill a fixed=E2=80=90width buffer with characters from a string
> -and pad with null bytes.
> +Fill a fixed-size buffer with non-null bytes from a source array,

I'm not convinced by the array wording, as it could be understood as
doing this:

	char d[3], s[3] =3D {'a', '\0', 'b'};

	strncpy(d, s, 3);  // "a\0b"?  Or maybe "ab\0"?

Did it copy the non-null byte 'b'?  It is certainly part of the array,
and is non-null.  While saying that it only reads strings is incomplete,
I'm not sure this alternative is complete either.

> +padding with null bytes as needed.

I've split the patch into several pieces:
-  Clarify that dst isn't padded if there's no room.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D1873da38de4be3d36bb67d011b907f6f774eef82>

-  Talk about bytes, not characters:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Df51cbcca1c0e12e94590bd9723e3e446ac50c33a>

Thanks!
Alex

>  .SH DESCRIPTION
>  The string functions perform operations on null-terminated
>  strings.
> --=20
> 2.41.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--AJiiK402FtQp1gzA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVRc3AACgkQnowa+77/
2zKuzBAAn9JtCXm/cnAkPNu+JrFq9PpRBzx67gFIlW79PTG5EqswU3AZMtIfvqRe
dlnBJu7uObR3HjsDjCx9cc1XNnHxlOe90UxsJM+Vmq+WkomvUwZNMu6BJ56squed
cM46bOHwYKWQn3wjYap36jqxV6Q6H9hdbAnRka2vZ7dmsmBtp3k6WPwFdsbp/s6a
cxlzsxoe1ZdH/btDqWcID40hEg3dlbZx9kGq/2cH8tN7rP3gpBe7fwBFVn0xqIq6
qy3VhuO00OoAnlkjXN5rTVnPt/mxlV+YNOAvjHWpYF0oOpCWtLDmPnEJgrLlHxz7
PEG84hT++HbAJazzwp9y/QX3S5n3d419bo45R8OPcLKg4NDZRC2TXe+6dNjUd3I+
2YvQ1qgjAT8LCRUzQEaVVizlkel38CvzYpnldzpyYOaIsFMNS/yw35/jDODi1ZpX
S3q6nQIXD7o18PQyGqQHXs8q2x60Y0wTKyrGIxMETkvu1UZ/AbFzDHMy7nH2HM6G
d+zM2HqUitN6eGkmyi4Gn1donlwFrv3fSBJzE4QaOo5b//xcwG6NVddWEIVIl99w
++XVoPp7gJ+PcD2wdLj9v+Ki1mFTTLcKkjiGijU5nOgqorEWfq0wuB9jmoXozFcP
19tU402C/WDeUsJsI8+Nt/saquZYoB8VygP7/G69eQWMFApEICU=
=/6kJ
-----END PGP SIGNATURE-----

--AJiiK402FtQp1gzA--

