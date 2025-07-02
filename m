Return-Path: <linux-man+bounces-3236-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BB5AF5B63
	for <lists+linux-man@lfdr.de>; Wed,  2 Jul 2025 16:42:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6380B1C429E2
	for <lists+linux-man@lfdr.de>; Wed,  2 Jul 2025 14:42:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0A1A3093D2;
	Wed,  2 Jul 2025 14:41:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OHqRnnse"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B11AF307AD2
	for <linux-man@vger.kernel.org>; Wed,  2 Jul 2025 14:41:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751467291; cv=none; b=kRithVwSaijLukVz7JoztPNAJ2blh0wZm7jTUk4K27IAiYzkfQYUfVhy97AxHMeQak34qGuCngJfjwfXWPIMlIXnNoEdhSH/3GLtAZEbknjuwaMVjBEMhbPD4wMKIX55S7GF06ltxYMY91M/9KzrglqeyxRfZLzk5bdZx79Xn1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751467291; c=relaxed/simple;
	bh=rXZg5gcU/th41CnYa1RRRZRmUhhJPqXoPFT6hai1CLc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Dyet+YNE3Dn+5wzzuu8fgbs5Un0vCQ25+/r5QJyw/BWZpQNSSe6h/lYImqD4/ApLQrbb9NkrE15M0EIWJhHXjy4V9W80LfAjFFdKflHO434q1Z5dfaMFGH/haR5aMPZV0LWzkL/MQZuy2ShYnYJcEhLQRnIbYskRAl3ji7kpsz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OHqRnnse; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2FEAC4CEEF;
	Wed,  2 Jul 2025 14:41:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751467291;
	bh=rXZg5gcU/th41CnYa1RRRZRmUhhJPqXoPFT6hai1CLc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OHqRnnseO7sLY9KsnDIuhe6hIEUaNNI3PWWzHfesOTGh5wQfzFwJXDMvTntsmQPOE
	 jVCRyRWXD7iQKdkCAjGbhQm76pYMsFnW31wE3U/YtlbD/J7eX/bfKKaKUE+rblQsOR
	 rnTz7eC1jtY+P5IHhuSEX2uvaJzdX9KVfvOuIJJ4fDePi3D/TD25Wmay5NrvyEhdRY
	 +SpDFxygb3TIBpM4KZ+04A5jJ0xoIRR8ttEsjQU8DeUVs1mccA7oRMb1QrNQmOiKSN
	 9Edvydrrc4vpwoTem0fONDPSJJ9CB9YnVpIbgZEu7D8vViuG2uLxU/yIQufXHQdxKF
	 nK4buYe8kH33w==
Date: Wed, 2 Jul 2025 16:41:28 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Lefevre <vincent@vinc17.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/: Replaced reserved exp identifier
Message-ID: <hg3uyynudxq2bm2cl2spcm6nshjewbcoaxoxjzamtuzevcwyyw@d2ituhdydzmw>
References: <20250702092516.GA2328014@cventin.lip.ens-lyon.fr>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gt2a2zqjkrhwkaen"
Content-Disposition: inline
In-Reply-To: <20250702092516.GA2328014@cventin.lip.ens-lyon.fr>


--gt2a2zqjkrhwkaen
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Lefevre <vincent@vinc17.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/: Replaced reserved exp identifier
References: <20250702092516.GA2328014@cventin.lip.ens-lyon.fr>
MIME-Version: 1.0
In-Reply-To: <20250702092516.GA2328014@cventin.lip.ens-lyon.fr>

Hi Vincent,

On Wed, Jul 02, 2025 at 11:25:16AM +0200, Vincent Lefevre wrote:
> Since exp is a library function, this is a reserved identifier, which
> should not be used as a variable name / parameter.
>=20
> For some of the replacements:
>=20
> Like in ISO C23 (new in this revision), for the frexp* and ldexp*
> functions, exp is replaced by p, and for the scalb[l]n* functions,
> exp is replaced by n (thus ditto for the deprecated scalb* functions).
>=20
> Signed-off-by: Vincent Lefevre <vincent@vinc17.net>
> ---
>  man/man2/timerfd_create.2 | 16 ++++++++--------
>  man/man3/frexp.3          | 20 ++++++++++----------
>  man/man3/ldexp.3          | 12 ++++++------
>  man/man3/scalb.3          | 26 +++++++++++++-------------
>  man/man3/scalbln.3        | 18 +++++++++---------
>  5 files changed, 46 insertions(+), 46 deletions(-)
>=20
> diff --git a/man/man2/timerfd_create.2 b/man/man2/timerfd_create.2
> index bcab72f37..a58b3ddfb 100644
> --- a/man/man2/timerfd_create.2
> +++ b/man/man2/timerfd_create.2
> @@ -639,12 +639,12 @@ main(int argc, char *argv[])
>  {
>      int                fd;
>      ssize_t            s;
> -    uint64_t           exp, tot_exp, max_exp;
> +    uint64_t           ex, tot_ex, max_ex;

How about using 'to' for timeout?  Do you think it makes sense?

>      struct timespec    now;
>      struct itimerspec  new_value;
>  \&
>      if (argc !=3D 2 && argc !=3D 4) {
> -        fprintf(stderr, "%s init\-secs [interval\-secs max\-exp]\[rs]n",
> +        fprintf(stderr, "%s init\-secs [interval\-secs max\-ex]\[rs]n",

And here saying max\-timeout.

>                  argv[0]);
>          exit(EXIT_FAILURE);
>      }
> @@ -659,10 +659,10 @@ main(int argc, char *argv[])
>      new_value.it_value.tv_nsec =3D now.tv_nsec;
>      if (argc =3D=3D 2) {
>          new_value.it_interval.tv_sec =3D 0;
> -        max_exp =3D 1;
> +        max_ex =3D 1;
>      } else {
>          new_value.it_interval.tv_sec =3D atoi(argv[2]);
> -        max_exp =3D atoi(argv[3]);
> +        max_ex =3D atoi(argv[3]);
>      }
>      new_value.it_interval.tv_nsec =3D 0;
>  \&
> @@ -676,14 +676,14 @@ main(int argc, char *argv[])
>      print_elapsed_time();
>      printf("timer started\[rs]n");
>  \&
> -    for (tot_exp =3D 0; tot_exp < max_exp;) {
> -        s =3D read(fd, &exp, sizeof(uint64_t));
> +    for (tot_ex =3D 0; tot_ex < max_ex;) {
> +        s =3D read(fd, &ex, sizeof(uint64_t));
>          if (s !=3D sizeof(uint64_t))
>              err(EXIT_FAILURE, "read");
>  \&
> -        tot_exp +=3D exp;
> +        tot_ex +=3D ex;
>          print_elapsed_time();
> -        printf("read: %" PRIu64 "; total=3D%" PRIu64 "\[rs]n", exp, tot_=
exp);
> +        printf("read: %" PRIu64 "; total=3D%" PRIu64 "\[rs]n", ex, tot_e=
x);
>      }
>  \&
>      exit(EXIT_SUCCESS);
> diff --git a/man/man3/frexp.3 b/man/man3/frexp.3
> index a741137c2..2812798c3 100644
> --- a/man/man3/frexp.3
> +++ b/man/man3/frexp.3
> @@ -14,9 +14,9 @@ Math library
>  .nf
>  .B #include <math.h>
>  .P
> -.BI "double frexp(double " x ", int *" exp );
> -.BI "float frexpf(float " x ", int *" exp );
> -.BI "long double frexpl(long double " x ", int *" exp );
> +.BI "double frexp(double " x ", int *" p );
> +.BI "float frexpf(float " x ", int *" p );
> +.BI "long double frexpl(long double " x ", int *" p );

Here I think I'd use 'e' for exponent.  What do you think?


Have a lovely day!
Alex

>  .fi
>  .P
>  .RS -4
> @@ -36,7 +36,7 @@ These functions are used to split the number
>  .I x
>  into a
>  normalized fraction and an exponent which is stored in
> -.IR exp .
> +.IR p .
>  .SH RETURN VALUE
>  These functions return the normalized fraction.
>  If the argument
> @@ -52,20 +52,20 @@ If
>  .I x
>  is zero, then the normalized fraction is
>  zero and zero is stored in
> -.IR exp .
> +.IR p .
>  .P
>  If
>  .I x
>  is a NaN,
>  a NaN is returned, and the value of
> -.I *exp
> +.I *p
>  is unspecified.
>  .P
>  If
>  .I x
>  is positive infinity (negative infinity),
>  positive infinity (negative infinity) is returned, and the value of
> -.I *exp
> +.I *p
>  is unspecified.
>  .SH ERRORS
>  No errors occur.
> @@ -118,12 +118,12 @@ int
>  main(int argc, char *argv[])
>  {
>      double x, r;
> -    int exp;
> +    int p;
>  \&
>      x =3D strtod(argv[1], NULL);
> -    r =3D frexp(x, &exp);
> +    r =3D frexp(x, &p);
>  \&
> -    printf("frexp(%g, &e) =3D %g: %g * %d\[ha]%d =3D %g\[rs]n", x, r, r,=
 2, exp, x);
> +    printf("frexp(%g, &e) =3D %g: %g * %d\[ha]%d =3D %g\[rs]n", x, r, r,=
 2, p, x);
>      exit(EXIT_SUCCESS);
>  }
>  .EE
> diff --git a/man/man3/ldexp.3 b/man/man3/ldexp.3
> index c2f5289f3..daa1290f5 100644
> --- a/man/man3/ldexp.3
> +++ b/man/man3/ldexp.3
> @@ -13,9 +13,9 @@ Math library
>  .nf
>  .B #include <math.h>
>  .P
> -.BI "double ldexp(double " x ", int " exp );
> -.BI "float ldexpf(float " x ", int " exp );
> -.BI "long double ldexpl(long double " x ", int " exp );
> +.BI "double ldexp(double " x ", int " p );
> +.BI "float ldexpf(float " x ", int " p );
> +.BI "long double ldexpl(long double " x ", int " p );
>  .fi
>  .P
>  .RS -4
> @@ -34,13 +34,13 @@ Feature Test Macro Requirements for glibc (see
>  These functions return the result of multiplying the floating-point numb=
er
>  .I x
>  by 2 raised to the power
> -.IR exp .
> +.IR p .
>  .SH RETURN VALUE
>  On success, these functions return
> -.IR "x * (2\[ha]exp)" .
> +.IR "x * (2\[ha]p)" .
>  .P
>  If
> -.I exp
> +.I p
>  is zero, then
>  .I x
>  is returned.
> diff --git a/man/man3/scalb.3 b/man/man3/scalb.3
> index 6968931ba..bfa3a1f59 100644
> --- a/man/man3/scalb.3
> +++ b/man/man3/scalb.3
> @@ -15,9 +15,9 @@ Math library
>  .nf
>  .B #include <math.h>
>  .P
> -.BI "[[deprecated]] double scalb(double " x ", double " exp );
> -.BI "[[deprecated]] float scalbf(float " x ", float " exp );
> -.BI "[[deprecated]] long double scalbl(long double " x ", long double " =
exp );
> +.BI "[[deprecated]] double scalb(double " x ", double " n );
> +.BI "[[deprecated]] float scalbf(float " x ", float " n );
> +.BI "[[deprecated]] long double scalbl(long double " x ", long double " =
n );
>  .fi
>  .P
>  .RS -4
> @@ -47,11 +47,11 @@ by
>  .B FLT_RADIX
>  (probably 2)
>  to the power of
> -.IR exp ,
> +.IR n ,
>  that is:
>  .P
>  .nf
> -    x * FLT_RADIX ** exp
> +    x * FLT_RADIX ** n
>  .fi
>  .P
>  The definition of
> @@ -65,32 +65,32 @@ On success, these functions return
>  *
>  .B FLT_RADIX
>  **
> -.IR exp .
> +.IR n .
>  .P
>  If
>  .I x
>  or
> -.I exp
> +.I n
>  is a NaN, a NaN is returned.
>  .P
>  If
>  .I x
>  is positive infinity (negative infinity),
>  and
> -.I exp
> +.I n
>  is not negative infinity,
>  positive infinity (negative infinity) is returned.
>  .P
>  If
>  .I x
>  is +0 (\-0), and
> -.I exp
> +.I n
>  is not positive infinity, +0 (\-0) is returned.
>  .P
>  If
>  .I x
>  is zero, and
> -.I exp
> +.I n
>  is positive infinity,
>  a domain error occurs, and
>  a NaN is returned.
> @@ -99,7 +99,7 @@ If
>  .I x
>  is an infinity,
>  and
> -.I exp
> +.I n
>  is negative infinity,
>  a domain error occurs, and
>  a NaN is returned.
> @@ -126,8 +126,8 @@ when calling these functions.
>  .P
>  The following errors can occur:
>  .TP
> -Domain error: \f[I]x\f[] is 0, and \f[I]exp\f[] is positive infinity, \
> -or \f[I]x\f[] is positive infinity and \f[I]exp\f[] is negative infinity=
 \
> +Domain error: \f[I]x\f[] is 0, and \f[I]n\f[] is positive infinity, \
> +or \f[I]x\f[] is positive infinity and \f[I]n\f[] is negative infinity \
>  and the other argument is not a NaN
>  .I errno
>  is set to
> diff --git a/man/man3/scalbln.3 b/man/man3/scalbln.3
> index e14c1be25..fbda8f4e7 100644
> --- a/man/man3/scalbln.3
> +++ b/man/man3/scalbln.3
> @@ -14,13 +14,13 @@ Math library
>  .nf
>  .B #include <math.h>
>  .P
> -.BI "double scalbln(double " x ", long " exp );
> -.BI "float scalblnf(float " x ", long " exp );
> -.BI "long double scalblnl(long double " x ", long " exp );
> +.BI "double scalbln(double " x ", long " n );
> +.BI "float scalblnf(float " x ", long " n );
> +.BI "long double scalblnl(long double " x ", long " n );
>  .P
> -.BI "double scalbn(double " x ", int " exp );
> -.BI "float scalbnf(float " x ", int " exp );
> -.BI "long double scalbnl(long double " x ", int " exp );
> +.BI "double scalbn(double " x ", int " n );
> +.BI "float scalbnf(float " x ", int " n );
> +.BI "long double scalbnl(long double " x ", int " n );
>  .fi
>  .P
>  .RS -4
> @@ -51,11 +51,11 @@ by
>  .B FLT_RADIX
>  (probably 2)
>  to the power of
> -.IR exp ,
> +.IR n ,
>  that is:
>  .P
>  .nf
> -    x * FLT_RADIX ** exp
> +    x * FLT_RADIX ** n
>  .fi
>  .P
>  The definition of
> @@ -69,7 +69,7 @@ On success, these functions return
>  *
>  .B FLT_RADIX
>  **
> -.IR exp .
> +.IR n .
>  .P
>  If
>  .I x
> --=20
> 2.50.0

--=20
<https://www.alejandro-colomar.es/>

--gt2a2zqjkrhwkaen
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhlRRgACgkQ64mZXMKQ
wqlYcw/9Gfa1+q0FPm96egcxUB9ZeKHXllNiekJ9RNZVWoGxXp9zvGPw66ufuh33
ngdKf7WS42/K3eZXyxmWBOEOvV9fD5LwlBt/S3V5nhBshgfbRkovG9jspdGe8E1y
YORZ9ADtbbiQmRc2BGWXKFroWdhBAjHF+kDOpbCcOoglMleubDcUGOrK9g05b3Kv
ULoYEq5aKDBD86VmRIKfy/bKvwbaXJevULZSmtV2MtgWbnuLuRAsFin2K60HSktL
/U//tqwHbOOj369ogs/rord+E5Mf4ttL78S2rJdpXJrE4cwqk3xezYTpwD9O9lMb
u0nhJULRtNsSZvc3FlqlfP3Xt5MR6JhsRzRuo9PDfE6MXTIfjXLVRPIQ37oCYsdw
BQZ/q0W3AE0kioaruZpr1bZ9Zy8aa8sTai8C5R1vU+Pi5h7mWz8BWQgXjCdR9+3S
9630HrH0kC1HG1ycACD+bUxFo7hGfVeVNrVpHYbhNVSZFoOnloLXl8D7FUmSrNzP
jWhzkgJJeeyLDVpl5R9S4MYLLAChvFUPnkREl+Jwx9wxKidkSyOESwR6vYt8aQGC
uLt9S0929stv7QMoKxoZM1lbKyrYEKKGCd9MYFGWsYWjeY3hacdXMMdBvNuUCsB4
IhRtOTFdagrm5oCGr9Z+Y95EYXvCzt520FnZEd+IMIoo2fgYRMo=
=/VLk
-----END PGP SIGNATURE-----

--gt2a2zqjkrhwkaen--

