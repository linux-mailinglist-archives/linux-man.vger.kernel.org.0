Return-Path: <linux-man+bounces-2970-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 50319ABB09E
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 17:03:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F059D3B91D4
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 15:03:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A984A1DC988;
	Sun, 18 May 2025 15:03:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3NcYPZ1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F0C72635
	for <linux-man@vger.kernel.org>; Sun, 18 May 2025 15:03:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747580611; cv=none; b=XK318J/X5OKMBofyyvM65FQuJinoFYPMDsyTSLgTDdKC9k2EsaCccj+74m0I88IsbJy1Nq5bEBUXHd3ul0orGwLZ1qD6o2xGxBSSI86xdI8HUNqTJLBUs2JJtig0oAn8Q63z5yFi8sDgm5i9+P+wsc6gLATn/edcE4KdId7Q0kM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747580611; c=relaxed/simple;
	bh=3Pf+K98D4F+NX5rSzDyg86zLTqRHSB3rS4gsD8Cz/Ag=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k7uKV74eYaOl4jr6hUirG2KwM7WZRyWVGNaen8/Ntn0g6nIId7wC9/5FBpo0fY+fMhD4apRJRNzUmY2i8CKbb4kwQQj+DZ5ujVPgEW6qKrYhEdOsY8yMnZy7eV5UabaHiiX0o9mVCmDP0P7TyKvS0CdCE4TzAZSYnHWi9gdwSPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3NcYPZ1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8919AC4CEE7;
	Sun, 18 May 2025 15:03:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747580610;
	bh=3Pf+K98D4F+NX5rSzDyg86zLTqRHSB3rS4gsD8Cz/Ag=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I3NcYPZ1SbCvyfXB9BRx7tBswRsk//vANEXSq7+RaFUQADUEaGebmcmAs1IC5m4Hy
	 ETNW3GXBkXkgefsWPoix0bKQ7tSacfi/RTauMfclADdOaghT6nd8KoyibwcNukQvGV
	 M+TRPkKUeP607c27cGMdVESzFI5CvdrUJ5lJ4sNGGHL9CxSl8WF6Ctl6/w3i2dG5LU
	 76xYbXESESc0QiSn8XV3QaDRN/ruZ7TmJwI6/v4I+RUWcO3KQzqQ/dM8JdvZ31/xPV
	 aeDL/8XU8yRl491lm8+2RsRmmyzFfxCaPo419Zt/9zompN6USCYkwVoWEEzQt2O5Rh
	 5yxcG5tH7ej4A==
Date: Sun, 18 May 2025 17:03:25 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Tobias Stoeckmann <tobias@stoeckmann.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man3/*printf.3: Add errors section
Message-ID: <qzgr5ql2f6cn7vcxccfiqqicbqfbjtqdgd5ie6bbnyz47nqzj2@uubfpced7dmx>
References: <vdno2j6via73xybrbtb23k2ptqejtdio2yqh7c4qijmtzhy4yt@gfp5j4bmsfe2>
 <tfyxxmci3xhe4a4vssgk576hy5c4xfm3dcfpsq4odi6pl5obds@jjti3wfzepld>
 <34octlcodbwm3kfqlouvrvhriiftmlzzobbohgzivlkgi53nfs@7gxajeb56klz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fguoe6ye4t2frq4g"
Content-Disposition: inline
In-Reply-To: <34octlcodbwm3kfqlouvrvhriiftmlzzobbohgzivlkgi53nfs@7gxajeb56klz>


--fguoe6ye4t2frq4g
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Tobias Stoeckmann <tobias@stoeckmann.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man3/*printf.3: Add errors section
References: <vdno2j6via73xybrbtb23k2ptqejtdio2yqh7c4qijmtzhy4yt@gfp5j4bmsfe2>
 <tfyxxmci3xhe4a4vssgk576hy5c4xfm3dcfpsq4odi6pl5obds@jjti3wfzepld>
 <34octlcodbwm3kfqlouvrvhriiftmlzzobbohgzivlkgi53nfs@7gxajeb56klz>
MIME-Version: 1.0
In-Reply-To: <34octlcodbwm3kfqlouvrvhriiftmlzzobbohgzivlkgi53nfs@7gxajeb56klz>

Hi Tobias,

On Sun, May 18, 2025 at 03:41:59PM +0200, Tobias Stoeckmann wrote:
> The printf family of functions set errno if a negative value is returned.

Thanks!  I've applied the patch.  I did appply a few amendments; see
below.

> Subject: Re: [PATCH] man3/*printf.3: Add errors section

I've added man/ before man3/ (for consistency with the other commit
messages).

> Souce is POSIX.1-2024, see

I've changed to mention POSIX.1 instead of POSIX.1-2024, as this is not
something new from -2024.  By saying POSIX.1, it more clearly states
that all versions of POSIX (at least that I know) have specified this.

> <https://pubs.opengroup.org/onlinepubs/9799919799/functions/fprintf.html>
> <https://pubs.opengroup.org/onlinepubs/9799919799/functions/fwprintf.html>
>=20
> Also see manual pages of FreeBSD and OpenBSD.
>=20
> Signed-off-by: Tobias Stoeckmann <tobias@stoeckmann.org>
> ---
> On Sun, May 18, 2025 at 10:15:54AM +0200, Alejandro Colomar wrote:
> > So, how about this?
> >=20
> > 	ERRORS
> > 		See sprintf(3) and malloc(3).
>=20
> Adjusted.
>=20
> > > +.B EILSEQ
> > > +A wide-character code that does not correspond to a valid character
> > > +has been detected.
> >=20
> > I think this is because of "as-if" putwc(3).  If so, I prefer deferring
> > to it.
> >=20
> > Also, I see that POSIX documents this error, but why is that?  These
> > APIs don't handle wide-characters, do they?
>=20
> Shortened here and in wprintf.3 as well.
>=20
> The EILSEQ can occur with %ls or %S modifier, e.g.
>=20
> printf("%ls\n", "\xFF")
>=20
> or any other invalid sequence.
> ---
>  man/man3/asprintf.3 |  7 ++++++-
>  man/man3/printf.3   | 22 +++++++++++++++++++++-
>  man/man3/wprintf.3  | 21 ++++++++++++++++++++-
>  3 files changed, 47 insertions(+), 3 deletions(-)
>=20
> diff --git a/man/man3/asprintf.3 b/man/man3/asprintf.3
> index 319382c3a..e175306f6 100644
> --- a/man/man3/asprintf.3
> +++ b/man/man3/asprintf.3
> @@ -38,9 +38,14 @@ When successful, these functions return the number of =
bytes printed,
>  just like
>  .BR sprintf (3).
>  If memory allocation wasn't possible, or some other error occurs,
> -these functions will return \-1, and the contents of
> +these functions will return \-1, set errno, and the contents of

We use italics for errno.  So it would be

	.I errno

Also, we have some more-or-less consistent way of saying that "errno is
set to indicate the error", so I've adjusted it for consistency with
other pages.  (See membarrier(2) for example; most pages look like that
one.  That was one of the last things Michael did.)  :)

>  .I strp
>  are undefined.
> +.SH ERRORS
> +See
> +.BR sprintf (3)
> +and
> +.BR malloc (3).
>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
>  .BR attributes (7).
> diff --git a/man/man3/printf.3 b/man/man3/printf.3
> index b6e4f38b9..09737fd23 100644
> --- a/man/man3/printf.3
> +++ b/man/man3/printf.3
> @@ -904,7 +904,27 @@ Thus, a return value of
>  or more means that the output was truncated.
>  (See also below under CAVEATS.)
>  .P
> -If an output error is encountered, a negative value is returned.
> +If an output error is encountered, a negative value is returned and

I've rephrased this, because I think "an output error" is incorrect.
There are also input errors (EILSEQ is one).

> +errno is set.
> +.SH ERRORS
> +See
> +.BR write (2)
> +and
> +.BR putwc (3).
> +In addition, the following error may occur:
> +.TP 10

We don't specify the indentation of tagged paragraphs.  I've removed
the '10'.

> +.B EOVERFLOW
> +The value to be returned is greater than
> +.BR INT_MAX .
> +.P
> +The
> +.BR dprintf ()
> +function may fail additionally if:
> +.TP
> +.B EBADF
> +The
> +.IR fd

This should be '.I'.  The IR is for alternating italics and roman (see
groff_man(3)).  It produces a diagnostic, BTW (see CONTRIBUTING.d/lint):

	TROFF		.tmp/man/man3/printf.3.cat.set
	an.tmac:.tmp/man/man3/printf.3:926: style: .IR expects at least 2 argument=
s, got 1

I've removed the 'R'.

> +argument is not a valid file descriptor.
>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
>  .BR attributes (7).
> diff --git a/man/man3/wprintf.3 b/man/man3/wprintf.3
> index 59a6cfe07..583089e94 100644
> --- a/man/man3/wprintf.3
> +++ b/man/man3/wprintf.3
> @@ -198,7 +198,26 @@ case of the functions
>  .BR swprintf ()
>  and
>  .BR vswprintf ().
> -They return \-1 when an error occurs.
> +They return \-1 when an error occurs and set errno.
> +.SH ERRORS
> +See
> +.BR write (2)
> +and
> +.BR putwc (3).
> +In addition, the following error may occur:
> +.TP 10
> +.B EOVERFLOW
> +The value to be returned is greater than
> +.BR INT_MAX .
> +.P
> +The
> +.BR fwprintf ()
> +and
> +.BR wprintf ()
> +functions may fail additionally if:
> +.TP
> +.B ENOMEM
> +Insufficient storage space is available.
>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
>  .BR attributes (7).
> --=20
> 2.49.0
>=20

Apart from the commit message changes, I applied the following diff (see
at the bottom).

Here's the patch I pushed:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D58bebd4ab85fda6d3b68a51b1650301b526335ba>


Have a lovely day!
Alex

diff --git i/man/man3/asprintf.3 w/man/man3/asprintf.3
index 9e2f56bb9..68c372ed8 100644
--- i/man/man3/asprintf.3
+++ w/man/man3/asprintf.3
@@ -37,8 +37,11 @@ .SH RETURN VALUE
 When successful, these functions return the number of bytes printed,
 just like
 .BR sprintf (3).
-If memory allocation wasn't possible, or some other error occurs,
-these functions will return \-1, set errno, and the contents of
+On error,
+\-1 is returned,
+.I errno
+is set to indicate the error,
+and the contents of
 .I strp
 are undefined.
 .SH ERRORS
diff --git i/man/man3/printf.3 w/man/man3/printf.3
index 7e7a464dd..759539381 100644
--- i/man/man3/printf.3
+++ w/man/man3/printf.3
@@ -904,15 +904,18 @@ .SH RETURN VALUE
 or more means that the output was truncated.
 (See also below under CAVEATS.)
 .P
-If an output error is encountered, a negative value is returned and
-errno is set.
+On error,
+a negative value is returned,
+and
+.I errno
+is set to indicate the error.
 .SH ERRORS
 See
 .BR write (2)
 and
 .BR putwc (3).
 In addition, the following error may occur:
-.TP 10
+.TP
 .B EOVERFLOW
 The value to be returned is greater than
 .BR INT_MAX .
@@ -923,7 +926,7 @@ .SH ERRORS
 .TP
 .B EBADF
 The
-.IR fd
+.I fd
 argument is not a valid file descriptor.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
diff --git i/man/man3/wprintf.3 w/man/man3/wprintf.3
index 9dc43347f..a7324426b 100644
--- i/man/man3/wprintf.3
+++ w/man/man3/wprintf.3
@@ -198,14 +198,18 @@ .SH RETURN VALUE
 .BR swprintf ()
 and
 .BR vswprintf ().
-They return \-1 when an error occurs and set errno.
+On error,
+\-1 is returned,
+and
+.I errno
+is set to indicate the error.
 .SH ERRORS
 See
 .BR write (2)
 and
 .BR putwc (3).
 In addition, the following error may occur:
-.TP 10
+.TP
 .B EOVERFLOW
 The value to be returned is greater than
 .BR INT_MAX .


--=20
<https://www.alejandro-colomar.es/>

--fguoe6ye4t2frq4g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgp9r0ACgkQ64mZXMKQ
wqmy7hAAj/WYwLPuTKn6Xm+gY0F2aIHGZf6kLotrIyJbu0NOCFHh9AQ+1VtvjK1l
grpesWzpvOmKohVq+iRBcX17aeM4CoORh58+D1pqzlI4FERAf/G4QWtNaOLpprn+
3tf74gu/qYVaVNROKkrWclZ6DKzwn1TvBHuSmpW4ufiV2SXJ/35yuAElJYyPJ3Z5
sTUpUR0a4jSypRLQ5FC+ggem57OVctVDOD5JOVbyOr/torlHsNoBeh20rqGJMHvi
FznfWZYEhZXBBUyHKmVxA5PHqiYihbF7mYpEzSH8WfqTcJNarEjM/ct4Iq8GcqwV
TbXqAd7fynS0HABizGfIPiKuP5S+tHDZMh38hauU3CNh9Fzm1v7s6mMIRFT9TjT+
Plksps9qmjCb/Mk4S6Zz/a+5/qD01UwJd9n3Z8VmSKCOO34Yj2OlbkgK3yDSjUsU
/h/QjFTfG/G6mfyBXe94l60Dq7WHAn5s9yvGYVBqXwwJ5uU0iLK6leAZSrbPK8WD
snGkwLxEux2bnQM+bz8lA4BwDlKcXC26OmhXWamBfplpzwLs4fyXTAe6GPWT0Zfs
vGKYvYMILfLWeA+ubqGbL1gyXjFskA8Jf+L4qAjvNcL0waRL42uh4ouvz725txmE
QbkmNqgEvm3/6YF2plxLW4PIA8a+F7VbMVSif2WzdxOh+D2clWY=
=gpMI
-----END PGP SIGNATURE-----

--fguoe6ye4t2frq4g--

