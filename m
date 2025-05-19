Return-Path: <linux-man+bounces-2986-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D1590ABCB98
	for <lists+linux-man@lfdr.de>; Tue, 20 May 2025 01:36:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 665C74A1230
	for <lists+linux-man@lfdr.de>; Mon, 19 May 2025 23:36:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5BBB2144CF;
	Mon, 19 May 2025 23:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AIWIqSo1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 934901FF7B3
	for <linux-man@vger.kernel.org>; Mon, 19 May 2025 23:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747697772; cv=none; b=Kb6SR4Y8M22mqHidq6U2yD2BGmg55kh0hJdimrlHcoFjYCpj5WZz0tqQHnt0+MX6Bn4A8duVNEqRTaOYJnrrOgLsr/VmYpqLBcp4x+m8bGh1s2W5ABEiV/y89AzFtbmm9tFGHpROKyL+T/0xzO7rnmOFI5WHtn7dtKuM8WjnkoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747697772; c=relaxed/simple;
	bh=6xDH3BQt9rSxmjIVlTn8FcTjaR630UguqzY/FZ9gyEk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mjiyNVRDSfE5karznc8WN9o1lOi9ner1TKhGmiOZpeYtU8FGPgnaocLTH5H/9piJ25ju7XNwYbslxUjLY9IX0ptd4Ws1ffkKqb4sna1EE8fFwZuJ4DeaMEI2vh4PwCT95pcXgEZh2pdic0cZGoY0IaJzZaTfzp+xcsQVKobD3S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AIWIqSo1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4FC7EC4CEE4;
	Mon, 19 May 2025 23:36:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747697772;
	bh=6xDH3BQt9rSxmjIVlTn8FcTjaR630UguqzY/FZ9gyEk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AIWIqSo14ffGsy1K3+fX1r9VgKwb4mcljOAbs2AmZ4zAg5CpRr/ZYbme1FPDErzGT
	 ujw5ygbo+u6mAQiJPIsAd+HlV6O4aX8vJ4B/+4W0sN7kfFuQ6Mw2SFnD4eiglUnfX3
	 FRL3qc5e2P2VmUMqC5+izxzEXxjh5FIkx7CPgqbiB4IGiQ31m/vaaasWmkq7pMDPgN
	 k0JhpiKsOB5L3CTdp117uTFNyESMR9Px72I7nFYpKYxRd2DjJtsFduU7rJH+g2J3b1
	 ywrhaCerVqfEPjR5lGsXGcQYTOU1COkcIqOtYkv/ZJrpzBlc2nZf2BWx9l2NGhn9Kt
	 RN3KC1o6pbeZA==
Date: Tue, 20 May 2025 01:36:08 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Steffen Nurpmeso <steffen@sdaoden.eu>
Cc: Christopher Bazley <chris.bazley.wg14@gmail.com>, 
	Martin Uecker <uecker@tugraz.at>
Subject: Re: man-pages: mbrtowc: misleading
Message-ID: <o4cono3dihpf42xr2je6qxjkc4tgp52sgo2ckcrthm3466s73g@2eqwyp3qlskl>
References: <20250518013401.seThfADR@steffen%sdaoden.eu>
 <atdny7g2j5caim4oz2qgcqfpt43y5th2vuoyyy2qlqgdpivxez@y2bjsgm3jttt>
 <20250519135221.5a48Joxu@steffen%sdaoden.eu>
 <gxghgfhmtz2w6sen7c3gl5or624wkrb5gluafjt77otrpzxh2u@tkqkqs6fjizd>
 <20250519222653.8aL97Par@steffen%sdaoden.eu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fkzonxje7b4eucr5"
Content-Disposition: inline
In-Reply-To: <20250519222653.8aL97Par@steffen%sdaoden.eu>


--fkzonxje7b4eucr5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Steffen Nurpmeso <steffen@sdaoden.eu>
Cc: Christopher Bazley <chris.bazley.wg14@gmail.com>, 
	Martin Uecker <uecker@tugraz.at>
Subject: Re: man-pages: mbrtowc: misleading
References: <20250518013401.seThfADR@steffen%sdaoden.eu>
 <atdny7g2j5caim4oz2qgcqfpt43y5th2vuoyyy2qlqgdpivxez@y2bjsgm3jttt>
 <20250519135221.5a48Joxu@steffen%sdaoden.eu>
 <gxghgfhmtz2w6sen7c3gl5or624wkrb5gluafjt77otrpzxh2u@tkqkqs6fjizd>
 <20250519222653.8aL97Par@steffen%sdaoden.eu>
MIME-Version: 1.0
In-Reply-To: <20250519222653.8aL97Par@steffen%sdaoden.eu>

Hi Steffen,

On Tue, May 20, 2025 at 12:26:53AM +0200, Steffen Nurpmeso wrote:
> Alejandro, all,
>=20
> Alejandro Colomar wrote in
>  <gxghgfhmtz2w6sen7c3gl5or624wkrb5gluafjt77otrpzxh2u@tkqkqs6fjizd>:
>  |On Mon, May 19, 2025 at 03:52:21PM +0200, Steffen Nurpmeso wrote:
>  |> Alejandro Colomar wrote in
>  |>  <atdny7g2j5caim4oz2qgcqfpt43y5th2vuoyyy2qlqgdpivxez@y2bjsgm3jttt>:
>  |>|On Sun, May 18, 2025 at 03:34:01AM +0200, Steffen Nurpmeso wrote:
>  |>|> "man 3p mbrtowc" is great, but "man 3 mbrtowc" says for the -2
>  |>|> return that "meaning that n should be increased".  However, "n"
>  |>|> bytes were consumed; more data is needed, that is true.
>  |>|
>  |>|Thanks!  Would you mind sending a patch?
>  |>=20
>  |> Hm well.  By the way, i sometimes admire the Linux-specific
>  |> manual pages,
>  |
>  |:-)
>  |
>  |> but at times i wonder why they exist at all, if the
>  |> POSIX one is comprehensive and no Linux-specific note is to be
>  |> added?
>  |
>  |There's a list of reasons:
>  |
>  |-  POSIX manual pages are not maintained (I can tell; I'm supposed to be
>  |   the maintainer).  The last commit was from 2021-02-14.
>  |
>  |   I would love to maintain them, but I refuse to maintain them if the
>  |   Austin Group keeps making it so uncomfortable for me to do so.
>  |
>  |-  They are in the non-free repository component in Debian (and in
>  |   similar ones for other distros).
>=20
> Oh!  That more or less escaped me, here it is bundled in
> core/man-pages:
>=20
>   source=3D(https://www.kernel.org/pub/linux/docs/$name/$name-$version.ta=
r.xz
>     https://www.kernel.org/pub/linux/docs/$name/$name-posix/$name-posix-2=
017-a.tar.xz)

Yeah, the upstream releases are published in the same directory
<https://kernel.org/pub/linux/docs/man-pages/>.  (Well, under a subdir.)

But the tarballs are separate, and the git repositories are also
separate.

Debian publishes them as separate packages:

<https://packages.debian.org/bookworm/manpages-posix-dev>
<https://packages.debian.org/bookworm/manpages-posix>

Which are in non-free, because their sources are not FOSS.

>  |-  There are no POSIX.1-2024 manual pages at all.  And there won't be,
>  |   if I have to create them.
>  |
>  |   I have already written patches for updating the whole man2 of the
>  |   Linux man-pages project for POSIX.1-2024, and am working on man3 at
>  |   the moment.  So, the Linux manual pages will be more up-to-date.
>  |
>  |>  I mean, for example, clock_settime 2/3p is such an example
>  |> for where the Linux page is of significant value, but for that ISO
>  |> C thing mbrtowc ... hm.  I mean i would simply copy over the
>  |> RETURN VALUE block from the POSIX page?
>  |
>  |For copyright reasons, you probably can't.
>=20
> I see; then again there are only so-and-so many possibilities to
> describe what happens.  That is free and pretty well written.
>=20
>   https://man.openbsd.org/mbrtowc

Yep, you can base on OpenBSD docs.  :)

>  |> I will have to look around where i can find sources, 'will look
>  |> today or tomorrow, ok?
>  |
>  |Sure, take your time.  Thanks!  :)
>=20
> Got it.  Actually i see more problems on the page, for example the
> prototype is broken and shows a false leading "n" argument etc.

That's actually done on purpose.  It's not a leading argument.  It's a
forward declaration of a parameter, using GNU C.

<https://gcc.gnu.org/onlinedocs/gcc/Variable-Length.html#Arrays-of-Variable=
-Length>

This extension has been proposed for standardization, and I hope this
will be standardized soon.  I don't remember what was the outcome of the
last C committee meeting.  (I remember Apple complained because they
wanted something else, but there seemed to be consensus in not wanting
their approach.  What I don't remember is what happened to n3433.  It
wasn't merged, but I don't remember why.)

<https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3433.pdf>

> It describes return values in the running text more than in the
> return value section.

Agree.  That happens in many pages, and I'm not happy about it.

>  It documents that the shift state is reset
> for when reading NUL, which i have never read before, anywhere.
> Is that really true, always?  Or is that how the GNU C library
> does things?  What if more data is fed in in a stateful encoding?

I have no idea.  I've never used this API myself.

> Complicated stuff.  Eviva Espania!

:-)

> Ciao Alejandro,
>
> diff --git a/man/man3/mbrtowc.3 b/man/man3/mbrtowc.3
> index bdd26af64f..5c67eba058 100644
> --- a/man/man3/mbrtowc.3
> +++ b/man/man3/mbrtowc.3
> @@ -13,8 +13,7 @@ Standard C library
>  .nf
>  .B #include <wchar.h>
>  .P
> -.BI "size_t mbrtowc(size_t " n ;
> -.BI "               wchar_t *restrict " pwc ", const char " s "[restrict=
 " n ],
> +.BI "size_t mbrtowc(wchar_t *restrict " pwc ", const char " s "[restrict=
 " n ],
>  .BI "               size_t " n ", mbstate_t *restrict " ps );

You can't use 'n' before declaration.

	alx@devuan:~$ cat << __EOF__ | gcc -S -x c /dev/stdin
	#include <wchar.h>
	#include <stddef.h>
	     size_t mbrtowc(size_t n;
			    wchar_t *restrict pwc, const char s[restrict n],
			    size_t n, mbstate_t *restrict ps);
	__EOF__
	alx@devuan:~$ cat << __EOF__ | gcc -S -x c /dev/stdin
	#include <wchar.h>
	#include <stddef.h>
	     size_t mbrtowc(=20
			    wchar_t *restrict pwc, const char s[restrict n],
			    size_t n, mbstate_t *restrict ps);
	__EOF__
	/dev/stdin:4:66: error: =E2=80=98n=E2=80=99 undeclared here (not in a func=
tion)

>  .fi
>  .SH DESCRIPTION
> @@ -161,10 +160,10 @@ if an invalid multibyte sequence was
>  encountered.
>  It returns
>  .I "(size_t)\ \-2"
> -if it couldn't parse a complete multibyte
> -character, meaning that
> +if the consumed
>  .I n
> -should be increased.
> +bytes form a valid partial character sequence:

I think ';' is more appropriate than ':'.  What do you think?


Have a lovely night!
Alex

> +more subsequent data has to be fed in.
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

--fkzonxje7b4eucr5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgrwGIACgkQ64mZXMKQ
wqkHEA/+NqnK0pYfw+PUQbxAx4gStcXwToxXBgMy1UT66XdI0t1ko2lBf9ILYsBe
fsMMKVKMMIsGazGoMmcJqZgZSLKrzloHX19S0jDSEXl9ACBpOhsAS7Zl/aiFX7df
S1f7zvZYo4+mZQgHTZv2agjFwqFWjaikWjrz0TnqyNiTJZMbBXTmX1T0wHeYX+ua
hh1/kQzJh/leMv375IJ6FaZmdBr0u7oKwy2IezuNfMA8MdYvbIwCR8F1r96FBJGU
/EhI9naMVIe6fdR/xxXdnvzjpPp8J0wX7RrNaGbNn0SyKoIfuCuOy+WFBIFVDOCu
srwAGAjzullGX46BaiYNDsWqVLv1nloCkgjJDKOZwju1wlHwNjXJNcDnYIKPLYGt
k+hKiJJ04mzI56mJ2pxIDQ1+SXmL4TOkFhRBu1Fw3B8N9CjqW3IG9qhekV4wEtlO
mOL8Ix83UFPA2VYt5wVFneBZvr3x2uVqJ/55wM3KlwzFZR83f4hScfliRUnmhDx6
JtGkIa0vZlgzeCeNsAMA+2b+8zhmWKaNemYEZaToCFJM9+4wZy/ElKv+/919uIwQ
XAVg/jIdjCLM4o4WZnJB1i5QjGQ7QtiA/SP1rFXelbUPXPucJ6ELcM3//9W3yEK0
szHhmIOANfKffXkPhaC8N1tFBGzSzIrjM71mo0JoUHDftB3y6vg=
=E/0i
-----END PGP SIGNATURE-----

--fkzonxje7b4eucr5--

