Return-Path: <linux-man+bounces-45-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 027F17E8F89
	for <lists+linux-man@lfdr.de>; Sun, 12 Nov 2023 12:00:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E0A811C203DA
	for <lists+linux-man@lfdr.de>; Sun, 12 Nov 2023 10:59:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 665D079C6;
	Sun, 12 Nov 2023 10:59:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCwalkHb"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284C6748C
	for <linux-man@vger.kernel.org>; Sun, 12 Nov 2023 10:59:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88325C433C8;
	Sun, 12 Nov 2023 10:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699786795;
	bh=S5qKMMC1gTANytWQrQPaAZg6BTBbbfeEaXyd3YuJJn8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WCwalkHbO+h+HS7CbjfzIF8Qem8H0X6THQceZhBbHmn/iBUbvLJG8xriNnXys6fEl
	 LZw2S3AuVwP+BNEKRqzEVGj3jTun7Ag6u2EJzADFPHIHQt/71I7trbSz3L+DXPPsIS
	 gm4kJZYqUKyRifFVjM0e/kjKh4uBwqyNuo0evYokaKniUuaXP36wPJ5ZmQS7T/zWjL
	 UA0RZXKxhpWQVmAJ7dTqfv2x7r/cZBBAPDFEu38Q9/HgsfovodO0uXiObJvCEv2Pwg
	 PCR7T8bGks3LDO54m3PzrUwEi9vKMDv1/jrFTiHrgufLEGtpoFbz4CmUB9GHmTP206
	 DH8Vr3V/UKyQQ==
Date: Sun, 12 Nov 2023 11:59:46 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: Paul Eggert <eggert@cs.ucla.edu>,
	Matthew House <mattlloydhouse@gmail.com>,
	linux-man <linux-man@vger.kernel.org>,
	GNU C Library <libc-alpha@sourceware.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZVCwKBJyCsP8Aam9@debian>
References: <ZUzEw2j6gHF5WtsO@debian>
 <f10a21e1-570c-4166-b060-afb2de93aede@cs.ucla.edu>
 <ZU1v-JKBP9iWXOOT@debian>
 <eb353572-ae84-426f-85aa-0c4471ce8739@cs.ucla.edu>
 <ZU4OgiVSyM98EHVN@debian>
 <a64f4aa6-bca2-4dc0-8dc2-ac3de95b55ee@cs.ucla.edu>
 <ZU6KCkN1-dgszJJy@debian>
 <49daa0a7-291a-44f3-a2dd-cf5fb26c6df2@cs.ucla.edu>
 <ZU_ui2gbSBrTKXnX@debian>
 <f5ad0785-8f5f-4ed6-a043-c0e2c303c90e@jguk.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="46aRtxyBaZF9+qW4"
Content-Disposition: inline
In-Reply-To: <f5ad0785-8f5f-4ed6-a043-c0e2c303c90e@jguk.org>


--46aRtxyBaZF9+qW4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 12 Nov 2023 11:59:46 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: Paul Eggert <eggert@cs.ucla.edu>,
	Matthew House <mattlloydhouse@gmail.com>,
	linux-man <linux-man@vger.kernel.org>,
	GNU C Library <libc-alpha@sourceware.org>
Subject: Re: strncpy clarify result may not be null terminated

Hi Jonny,

On Sun, Nov 12, 2023 at 09:52:20AM +0000, Jonny Grant wrote:
[... some micro-benchmarks...]

>=20
> Maybe we're gonna need a bigger benchmark.

Not really.

>=20
> Probably there existing studies. Or could patch something like SQLite
> Benchmark to utilise each string function just for measurements.
> Hopefully it moves around at least 2GB of strings to give some
> meaningful comparison timings.

I wasn't so interested in the small differences between functions.
What this micro-benchmark showed clearly, without needing much more info
to be conclusive, is the first order of growth of each of the functions:

-  strlcpy(3)'s first order growth corresponds to strlen(src).  That's
   due to returning strlen(src), which proves to be a poor API.

-  strncpy(3)'s first order growth corresponds to sizeof(dst).  That's
   of course due to the zeroing.  If sizeof(dst) is kept very small, you
   could live with it.  When the size grows to more or less 4 KiB, this
   drag becomes meaningful.

-  strnlen(3)+*cpy() first order growth corresponds to
   strnlen(src, sizeof(dst)), which is the fastest order of growth
   you can get from a truncating string-copying function (except if you
   keep track of your slen manually and call directly memcpy(3)).

Of course, first order of growth ignores second order of growth and so
on, which for small inputs can be important.  That is, O(x^3) is bigger
than O(x^2), but x3 + x2 can be smaller than 5*x2 for small x.

>=20
> As Paul mentioned, strlcpy is a poor choice for processing strings.\
> Could rely on their guidance as they already measured.
> https://www.gnu.org/software/libc/manual/html_node/Truncating-Strings.html

Indeed.  I've added important notices in BUGS about it, and recommended
against.

>=20
> Maybe the strlcpy API is easier, safer for programmers; but the
> compiler can't figure out that the programmer already knew src string
> length.  So the strlcpy does a strlen() and wastes time reading over
> memory.  If the src length is known, can just memcpy.

I've written strtcpy(3) as an alternative to strlcpy(3) that doesn't
suffer its problems.  It should be even safer and easier to use, and its
first order of growth is better.  I'll send a patch for review in a
moment.

> When I've benchmarked things, reducing the memory accesses for read,
> write boosted performance, also looked at the cycles taken, of course
> cache and alignment all play a part too.

If one wants to micro-optimize for their use case, its none of my
business.  I provide a function that should be safe and relatively fast
for all use cases, which libc doesn't.

> Maybe could suggest in your man page programmers should keep track of
> the src size ? - to save the cost of the strlen().

No.  Optimizations are not my business.  Writing good APIs should make
these optimizations low value so that they aren't done, except for the
most performance-critical programs.

The problem comes when libc doesn't provide anything usable, and the
user has no guidance on where to start.  Then, programmers start being
clever, usually too clever.  That's why I think the man-pages should go
ahead and write wrapper functions such as strtcpy() and stpecpy()
aound libc functions; these wrappers should provide a fast and safe
starting point for most programs.

It's true that memcpy(3) is the fastest function one can use, but it
requires the programmer to be rather careful with the lengths of the
strings.  I don't think keeping track of all those little details is
what the common programmer should do.

>=20
> At least the strlen functions are optimized:
> glibc/strnlen.c calls memchr() searching for '\0' memchr searches 4 bytes=
 at a time.
> glibc/strlen.c searches 4 bytes at a time.
>=20
> glibc/strlcpy.c __strlcpy() is there a reason when truncating it overwrit=
es the last byte, twice?
>=20
> memcpy (dest, src, size);
> dest[size - 1] =3D '\0';

-1's in the source code make up for off-by-one bugs.  APIs should be
written so that common use doesn't involve manually writing -1 if
possible.

I acknowledge the performance benefits of this construction, and have
used it myself in NGINX code, but I also find it very dangerous, which
is why I recommend using a wrapper over it:

	char *
	ustr2stp(char *restrict dst, const char *restrict src, size_t len)
	{
		char  *p;

		p =3D mempcpy(dst, src, len);
		*p =3D '\0';

		return p;
	}

Cheers,
Alex

>=20
> Kind regards, Jonny

--=20
<https://www.alejandro-colomar.es/>

--46aRtxyBaZF9+qW4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVQsCIACgkQnowa+77/
2zJ/6w//dH2AsoOQQ6So88eyczIJokslShEVDexEm0v+gvqmAOKQTNUGZ+R0cRjG
YJIDosB8daIRGOxdd++gf/VhvV9K4iSZmuN6GlmfA70zsdAYURzKpPBxB6sWTvaa
FdBQcnB6qesz9yE+aoeDZKyqpRz9+KFoMgUC6NEC+nV85x2DIMIE2MooK+Mily5+
VKZDqU3ZZM6aFDkPWZA8ar2xLJa7bd9yJ0RDtfa6li/HHtxTj/sSOweQh2BOc5lS
5PA+pWNU2eSCKrGlAk3/312uu+ba582YlrNHMD4bh5v7qPIo4sPXA9+pkoACogOx
4dFC/SSLwcDjR6zARlZWBX488/c1eGsGJGPh6gCbjQE4X752UwAtdoKb7pTvXPeE
/c2G+JG3rTEExD0pHK+ZdSM77pmLuySq7Czx6XPJHIIJBJ/3j3HaF6mG0XGcPPzp
kz0pRHfcTVuLvAzruAImltJEovNXW6bnOv3h61XErnKx7n6LMV1DTciVb6LGxlQM
7J2ifjjh6JH0FvBZwSetrUIWzwgl+6iYDS9gvjF85e9/jbAaGyOP1krhxvpwNqH1
ShBU5vVdQCHBMXnKn84RoXZIqP6DRStAChsuSZ5WI23QV1fMeZ3oGvB+BeJJqmNJ
NO24WOQWXFAaNTIW3ZLtoqPd49lxcnOiyBL0ThQ8oMCPdiaDBIo=
=IXgP
-----END PGP SIGNATURE-----

--46aRtxyBaZF9+qW4--

