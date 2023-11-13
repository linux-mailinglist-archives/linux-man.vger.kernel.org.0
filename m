Return-Path: <linux-man+bounces-64-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB867E9411
	for <lists+linux-man@lfdr.de>; Mon, 13 Nov 2023 02:29:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E17411C2037A
	for <lists+linux-man@lfdr.de>; Mon, 13 Nov 2023 01:29:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7203017F3;
	Mon, 13 Nov 2023 01:29:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZCJ2/vM"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31281469D
	for <linux-man@vger.kernel.org>; Mon, 13 Nov 2023 01:29:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1584BC433C7;
	Mon, 13 Nov 2023 01:29:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699838986;
	bh=jFHv1xzTKx220nNsGe40EpW6lql7/kUjJ0fH6faxRvc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bZCJ2/vMllHwHpCTv9g50xL8Y3b6zbKUGsuBVQI43t75psExzsZpeTuvZnE7sMG4h
	 nVgJvvuKQhxjbgCQQkhYlypyZF8Z7ZhrYJc/BVb5qQb/6j0vYm3lpq2lh5EID6mHZP
	 DZfUhVxhbSUbunknq21YuDOGWJhy2vJLaHwUKjEqtqnwLQHNFQBtZR+Adcf3g0/9kh
	 bNZeUuZAe3vAyGy9onmL6lBvx1A5chOAsq7+IhPcZ6Aey+5QHe4kPSCXvJ3wXxYous
	 MSd+6Rk8EFPg7zJox9S0u5hsA7Q92ZNMjPf8FQLDC0t/NGazQDD9nX6BWuQ8RtG5tk
	 XTl7SqO1drRhw==
Date: Mon, 13 Nov 2023 02:29:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 4/4] stpncpy(3) fixes
Message-ID: <ZVF8B-guyK2Zby4P@debian>
References: <20231112235218.80195-1-eggert@cs.ucla.edu>
 <20231112235218.80195-5-eggert@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7K5rfNh2JvlSolrj"
Content-Disposition: inline
In-Reply-To: <20231112235218.80195-5-eggert@cs.ucla.edu>


--7K5rfNh2JvlSolrj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Nov 2023 02:29:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 4/4] stpncpy(3) fixes

Hi Paul,

On Sun, Nov 12, 2023 at 03:52:08PM -0800, Paul Eggert wrote:
> Don't say "width" when "size" was meant.
Ok

> Prefer "byte" to the confusing word "character".
Ok

> Don't say that the source is a string; it need not be a string.
As said in string.3, I'm not convinced by the new wording either.

> Don't imply the result always has some null padding.
Ok

> Prefer standalone terminology.
Ok

> Fix indenting of prototype.
Ok

> Improve sample implementation by using memset rather than
> the less-standard bzero,

While bzero(3) is non-standard, it is simpler, so I prefer it.

> and by not overwriting part of
> the destination more than once which is confusing.
Ok

> Simplify example without losing its lessons.
See some comments inline.

> Use fwrite instead of printf to avoid assuming buffer length fits in int;
Thanks!  And even without the int issue, it's more consistent with
handling non-terminated bytes.

> although obviously this buffer length does fit, it's better if the sample
> code is general.
Yep.

> ---
>  man3/stpncpy.3 | 82 ++++++++++++++++++++++++--------------------------
>  1 file changed, 40 insertions(+), 42 deletions(-)
>=20
> diff --git a/man3/stpncpy.3 b/man3/stpncpy.3
> index 3cf4eb371..afe230307 100644
> --- a/man3/stpncpy.3
> +++ b/man3/stpncpy.3
> @@ -7,8 +7,8 @@
>  .SH NAME
>  stpncpy, strncpy
>  \-
> -fill a fixed-width buffer with characters from a string
> -and pad with null bytes
> +fill a fixed-size buffer with non-null bytes from a source array,
> +padding with null bytes as needed
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ", " \-lc )
> @@ -18,10 +18,10 @@ Standard C library
>  .P
>  .BI "char *strncpy(char " dst "[restrict ." sz "], \
>  const char *restrict " src ,
> -.BI "               size_t " sz );
> +.BI "              size_t " sz );
>  .BI "char *stpncpy(char " dst "[restrict ." sz "], \
>  const char *restrict " src ,
> -.BI "               size_t " sz );
> +.BI "              size_t " sz );
>  .fi
>  .P
>  .RS -4
> @@ -37,15 +37,18 @@ Feature Test Macro Requirements for glibc (see
>          _GNU_SOURCE
>  .fi
>  .SH DESCRIPTION
> -These functions copy characters from the string pointed to by
> +These functions copy non-null bytes from the array pointed to by
>  .I src
> -into a character sequence at the fixed-width buffer pointed to by
> -.IR dst ,
> -and pad with null bytes.
> -If the destination buffer,
> -limited by its size,
> -isn't large enough to hold the copy,
> -the resulting character sequence is truncated.
> +into the array that is pointed to by
> +.I dst
> +and that contains
> +.I sz
> +bytes.
> +If the source has too few non-null bytes to fill the destination,
> +the functions pad the destination with trailing null bytes;
> +if it has too many non-null bytes, the functions copy only the first
> +.I sz
> +bytes and do not append any null by5tes.
>  For the difference between the two functions, see RETURN VALUE.
>  .P
>  An implementation of these functions might be:
> @@ -62,8 +65,8 @@ strncpy(char *restrict dst, const char *restrict src, s=
ize_t sz)
>  char *
>  stpncpy(char *restrict dst, const char *restrict src, size_t sz)
>  {
> -    bzero(dst, sz);
> -    return mempcpy(dst, src, strnlen(src, sz));
> +    size_t n =3D strnlen(src, sz);
> +    return memset(mempcpy(dst, src, n), 0, sz - n);

Hmm, I hadn't thought of this chaining.  Nice!

>  }
>  .EE
>  .in
> @@ -75,7 +78,7 @@ returns
>  .TP
>  .BR stpncpy ()
>  returns a pointer to
> -one after the last character in the destination character sequence.
> +one after the last byte in the destination byte sequence.
>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
>  .BR attributes (7).
> @@ -107,9 +110,10 @@ C89, POSIX.1-2001, SVr4, 4.3BSD.
>  glibc 1.07.
>  POSIX.1-2008.
>  .SH CAVEATS
> -The name of these functions is confusing.
> -These functions produce a null-padded character sequence,
> -not a string (see
> +The names of these functions are confusing.
> +Because these functions append null bytes only if the source is a
> +string with length less than the destination size,
> +they might not create a string in their destination (see
>  .BR string_copying (7)).
>  For example:
>  .P
> @@ -122,14 +126,12 @@ strncpy(buf, "123456", 5);  // { \[aq]1\[aq], \[aq]=
2\[aq], \[aq]3\[aq], \[aq]4\[
>  .EE
>  .in
>  .P
> -It's impossible to distinguish truncation by the result of the call,
> -from a character sequence that just fits the destination buffer;
> -truncation should be detected by
> -comparing the length of the input string
> -with the size of the destination buffer.
> +Although these functions can be used with strings,
> +it is the caller's responsibility to detect whether they produce a strin=
g,
> +e.g., by checking whether the result buffer ends in a null byte.
>  .P
> -If you're going to use this function in chained calls,
> -it would be useful to develop a similar function that accepts
> +To use these functions in chained calls,
> +it might be useful to develop wrapper functions that accept
>  a pointer to the end (one after the last element) of the destination buf=
fer
>  instead of its size.
>  .SH EXAMPLES
> @@ -141,30 +143,26 @@ instead of its size.
>  #include <string.h>
>  \&
>  int
> -main(void)
> +main(int argc, char **argv)
>  {
> -    char    *p;
> -    char    buf1[20];
> -    char    buf2[20];
> -    size_t  len;
> +    char buf[20];
>  \&
> -    if (sizeof(buf2) < strlen("Hello world!"))
> -        warnx("strncpy: truncating character sequence");
> -    strncpy(buf2, "Hello world!", sizeof(buf2));
> -    len =3D strnlen(buf2, sizeof(buf2));
> +    if (strncpy(buf, argv[0], sizeof buf)[sizeof buf - 1])
> +        warnx("strncpy: destination buffer is not a string");

The previous warning was slightly different.  It was warning because
data was lost.  Now you warn when it's not a string, even if all the
data is there.  Since we're later using the data with fwrite(3), I think
it makes more sense to warn iff data has been truncated, ignoring the
fact that it's not a string (the whole page is saying this doesn't
produce a string).

So, I think this change is a bug.

I understand you may want to show how these functions can be used to
produce a string.  Maybe having another example (not necessarily a whole
program) would be useful.  If so, please put that one below this one, to
give the intention that it's only a secondary use of this function, and
not intended for everyone.

> +    size_t len =3D strnlen(buf, sizeof buf);

C89 declarations, please.

>  \&
>      printf("[len =3D %zu]: ", len);
> -    printf("%.*s\en", (int) len, buf2);  // "Hello world!"
> +    fwrite(buf, 1, len, stdout);

I like fwrite() better.  Good!  I wasn't happy with this weird printf().

Cheers,
Alex

> +    putchar(\[aq]\en\[aq]);
>  \&
> -    if (sizeof(buf1) < strlen("Hello world!"))
> -        warnx("stpncpy: truncating character sequence");
> -    p =3D stpncpy(buf1, "Hello world!", sizeof(buf1));
> -    len =3D p \- buf1;
> +    char *p =3D stpncpy(buf, argv[0], sizeof buf);
> +    if (p =3D=3D buf + sizeof buf)
> +        warnx("stpncpy: destination buffer is not a string");
> +    len =3D p \- buf;
>  \&
>      printf("[len =3D %zu]: ", len);
> -    printf("%.*s\en", (int) len, buf1);  // "Hello world!"
> -\&
> -    exit(EXIT_SUCCESS);
> +    fwrite(buf, 1, len, stdout);
> +    putchar(\[aq]\en\[aq]);
>  }
>  .EE
>  .\" SRC END
> --=20
> 2.41.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--7K5rfNh2JvlSolrj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVRfAIACgkQnowa+77/
2zIF8xAAhroTNECI+Abuzao59sHrIeVO/8ukwjMXEszi2f1zfabaMa3BYllcfR9O
Na10NaRaLJ5eCNEdi26m4n3J/eSbrMhwlkCmwFHdrsAwvL4SXv0NqV2LARWesAwv
keqASZZAkE03esZ9U6zP3JiTd9ESZ7OD4dKAPoG6SpVRE4PV/1an/rrNGSG+9H/x
BD+WfNMokw54u+mOyD4FKz6PH7Z/g5DSerUZMM3s/SZ9UjGOenNDrpOvTBb/YZ++
uFTV05E62Fr13ub04Ps29X0sWIqy2UCswiVH1MHRvq1PjBhuPxL7EHyUTNpyqqD7
FvN7+5/vJObY6naDQtuBXxhrIscEWzB01qcziJAKlMLD1Q4C7zxOLqidFuEofV87
uldpCsyWnph3nj7l/Lnl6celri3M3+scLX649i7CzJmz9DrTEZdaim9jj1tpMGhH
vSg+FtEyOtBPMTVJ2Rb/a1cDQp46wFAobrwJEpVfH2j4hqTKh6Vz8ITsyvJhMZSX
jHOHY/GifNelYcUOTUA9vqkD327y0UTrGzCP7Znef3cIZM1KfzIRscq1wQPslTx3
NB7MTzba6OpcgQ5azDVYfubrYVYysnV3BlOLw+b5SoS50j0Z8QJrI9VPgG3YCOpb
HnEwYQgUeKZlCu9xq+W+VSViEn7il/ImYibJuY0zyvlB4AQV+vg=
=4ZEp
-----END PGP SIGNATURE-----

--7K5rfNh2JvlSolrj--

