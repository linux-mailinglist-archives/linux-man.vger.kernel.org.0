Return-Path: <linux-man+bounces-2276-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8A4A17499
	for <lists+linux-man@lfdr.de>; Mon, 20 Jan 2025 23:25:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 63D2D7A30D1
	for <lists+linux-man@lfdr.de>; Mon, 20 Jan 2025 22:25:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 898351B0103;
	Mon, 20 Jan 2025 22:25:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hOqakcRJ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4720D23A9
	for <linux-man@vger.kernel.org>; Mon, 20 Jan 2025 22:25:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737411952; cv=none; b=agUk4aiKtcheaoeKUfzeE66jDu5JdRQmGRX7bigE0z8qenze40L1z8P00N/VxB29DlepTMVCvgC8FED/W0+O+R5D6DhtQrew8gNObodI5oZBvPvLG6hnuVbuOAJAIvMX623SML6HCNni/QknD+2/iPBLaLQqT0wfmnYI5zh2P1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737411952; c=relaxed/simple;
	bh=vLQ5NMvppNGYco9VwWjqg5fslotOsXv4m1Lbry1HJno=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sjdNzw0Pi+4mQJ5K3nqjt6jFRnlzSFtad+r5O+X+kOGk667se5utvDCJp36PpRRdBYqy7VMWY+S5QOspivs+GvkjNNx/VoDalQLuvv6qI5dGEoXHdnqdnVVEN9tuuooXeHppJ/l0moSv+GMIUEp+t0q669laSdF4CVLgnQulhIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hOqakcRJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8BBFC4CEDD;
	Mon, 20 Jan 2025 22:25:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737411951;
	bh=vLQ5NMvppNGYco9VwWjqg5fslotOsXv4m1Lbry1HJno=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hOqakcRJTRmcjMItaUni01Cw2oTfQ3nOR3tpVSazNkkCzH9PHnmX/0rGNw9XfpZW/
	 8a+8hpq1VykAxJsI+qHXm9Ap6G4VQdQKcHnvjJ0vVJBuyeQoum5CMaliDxSIMTNd4h
	 SzIj/xXrO5ccuqhrkfltkri677ooNAh3GNo0s2ulUMsl7Kv1K+yMBEfp92XGDc9PCd
	 zeClSvq/3V2uWoqPz+uhQmzTvFzua4K9Am2wo8aLaCN06ohiIl2kfFLNBInSHSEiCW
	 5mTeLPjivKC52UK6K48Yh0dfdcwobdhNZvFACJIpcUdcgzTSYrQZZxpbkUwdGinmZ/
	 7RstSeFvMwfSQ==
Date: Mon, 20 Jan 2025 23:26:04 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: Re: [PATCH v9] man/man7/pathname.7: Add file documenting format of
 pathnames
Message-ID: <ut6qefo7rakabqpov6ukc32eq527cfiaybbtcb5mpccvwusfp3@gqvy4xllcuc5>
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250120190632.127206-1-jason@jasonyundt.email>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="o4mksytuzksoq2om"
Content-Disposition: inline
In-Reply-To: <20250120190632.127206-1-jason@jasonyundt.email>


--o4mksytuzksoq2om
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: Re: [PATCH v9] man/man7/pathname.7: Add file documenting format of
 pathnames
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250120190632.127206-1-jason@jasonyundt.email>
MIME-Version: 1.0
In-Reply-To: <20250120190632.127206-1-jason@jasonyundt.email>

Hi Jason,

On Mon, Jan 20, 2025 at 02:06:26PM -0500, Jason Yundt wrote:
> The goal of this new manual page is to help people create programs that
> do the right thing even in the face of unusual paths.  The information
> that I used to create this new manual page came from these sources:
>=20
> =E2=80=A2 <https://unix.stackexchange.com/a/39179/316181>
> =E2=80=A2 <https://sourceware.org/pipermail/libc-help/2024-August/006737.=
html>
> =E2=80=A2 <https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.g=
it/tree/fs/ext4/ext4.h?h=3Dv6.12.9#n2288>
> =E2=80=A2 <man:unix(7)>
> =E2=80=A2 <https://unix.stackexchange.com/q/92426/316181>
>=20
> Signed-off-by: Jason Yundt <jason@jasonyundt.email>
> ---
> Here=E2=80=99s what I changed from the previous version:
>=20
> =E2=80=A2 I removed the second iconv() call.
> =E2=80=A2 I made utf32_pathname const.  I think that that was the only on=
e that could
>   be made const, but correct me if I=E2=80=99m wrong.
> =E2=80=A2 I changed the order of the variable declarations.  I think that=
 they=E2=80=99re in
>   the correct order now, but correct me if I=E2=80=99m wrong.
> =E2=80=A2 I removed the curly brackets from all of the if statements.
> =E2=80=A2 I renamed inbytesleft to inbytes and outbytesleft to outbytes.
> =E2=80=A2 I replaced the \\ with \[rs].

Thanks!

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
> +    char *inbuf;

I'd rename inbuf,outbut to in,out.

> +    char *locale_pathname;
> +    char *outbuf;
> +    FILE *fp;
> +    size_t iconv_result;

I've removed this variable (see below).

> +    size_t inbytes;
> +    size_t outbytes;
> +    size_t size;
> +    iconv_t cd;

Please align (and merge some) with spaces the above as:

    char     *locale_pathname;
    char     *in, *out;
    FILE     *fp;
    size_t   size;
    size_t   inbytes, outbytes;
    iconv_t  cd;

I've also reordered a few so that they appear in order of use (more or
less).

> +    const char32_t utf32_pathname[] =3D U"example";
> +\&
> +    if (setlocale(LC_ALL, "") =3D=3D NULL)
> +        err(EXIT_FAILURE, "setlocale");
> +\&
> +    size =3D NELEMS(utf32_pathname) * MB_CUR_MAX;
> +    locale_pathname =3D malloc(size);
> +    if (locale_pathname =3D=3D NULL)
> +      err(EXIT_FAILURE, "malloc");
> +\&
> +    cd =3D iconv_open(nl_langinfo(CODESET), "UTF\-32");
> +    if (cd =3D=3D (iconv_t) \- 1)
> +        err(EXIT_FAILURE, "iconv_open");
> +\&
> +    inbuf =3D (char *) utf32_pathname;
> +    inbytes =3D sizeof utf32_pathname;

Please use sizeof(utf32_pathname), with parentheses.

> +    outbuf =3D locale_pathname;
> +    outbytes =3D size;
> +    iconv_result =3D
> +        iconv(cd, &inbuf, &inbytes, &outbuf, &outbytes);
> +    if (iconv_result =3D=3D \-1)

This variable seems useless:

    if (iconv(cd, &in, &inbytes, &out, &outbytes) =3D=3D \-1)

> +        err(EXIT_FAILURE, "iconv");
> +\&
> +    if (iconv_result =3D=3D \-1)
> +        err(EXIT_FAILURE, "iconv");

This is a leftover from the previous version.


Have a lovely night!
Alex

> +\&
> +    if (iconv_close(cd) =3D=3D \-1)
> +        err(EXIT_FAILURE, "iconv_close");
> +\&
> +    fp =3D fopen(locale_pathname, "w");
> +    fputs("Hello, world!\[rs]n", fp);
> +    if (fclose(fp) =3D=3D EOF)
> +        err(EXIT_FAILURE, "fclose");
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
>=20

--=20
<https://www.alejandro-colomar.es/>

--o4mksytuzksoq2om
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeOzXUACgkQnowa+77/
2zL4BhAAnsWSiEXrDnWY5DtYyhe/91ORw9fFGugaxa0/C2ebzfDyqgj29FarbzOP
OiiFZ8p8GvmsgN+dh/TS4MI94Qb5MB+SVr0hyGu+kgnYTA03Zc3atxaYgu1NLc8A
hp8Lha+I1Kzzj4Gj4fIk4HfcxOps6tIUAiuNPbDnTPIotFP4HGqJOU+NsCcDiQF0
iRZrdJt5l8gL6ZAFPLYDMbpMS3zBCnG8MqUkucXRJ/zrCU/jDvNZUAgm2hNzL58Y
x6v8qDHq5IpQXrMg98Ac800gQcJWwIkx5qZ27+fLtvPgGdtu+YiumCSUR8J9KAbM
oBrFzYGLqI+0AG+2zqkoDc82Naww/WK63p9fa+ScUZ/qXT+HcZuQ1wiGozO8YUvu
nXrFiouzCFiCCjDxqYI3N59p3aBUGado3AWaCGROREYg/EHA/yDQlVMyJR3xRnSJ
KbpU9FHt6WuDawkRWIgBiV+R8aPG1WoftrmcMhvrN4YLAWSeB/90q93+hrJn2QYV
XIO+LO/7GyGJYpfBbqHfkX+9ccXlHh6aI+YVBuWknvhBOeV5V3QSl/wzZdHKZPkJ
yBPdTCtO8iFn5oh81j+l9uDjVlfVb8CzY0AcWicHWctlOlhomPEBGw8sawuEXLru
Ci9Xi+wRwWLu50JzN/q5D4b2TW380UA70LBGAQpgoKNjZQLk+Q0=
=t99d
-----END PGP SIGNATURE-----

--o4mksytuzksoq2om--

