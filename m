Return-Path: <linux-man+bounces-2806-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E619A981C2
	for <lists+linux-man@lfdr.de>; Wed, 23 Apr 2025 09:54:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 922195A13BF
	for <lists+linux-man@lfdr.de>; Wed, 23 Apr 2025 07:53:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C91D31E3793;
	Wed, 23 Apr 2025 07:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mDvu7R9a"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86E4142A96
	for <linux-man@vger.kernel.org>; Wed, 23 Apr 2025 07:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745394737; cv=none; b=R2offqeobmOD+QrUUWkZcds+BbYy9vE1lXJQyfseMpq99/kZdABf+4+2VmrX2TRV6W1N+OGN2kUswkgVGHiwn/ugY8BfV25B9e+iVzR0IZsWL7ox+fyjqkggBBd1W1ckICg7Lnqij9gRhSXOeWWMsWH0gFeABvlLZst2EesIY8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745394737; c=relaxed/simple;
	bh=xE0HvJ3amOFFAMmzuFridzf0rSTA7d4zWmJ25VUfBME=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NzXO4c1U0zkpBm7K3MTO1T42nEvvZLTpzMdtYIGQGIrwtcMdThg//q0RbV+m1rk/AT0uYNLkJMIs6nW9+D068Xqpl2QCioA5S29fmy0IuZH7LVq6tD4TCgwvCFLKWln3/OlYRQh/xgWY23j/OfhWWr7NZs1EiN7WXcahbG1Nc9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mDvu7R9a; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2E89C4CEE2;
	Wed, 23 Apr 2025 07:52:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745394737;
	bh=xE0HvJ3amOFFAMmzuFridzf0rSTA7d4zWmJ25VUfBME=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mDvu7R9aAEe6+vF2JV/Z0KoaIQRG7KXXyW3ZzvxB6mWSoyCoOD3l7E+eiZy1GvnPG
	 mYlzhR/a3Sn6KbL1cKfeO1RGTtCXEphA+XHE/ZuaCgmO6aeOC5HJsHxnjhhLUMaPz9
	 xv3gjBtWyMnVkrFP1vo3WXXx0MUslyoQuk7qu1HTfzRkke9qWR6ioLlpiajnBKWEqe
	 aa/dDtI3hnSnZ+ecZcySrxt25X/dIdRt4TcQCcyo0mUyPO7VPChjA0yPuHMwBcBYKO
	 9ohlkiMkdCaMp9S0hShNAfAlechIi4kN6Jww1r3eV5xPlpb0gH493TCL8wI6PDG/gF
	 o/+fIBnqDQHuQ==
Date: Wed, 23 Apr 2025 09:52:12 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Edwin =?utf-8?B?VMO2csO2aw==?= <edwin@etorok.net>
Cc: linux-man@vger.kernel.org
Subject: Re: puts sets errno, but manpage doesn't mention it
Message-ID: <kpizrwzi66gqhnbd45edrecayeniarbj72xpvnqk5jgeh2dhbp@4jrk3jzh6wvh>
References: <666f7e00a28f4dec59f02cdd4c9d63d493215674.camel@etorok.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mupq4kfibdb6vjwh"
Content-Disposition: inline
In-Reply-To: <666f7e00a28f4dec59f02cdd4c9d63d493215674.camel@etorok.net>


--mupq4kfibdb6vjwh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Edwin =?utf-8?B?VMO2csO2aw==?= <edwin@etorok.net>
Cc: linux-man@vger.kernel.org
Subject: Re: puts sets errno, but manpage doesn't mention it
References: <666f7e00a28f4dec59f02cdd4c9d63d493215674.camel@etorok.net>
MIME-Version: 1.0
In-Reply-To: <666f7e00a28f4dec59f02cdd4c9d63d493215674.camel@etorok.net>

[BCC +=3D Jens]

Hi Edwin,

On Wed, Apr 23, 2025 at 12:02:18AM +0100, Edwin T=C3=B6r=C3=B6k wrote:
> Hello,
>=20
> The manpage for puts [1] doesn't mention errno.
>=20
> Therefore for a long time I've avoided looking at errno when any of the
> stdio functions fail (errno could've been leftover from a previous
> call, or some internal, potentially unrelated and handled error).
>=20
> What the manpage says is accurate when looking at the C23 standard [2],
> however on POSIX systems one can do better!

Hmm, I didn't know that.

> Both POSIX 2008 [3] and POSIX 2024 [4] say that 'puts' sets 'errno',
> and that this is an extension to the C standard.=20

And POSIX.1-2001 too, as I checked now.

> The FreeBSD manpage says this too [5], although it doesn't mention that
> this is an extension.

The ISO C standard usually doesn't say anything about errno, except for
a few cases, so anything about errno is quite likely an extension to
ISO C, with a few exceptions.  We can also omit the fact that it's an
extension.

> It would be useful if the Linux manpages got updated with information
> about which stdio functions set errno, and that setting errno is a
> POSIX extension (I'm hoping that POSIX is consistent and all stdio
> functions would set errno, but I haven't checked in detail).

Agree.

> Should I send a patch that attempts to update the manpages,

Sure, please do!

> or do we=20
> need to check with the libc mailing list whether this is in fact
> guaranteed? (e.g. if they've implemented it according to the Linux
> manpage, instead of the POSIX standard, then errno may not be set in
> all cases that it should...)

I'm pretty sure they would have read the POSIX standard while
implementing them, but it doesn't hurt to
CC <libc-alpha@sourceware.org> in your patch(es).

> I've also tested whether this is true in practice, and the following
> program prints a 'Broken pipe' message on 3 libc implementations on
> Fedora 42: GNU libc 2.41, musl-libc 1.2.5, dietlibc 0.34, when run as
> './x | dd count=3D5 of=3D/dev/null'
>=20
> #include <stdio.h>
> #include <stdlib.h>
> #include <signal.h>
>=20
> int main(void)
> {
>   signal(SIGPIPE, SIG_IGN);
>   while(puts("foo") !=3D EOF);
>   perror("puts");
>   return EXIT_FAILURE;
> }
>=20
> Or perhaps even simpler, this prints 'No such file or directory':
>=20
> #include <stdio.h>
> #include <stdlib.h>
> int main(void)
> {
>   FILE *f =3D fopen("/nonexistent", "r");
>   if (!f) {
>     perror("fopen");
>     return EXIT_FAILURE;
>   }
>   fclose(f);
>   return EXIT_SUCCESS;
> }
>=20
> P.S. I discovered the possibility that puts may set errno while reading
> (the excellent!) book=C2=A0"Modern C"
> https://gustedt.gitlabpages.inria.fr/modern-c/

Nice!

>=20
> [1]: https://www.man7.org/linux/man-pages/man3/puts.3.html
> [2]:=C2=A0https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3220.pdf from
> https://www.c-language.org/
> [3]:
> =C2=A0https://pubs.opengroup.org/onlinepubs/9699919799/functions/puts.html
> [4]:
> https://pubs.opengroup.org/onlinepubs/9799919799/functions/puts.html
> [5]: https://man.freebsd.org/cgi/man.cgi?fputs
>=20
>=20
> Best regards,
> --Edwin

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--mupq4kfibdb6vjwh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgInCYACgkQ64mZXMKQ
wqlArA//Q5rytb5zFgiNB2uZkLI3YqqPxEWQXWRd4f4UJspw132wJP01yHOxIO5x
DapwUm1KmNK1xzts3hM6cbYxElxHckKMQ40h4mY+gdZaJ9OyU2kms/ejM7FHoPaU
U7jGW8xAKIzNZLyz1MX0VPIElq4LRIH4E0ZPxnLN3slUWJUVw11zg7/d7ZUoNopA
9KALPx/HutLX8PoPFKqeTFzH85ePBl8BzG7catQFfAlNiX1XVGQrueOxsj8W+xvo
XDrrGYJx8Id6sPO5VoGDIziij7nMxYHqSRRXOZhtqDmuH5SX+WPfO0bUv/mvbnj/
Whws0vxd4qKRKhxgM2BSfCnJV2MgzxrMb1BM8y9oD9hX1H+F56Ag1OzOLdq5DxyH
efg6OCqbm6Afu2FZkzKN1F8KoAYTWL/2va9JhIHZz/aUghYO3N1TKXD7sHmzcCy6
bW9jGISxQe2D/a6Z87+557e95/nYHh4QpuWCtFJip9yl7NxBo3CO/Voc7Go6V6mE
odQ8OYnK3v8Jf1XQk61TcLQ1SIf+koKi6AT8VyGbSSkO18jLZxloToJk8lbZLvuL
Y9mKjNHGR5e6qDacjRriW/49zV1RUzpVWd0mFP2mv2nBaAAWAO90ufAi+TBZowW0
oO4ms/J5qmOX35o7V9KPMtYhUMIOXK0ZWp1n9itQmYG3n37uF0U=
=RrYZ
-----END PGP SIGNATURE-----

--mupq4kfibdb6vjwh--

