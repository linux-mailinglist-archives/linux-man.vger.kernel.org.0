Return-Path: <linux-man+bounces-2994-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E9BD5ABE80F
	for <lists+linux-man@lfdr.de>; Wed, 21 May 2025 01:31:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 57D543B16D0
	for <lists+linux-man@lfdr.de>; Tue, 20 May 2025 23:31:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D52D2219301;
	Tue, 20 May 2025 23:31:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUHbR7At"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92848BA36
	for <linux-man@vger.kernel.org>; Tue, 20 May 2025 23:31:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747783909; cv=none; b=QVH5qMW1Fv5RC64hL/NlapIc5Q0nN7D4tKtaW0TMlb4RdmtoDlQr5R/BmOyaK71WZYTkEh7oAEbYo2Hizqp3ibxh3/V8g7GhiSQrIIwLiDtWq2SNXWN5dOhRY+q+g7K9n17nPS9UQap8P099wZHn75Jqz6oytu5HNCAvi1uUgVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747783909; c=relaxed/simple;
	bh=Sso6VbnwDMljVPwiqNfcAkF/mxksDC+3nQ0oNZVMGEI=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZKfZQMk/hMUYg+y/DsDmfadcjPxmn331mB/TpuwvOJOftH90HyH5oFXH1BAWTH4qepE7Mp+tl/X9edm+m2jiUn1LqmhELHpeXFukmCW+9jmL5S15YsuWJVWpUsvf3k8bP/fgRvwYo+RrlIjMHfDdhdoaf2h0UXBg+U3JA+bQvDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUHbR7At; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 147E9C4CEE9;
	Tue, 20 May 2025 23:31:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747783909;
	bh=Sso6VbnwDMljVPwiqNfcAkF/mxksDC+3nQ0oNZVMGEI=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=ZUHbR7AtIahjP2SWsZaUwrmdky+bhCVczkLEzpp/U20l37wpve49T/XnWbZupdWzm
	 pUuRx9UKAioexMrr5ogFcUaE6ueJkeg7CJXmUrw8xz/HzraCnqmv3euHQv7RyiHJKa
	 An9L/vN3cTctH8mRzW6b0MT25z+lMoggqo3gSgswcb9ZFeJMJ9rkpotUVR5D6u+lpB
	 IA+iaRPbLR0tVtjFGUd68x5IKOk34hMwc5/8c3SYncA9Kbfzj5xzfggBqZf6kCJWOg
	 u+2o5edfe5FS3JfYL0U4UYLzrIsdC6cZh5ncPc/aLP6r2yzFMYDYWyD+ptKG7BsCPx
	 kGhJjFNCmq54w==
Date: Wed, 21 May 2025 01:31:45 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, 
	Christopher Bazley <chris.bazley.wg14@gmail.com>, Martin Uecker <uecker@tugraz.at>, 
	Steffen Nurpmeso <steffen@sdaoden.eu>
Subject: Re: man-pages: mbrtowc: misleading
Message-ID: <7qtghvrlhi2n43swmagyjvmzogvmzybhv2hty5tia6gqvr67oz@w6qu46fcn34h>
References: <20250518013401.seThfADR@steffen%sdaoden.eu>
 <atdny7g2j5caim4oz2qgcqfpt43y5th2vuoyyy2qlqgdpivxez@y2bjsgm3jttt>
 <20250519135221.5a48Joxu@steffen%sdaoden.eu>
 <gxghgfhmtz2w6sen7c3gl5or624wkrb5gluafjt77otrpzxh2u@tkqkqs6fjizd>
 <20250519222653.8aL97Par@steffen%sdaoden.eu>
 <o4cono3dihpf42xr2je6qxjkc4tgp52sgo2ckcrthm3466s73g@2eqwyp3qlskl>
 <20250520225843.9iNAs_t5@steffen%sdaoden.eu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xhggpfue44s4bt4a"
Content-Disposition: inline
In-Reply-To: <20250520225843.9iNAs_t5@steffen%sdaoden.eu>


--xhggpfue44s4bt4a
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, 
	Christopher Bazley <chris.bazley.wg14@gmail.com>, Martin Uecker <uecker@tugraz.at>, 
	Steffen Nurpmeso <steffen@sdaoden.eu>
Subject: Re: man-pages: mbrtowc: misleading
References: <20250518013401.seThfADR@steffen%sdaoden.eu>
 <atdny7g2j5caim4oz2qgcqfpt43y5th2vuoyyy2qlqgdpivxez@y2bjsgm3jttt>
 <20250519135221.5a48Joxu@steffen%sdaoden.eu>
 <gxghgfhmtz2w6sen7c3gl5or624wkrb5gluafjt77otrpzxh2u@tkqkqs6fjizd>
 <20250519222653.8aL97Par@steffen%sdaoden.eu>
 <o4cono3dihpf42xr2je6qxjkc4tgp52sgo2ckcrthm3466s73g@2eqwyp3qlskl>
 <20250520225843.9iNAs_t5@steffen%sdaoden.eu>
MIME-Version: 1.0
In-Reply-To: <20250520225843.9iNAs_t5@steffen%sdaoden.eu>

Hello Steffen,

On Wed, May 21, 2025 at 12:58:43AM +0200, Steffen Nurpmeso wrote:
>   ..
>  |> -.BI "size_t mbrtowc(size_t " n ;
>  |> -.BI "               wchar_t *restrict " pwc ", const char " s "[rest=
ric\
>  |> t " n ],
>  |> +.BI "size_t mbrtowc(wchar_t *restrict " pwc ", const char " s "[rest=
ric\
>  |> t " n ],
>  |>  .BI "               size_t " n ", mbstate_t *restrict " ps );
>  |
>  |You can't use 'n' before declaration.
>=20
> ..if you want the prototype from the manual to be compileable ..

It's not so much that I want it to be compileable, but I'm worried that
if I use parameters before declaration, some people might be fooled to
think that this is legal C, and they may use it in their code.  And if
they're unlucky, that might even work (if they have a global variable
with that name), which might be problematic.

With the GNU extension, we get either something that works (if the
reader uses GCC/Clang), or something that clearly errors out.

>=20
>  | alx@devuan:~$ cat << __EOF__ | gcc -S -x c /dev/stdin
>  | #include <wchar.h>
>  | #include <stddef.h>
>  |      size_t mbrtowc(size_t n;
>  |       wchar_t *restrict pwc, const char s[restrict n],
>  |       size_t n, mbstate_t *restrict ps);
>  | __EOF__
>  | alx@devuan:~$ cat << __EOF__ | gcc -S -x c /dev/stdin
>  | #include <wchar.h>
>  | #include <stddef.h>
>  |      size_t mbrtowc(=20
>  |       wchar_t *restrict pwc, const char s[restrict n],
>  |       size_t n, mbstate_t *restrict ps);
>  | __EOF__
>  | /dev/stdin:4:66: error: =E2=80=98n=E2=80=99 undeclared here (not in a =
function)
>=20
> You want to.  To remark that i mostly work with tcc(1) during
> development, and was used to use pcc(1) once that still worked
> (and was developed).
>=20
>   x.c:3: error: ',' expected (got ";")
>=20
> This extension totally escaped not only me alone.
> It .. seems it could be made backward portable with some macro
> compatibility shims.  (Like PARAMFWD() and PARAMUSE() or what.)

Yep, macros should allow this.  On the other hand, I'm personally find
such code to be totally backwards.  The fwd declarations are for
improving the readability, but with those, the readability is lost, and
I'd rather use plain pointer notation.

> How is this actually implemented?  To me that "s" is a pointer,
> and i am thus used to not use [] syntax for myself.  In fact
> i always got angry if i did write xy[SOME_NAMED_CONSTANT], and
> then that meant nothing to the compiler!

Then you might be happy to learn that we're working on adding meaning to
it.

>  Ie if constant is 10 and
> i pass a stack buffer of 4 .. no warning and nothing.

Martin is working on adding diagnostics for that in GCC.  Currently, we
have nothing here:

	alx@devuan:~/tmp$ cat cnt.c=20
	void
	f(int a[3])
	{
		a[1] =3D 0;
		a[9] =3D 0;
	}
	alx@devuan:~/tmp$ gcc -Wall -Wextra -S cnt.c=20
	alx@devuan:~/tmp$=20

But this should change soon-ish.

I'm also working on another related feature:

	alx@devuan:~/tmp$ cat cnt2.c=20
	void
	f(int a[3])
	{
		for (int i; i < _Countof(a); i++)
			a =3D 0;
	}
	alx@devuan:~/tmp$ /opt/local/gnu/gcc/countof/bin/gcc cnt2.c=20
	cnt2.c: In function =E2=80=98f=E2=80=99:
	cnt2.c:4:33: error: invalid application of =E2=80=98_Countof=E2=80=99 to t=
ype =E2=80=98int *=E2=80=99
	    4 |         for (int i; i < _Countof(a); i++)
	      |                                 ^

This code doesn't compile at the moment, but I want to make it work with
the obvious meaning soon.  Hopefully for GCC 17 (or maybe 18).

>  I hope the
> above is not implemented as requiring exact match lenghts.  Well.

Nope, of course that would mean the minimum array that you can pass to
the function.  The way to express exact number of elements of an array
is to use a pointer to an array.

> diff --git a/man/man3/mbrtowc.3 b/man/man3/mbrtowc.3

Would you mind sending a patch, with a commit message?
(git-format-patch(1))


Have a lovely night!
Alex

> index bdd26af64f..68c66efaaa 100644
> --- a/man/man3/mbrtowc.3
> +++ b/man/man3/mbrtowc.3
> @@ -161,10 +161,10 @@ if an invalid multibyte sequence was
>  encountered.
>  It returns
>  .I "(size_t)\ \-2"
> -if it couldn't parse a complete multibyte
> -character, meaning that
> +if the consumed
>  .I n
> -should be increased.
> +bytes form a valid partial character sequence;
> +more subsequent data needs to be fed in.
>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
>  .BR attributes (7).
>=20
> --steffen
> |
> |Der Kragenbaer,                The moon bear,
> |der holt sich munter           he cheerfully and one by one
> |einen nach dem anderen runter  wa.ks himself off
> |(By Robert Gernhardt)
>=20

--=20
<https://www.alejandro-colomar.es/>

--xhggpfue44s4bt4a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgtENoACgkQ64mZXMKQ
wqk08Q//RINTDbDVYf2z1UPGKh2bYYGXJsC6QMra0kJw8msA3fhP3b86sfDktz93
+vtaAdOW+PWndwkAQvFKj65i+AhfhVSzRBwsW0JQlqJCEedikJGyDI/2mxbLLZtN
7nMw/YmsRiKnXoQ+wZUkbcHgvqEBHrf3P9xlNGj0HHk/FvYHW1dql+F7ecruMEiX
qXSPv7fEkNwgaYu8AKjTBMKb8SCkB7ZsIwDDUYrDSOIvPYdEocFRm2Ov3TNFDg02
SkEeqMsJXWKt1WLzx4gG57u4GClH9kSNyjmgpmjm6sW8qmq0C0nBqrx+9CgDurOP
0i9/VnYO5wxwevLgLa/HGollp1yerVWiy/KuV0m8Yr13Fb9JKrStSjE37Y6VxXXo
odXLKLO9lgnd/iKOC1U4P0pdkaX9GTRK15U4OXUyRFNuO2YrXkTACWY9Yxed9icX
aBQSuv1oQEhyGhB0YIMoku8hn5yGSN0HI5ykTX/3LcBZ9QshTPLIeXgUtLJI7gVR
CoqWO7gAMFEjANK1d4/A3B4SRByR9U44nkIZkpICM/neMJu2c6aICqH6VS4agizW
su0eRchfyaPqk8pZmuM2RV3gGM2g83SZsLD58E0b7744LoU2UfZimjT+mHraXuGe
36ANZdUfcWF3rJPMM85j0+ROna6HMTykluW63Hn3v5NwxJZrNgo=
=t8ez
-----END PGP SIGNATURE-----

--xhggpfue44s4bt4a--

