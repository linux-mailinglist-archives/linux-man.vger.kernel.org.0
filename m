Return-Path: <linux-man+bounces-2468-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B14A38737
	for <lists+linux-man@lfdr.de>; Mon, 17 Feb 2025 16:07:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0430C164887
	for <lists+linux-man@lfdr.de>; Mon, 17 Feb 2025 15:07:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F347153BE4;
	Mon, 17 Feb 2025 15:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBilZGrz"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2F5B20328
	for <linux-man@vger.kernel.org>; Mon, 17 Feb 2025 15:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739804843; cv=none; b=RJsCIFuLttJtdBEf0ohLNRjkfxecdhws/KdWlhBYiCDD5yllEj+hVPPNvkeybfvXlRrC5KqyCEqypyId3jI6YubgrS7qiz1PmAe5x7N11SkxzkoMOf/C/5shIJDNGmYKql4GvY+VKihSeJSJsVPXFkqeqEkk3dyFLtIdWjE/FJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739804843; c=relaxed/simple;
	bh=jyO+j9eKTY6hSRIgw5J46sLOrmvygbR/e5f6Sjaw/ww=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Vd4BFPs77XIo83pCVoe7EEg8hXTBXjFXlLMp5tevQn0eIGn7fUumROUcay0zu/hjjlV7YjSKj4PACBdzfor8yCRBf+DDeJs8PxCx6keiBi9/+273hwRJK/QJrX95zMzu7zv9wvXeBCZOWiAHcWECEhWbDQ11ZDbSAYKvbMCtA/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBilZGrz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE68CC4CED1;
	Mon, 17 Feb 2025 15:07:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739804842;
	bh=jyO+j9eKTY6hSRIgw5J46sLOrmvygbR/e5f6Sjaw/ww=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GBilZGrz2n7L7gv9ZGj8XvHX6mOR4a7fAsDMlgIFdp4goh2IEDZfFyH0RVS77Lka+
	 74DbZG6u4HV0A4TMnEJShoB/0CKDdMsWJSjM5EDUceNki/pFiwIViqTP2bLZfgje5W
	 dfEEloSmzVZwYsV/kg7NoY+jh5EdZPDrNOWfJzs35URthXMfeuE/7zSJ4UsjFTuuOl
	 NtRC5MUL0Boe7t50S1pUARC4RvHiqCVegSIppWD24ensZXrM3haS+f6hJRKb2gIDpb
	 ziPtqtPJXKlXAZyEtflw3/EGuTZHIMk6PJwH0qNiMznrB9P1ftXemRJUxb223hhzEh
	 4zz9gCvhpRo3Q==
Date: Mon, 17 Feb 2025 16:08:02 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Rich Felker <dalias@libc.org>
Cc: libc-help@sourceware.org, linux-man@vger.kernel.org, 
	Karlson2k <k2k@narod.ru>, Tobias Stoeckmann <tobias@stoeckmann.org>, 
	Serge Hallyn <serge@hallyn.com>, Iker Pedrosa <ipedrosa@redhat.com>, musl@lists.openwall.com
Subject: Re: [musl] Re: [shadow-maint/shadow] Add cheap defense mechanisms
 (PR #1171)
Message-ID: <bdle6p2ohjckvb7wwwquj27wen65zzzz73eqahbuntfdf7xquu@5yaobuvf6yos>
References: <shadow-maint/shadow/pull/1171@github.com>
 <shadow-maint/shadow/pull/1171/c2661802270@github.com>
 <p6zqecnj4czocoksbicabvp3ec4sgicejct6nhuq4mccisemig@2i3dhnffkav5>
 <20250217143829.GA1827@brightrain.aerifal.cx>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rpqyx3tfsvtdnypr"
Content-Disposition: inline
In-Reply-To: <20250217143829.GA1827@brightrain.aerifal.cx>


--rpqyx3tfsvtdnypr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Rich Felker <dalias@libc.org>
Cc: libc-help@sourceware.org, linux-man@vger.kernel.org, 
	Karlson2k <k2k@narod.ru>, Tobias Stoeckmann <tobias@stoeckmann.org>, 
	Serge Hallyn <serge@hallyn.com>, Iker Pedrosa <ipedrosa@redhat.com>, musl@lists.openwall.com
Subject: Re: [musl] Re: [shadow-maint/shadow] Add cheap defense mechanisms
 (PR #1171)
References: <shadow-maint/shadow/pull/1171@github.com>
 <shadow-maint/shadow/pull/1171/c2661802270@github.com>
 <p6zqecnj4czocoksbicabvp3ec4sgicejct6nhuq4mccisemig@2i3dhnffkav5>
 <20250217143829.GA1827@brightrain.aerifal.cx>
MIME-Version: 1.0
In-Reply-To: <20250217143829.GA1827@brightrain.aerifal.cx>

Hi Rich,

On Mon, Feb 17, 2025 at 09:44:58AM -0500, Rich Felker wrote:
> It's in the latest POSIX and we have supported it for a long time as
> POSIX-future (since 2012/release 0.9.7).

Thanks!  That agrees with my own research.

> > > Isn't it safe to use constructs like=20
> > > ``` C
> > > shadow =3D fopen (SGROUP_FILE, "re");
> > > if (NULL =3D=3D shadow )
> > >   shadow =3D fopen (SGROUP_FILE, "r");
> > > ```
> > > ?
>=20
> Unfortunately this doesn't work because it's UB to pass any modes but
> the standards-specified ones.

Makes sense.  Thanks!

> In any case use of fopen is just gratuitously bad for software that
> targets POSIX. The right way to do things is a two-step open+fdopen.
> This avoids needing to depend on new features to open and lets you use
> all the modern open flags, openat if needed, etc.

Hmmm, thanks for the idea!  This code is old, so we didn't actually
write it; we only added 'e' recently to it.  If we need to write new
code, I'll take into consideration doing that as a two-step process,
maybe adding a wrapper around that process.


Have a lovely day!
Alex

> P.S. Had to omit shadow-utils <~hallyn/shadow@lists.sr.ht> from CC
> because my mail software rejects / in an address... gotta fix that.
> Apologies.

No problem.  Thanks!

--=20
<https://www.alejandro-colomar.es/>

--rpqyx3tfsvtdnypr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmezUMsACgkQ64mZXMKQ
wqkHOQ/7B461dwwpUzG19/QXeYGLfHByEXWXKfNdT5fW9WVpjpMOU/xNx2K4+1/d
GS8DVu14lk9iPqeZosWggtl6kDYfMv82sa+uJZRujycCJpQ0hAKUxBOBYvT2bJWL
DXGifvgu49cxJLf5ifq4sX54IXh7IM+Lrk3J6GlSm3uijkVunpyFK+vCdeUCukxQ
kZF6z9Nsn0fpcjG8LQkCeAC8DeyjXYwn7J1N5uLZZkG0lGKXipMRCAuFmD1miV5A
oJ272QgVEvS7B/N7zm3acBxMhJP4YQIvdU0WgBKe9pH0PdLtYZkVAw1t+yipI9MJ
EteN86jgLom/13IWV5CFD2zboixslErVvSakJHbYfMfxna7FT+FtAIGIofvIy2wJ
4TKLazsRIHY/JP0ymjM+z9O73m/W87+6uxlQDI0usgLcgdBC5I3uXz4S7nREduyQ
iJdaufZmTz9kj71UQo+fyWFfdp2lNQbjY8ZVsw3DjOJY9fw1p+GXuI8HbB1JuyYj
uGnpAq8LlJ9T2Kbk7m5ea849zcju0nD4iIqXKP3Oc+s4lAYVd/4asiloyY8COV2O
+WzISA2/q96tB0NZko81q8oBDCcm+TkGPR7jiOx/iv/WytpeWbZnAnAHb9jDsQz6
309oZYWAZkR40ZhcLSgWt5O6AZwkGwCucstDqXLNUz+O85TiVaU=
=0kE8
-----END PGP SIGNATURE-----

--rpqyx3tfsvtdnypr--

