Return-Path: <linux-man+bounces-4253-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DA42FC37F2B
	for <lists+linux-man@lfdr.de>; Wed, 05 Nov 2025 22:19:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 38A164F85F7
	for <lists+linux-man@lfdr.de>; Wed,  5 Nov 2025 21:17:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E29734D900;
	Wed,  5 Nov 2025 21:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RBdHcy4c"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2140334D4FC
	for <linux-man@vger.kernel.org>; Wed,  5 Nov 2025 21:12:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762377173; cv=none; b=swGTICWGUyy77dm67mlBR/hL5NTP1sjA/oc0uYtkzmRrzGOXJIUnncqDC8317/fHKVoyBVQlEHwRs37y2KulqGUV95iAOoIIs5ugcT+DDG/sH94Dmib/LapEeyzdRp2aGBayZU/fJ76Fco0Yq1Jwn90iYlvMvl20y27cQTgXEpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762377173; c=relaxed/simple;
	bh=kPh6MpnNyCJzxOYRgJygBvjvMZItg4rg+feVA1NIuKo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EcSUHcqZTLfD9Bs1t+BhoRsVpcc0U9WyV8ofTXYhrfzMn5836n1ePpivbZedtmngExgrm0A35lOLjXZlC10znka3VeZDVXkqv/LbIVo0YdFnuUKCehHztpZxaycywY2RVu4hapJG2aZaeUfLkIxmHeF2BulrR9jHBpCkf8hi2xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RBdHcy4c; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 249D5C4CEF5;
	Wed,  5 Nov 2025 21:12:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762377171;
	bh=kPh6MpnNyCJzxOYRgJygBvjvMZItg4rg+feVA1NIuKo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RBdHcy4czbf+bBnx5ZoiUhNgAuo05Wm2c3MnTlnZrIlKTJAMUPHJlyqcKSzSFL7aa
	 hvjk6kebfxrx4qzzBl26FK0IOxi+nFgSRtCmXQZOgUyzdLsDaHvG1yeV+VqQWecc+d
	 ZPoTDqHrMsB3dURMPRXsy9vHxd2HRoCLrI6cs8VRwCuBAG2yZLkTcFprO6znr1EgxJ
	 4GDATTswvoqOWcZzJOC5hC92EVXIV8QTUKt8x6LF44+PGLHSQog9fsSR0xJphWO5my
	 xnDUOe6IctYGKjQAi8dT+MNW3Ir24BPtb3/hroknNLwmM8ysKZAoX6Vziq2zEXic3q
	 fleSrdsktCJnw==
Date: Wed, 5 Nov 2025 22:12:48 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Dirk Gouders <dirk@gouders.net>
Cc: linux-man@vger.kernel.org
Subject: Re: wcwidth(3): wrong #define?
Message-ID: <km4jixjgoknyrfty7fdxxt72uyd76ilib62r7oqtjixmfvwucv@ca7rbihkf5ny>
References: <ghms50i7u0.fsf@gouders.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="u6srbeop547kub7h"
Content-Disposition: inline
In-Reply-To: <ghms50i7u0.fsf@gouders.net>


--u6srbeop547kub7h
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Dirk Gouders <dirk@gouders.net>
Cc: linux-man@vger.kernel.org
Subject: Re: wcwidth(3): wrong #define?
Message-ID: <km4jixjgoknyrfty7fdxxt72uyd76ilib62r7oqtjixmfvwucv@ca7rbihkf5ny>
References: <ghms50i7u0.fsf@gouders.net>
MIME-Version: 1.0
In-Reply-To: <ghms50i7u0.fsf@gouders.net>

Hi Dirk,

On Wed, Nov 05, 2025 at 08:43:19PM +0100, Dirk Gouders wrote:
> Hi Alex,
>=20
> I'm playing with a program to calculate wide character widths and
> gcc complains when I use wcwidth(3) according to the manpage:

What's the exact diagnostic you're seeing?  I'm not seeing any issues:

	alx@devuan:~/tmp$ cat foo.c=20
	#define _XOPEN_SOURCE
	#include <wchar.h>

	int
	main(void)
	{
		wcwidth(0);
		return 0;
	}
	alx@devuan:~/tmp$ gcc -Wall -Wextra -std=3Dc89 foo.c=20
	alx@devuan:~/tmp$ gcc -Wall -Wextra foo.c=20
	alx@devuan:~/tmp$=20

> ------------------------------------------------------------------------
> wcwidth(3)                  Library Functions Manual                 wcwi=
dth(3)
>=20
> NAME
>        wcwidth - determine columns needed for a wide character
>=20
> LIBRARY
>        Standard C library (libc, -lc)
>=20
> SYNOPSIS
>        #define _XOPEN_SOURCE       /* See feature_test_macros(7) */
>        #include <wchar.h>
> ------------------------------------------------------------------------
>=20
> Looking at wchar.h explains the problem:
>=20
> ------------------------------------------------------------------------
> /* The following functions are extensions found in X/Open CAE.  */
> #ifdef __USE_XOPEN
> /* Determine number of column positions required for C.  */
> extern int wcwidth (wchar_t __c) __THROW;
> ------------------------------------------------------------------------
>=20
> So, if I replace "#define _XOPEN_SOURE" with "#define _USE_XOPEN",
> gcc stops complaining.

_USE_XOPEN is a glibc internal that users shouldn't set.

>=20
> I would have prepared a patch but somehow expect that there are
> situations when "#include _XOPEN_SOURCE" might be correct...
>=20
> Regards,
>=20
> Dirk

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--u6srbeop547kub7h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkLvcoACgkQ64mZXMKQ
wqmj4A//SlwCn5an5kC3K/8gk34HVBjLUA4X60TE4rB2BpxmPfVBOnqeOjaRvxBy
ig/S27ityBclPtZ2KLIiJyE64FZt8oPN3mlJHdeh0K/x9VhhSm/vRNpxuRmNQXiI
X1jP3CA6/fYQO2AcASMh46rlXS9P/p1LRXkMPu+iQKiYhczfXamNhsJjDUhjT6h1
cGKHZTp3vnao1tRTwrGJX8Z5Nc+BjPhnTq75LN0vVaSfGHllGSe3iAkbjJYDQ6P3
cuePW1BoSbV7uDLMfXSaI3dC4RYLOdcdgzsBEA3N9POrPSrLTIwfNQOY7yNFqh4z
76lXRiE73g0PvXDPpkOixhhKLd5HaHAHC1So791RZ5rqqBwLJGgK5kH+TbTMb8n5
rom6CRH2LMXRsgiMvjFK31I1UOkFztk4OQDLxZq9H2Ar4J+74lCcV8FfIlaI9pXD
x/7L4yP+GXGaJ5KvTt8ZR6nU//RGTeerhp1PL1uN4a3ESEYqg67suzGN1KrjJWTX
fWfk7nLWADX5Ks4k86N31UGMil5Dg9JrksUTIaBRgmNuRzXFbdu06uTDwbe3axMc
QvLLAOKYBvGstAeVR08eUADYE0YJanjr0ecWz5qtAdC5cQfmRDo2o3YiqXQyQmox
5ggIaGYIh23qS5wDlAROobsu3jRkYPutqHnzNjqFf8SKNVGYTsk=
=3i4n
-----END PGP SIGNATURE-----

--u6srbeop547kub7h--

