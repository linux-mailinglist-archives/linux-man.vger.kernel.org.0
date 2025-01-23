Return-Path: <linux-man+bounces-2288-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F704A1ADA1
	for <lists+linux-man@lfdr.de>; Fri, 24 Jan 2025 00:51:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EE4FB3A2E6C
	for <lists+linux-man@lfdr.de>; Thu, 23 Jan 2025 23:51:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D42F51D5CFB;
	Thu, 23 Jan 2025 23:51:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpnkzRYL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 924C61CCEED
	for <linux-man@vger.kernel.org>; Thu, 23 Jan 2025 23:51:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737676272; cv=none; b=jcUiIL2a8e84DGfThMTr5JxSQ3E6jf2DS8Z022Ii3PF/Vki2XERPMah53SdX9nKVZXFDFIPYAPK/ABkLY4H4UuXE00EcHG9zKK5+v1vswuAruB75tvlUa/Fx0rBsB/XkLTVaV47wkXfZOW0bP12HJnMZb3P7jAZKXKi2ojay8Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737676272; c=relaxed/simple;
	bh=b4pfTSiDQrqCQ1HWGpt5wUU9mx6Krgik5YoO54ZB9i0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k0w4i0AN0U6rbwJjmzqqUAzfBliSs2pku8JcAY+e6JW/2h2qlQwh4tX+hQw5gclf1bj2XvMTuNBgRc10kcwlXtuv5JF/QiTXB5rUWNGW18QHi4Mg49OIH2bc48GdmHgJVPjNwCxSG00fz6hN4zdo8Tt1uBBvZcCrHQ/35wI62Bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpnkzRYL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43F40C4CED3;
	Thu, 23 Jan 2025 23:51:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737676272;
	bh=b4pfTSiDQrqCQ1HWGpt5wUU9mx6Krgik5YoO54ZB9i0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cpnkzRYLgyKg/u3ny4kvWO3PPTQd3SFdqpB7OTKEY0MYu7RzSjHIAkfhTh0C8s9Bu
	 BOqY9TSsCmz4ScF6exRD8p2LXt7lcB0iXS+gedmHOh4fIPUZE35WF1NxLRmAZIhy85
	 RiBpGk0B9WuIstKM+OlatgAdl+3r2OoidcfqEHwT9tB3y8oZO8NR7xzvbC83X6Wc56
	 BknzyXqAy4T9KmHjW9c6X+Bqrp8N6ZyO3/P5rCWGsIPsCfKmmpPJrQxByQ8e9ZM9Lx
	 dbqLMnz8hJsaBWul6IjF6Nisq5ILejvoSJL47VE0Gc5IkGsKEGKhGzz2q2NSIG0+VN
	 8369BlIve/8yQ==
Date: Fri, 24 Jan 2025 00:51:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>, 
	"G. Branden Robinson" <branden@debian.org>
Subject: Re: [PATCH v10] man/man7/pathname.7: Add file documenting format of
 pathnames
Message-ID: <uth6f6fss73t2qqkey7y33bydwsjfhrr7jgnprmkbcojczvoli@alrgoccquf74>
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250121133523.24606-1-jason@jasonyundt.email>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lxc5kkhyapeopf4b"
Content-Disposition: inline
In-Reply-To: <20250121133523.24606-1-jason@jasonyundt.email>


--lxc5kkhyapeopf4b
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>, 
	"G. Branden Robinson" <branden@debian.org>
Subject: Re: [PATCH v10] man/man7/pathname.7: Add file documenting format of
 pathnames
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250121133523.24606-1-jason@jasonyundt.email>
MIME-Version: 1.0
In-Reply-To: <20250121133523.24606-1-jason@jasonyundt.email>

Hi Jason,

On Tue, Jan 21, 2025 at 08:35:20AM -0500, Jason Yundt wrote:
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

Thanks!  I've applied the patch, with some tweaks:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D5e0b1cb79b88d3a78f60bf85bfd3a76df7c10307>

Feel free to send further patches.


Have a lovely night!
Alex

> ---
> Here=E2=80=99s what I changed from the previous version:
>=20
> =E2=80=A2 I renamed inbuf to in and outbuf to out.
> =E2=80=A2 I removed the iconv_result variable.
> =E2=80=A2 I aligned and merged the variable declarations as requested.
> =E2=80=A2 I added parentheses to my use of sizeof.
> =E2=80=A2 I removed the leftover if statement.
> =E2=80=A2 I removed some unintentional spaces.
>=20
>  man/man7/pathname.7 | 152 ++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 152 insertions(+)
>  create mode 100644 man/man7/pathname.7
>=20
> diff --git a/man/man7/pathname.7 b/man/man7/pathname.7
> new file mode 100644
> index 000000000..96e0009e1
> --- /dev/null
> +++ b/man/man7/pathname.7
> @@ -0,0 +1,152 @@
> +.\" Copyright (C) 2025 Jason Yundt (jason@jasonyundt.email)
> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.TH pathname 7 (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +pathname,
> +filename
> +\-
> +how pathnames are encoded and interpreted
> +.SH DESCRIPTION
> +Some system calls allow you to pass a pathname as a parameter.
> +When writing code that deals with pathnames,
> +there are kernel-space requirements that you must comply with,
> +and user-space requirements that you should comply with.
> +.P
> +The kernel stores pathnames as null-terminated byte sequences.
> +The kernel has a few general rules that apply to all pathnames:
> +.IP \[bu] 3
> +The last byte in the sequence needs to be a null byte.
> +.IP \[bu]
> +Any other bytes in the sequence need to be non-null bytes.
> +.IP \[bu]
> +A 0x2F byte is always interpreted as a directory separator (/)
> +and cannot be part of a filename.
> +.IP \[bu]
> +A pathname can be at most PATH_MAX bytes long.
> +PATH_MAX is defined in
> +.BR limits.h (0p)\
> +\.
> +A pathname that=E2=80=99s longer than PATH_MAX bytes
> +can be split into multiple smaller pathnames and opened piecewise using
> +.BR openat (2).
> +.IP \[bu]
> +A filename can be at most a certain number of bytes long.
> +The number is filesystem-specific.
> +You can get the filename length limit for a currently mounted filesystem
> +by passing _PC_NAME_MAX to
> +.BR fpathconf (3)\
> +\.
> +For maximum portability, programs should be able to handle filenames
> +that are as long as the relevant filesystems will allow.
> +For maximum portability, programs and users should limit the length
> +of their own pathnames to NAME_MAX bytes.
> +NAME_MAX is defined in
> +.BR limits.h (0p)\
> +\.
> +.P
> +The kernel also has some rules that only apply in certain situations.
> +Here are some examples:
> +.IP \[bu] 3
> +Filenames on the ext4 filesystem can be at most 30 bytes long.
> +.IP \[bu]
> +Filenames on the vfat filesystem cannot a
> +0x22, 0x2A, 0x3A, 0x3C, 0x3E, 0x3F, 0x5C or 0x7C byte
> +(", *, :, <, >, ?, \ or | in ASCII)
> +unless the filesystem was mounted with iocharset set to something unusua=
l.
> +.IP \[bu]
> +A UNIX domain socket=E2=80=99s sun_path can be at most 108 bytes long (s=
ee
> +.BR unix (7)
> +for details).
> +.P
> +User space treats pathnames differently.
> +User space applications typically expect pathnames to use
> +a consistent character encoding.
> +For maximum interoperability, programs should use
> +.BR nl_langinfo (3)
> +to determine the current locale=E2=80=99s codeset.
> +Paths should be encoded and decoded using the current locale=E2=80=99s c=
odeset
> +in order to help prevent mojibake.
> +For maximum interoperability,
> +programs and users should also limit
> +the characters that they use for their own pathnames to characters in
> +.UR https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/V1_chap03.=
html#tag_03_265
> +the POSIX Portable Filename Character Set
> +.UE .
> +.SH EXAMPLES
> +The following program demonstrates
> +how to ensure that a pathname uses the proper encoding.
> +The program starts with a UTF-32 encoded pathname.
> +It then calls
> +.BR nl_langinfo (3)
> +in order to determine what the current locale=E2=80=99s codeset is.
> +After that, it uses
> +.BR iconv (3)
> +to convert the UTF-32 encoded pathname into a locale codeset encoded pat=
hname.
> +Finally, the program uses the locale codeset encoded pathname to create
> +a file that contains the message =E2=80=9CHello, world!=E2=80=9D
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
> +    char     *locale_pathname;
> +    char     *in, *out;
> +    FILE     *fp;
> +    size_t   size;
> +    size_t   inbytes, outbytes;
> +    iconv_t  cd;
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
> +    if (cd =3D=3D (iconv_t)\-1)
> +        err(EXIT_FAILURE, "iconv_open");
> +\&
> +    in =3D (char *) utf32_pathname;
> +    inbytes =3D sizeof(utf32_pathname);
> +    out =3D locale_pathname;
> +    outbytes =3D size;
> +    if (iconv(cd, &in, &inbytes, &out, &outbytes) =3D=3D \-1)
> +        err(EXIT_FAILURE, "iconv");
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

--=20
<https://www.alejandro-colomar.es/>

--lxc5kkhyapeopf4b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeS1f4ACgkQnowa+77/
2zK0rQ//V8JFUQCUS/GkRa37fM5nBvRrdflIFFbhRgMa7gKVsL0NsAUzJqKJFMXP
lFNHgAlc/Xr1XvXqNfxtOkokfxxgPB1Rdg/2xOKXo0+7NlT5db6xDegg0N/Eu2o2
3l5DGNT1NqKBjHs0hPobA7/O9xB7CMn3LknyJjF2xOEWwF1HZt6+7OBossNZXCmN
zLP0mubguMlovXPab5/C9q1CgrJCrDE51/etXl97gmmlv2w10ZUYJXwT8NRfrfQf
nYmBSVGM0SQHPYdUrHEOGWKrUU6USB2vhXcZv0Ab69nLR2bHcDhgUnfM2nVjmWUs
FqAmuLeGok7mSkFo+lXlTxQGzvDjWToYVbZpLvroqgfNcoxbJRAAzApsVa1wmydf
dpoCEJmFSfTrb0x28xK3zRrxegdSS9uBdPMtCuGR0CarOeU6z7wNiNLctGOk223f
zfqcK16nS0HZu+YVr874MSHE/HQVgzKANY0Ya6cgzyM8t7ecsxuk6QIyfl+0pvrr
vPg3DPBIBy8myjzsC6bRLd5MuNT2cnzkcIHPwOVnD0d/KJ+M/+5XPkcxx5knYfYq
95mW6CX2z04A9a2bzGUW1duF1sBaixrWhAEPPQZ98DRVuTwn5LgGK8bgxB2SqYKa
y82EaiCztoqAObUinIkqs5HiPv2lRcd1QJdNgL/js665VANulyw=
=78xa
-----END PGP SIGNATURE-----

--lxc5kkhyapeopf4b--

