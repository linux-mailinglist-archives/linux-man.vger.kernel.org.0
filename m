Return-Path: <linux-man+bounces-2270-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CCC5A16E5D
	for <lists+linux-man@lfdr.de>; Mon, 20 Jan 2025 15:22:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 266CF169BF5
	for <lists+linux-man@lfdr.de>; Mon, 20 Jan 2025 14:22:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 349F41E3772;
	Mon, 20 Jan 2025 14:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fcpPxvIk"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E96891B4F02
	for <linux-man@vger.kernel.org>; Mon, 20 Jan 2025 14:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737382914; cv=none; b=hj4EixNVNsuYifFC5R2ZWAhGjqM2Ht7GNQ5foRT5GXCTRyba5PpFJU7J2fgPJ6fBIbgmvBjW8tLEfSACeRRr3p+AeJTe3wCQYxpqTgyfcVOTNvjsicmUkNmWNFi2NOFEC6kUqHAZdl0VrlUzqRUJHW5QXoUGQwa2o6X6+HZhfiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737382914; c=relaxed/simple;
	bh=6eMooLmK52DDAqEp1+IsLNDHS91AAYW6/ZYG7Jc7jCA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P6FlVCA+pyRf66s5KuBobPDZK7JiPnULOykAC0bplTa5VC6U/QUV9QeDguOoxlc3alHio3EQj86YNj4SYwbiHA/amMDbinqxzUadQgh07ht7ZjXs8g7HbH+IiFylESIuIQe3ej6P2zx5WntlTwv/FT5/O9nf1K+917s5m0Vu9qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fcpPxvIk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98E3FC4CEDD;
	Mon, 20 Jan 2025 14:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737382913;
	bh=6eMooLmK52DDAqEp1+IsLNDHS91AAYW6/ZYG7Jc7jCA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fcpPxvIkHefeWATs/PMBTIBor4z3A8wdtcLhlqrZZH3gbDaduAU88/45nE75Jfzqm
	 Qj2TyhQmUOBsoszOL6zPnfM3WXxMBT6wTIIQQL+Kk9uJ1Ebalet3IddW0I15qLdB5a
	 pyQH8HMwU1qkiXaM1gXa9FUu4EgBcBG7ONUOm9ntJKb6ms2sZZhfEBRiuewSNXPaz/
	 VM6w5FwCOnA8z/Mo6ZOJmFbcGaxnmWuNQ02XUkTbbfOCmMjlwXA1GbYqZLnalp4Ro2
	 cxc+2pV/0STNpnUsbUaJ4oWztqv4NOmswAC/ZifN5AR2USU00BhOFzXjLg5du34APl
	 6u040ehH/z/9Q==
Date: Mon, 20 Jan 2025 15:22:05 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: Florian Weimer <fweimer@redhat.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v7] man/man7/pathname.7: Add file documenting format of
 pathnames
Message-ID: <44lwfhugenusvqlbykuedke74oblz6m4tgboy35g6s7zzgq4fe@po5tmyuu6dhh>
References: <20250120134222.29136-1-jason@jasonyundt.email>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3zqjlbdbpmenfi5z"
Content-Disposition: inline
In-Reply-To: <20250120134222.29136-1-jason@jasonyundt.email>


--3zqjlbdbpmenfi5z
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: Florian Weimer <fweimer@redhat.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v7] man/man7/pathname.7: Add file documenting format of
 pathnames
References: <20250120134222.29136-1-jason@jasonyundt.email>
MIME-Version: 1.0
In-Reply-To: <20250120134222.29136-1-jason@jasonyundt.email>

Hi Jason,

On Mon, Jan 20, 2025 at 08:42:17AM -0500, Jason Yundt wrote:
> +.SS Program source
> +.\" SRC BEGIN (pathname_encoding_example.c)
> +.EX
> +#include <err.h>
> +#include <iconv.h>
> +#include <langinfo.h>
> +#include <locale.h>
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <uchar.h>
> +\&
> +#define NELEMS(a)  (sizeof(a) / sizeof(a[0]))
> +\&
> +int
> +main(void)
> +{
> +    if (setlocale(LC_ALL, "") =3D=3D NULL) {
> +        err(EXIT_FAILURE, "setlocale");
> +    }
> +    char32_t utf32_pathname[] =3D U"example";

Please separate declarations from code.

	int
	main(void)
	{
		size_t    size;
		char32_t  utf32_pathname[] =3D U"example";
		...

		if (setlocale(...
		...
	}


> +    size_t len =3D NELEMS(utf32_pathname) \- 1;
> +    size_t locale_pathname_size =3D len * MB_CUR_MAX + 1;

Since there's no other use of len, I'd just inline it.
Since there's no other *_size variable, let's just call this size.

	size_t  size =3D NELEMS(utf32_pathname) * MB_CUR_MAX;

> +    char *locale_pathname =3D malloc(locale_pathname_size);
> +    if (locale_pathname =3D=3D NULL) {
> +	err(EXIT_FAILURE, "malloc");
> +    }
> +\&
> +    iconv_t cd =3D iconv_open(nl_langinfo(CODESET), "UTF\-32");
> +    if (cd =3D=3D (iconv_t) \- 1) {
> +        err(EXIT_FAILURE, "iconv_open");
> +    }
> +    char *inbuf =3D (char *) utf32_pathname;
> +    size_t inbytesleft =3D sizeof utf32_pathname;
> +    char *outbuf =3D locale_pathname;
> +    size_t outbytesleft =3D locale_pathname_size;
> +    size_t iconv_result =3D
> +        iconv(cd, &inbuf, &inbytesleft, &outbuf, &outbytesleft);
> +    if (iconv_result =3D=3D \-1) {
> +        err(EXIT_FAILURE, "iconv");
> +    }
> +    // This ensures that the conversion is 100% complete.
> +    // See iconv(3) for details.
> +    iconv_result =3D
> +        iconv(cd, NULL, &inbytesleft, &outbuf, &outbytesleft);
> +    if (iconv_result =3D=3D \-1) {
> +        err(EXIT_FAILURE, "iconv");
> +    }

Do we really need two calls?  Why?

> +    if (iconv_close(cd) =3D=3D \-1) {
> +        err(EXIT_FAILURE, "iconv_close");
> +    }
> +\&
> +    FILE *fp =3D fopen(locale_pathname, "w");
> +    if (fp =3D=3D NULL) {
> +        err(EXIT_FAILURE, "fopen");
> +    }
> +    if (fputs("Hello, world!\\n", fp) =3D=3D EOF) {
> +        err(EXIT_FAILURE, "fputs");
> +    }

We don't check for fputs(3) errors in examples.  stdio buffers stuff,
so anyway this call most likely won't fail.

> +    if (fclose(fp) =3D=3D EOF) {
> +        err(EXIT_FAILURE, "fclose");
> +    }

This would be the only error handling we need, I think.


Cheers,
Alex

> +\&
> +    free(locale_pathname);
> +    exit(EXIT_SUCCESS);
> +}
> +.EE
> +.\" SRC END
> +.SH SEE ALSO
> +.BR limits.h (0p),
> +.BR open (2),
> +.BR fpathconf (3),
> +.BR iconv (3),
> +.BR nl_langinfo (3),
> +.BR path_resolution (7),
> +.BR mount (8)
> --=20
> 2.47.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--3zqjlbdbpmenfi5z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeOXAcACgkQnowa+77/
2zJSeg/+JLiuGSk7Rkk1WRydECiFs34aNi3PxJPjDSjtAjPmVaazt9sd+TvuXe4C
dOfg4i5nL4szVULiXgay8/GaQteiTME7uZT9D4hqkTyE6QF4Xz8qNlm31gwvv9wK
YmOaig63+e4hXLcMz6t5ckpBD3o3jB5elOhlSggLpVfoyQziW4CEywegxurDcH0a
HuMl+wFhNqomi4V39cWZQKk58tJPwtuz+cM93bkIHg0W7zB9W3tPsaVGNhG4otwh
R7NxbQ8bCHvoDG4W3lzccGJUZIZFL9W9+mWfgA3y8+uoA2WGXhiIv6qkoIJbFwEH
yTo4co18QjsEX+FHrGNZvZIvHlQoaZgHxehgx3QvKL27Egw86iyz94i5HXSn2O6l
Fw3lVFlgKeLtc/t/xNLQYHAAb5Ffswj60OamY0K6OhIc/TEv0RBnYqEfK14i8vly
sDdj2U/iPXEksod61I/FnlxykW2vCoQ5mxexmWWqXAiATbCrmiwEI+rlefuba/aZ
PrOrJzTZZASDrtCrJ8QYHIeYyfKh5xk5Qz04G3kPQJWpfA9lgqGgtqNKS1mC179j
HLLPtLB9LmfBi1GNVC6N+wZxTHb63ISa36Jh2AiMLRoHFzj4C/dnE+/UkertK8Rd
R8Vp715MydreFhwg3BLwKIZ6hSt86OvJpZjJWTcbljzShh66a/Q=
=EkyG
-----END PGP SIGNATURE-----

--3zqjlbdbpmenfi5z--

