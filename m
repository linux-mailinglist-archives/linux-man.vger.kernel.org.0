Return-Path: <linux-man+bounces-2274-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D59E6A1704A
	for <lists+linux-man@lfdr.de>; Mon, 20 Jan 2025 17:36:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E4CFE3A5355
	for <lists+linux-man@lfdr.de>; Mon, 20 Jan 2025 16:36:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65AF11E9B07;
	Mon, 20 Jan 2025 16:36:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="czwGdYOS"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F0BBE65
	for <linux-man@vger.kernel.org>; Mon, 20 Jan 2025 16:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737391006; cv=none; b=bvsrtX793qYe7oabYMZpZne2WNxNv8WM/ueDxBL8OijUFoa+aKJd7baOOxCx7nIBm1nqBRBuSxpN0glfi6KdlT4Mmf2j0ehKHgQGzUwIxDXXGHyJGjLTq2JvlD97UwWw4SlgVAhPNildhCQZFAni+YVyE6CfUJvu9Vw6glw4qRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737391006; c=relaxed/simple;
	bh=Esm5VTj08b/+AKo0Gto12Ti1nUt4M7gBoUpzcKcZC2I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZDrpHlN0CXgAfiSrjtGrBqxoc/agu31VtfyhsXH0fw8JhGcQkgl+C9K/5ZVL8R4cLiyRmepQ9lM7kyv6EwpORMs7BcgQV3+GIUmd0sMp3zuTgSvVDEormwe8hGmcFO+iXpZNwOyPj4Mu/a/b+hLSLOBf8PWMweVVNQdZiQfISwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=czwGdYOS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B77EBC4CEDD;
	Mon, 20 Jan 2025 16:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737391005;
	bh=Esm5VTj08b/+AKo0Gto12Ti1nUt4M7gBoUpzcKcZC2I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=czwGdYOSIxuR1kbkz/KXqq1eJtfWa/ZjJE2DAW9flwoamvIQC5l/+p+EhqwExc9f5
	 4U0so6Xb1FEm68haVQCeKRiRcM78UksHJWI5ALq0ytb/1J5hfWk7AgqCayx1Wf3mJO
	 RmI3vm0tXGj+l/ck2Yrt3YitzONrCLVgKddV3A/PVHJVBpLPzCwgxYR05C5/bdGmym
	 YeLOY8EBL9lhE+7OKWiKgzD5sXqTQRFwM92yGnJGvdo7tayf7PVbxs4kWJDECxveXI
	 rHq4tYAxCpqq0UurVWd3tAIQVoLUd2d719iDr/Xv1FQPPHfoenE/ypi/WDPaJdvLbN
	 y+1zwIXkNiT1g==
Date: Mon, 20 Jan 2025 17:36:57 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: Re: [PATCH v8] man/man7/pathname.7: Add file documenting format of
 pathnames
Message-ID: <mjmybr5455mi265puxffqyjyyufebzp4t2va5plcsvcicbqift@gedffslrdcqq>
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250120162416.103858-1-jason@jasonyundt.email>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="76r3qx3noulehv32"
Content-Disposition: inline
In-Reply-To: <20250120162416.103858-1-jason@jasonyundt.email>


--76r3qx3noulehv32
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: Re: [PATCH v8] man/man7/pathname.7: Add file documenting format of
 pathnames
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250120162416.103858-1-jason@jasonyundt.email>
MIME-Version: 1.0
In-Reply-To: <20250120162416.103858-1-jason@jasonyundt.email>

Hi Jason,

On Mon, Jan 20, 2025 at 11:24:14AM -0500, Jason Yundt wrote:
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
> +    size_t size;
> +    char32_t utf32_pathname[] =3D U"example";

This should be const-qualified, since we won't be modifying it.  Please
add const where needed.

> +    char *locale_pathname;
> +    iconv_t cd;
> +    char *inbuf;
> +    size_t inbytesleft;
> +    char *outbuf;
> +    size_t outbytesleft;
> +    size_t iconv_result;
> +    FILE *fp;

Please group declarations of the same type in consecutive lines.
Shorter type names up and longer type names below.  For same length,
please use alphabetic order.

> +
> +    if (setlocale(LC_ALL, "") =3D=3D NULL) {
> +        err(EXIT_FAILURE, "setlocale");
> +    }

Please don't use braces for a single statement.
Add a blank line where closing brace is now, for readability.

> +    size =3D NELEMS(utf32_pathname) * MB_CUR_MAX;
> +    locale_pathname =3D malloc(size);
> +    if (locale_pathname =3D=3D NULL) {
> +      err(EXIT_FAILURE, "malloc");
> +    }
> +\&
> +    cd =3D iconv_open(nl_langinfo(CODESET), "UTF\-32");
> +    if (cd =3D=3D (iconv_t) \- 1) {
> +        err(EXIT_FAILURE, "iconv_open");
> +    }
> +    inbuf =3D (char *) utf32_pathname;
> +    inbytesleft =3D sizeof utf32_pathname;
> +    outbuf =3D locale_pathname;
> +    outbytesleft =3D size;
> +    iconv_result =3D
> +        iconv(cd, &inbuf, &inbytesleft, &outbuf, &outbytesleft);

I would rename the variables {in,out}bytesleft to just {in,out}bytes.

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
> +    if (iconv_close(cd) =3D=3D \-1) {
> +        err(EXIT_FAILURE, "iconv_close");
> +    }
> +\&
> +    fp =3D fopen(locale_pathname, "w");
> +    fputs("Hello, world!\\n", fp);

For writing a '\', you should use \[rs] (that means "reverse solidus").


Have a lovely day!
Alex

> +    if (fclose(fp) =3D=3D EOF) {
> +        err(EXIT_FAILURE, "fclose");
> +    }
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

--76r3qx3noulehv32
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeOe6MACgkQnowa+77/
2zJPYBAAoswQDWZ5S6ZHlU25BPUv2m9pf2N9+X28MeiVcA+GfU5XN+o0iZFsZz6A
MpZHWzqseMmirCo8CmWwL5H/4KhMuuXXY+VHXISng5YUWZphHzCXuJdmTpc4CTa2
opDrAkIQiWcB05lDQIsht/Xihd2zqjWUl6PJb3nIGm+b2yAz+jXonIyHEvbwByFh
F7HS6vdmh/3hbmKG9kLX/DPRqISaudHmeeBjycVDbDWHFtVEY0BRJTR/ck4Na4U6
T+62F6+QvJH484Le1/ShZQqbLIsP2Z60Dmvs3ELExqNOVsxKTx1/B4/cHcnqtzXf
j9XnwwEJUHpFRhzAQyHiYIEG/ftOMGPkpiMbcMhVytRQV47k5cu7dwSQ0kfKVa0L
eNGrtLgVnODuKI5MGCP3hL9Rp0nf7/7DWmvRflRzhCPlTTDj1bAw1oZamaE+O+E9
f2xla9CWK2JlUCPs6D2UKQc2wesSDMd4rsWulQUjatUlQ676LFHnaLygePfTtSSP
kjGQPRksGpda1eU8Wcgix7AwaLYOy1ZNchQdf7Uh+D0dRu8+CAtk/dqltCaFpZgI
b5/ua7G55ZWwNek8qjAZhGKPsMtnaHRuMMxgGIyKujR4xoru8xbD8d2ZlrT5pNMi
gvHkznV7RfA/guLd0888B8FLlJvgbGSRicm3Adu6bZIoMZ1CFZw=
=V9Gi
-----END PGP SIGNATURE-----

--76r3qx3noulehv32--

