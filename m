Return-Path: <linux-man+bounces-3088-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D33ACC599
	for <lists+linux-man@lfdr.de>; Tue,  3 Jun 2025 13:40:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D408D3A3BAC
	for <lists+linux-man@lfdr.de>; Tue,  3 Jun 2025 11:40:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 216ED22DA1F;
	Tue,  3 Jun 2025 11:40:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ADjIRIJ7"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F5A22D9F3
	for <linux-man@vger.kernel.org>; Tue,  3 Jun 2025 11:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748950831; cv=none; b=POBL1NzBXpRFCiIr+MI8PQOEJC8xDSjWngeMGvtdp9OVODzSJRfKKuMa+J2yCP6xBj2QPVDgn/dEL+CP4yYQhLH1m308jNGgugxMuxU4l5Kqw+ugVhEAUiCX1r4bMOhyDPz4zggmKlkW0Mpx03cZLiSqFfwfUJ68mnPBRwPVpoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748950831; c=relaxed/simple;
	bh=QccQkOtYjwBfUxpck/AU33DyuKKpFfJ+uyMrkwdEhlI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hxO/n2cV9d9hdZJ2z02ArqcQK0Gy4W5LpC561Xpt5Rj2yEZbrp2XX/REHaNRvTFCLn69hwtM1n9TLizHM78MT07POISZ+oM6+b99wEkGKJX+405waX8dSvO41v9jNKYf4+hdf4Jg4WHRTvP2d3zWEUM8psXIfXiTt3laJx+0sQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ADjIRIJ7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84535C4CEF5;
	Tue,  3 Jun 2025 11:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748950831;
	bh=QccQkOtYjwBfUxpck/AU33DyuKKpFfJ+uyMrkwdEhlI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ADjIRIJ7AP0IdD4hnYbya0CerMmpH4KiHMenYIzHIIsmAF4M5JgxdaDwte5iyZau6
	 KsCP0kuOvBI29ZCWZwffhJpo/IaYEiyCeyPeze4qccw3lz7VDJTKXg+1FeoZZc0Jvb
	 wukLTl7wjdTELfmT+WBxd/0RE8+rddhvaAQQpcj9Qx/F8vbDP0XR5JoFBkZJ2L4piP
	 hrYmcZ6YjZHAwEtjPUouqfFafkTh2/iHI2/FdPpp0iHRd9Rmfa8PZ5baXUIk+82twg
	 Bg4o5Zz4TqxVtPPnTsAxnzOgjXcjIVLwH7da3/pgiVp0Mk7db8+8iIfzleLgsaJMTF
	 JH7dnLs28GmDA==
Date: Tue, 3 Jun 2025 13:40:27 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Mark Naughton <mnaughto@redhat.com>
Cc: linux-man@vger.kernel.org, Joseph Myers <josmyers@redhat.com>
Subject: Re: Forward Deceleration Changes
Message-ID: <7zkvtkaafxycu2si3r4jl6qaynzfkedvphhh26rfjibq3kbxc7@56katuftwykv>
References: <CACdZg2UAkDE2KZ=0tCN+pV+-mjupeY=qdGALYPshS3Q0BrHnzw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qcr6vbyjj2x27j5k"
Content-Disposition: inline
In-Reply-To: <CACdZg2UAkDE2KZ=0tCN+pV+-mjupeY=qdGALYPshS3Q0BrHnzw@mail.gmail.com>


--qcr6vbyjj2x27j5k
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mark Naughton <mnaughto@redhat.com>
Cc: linux-man@vger.kernel.org, Joseph Myers <josmyers@redhat.com>
Subject: Re: Forward Deceleration Changes
References: <CACdZg2UAkDE2KZ=0tCN+pV+-mjupeY=qdGALYPshS3Q0BrHnzw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACdZg2UAkDE2KZ=0tCN+pV+-mjupeY=qdGALYPshS3Q0BrHnzw@mail.gmail.com>

Hi Mark,

On Tue, Jun 03, 2025 at 12:04:05PM +0100, Mark Naughton wrote:
> I noticed that recent man pages have started to include forward
> declarations in function arguments with sizes.

Yes.  That happened mainly in

	commit d2c2db8830f8fcbb736bdea52b398257447bef6b
	Author:     Alejandro Colomar <alx@kernel.org>
	AuthorDate: Fri Mar 14 18:33:41 2025 +0100
	Commit:     Alejandro Colomar <alx@kernel.org>
	CommitDate: Fri Mar 14 18:55:19 2025 +0100

	    man/: SYNOPSIS: Use GNU forward-declarations of parameters for sizes o=
f array parameters
	   =20
	    This syntax has been proposed for standardization in N3433.
	   =20
	    Link: <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3433.pdf>
	    Cc: Christopher Bazley <chris.bazley.wg14@gmail.com>
	    Cc: Martin Uecker <uecker@tugraz.at>
	    Cc: Joseph Myers <josmyers@redhat.com>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

Prior to that, there was

	commit 1eed67e75deff662dffce3195e55e608809eaafd
	Author:     Alejandro Colomar <alx.manpages@gmail.com>
	AuthorDate: Fri Aug 26 22:48:26 2022 +0200
	Commit:     Alejandro Colomar <alx@kernel.org>
	CommitDate: Thu Nov 10 00:44:59 2022 +0100

	    Various pages: SYNOPSIS: Use VLA syntax in function parameters
	   =20
	    The WG14 charter for C23 added one principle to the ones in
	    previous standards:
	   =20
	    [
	    15.  Application Programming Interfaces (APIs) should be
	    self-documenting when possible.  In particular, the order of
	    parameters in function declarations should be arranged such that
	    the size of an array appears before the array.  The purpose is to
	    allow Variable-Length Array (VLA) notation to be used. This not
	    only makes the code's purpose clearer to human readers, but also
	    makes static analysis easier.  Any new APIs added to the Standard
	    should take this into consideration.
	    ]
	   =20
	    ISO C doesn't allow using VLA syntax when the parameter used for
	    the size of the array is declared _after_ the parameter that is a
	    VLa.  That's a minor issue that could be easily changed in the
	    language without backwards-compatibility issues, and in fact it
	    seems to have been proposed, and not yet discarded, even if it's
	    not going to change in C23.
	   =20
	    Since the manual pages SYNOPSIS are not bounded by strict C legal
	    syntax, but we already use some "tricks" to try to convey the most
	    information to the reader even if it might not be the most legal
	    syntax, we can also make a small compromise in this case, using
	    illegal syntax (at least not yet legalized) to add important
	    information to the function prototypes.
	   =20
	    If we're lucky, compiler authors, and maybe even WG14 members, may
	    be satisfied by the syntax used in these manual pages, and may
	    decide to implement this feature to the language.
	   =20
	    It seems to me a sound syntax that isn't ambiguous, even if it
	    deviates from the common pattern in C that declarations _always_
	    come before use.  But it's a reasonable tradeoff.
	   =20
	    This change will make the contract between the programmer and the
	    implementation clearer just by reading a prototype.  For example,
	   =20
	      size_t strlcpy(char *restrict dst, const char *restrict src,
			     size_t size);
	   =20
		vs
	   =20
	      size_t strlcpy(char dst[restrict .size], const char *restrict src,
			     size_t size);
	   =20
	    the second prototype above makes it clear that the 'dst' buffer
	    will be safe from overflow, but the 'src' one clearly needs to be
	    NUL-terminated, or it might cause UB, since nothing tells the
	    function how long it is.
	   =20
	    Link: <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n2611.htm>
	    Cc: Ingo Schwarze <schwarze@openbsd.org>
	    Cc: JeanHeyd Meneide <wg14@soasis.org>
	    Cc: Martin Uecker <uecker@tugraz.at>
	    Cc: <gcc@gcc.gnu.org>
	    Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

> These are a C2Y
> proposal.

And an old GNU extension:
<https://gcc.gnu.org/onlinedocs/gcc/Variable-Length.html#Arrays-of-Variable=
-Length>

> I was wondering what the justification for the change is?

For the initial change to use [.identifier] notation, the rationale is
documentation.  Otherwise, it's unclear which parameters are numbers of
elements for which pointers.  In some pages it's obvious; in others,
it's not so obvious.

Joseph Myers had concerns with that notation, since it was neither
standard nor an existing vendor extension.  We (Joseph, Martin, and I)
had long discussions about adding support for it in GCC, but ended up
agreeing that GNU's existing syntax is better.

> Shouldn't the man pages stick to standard declarations to avoid
> confusion?

I don't think so, and this has never been the case.  You can for example
have a look at the open(2) manual page in man-pages-5.13, when
Michael Kerrisk was the maintainer of the project.

alx@devuan:~/src/linux/man-pages/man-pages/master$ git status
HEAD detached at man-pages-5.13
nothing to commit, working tree clean
alx@devuan:~/src/linux/man-pages/man-pages/master$ man ./man2/open.2 | grep=
 'int open('
     int open(const char *pathname, int flags);
     int open(const char *pathname, int flags, mode_t mode);

That wasn't standard syntax.  It's not valid to redeclare a function
with a different prototype.  It was useful, though, to show the only two
valid ways that one can call this function.  I've improved it to reduce
confusion, by using standards-conforming syntax:

$ man 2 open | grep -A1 'int open('
     int open(const char *path, int flags, ...
                /* mode_t mode */ );

In this case, I decided that standard syntax is better, because it
documents that the function is variadic, which warns the programmer that
it should be extra careful when using it, as there's less type safety
than with usual functions.

In the case of array parameters, I think documenting the parameters as
arrays and their number of elements has more weight than using standard
syntax.

> e.g fread() and fwrite()
>=20
> https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/man/ma=
n3/fread.3?id=3Dd2c2db8830f8fcbb736bdea52b398257447bef6b

Let's hope people will catch up with this feature soonish.  Many have
reported good feedback about it; I think more than those that have
reported confusion.

>=20
> Thanks,
> Mark Naughton

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--qcr6vbyjj2x27j5k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmg+3yYACgkQ64mZXMKQ
wqkBoBAAifWkPYYtx5Z7dQMMrt6fJL1kSlUQPOSNlg9ng2RuxbSyzTGJQL73ZB6h
o9aXY0xSHdfsnBDbOZD5c5qRdSKVEI0AG/FZS9uOJz3IYkrioHYYgV4BIGINsbcT
Ii19m1b8Mi0fpCCA1nM0DFI79Eg9lKw54PRsiQXeHZGXAcsZCvhfRalwjxXtphL9
rdJldUFco6WktORntLOl9xDo2yusjix4fEtdkCTh1tS8hBCl90M8hJoIjlgFYWSz
8Ae1C6QGS6dKn25ZBywXEkw3kKU0ylBOnVIlzCs8sCdiTr8i7y1Gxj4fvp8wlCEk
NoPhseBcKb4GaRsizf9mdsrEicwdxJ5AL+BMdXhlG0cXM49w3j7sjo2KlCMBVkBV
VqEsHkJjOvLzqeaSLgUbD9fEj36bU+AyzcibyoyFLqvMPKx9iIpeC2XoIB9GMOBL
doqi5CfegZNM+Z2dJNi+cFKPxHioBbGWZSzLbi/UntujyJs7F67GuoX13LKQ2x+J
m/et3LRsoTlr7JdZ+58S0h+afqbfpQyJwImFnUsJlPI4E3nj3SouvfjObwvYsnSJ
mZCuVuvp3tiG9yP69uYk40zy8v4LoJm8+ZzQZm7ljDDrbagl1ERbeqdbZ+AHCU9L
1+e2FbbzwgOqycShsfrwry4Flv+MsbrqE6wwG9dbl7/JHGQL63o=
=vCqW
-----END PGP SIGNATURE-----

--qcr6vbyjj2x27j5k--

