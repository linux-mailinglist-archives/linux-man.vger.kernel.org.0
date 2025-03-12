Return-Path: <linux-man+bounces-2592-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B99A5DE63
	for <lists+linux-man@lfdr.de>; Wed, 12 Mar 2025 14:53:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6B6F77A2084
	for <lists+linux-man@lfdr.de>; Wed, 12 Mar 2025 13:51:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41A6024CED6;
	Wed, 12 Mar 2025 13:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lSz13DAc"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01F3D24C66C
	for <linux-man@vger.kernel.org>; Wed, 12 Mar 2025 13:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741787543; cv=none; b=mVOeEPU/N+070YczWNM1Tfd9AgyhQRJq8hZEA3ft/ObMw90qHOKZK87lAFJJdJOOUAC6vEYxPfqPJkitcvMMDlBiizYZpkGHRRkmM1GhZoaaNa1v9Jg8zMDjRDNKvP7/OY9INJDTtyfzmw0gJMy13qeQI6JNljpjscbKn49gm3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741787543; c=relaxed/simple;
	bh=VvTrQ+JwXohe55JUa8P/2DH/krJ/5s0WgGnZp8VbGn4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MQqYtW2kANLaHwDXZl7BBglJZrAukXMsNbu7S2EcnVIuQLmMiDYyt75HigwLcJu4kUsNOd1IcBjVawjVYSE9nz5/etdjC+pVbw7K3EGfLZoitkNx/cbdPFlDlfjEEGdSq4Cte9RYfcHMxly1Bu6NZpAMX/4rFcRvZ3e7QLv52e8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lSz13DAc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB6FEC4CEDD;
	Wed, 12 Mar 2025 13:52:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741787542;
	bh=VvTrQ+JwXohe55JUa8P/2DH/krJ/5s0WgGnZp8VbGn4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lSz13DAc9nvVpDzb94xSmRA2fOw/fRa77IRiptm5mNnjvEOK9idKVR22YtcKgG1hA
	 OkismvP7cjTHmUOv+twitAZfgqCSJjnBEW3aclcqq5JhPQVV46jn9CptaIL7ch4ogt
	 +SADjOv0YeEDKi0N+zZeYmUqjY7vIae8sITM1pV4YVkdq0w+2nRScCdU6NbTOzz99Y
	 p54Gy6ATLoP7qeq2jnksmijAnD0+TlZG0ErNziF7YVaM+X3YOimTbTYlOXdKTVsw+m
	 y/CACZ1XwICGrM9QMMbNy9Fzq3ZFS1231gD6rksNrGYKuOmncMqCOuiZlpZuJ1nCiM
	 7xivmiB3Tjh4Q==
Date: Wed, 12 Mar 2025 14:52:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Kang-Che Sung <explorer09@gmail.com>
Cc: linux-man@vger.kernel.org, uecker@tugraz.at
Subject: Re: [man-pages] Question about the length notations in C library
 functions
Message-ID: <uqzs5wocfirww4jbkxxreu37phwvrvvqffir6vmfm3cwxsd4dc@so57fsl4wxez>
References: <CADDzAfM1HhyASu58RGCANR-K3ETrK5KExD5PpU_2-AmPvgrszA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="w2ru4lq7tti4azv6"
Content-Disposition: inline
In-Reply-To: <CADDzAfM1HhyASu58RGCANR-K3ETrK5KExD5PpU_2-AmPvgrszA@mail.gmail.com>


--w2ru4lq7tti4azv6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kang-Che Sung <explorer09@gmail.com>
Cc: linux-man@vger.kernel.org, uecker@tugraz.at
Subject: Re: [man-pages] Question about the length notations in C library
 functions
References: <CADDzAfM1HhyASu58RGCANR-K3ETrK5KExD5PpU_2-AmPvgrszA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CADDzAfM1HhyASu58RGCANR-K3ETrK5KExD5PpU_2-AmPvgrszA@mail.gmail.com>

Hi Kang-Che,

On Tue, Mar 11, 2025 at 01:30:45AM +0800, Kang-Che Sung wrote:
> I would like to ask a question about the length notations in many of
> the C functions in the Linux man pages.
>=20
> For example, in the synopsis section of mcstowcs(3):
>=20
>     size_t mbstowcs(wchar_t dest[restrict .dsize], const char
> *restrict src, size_t dsize);
>=20
> What is the dot character before the `dsize` for?

It is a notation that we use for referring to a parameter that has not
been declared yet.  There were discussions about providing this as a GNU
extension, and it has also been discussed for standardization in the
past.  However, it seems in the end it results more problematic than it
looks like, so it was discarded.

Some company was still pushing for something like that in the last
committee meeting, but I don't think it will prosper.

The reason for the dot character was to do something similar to
designator syntax for structure initializers.  That would avoid the
ambiguity with a global variable with the same name as a parameter.

> When I tried to include this prototype verbatim in C code (C99 and
> above), I got a compiler error. There is no dot allowed in the
> notation like this.

Yup, it's not valid C syntax.

> Another error I got is that `dsize` is undeclared, because `dsize` is
> an argument only declared _later_  in the prototype. So ultimately the
> prototype only worked when the `dsize` token is commented out:
>=20
>     size_t mbstowcs(wchar_t dest[restrict /* dsize */], const char
> *restrict src, size_t dsize);
>=20
> I personally like these length notations in the function synopses
> because they give a quick view on how the length arguments are
> applied. Except that the notations should compile, or else they could
> draw more confusion.

There's a GNU extension, which I'm considering using.  It is currently
proposed for standardization (I don't remember what exactly was
decided in the meeting from last month).  I think it will eventually be
standardized later this year.

Once it is standard, I'll update the manual pages to use that syntax:

	size_t mbstowcs(size_t dsize;
	                wchar_t dest[restrict dsize], const char *restrict src,
	                size_t dsize);

> And, as you mentioned something about the `_Countof` proposal in the
> comment here
> (https://github.com/llvm/llvm-project/issues/130429#issuecomment-27103104=
94),
> I think it's also good to let you know, that the `dsize` in the
> example above, doesn't compile (thus you have another language issue
> to address). :)

Yup, we're working on _Countof to work on array parameters, and the
reason we're trying to standardize the syntax shown above (among other
things), it to allow using _Countof within the function body of
functions.

Hopefully, soon you'll be able to write this code (I'm slightly
rewriting your code):

	size_t
	utf8_mbsrtowcs(size_t dsize;
	    uint32_t dst[restrict dsize], const uint8_t *restrict src,
	    size_t dsize, struct utf8_decoder_state *restrict ps)
	{
		static struct utf8_decoder_state  internal =3D {};

		ps =3D ps ?: &internal;

		return utf8_mbsnrtowcs(dst, src, SIZE_MAX, _Countof(dst), ps);
	}

Instead of having to pass the size variable manually.  This will allow
for better bounds checking.

> (In case you didn't notice, I'm the same person who reported the
> mbsnrtowcs(3) man page bug
> (https://bugzilla.kernel.org/show_bug.cgi?id=3D219847), because I tried
> implementing a version of mbsnrtowcs and mbsrtowcs just as a hobby. My
> code can be seen here:
> (https://gitlab.com/-/snippets/3718423))

Thanks for the bug report!  Would you mind sending a patch to the
mailing list?


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--w2ru4lq7tti4azv6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfRkYwACgkQ64mZXMKQ
wqnzgw/+K3h7t0jV7n0mOk5IGR5iTZLwO1lubX7b5m5I+OaMNTrl7ZqUkI6Z1thF
SNfCl1N72rXVeZQR96FK1Y2bp1WKDvuk2XSfZfCJF++fC9SYuxb2t9iQIIPbp+8n
OeWBlWe+yGrIPdUwAKcZ1cw9DtfHheZLgnHiSjB1GPGExE6ohmmzB2zErFJWEVpl
FQH9Y9+jQh0xkxIUoee1oi+hrmQooxhMIlHE4EFFyBkYGXwCMUejlwFa8CCkVTKg
7iElBkHw7rWe3JUQrYviAMlRpoE/6GOu+VCTpFoDMR3qgaXLiYbzfq665Yxp5xVB
o4t1t5O+Fj/V1ZvOHi3dCkEqJG06iroLnmMpR3+1QnTiN5U5fKIFDbK/B3H9j6Lg
x2soHFMGM6x+2pYzYDi/OrQEvnMtrR3KvoSBWRPRd3du+c9w/z018GiMEZ0mpT0O
bcf+Ojy3aG3nimDBrQkoSYOwru+MBM7fnXOpMfOj1WGAwLWQ0cMxoljqUS4OORB4
xDv7NKZZqfNaWuUwp+L1H+IAE6m/LaPfGuhMsCgJrIa8QjcS1H/fn9acsGbuarvh
ht2ZAEgVzHiQvylmIef6zEGIOUE37fiM4QTO/h1wiQNbfNEUXukq1D4NW2UM5tGg
cX+wpw1RBR06EkXFIP3HBggUDXmNmH7Ydc1w4RZCy3yaGHnZAT4=
=x4bq
-----END PGP SIGNATURE-----

--w2ru4lq7tti4azv6--

