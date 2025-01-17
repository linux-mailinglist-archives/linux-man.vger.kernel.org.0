Return-Path: <linux-man+bounces-2257-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E98ECA1515F
	for <lists+linux-man@lfdr.de>; Fri, 17 Jan 2025 15:14:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 146E6169369
	for <lists+linux-man@lfdr.de>; Fri, 17 Jan 2025 14:14:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1078C1FF7D6;
	Fri, 17 Jan 2025 14:14:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IpiXzt1c"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C433F1CD0C
	for <linux-man@vger.kernel.org>; Fri, 17 Jan 2025 14:14:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737123285; cv=none; b=dkUDJQIF8W8qcLU45HYA1T1wnDfL6RMjx7ugQmbiWQYKSTcyuvW2vz8PDiLPMRa+acb3cmXEw7qPPlrLGpnRxUquBqTCe+LWgEf3sIjhe3G7gALSig+aNHw6xWX0UXx2KWy2KJ2cIYssbGH1QRrtp7Wab8aYN7aBDco6MYFFvvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737123285; c=relaxed/simple;
	bh=4JUPIhnXR7c0kVtlFtue9vy/1lU6ufJogFD7qDpj2mk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r9t61+X+/4v2quME5FhEdqdfTD7QOlSWrW78Vu5K7XJesEnVn7j0m75vYKhHiJcxm4moeeHOLm+oiCMpSpfNjcAn3wVPDe4yHKvZXdqYHcm5uPkIH8prTemnMNdsn0K+D75VviouderXSqoBI2uR3Aq07nwA1VGmKWUDjb43jMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IpiXzt1c; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78575C4CEDD;
	Fri, 17 Jan 2025 14:14:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737123285;
	bh=4JUPIhnXR7c0kVtlFtue9vy/1lU6ufJogFD7qDpj2mk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IpiXzt1cp6WR1F81Wmo7JDai16/JVOt+17dVMkf5oduGDdCRvdN4cnPoFT3HEdK+r
	 u0lOuLBniTNC29YJo32hLUOf4LnrYF5E7Xc+9nPDi9/wSIDFpaMIttneizZMvUE9+L
	 NsB4/YoD7gE0lLVrXlvX1Rybu0GG22sK9lsRIriTGn2Y2JVbazWEqUFmwh2zZvf0Pp
	 2AXB+YyfFAFi5H9dJqAq8fDSX6NxXDWgZcAy9JXdfXMEIoKHxg28LhE7G11h/ldNVG
	 1ihxSX4hLRgbWVRSQPAbNbVGs4z9+WsCi8l+5VIGYYxGyZ10U59uh1yJGG9oIj6zlP
	 czz7wK4x+d5nA==
Date: Fri, 17 Jan 2025 15:14:55 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: Re: [PATCH v5] man/man7/pathname.7: Add file documenting format of
 pathnames
Message-ID: <zmnk4zwijwa5scfuklswjrfkewv4me6jxqoft3mugam5ihxily@b3rrcknd3c4v>
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250117130205.33119-1-jason@jasonyundt.email>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hmmcqi4a6e4s2jd6"
Content-Disposition: inline
In-Reply-To: <20250117130205.33119-1-jason@jasonyundt.email>


--hmmcqi4a6e4s2jd6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: Re: [PATCH v5] man/man7/pathname.7: Add file documenting format of
 pathnames
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250117130205.33119-1-jason@jasonyundt.email>
MIME-Version: 1.0
In-Reply-To: <20250117130205.33119-1-jason@jasonyundt.email>

Hi Jason,

On Fri, Jan 17, 2025 at 08:02:03AM -0500, Jason Yundt wrote:
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
> =E2=80=A2 I stopped saying that the kernel has a 255-byte limit on filena=
mes.
>   Florian was right, you can create files with names longer than 255
>   characters.  I tried it, and I was able to create a file with a 355-cha=
racter
>   long name on both tmpfs and bcachefs.  This leaves us with one problem,
>   though.  In <linux/limits.h>, NAME_MAX is defined as 255 and has a comm=
ent
>   that says =E2=80=9Cchars in a file name=E2=80=9D [1].  POSIX says that =
NAME_MAX is the
>   =E2=80=9CMaximum number of bytes in a filename (not including the termi=
nating null of
>   a filename string).=E2=80=9D  Why is NAME_MAX set to 255 if you can hav=
e longer
>   filenames?

There's fpathconf(3) which might give a different value.  I tend to use
the hardcoded macros in programs (although, I use PATH_MAX, since
usually I don't store single filenames).

I think for portability you should restrict yourself to creating stuff
shorter than the hard-coded macro, but accept up to the fpathconf(3)
value (similar to character sets).

You could test this in your system:

	alx@devuan:~/tmp/linux$ cat nm.c=20
	#include <limits.h>
	#include <stdio.h>
	#include <unistd.h>

	int
	main(void)
	{
		printf("NAME_MAX: %d\n", NAME_MAX);
		printf("_PC_NAME_MAX: %ld\n", pathconf("/run/", _PC_NAME_MAX));
	}
	alx@devuan:~/tmp/linux$ gcc -Wall -Wextra nm.c=20
	alx@devuan:~/tmp/linux$ ./a.out=20
	NAME_MAX: 255
	_PC_NAME_MAX: 255
	alx@devuan:~/tmp/linux$ echo /run/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa=
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa=
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa=
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa=
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa=
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa=
aaaaaaaaaaaaaaaaaaaaaaa | wc
	      1       1     444
	alx@devuan:~/tmp/linux$ sudo touch /run/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa=
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa=
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa=
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa=
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa=
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa=
aaaaaaaaaaaaaaaaaaaaaaaaaaaaa
	[sudo] password for alx:=20
	touch: cannot touch '/run/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa=
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa=
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa=
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa=
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa=
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa=
aaaaaaaaaaaaaaa': File name too long

Curiously, my system is also limited to 255 for tmpfs filesystems but
yours is not?  I still get longer paths rejected.


> =E2=80=A2 I from the Amiga filesystem back to the ext4 filesystem example=
=2E  The only
>   reason why I had used the Amiga filesystem example was because I had
>   previously thought that 255 bytes was the maximum for any filename,
>   regardless of the filesystem.  I think that ext4 is better example beca=
use
>   people are more likely to use an ext4 filesystem than an Amiga filesyst=
em.
> =E2=80=A2 I implemented all of Alex suggestions, except for the ones that
>   no longer apply because they were suggestions for text that was deleted=
 for
>   other reasons.
> =E2=80=A2 I added an example program.
>=20
> [1]: <https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tr=
ee/include/uapi/linux/limits.h?h=3Dv6.12.9#n12>
> [2]: <https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/limits.h.=
html#tag_14_26_03_02>
>=20
>  man/man7/pathname.7 | 151 ++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 151 insertions(+)
>  create mode 100644 man/man7/pathname.7
>=20
> diff --git a/man/man7/pathname.7 b/man/man7/pathname.7
> new file mode 100644
> index 000000000..9545c3b07
> --- /dev/null
> +++ b/man/man7/pathname.7
> @@ -0,0 +1,151 @@
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
> +A pathname can be at most 4,096 bytes long.
> +A pathname that=E2=80=99s longer than 4,096 bytes
> +can be split into multiple smaller pathnames and opened piecewise using
> +.BR openat (2).
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
> +#include <iconv.h>
> +#include <langinfo.h>
> +#include <locale.h>
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <uchar.h>
> +\&
> +int
> +main(void)
> +{
> +    if (setlocale(LC_ALL, "") =3D=3D NULL) {
> +        exit(EXIT_FAILURE);

I prefer showing an error message on errors.  For example:

	err(EXIT_FAILURE, "setlocale");

> +    }
> +    char32_t *utf32_pathname =3D U"example";

You probably wanted an array, not a pointer.

	char32_t  utf8_pathname[] =3D U"example";

> +    size_t characters_in_pathname =3D (sizeof utf32_pathname) \- 1;

`sizeof utf32_pathname` is 4.  You're taking the size of a pointer, not
of an array.  Also, sizeof gives you the number of bytes, not elements.
Also, the number of characters in a string is called 'length' (this is
standard nomenclature; see strlen(3)).  You probably wanted this:

	size_t  len =3D nelementsof(utf8_pathname) - 1;

Oh, I'm too far into an uncertain future, and we don't yet know how that
operator will be called.
<https://thephd.dev/the-big-array-size-survey-for-c>
For now, you'll want this:

	#define NELEMS(a)  (sizeof(a) / sizeof(a[0]))

	size_t  len =3D NELEMS(utf8_pathname) - 1;

> +    size_t bytes_in_locale_pathname =3D
> +        characters_in_pathname * MB_CUR_MAX + 1;

The number of bytes in an object is called 'size'.  This is also
standard nomenclature.

	size_t  size =3D len * MB_CUR_MAX + 1;


Have a lovely day!
Alex

> +    // We use calloc() here to make sure that the output from iconv() is=
 null
> +    // terminated.

Doesn't iconv(3) terminate its output?  I've never used that API, so I
don't know.

> +    char *locale_pathname =3D calloc(1, bytes_in_locale_pathname);

I prefer it reversed:  we're allocating n bytes (of size 1), not
1 element of a weird size.  Remember the prototype is:

	void *calloc(size_t n, size_t size);

> +    if (locale_pathname =3D=3D NULL) {
> +        exit(EXIT_FAILURE);
> +    }
> +\&
> +    iconv_t cd =3D iconv_open(nl_langinfo(CODESET), "UTF\-32");
> +    if (cd =3D=3D (iconv_t) \- 1) {
> +        exit(EXIT_FAILURE);
> +    }
> +    char *inbuf =3D (char *) utf32_pathname;
> +    size_t inbytesleft =3D
> +        characters_in_pathname * (sizeof *utf32_pathname);
> +    char *outbuf =3D locale_pathname;
> +    size_t outbytesleft =3D bytes_in_locale_pathname;
> +    size_t iconv_result;
> +    // iconv() doesn=E2=80=99t necessarily convert everything all in one=
 go, so we call
> +    // it in a while loop just in case it takes multiple calls to finish
> +    // converting everything.
> +    while (inbytesleft > 0) {
> +        iconv_result =3D
> +            iconv(cd, &inbuf, &inbytesleft, &outbuf, &outbytesleft);
> +        if (iconv_result =3D=3D \-1) {
> +            exit(EXIT_FAILURE);
> +        }
> +    }
> +    // This ensures that the conversion is 100% complete.  See iconv(3) =
for
> +    // details.
> +    iconv_result =3D
> +        iconv(cd, NULL, &inbytesleft, &outbuf, &outbytesleft);
> +    if (iconv_result =3D=3D \-1) {
> +        exit(EXIT_FAILURE);
> +    }
> +    if (iconv_close(cd) =3D=3D \-1) {
> +        exit(EXIT_FAILURE);
> +    }
> +\&
> +    FILE *fp =3D fopen(locale_pathname, "w");
> +    if (fp =3D=3D NULL) {
> +        exit(EXIT_FAILURE);
> +    }
> +    if (fputs("Hello, world!\\n", fp) =3D=3D EOF) {
> +        exit(EXIT_FAILURE);
> +    }
> +    if (fclose(fp) =3D=3D EOF) {
> +        exit(EXIT_FAILURE);
> +    }
> +\&
> +    free(locale_pathname);
> +    exit(EXIT_SUCCESS);
> +}
> +.EE
> +.\" SRC END
> +.SH SEE ALSO
> +.BR open (2),
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

--hmmcqi4a6e4s2jd6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeKZdgACgkQnowa+77/
2zKkiRAAjOb9UTKFlD7KXLc2yD329pSC31LlyzE6PbbT3wczEGfMMsV4qQ0FaWau
HVYUKaELTAIAiAxCl+fOIlHe2SCmd1kcOVQM17VnwM8F5RTyhu5pFu/Qp8SgPk4X
2elY58r3yulfC7E0JVvsFzpgPcEBc0ODtJUyo9Jo56j2jnpd6VARy7RkOJoARBn5
BEyXm5tOdhni0IUeWD9J2pgCj0/16eLbkLIlet8wrk19liepGdsvL8J3KLVlOzk3
jTZjaYMMq78WQxBUIdN8WqDnzlWWcUqwEwnoPOCrbNUNIFxQPO+cqxyozKKD7fN+
8+YOfuhubjdzKRoAdhtjh8PF51AH3FptzDjC40u9f1a5A6oKKi7YA91IRIyHoJpU
ibBwD7489wVWxuNY+0plyQPMiBFfy6M1YroF/Dzx1Xw5o2aI50H7Js+uxlayJWBi
E4t5uN1Eh44MS1kXxAvEjimWTFz2TH9ZBWgxw0frN9RVHOB2yuifyeTuWu1UZ7ee
2tQ2ZCWr4xckOYTp5P9LV+tqSUw52QTihF2/+dZV7ttUpE+yfis/0Cf0ZlPn6l6A
Cs1G+9u0Nhvl2EfeIbf2ClfhQjMs6Hpw8sNXcg8p80XaAF0dPm3tXdEedpOf9YAC
N3+q6Ea9GYQvBUEUmfkcau//8wVnYXQp1Y6iQArMK771gJBFjig=
=vdwi
-----END PGP SIGNATURE-----

--hmmcqi4a6e4s2jd6--

