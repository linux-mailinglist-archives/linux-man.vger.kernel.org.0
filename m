Return-Path: <linux-man+bounces-2928-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B966AB9216
	for <lists+linux-man@lfdr.de>; Fri, 16 May 2025 00:02:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 05F46504177
	for <lists+linux-man@lfdr.de>; Thu, 15 May 2025 22:02:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C87C0270552;
	Thu, 15 May 2025 22:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kKB7eq4d"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83E402192EB
	for <linux-man@vger.kernel.org>; Thu, 15 May 2025 22:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747346551; cv=none; b=qudlItlzlUSiLaap6Ly3u3Ko2m14J+ZIk/kvwooXgdCFgxh739+67CdKVIKWoOtbI0zglPL3+0edJA0lc+GDEyBjK7D2ikP2YUnGKRQ172uvU+GR/PvVeZH8Qp+2guSgVBVlksrnoS4oq9gi6scSVjcduSfOE+obz8fw2PvwTI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747346551; c=relaxed/simple;
	bh=L9b29zEe79ueGvGjtzbYa3i/UXdd1j2s/x3oUjGB5y4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Hm7QIXCQh8Zz2I1BV7LHrrJtasDrroO7mq2w7Z8QsQ3k+Jq7+yLyHgA9Z6zrOdRjae/n7rQHjVBFiW+bph8t6C20fFoSRVKh0DuJgJ5qwtONkJTu5NoJd6bp+zkrprl55fLdNf8rARC42hxwqkq5HEw+RMeStEGEaecnOOzQsNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kKB7eq4d; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFA4EC4CEE7;
	Thu, 15 May 2025 22:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747346550;
	bh=L9b29zEe79ueGvGjtzbYa3i/UXdd1j2s/x3oUjGB5y4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kKB7eq4dA5Lt5rQ3T1ULUfgSZkL+d+q/iQ92hKdGB+5n7PxaiYCxJgqyfQfSM5Hm0
	 K4krDPQZc9OkHv0sQqBaFhKYX9l0kK9Q6w88QWzU9hLYHbu0d1+SQVy7pfA9Om7uTe
	 D8vNPJbyJWciRt8+f+MzGO50ForM0ot/KVJ3rDCGU2G1gCO96zBn1DMfCGdpCk0oKc
	 GsOWTjdjJnElnUaMwKJ/2IbDTRphp+zp44FL0coWNJCvqCw+2pTlDv3pDic1hsez8x
	 Fur0YF9VB4e/+oZGJihe07/kF5FjxPf17u2t+NLCkskjebrI9Mi7eTm/cIIbmDcng4
	 9hp/Hf5xjBQSg==
Date: Fri, 16 May 2025 00:02:26 +0200
From: Alejandro Colomar <alx@kernel.org>
To: bruh momentum <mondeendeguise@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: PROBLEM: fread.3 SYNOPSIS - inaccurate function declarations
Message-ID: <7vjnoipnt6y75qc22spoxnilct7eg4agkwmejnhvxje7egtfwt@6n2qcj7ngtae>
References: <CAGFZsbMJTcyHhDgAEKkSJ9xW1Cd--D_suYbyrjFcXGPV_VNetw@mail.gmail.com>
 <4to5qmurlmoilbtbwyoyh7zvjf4ukz626tlku46a5hapxwre3f@nm4xstq3kyvw>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ixax6prylw7lrjf4"
Content-Disposition: inline
In-Reply-To: <4to5qmurlmoilbtbwyoyh7zvjf4ukz626tlku46a5hapxwre3f@nm4xstq3kyvw>


--ixax6prylw7lrjf4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: bruh momentum <mondeendeguise@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: PROBLEM: fread.3 SYNOPSIS - inaccurate function declarations
References: <CAGFZsbMJTcyHhDgAEKkSJ9xW1Cd--D_suYbyrjFcXGPV_VNetw@mail.gmail.com>
 <4to5qmurlmoilbtbwyoyh7zvjf4ukz626tlku46a5hapxwre3f@nm4xstq3kyvw>
MIME-Version: 1.0
In-Reply-To: <4to5qmurlmoilbtbwyoyh7zvjf4ukz626tlku46a5hapxwre3f@nm4xstq3kyvw>

On Fri, May 16, 2025 at 12:01:09AM +0200, Alejandro Colomar wrote:
> Hi Bruh,
>=20
> On Thu, May 15, 2025 at 03:22:02PM -0600, bruh momentum wrote:
> > The SYNOPSIS of fread(3) has two inaccurate function declarations:
> >=20
> > size_t fread(size_t size, size_t n;
> >              void ptr[restrict size * n],
> >              size_t size, size_t n,
> >              FILE *restrict stream);
> >=20
> > should be:
>=20
> Nope, it's using GNU C's forward declaration of function parameters.
> <https://gcc.gnu.org/onlinedocs/gcc/Variable-Length.html>
>=20
>=20
> Cheers,
> Alex
>=20
> >=20
> > size_t fread(void ptr[restrict size * n],
> >              size_t size, size_t n,
> >              FILE *restrict stream);
> >=20
> > and
> >=20
> > size_t fwrite(size_t size, size_t n;
> >              const void ptr[restrict size * n],
> >              size_t size, size_t n,
> >              FILE *restrict stream);
> >=20
> > should be:
> >=20
> > size_t fwrite(const void ptr[restrict size * n],
> >              size_t size, size_t n,
> >              FILE *restrict stream);
> >=20
> > bug was introduced in commit d2c2db8830f8fcbb736bdea52b398257447bef6b

commit d2c2db8830f8fcbb736bdea52b398257447bef6b
Author: Alejandro Colomar <alx@kernel.org>
Date:   Fri Mar 14 18:33:41 2025 +0100

    man/: SYNOPSIS: Use GNU forward-declarations of parameters for sizes of=
 array parameters
   =20
    This syntax has been proposed for standardization in N3433.
   =20
    Link: <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3433.pdf>
    Cc: Christopher Bazley <chris.bazley.wg14@gmail.com>
    Cc: Martin Uecker <uecker@tugraz.at>
    Cc: Joseph Myers <josmyers@redhat.com>
    Signed-off-by: Alejandro Colomar <alx@kernel.org>

--=20
<https://www.alejandro-colomar.es/>

--ixax6prylw7lrjf4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgmZHIACgkQ64mZXMKQ
wqm0jg/6A/3w/1ReTLi5CYgPjvTjF/6pGn1MokEWlthSMadEVPLRtZFbQdgA3BlJ
8wrUr8JaXA/fMbEA45P0D5xfLaaR4ir43pKjJnYKlJ2YcAuUCCgN9T2xqDZg7omQ
jYBeuGUTT/v89zFb+PxR+3nK3Smk6O6zTOeumBhb6Quy4lGkSZAKeglcjNfXN0wr
VfddmJOq/hZyYdGL1nGHgwOKJ05nLxetva9Z4HZBh3ES9sF/b3o+Qq5XI1BlW+3V
6c/nyQvB2RSLKNFUYJWpgnCin2keNxnYM12YLXy0ruzCH1UuwPyyoVNdyclJZM/s
p0qu7s/3zPXqhRvX3F6Izf9N8DsHMqQG0Dl+YTdYqDMfDZMawl9gl8N5a8l+2mYo
i4cFZ0gQsKaLEFigsztaIVT6u0bY4Zv+nAyJUSa15ajLODQpG9x2aR3cwXjY73Rr
kVUIrOZqpPsCc4I5UCXlT/XrIYDNqjxiwoDZyuxCXQS+zQce/qLMuxQHbOwTHD4v
MqRK7AjgxuvxaEms6EMU6so9HKUa6hwVVo6TZ2n1yz5pNowR70uL3GbAUpT6erO/
lTaKzkdc91u1eBn9qChbW0bjlv7SEbkFqMLsD0AGjaIwyNLVmpBzJgP4tDD3C3Ga
vbNdSEcDza8nvmjw5Pj8hQnxDXr+PZln3sk50Bnq3vIVG4vMS5Y=
=pfMs
-----END PGP SIGNATURE-----

--ixax6prylw7lrjf4--

