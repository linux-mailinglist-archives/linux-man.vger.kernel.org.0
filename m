Return-Path: <linux-man+bounces-63-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B3BEB7E93F4
	for <lists+linux-man@lfdr.de>; Mon, 13 Nov 2023 02:15:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6BB55280A91
	for <lists+linux-man@lfdr.de>; Mon, 13 Nov 2023 01:15:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9C7C4426;
	Mon, 13 Nov 2023 01:15:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pwlsnIAD"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648504409
	for <linux-man@vger.kernel.org>; Mon, 13 Nov 2023 01:15:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30CB6C433C8;
	Mon, 13 Nov 2023 01:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699838135;
	bh=wLHll1f4SEVZlkK24M6QZM6HI3MgdvwLDkzRNXkk+N4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pwlsnIADeVb71Yfc7o55Mf3iHp7PVd0I6wvvtsGJQ/h2xpyKmMriVpwNVOYJS9Ire
	 j6mICPF3FTqRxuwuS7pbwp+nwjUYHrJx3pBoTo1gCOYxP8IZkPWUcGMbrcRqT32CHy
	 8Us6bzTED+AQHpYLO10CvG+lOkp2cx7YIXInTRDres11IC2sI9kFA/qBHoB98SlLZB
	 l5h/BaghJp94SlMZD/sCaLE+iOlwFytTuSgXCuela9XTAFmTtNKOgvxgECxbWgcZml
	 7+rBJOu4eXFVA30z1vQvMXmBq2R5SIncRuV7izIXzRHj/Ssbo9XbGrAP4C/05We1RR
	 cYgGJgmWAkd1w==
Date: Mon, 13 Nov 2023 02:15:20 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 3/4] strncat.3 fixes
Message-ID: <ZVF4tHfkfrwFQawd@debian>
References: <20231112235218.80195-1-eggert@cs.ucla.edu>
 <20231112235218.80195-4-eggert@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tCXRgbE8Wthi84rL"
Content-Disposition: inline
In-Reply-To: <20231112235218.80195-4-eggert@cs.ucla.edu>


--tCXRgbE8Wthi84rL
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Nov 2023 02:15:20 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 3/4] strncat.3 fixes

Hi Paul,

On Sun, Nov 12, 2023 at 03:52:07PM -0800, Paul Eggert wrote:

> Don't say "concatenate".

Ok

> Use "byte" instead of "character",

Ok

> and use standalone terminology rather than relying on the
> reader already having read string_copying(7).

I need to check again in a standalone commit.

> Don't say "width" when "size" was intended.

Ok

> Fix indenting of prototype.

Ok

> Simplify possible implementation, fixing a bug when the
> source string length and sz exceed INT_MAX.

Heh!  Good.

> Say that strncat is rarely useful.

Do we need to say that, or is it already implied by
"append non-null bytes from a source array to a string,
 and null-terminate the result"?
Not many programs need to do that operation.  I'm fine with saying it's
rarely useful; I'm just wondering if it's worth it.

> Say that behavior is undefined if the destination is not a string.

Ok

> Simplify example by using plain sizeof rather than an nitems macro,

If you want sizeof(), please use sizeof(), not sizeof.

I use nitems() with these functions because if you switch to wide
strings, you can keep the nitems() part, while you'd have to change it
if you had sizeof().  Also, nitems() makes it safe against sizeof(ptr).
What do you think of this?

> by removing a confusingly-named 'maxsize' local,

Ok

> and by removing an unnecessary call to 'exit'.

This was practice from Michael Kerrisk, which I like: always terminate
the program with exit(1); don't rely on just ending the scope of main().
That way, it's more visual.

Please split all these things into separate patches, if you don't mind,
and sign the patch.

> ---
>  man3/strncat.3 | 54 +++++++++++++++++++++-----------------------------
>  1 file changed, 23 insertions(+), 31 deletions(-)
>=20
> diff --git a/man3/strncat.3 b/man3/strncat.3
> index d0f777d36..9a7df474a 100644
> --- a/man3/strncat.3
> +++ b/man3/strncat.3
> @@ -5,7 +5,8 @@
>  .\"
>  .TH strncat 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -strncat \- concatenate a null-padded character sequence into a string
> +strncat \- append non-null bytes from a source array to a string,
> +and null-terminate the result
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ", " \-lc )
> @@ -14,15 +15,18 @@ Standard C library
>  .B #include <string.h>
>  .P
>  .BI "char *strncat(char *restrict " dst ", const char " src "[restrict .=
" sz ],
> -.BI "               size_t " sz );
> +.BI "              size_t " sz );
>  .fi
>  .SH DESCRIPTION
> -This function catenates the input character sequence
> -contained in a null-padded fixed-width buffer,
> -into a string at the buffer pointed to by
> +This function appends at most
> +.I sz
> +non-null bytes from the array pointed to by
> +.I src
> +to the end of the string pointed to by
>  .IR dst .
> -The programmer is responsible for allocating a destination buffer large =
enough,
> -that is,
> +.I dst
> +must point to a string contained in a buffer that is large enough,
> +that is, the buffer size must be at least
>  .IR "strlen(dst) + strnlen(src, sz) + 1" .
>  .P
>  An implementation of this function might be:
> @@ -32,12 +36,7 @@ An implementation of this function might be:
>  char *
>  strncat(char *restrict dst, const char *restrict src, size_t sz)
>  {
> -    int   len;

Oops!  :)

> -    char  *p;
> -\&
> -    len =3D strnlen(src, sz);
> -    p =3D dst + strlen(dst);
> -    p =3D mempcpy(p, src, len);
> +    char *p =3D mempcpy(dst + strlen(dst), src, strnlen(src, sz));

Please use a C89 declaration for p (top of the function).

>      *p =3D \[aq]\e0\[aq];
>  \&
>      return dst;
> @@ -67,11 +66,12 @@ C11, POSIX.1-2008.
>  .SH HISTORY
>  POSIX.1-2001, C89, SVr4, 4.3BSD.
>  .SH CAVEATS
> -The name of this function is confusing.
> -This function has no relation to
> +The name of this function is confusing, as it has no relation to
>  .BR strncpy (3).

I didn't connect both sentences because I think it is confusing at
several levels.  Not only it has no relation to strncpy(), but it is
neither to writing 'n' bytes.  But yeah, having no relation to strncpy()
is the main one, so we could simplify.  What do you think?

Thanks!
Alex

> +This function is rarely useful in practice.
>  .P
> -If the destination buffer is not large enough,
> +If the destination buffer does not already contain a string,
> +or is not large enough,
>  the behavior is undefined.
>  See
>  .B _FORTIFY_SOURCE
> @@ -91,40 +91,32 @@ Shlemiel the painter
>  #include <stdlib.h>
>  #include <string.h>
>  \&
> -#define nitems(arr)  (sizeof((arr)) / sizeof((arr)[0]))
> -\&
>  int
>  main(void)
>  {
> -    size_t  maxsize;
> -\&
> -    // Null-padded fixed-width character sequences
> +    // Null-padded fixed-size character sequences
>      char    pre[4] =3D "pre.";
>      char    new_post[50] =3D ".foo.bar";
>  \&
>      // Strings
>      char    post[] =3D ".post";
>      char    src[] =3D "some_long_body.post";
> -    char    *dest;
> -\&
> -    maxsize =3D nitems(pre) + strlen(src) \- strlen(post) +
> -              nitems(new_post) + 1;
> -    dest =3D malloc(sizeof(*dest) * maxsize);
> +    char *dest =3D malloc(sizeof pre + strlen(src) \- strlen(post)
> +                        + sizeof new_post + 1);
>      if (dest =3D=3D NULL)
>          err(EXIT_FAILURE, "malloc()");
>  \&
> -    dest[0] =3D \[aq]\e0\[aq];  // There's no 'cpy' function to this 'ca=
t'.
> -    strncat(dest, pre, nitems(pre));
> +    dest[0] =3D \[aq]\e0\[aq];  // There's no `cpy' function to this `ca=
t'.
> +    strncat(dest, pre, sizeof pre);
>      strncat(dest, src, strlen(src) \- strlen(post));
> -    strncat(dest, new_post, nitems(new_post));
> +    strncat(dest, new_post, sizeof new_post);
>  \&
>      puts(dest);  // "pre.some_long_body.foo.bar"
>      free(dest);
> -    exit(EXIT_SUCCESS);
>  }
>  .EE
>  .\" SRC END
>  .in
>  .SH SEE ALSO
>  .BR string (3),
> -.BR string_copying (3)
> +.BR string_copying (7)
> --=20
> 2.41.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--tCXRgbE8Wthi84rL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVReKgACgkQnowa+77/
2zI4ww/8DqhQYSl03LQ/JjrWg/+NfQi+6glqbVEOEqP8hgMTKnCJyvzNnfsv9DwE
zcy5TdqTo7/pfkMj5Gu1v5pF8D66lIBVEQ+rZBNBScyp2rw9LtYYhS0eiE22Ry98
upkqWo4I9HR9AOzwzhJKhqnFCED7oYltJQ9wfXDugNqfuuach2xgIFYWfU0uk0wi
Hr8QCb4IL8OnRD6TVweNmbr2ETqyUhjkMfCBybBzU/rdW5rfVfFiwwmyc19PTe5c
W91hwn0Tc+8bzXfwgL7+BVcoU9RNXmmcx/czrq0a9hlnin/9G2PqvpmSCXpTr1Gq
1ooUdrKr/taCxQaMStmY9PmEKkRZD+9m6Z9oLK5JDNMmtH1NkJKmQE9CipGgNRWi
FdGEo/JptgyRm4gYkfu36+iQ4W5Ly82uZeXBv48pUABrKSn3yq2GT29cQjSVg65m
l6H8VpaCFPAla1bfkzBeAwXcUiH7z2v1BQrnlFzy6bod+cUvnzz0bL2PvYA9Lf/8
fyK2Dkk7c60hbJwXx1hGjp0WyttgJ6uoUjL0Euw9+QQWrIllmaS2HmfT1HgHGvOK
DAYplafsUi3Py7L0k4hvUKSvErRQNsdknyHNroItvl8SCGx6Y8zk4CcPuQ4pZP22
zCnS9tAAbcPuTcSFzIeGxtXdz1okR9fkQlIr3NwpPQ/V5SRUfA0=
=+ogp
-----END PGP SIGNATURE-----

--tCXRgbE8Wthi84rL--

