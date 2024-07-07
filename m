Return-Path: <linux-man+bounces-1357-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F12692978F
	for <lists+linux-man@lfdr.de>; Sun,  7 Jul 2024 13:07:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7F2B61C20446
	for <lists+linux-man@lfdr.de>; Sun,  7 Jul 2024 11:07:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1030318E28;
	Sun,  7 Jul 2024 11:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OHZ0sfvz"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0CD91F94D
	for <linux-man@vger.kernel.org>; Sun,  7 Jul 2024 11:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720350430; cv=none; b=B7Qc9tW5reDYrY2bop9rGT08S8ajKvugFkJWZR0K+CLjk0gAeHkYA/D40iCMhUF0st67oP7HWksJzrJq+L15tXa1XiF6k0zf2MpZ18jT6Jf2Ox/IfWnKlrYdZ6Ro+v7lk7g+SSZvWiPPebrtMs9FyXLlFRYGgoMzK7wBOIwvL5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720350430; c=relaxed/simple;
	bh=P4Y9jLBrl9rtmm8fJQPl9NGGONEo8bokePJ6sC3vSKU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BfdP2MDeTqZ0bjgor13v5MNKRi1CCuzyK9MKHsSKiRroU6SPV/OAILzCvVpKKyCTJ2z1fkYxSo+5ai5eWkyheCimAntIxjRsYH4oAGpA07KCRVTyPbRSihEQxLPVjvsNJv6W+1iI0BeaGlJhCgRE+fSZUPIHtMTiRI8TyZcstVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OHZ0sfvz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D35AC3277B;
	Sun,  7 Jul 2024 11:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720350429;
	bh=P4Y9jLBrl9rtmm8fJQPl9NGGONEo8bokePJ6sC3vSKU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OHZ0sfvzai6E0A+vmBCiKhs5uiTBqX04He4AZAv8YBw1uAygxV8CL7KIyKE5sU2tb
	 jbzvY0ZPPreSWcmVTnxSMn25XKVstG4akNFuUk3XPF4TQx8pMKMD/zFg26Rwvy2yOj
	 MBMKn7WYf/P0mITh7v6AefyFth26TwPsR3aArn8l+rTCSi1FzR0H7RIi6nDSm3AD2Q
	 sWNpO+ApKGwhx41gS48cs3IHcxtzaJV0zGIrKR2AvTeUdN1T1ouCQoaJoZJnZ55K6E
	 FuXen1dIilg6pXEJSaObq9Yh5J4Rzzqt/TCGuVvPY+G4lOWEqXJOpeTy/MnMliqXAT
	 Xj5kGIJaKgk+A==
Date: Sun, 7 Jul 2024 13:07:04 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Martin Uecker <ma.uecker@gmail.com>
Cc: libc-alpha@sourceware.org, gcc@gcc.gnu.org, 
	Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, xry111@xry111.site, jakub@redhat.com, 
	lh_mouse@126.com, jwakely.gcc@gmail.com, Richard.Earnshaw@arm.com, sam@gentoo.org, 
	ben.boeckel@kitware.com, heiko.eissfeldt@siemens.com, dmalcolm@redhat.com, 
	torreemanuele6@gmail.com
Subject: Re: WG14 paper for removing restrict from nptr in strtol(3)
Message-ID: <mlzyfpvrnihbcg27oopghds5mm5ysz6sujrxvnbiixlcs53nkd@ibyybtnekhyc>
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
 <9d7d7564c3861969d3bd73340c0002d5e8b89376.camel@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="v5mqd2nfawyuy24k"
Content-Disposition: inline
In-Reply-To: <9d7d7564c3861969d3bd73340c0002d5e8b89376.camel@gmail.com>


--v5mqd2nfawyuy24k
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Martin Uecker <ma.uecker@gmail.com>
Cc: libc-alpha@sourceware.org, gcc@gcc.gnu.org, 
	Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, xry111@xry111.site, jakub@redhat.com, 
	lh_mouse@126.com, jwakely.gcc@gmail.com, Richard.Earnshaw@arm.com, sam@gentoo.org, 
	ben.boeckel@kitware.com, heiko.eissfeldt@siemens.com, dmalcolm@redhat.com, 
	torreemanuele6@gmail.com
Subject: Re: WG14 paper for removing restrict from nptr in strtol(3)
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
 <9d7d7564c3861969d3bd73340c0002d5e8b89376.camel@gmail.com>
MIME-Version: 1.0
In-Reply-To: <9d7d7564c3861969d3bd73340c0002d5e8b89376.camel@gmail.com>

Hi Martin,

On Sun, Jul 07, 2024 at 09:15:23AM GMT, Martin Uecker wrote:
>=20
> Hi Alejandro,
>=20
> if in caller it is known that endptr has access mode "write_only"
> then it can conclude that the content of *endptr has access mode
> "none", couldn't it?

Hmmmm.  I think you're correct.  I'll incorporate that and see how it
affects the caller.

At first glance, I think it would result in

	nptr	access(read_only)	alias *endptr
	endptr	access(write_only)	unique
	errno	access(read_write)	unique
	*endptr	access(none)		alias nptr

Which is actually having perfect information, regardless of 'restrict'
on nptr.  :-)

> You also need to discuss backwards compatibility.  Changing
> the type of those functions can break valid programs.

I might be forgetting about other possibilities, but the only one I had
in mind that could break API would be function pointers.  However, a
small experiment seems to say it doesn't:

	$ cat strtolp.c=20
	#include <stdlib.h>

	long
	alx_strtol(const char *nptr, char **restrict endptr, int base)
	{
		return strtol(nptr, endptr, base);
	}

	typedef long (*strtolp_t)(const char *restrict nptr,
				  char **restrict endptr, int base);
	typedef long (*strtolpnr_t)(const char *nptr,
				   char **restrict endptr, int base);

	int
	main(void)
	{
		[[maybe_unused]] strtolp_t    a =3D &strtol;
		[[maybe_unused]] strtolpnr_t  b =3D &strtol;
		[[maybe_unused]] strtolp_t    c =3D &alx_strtol;
		[[maybe_unused]] strtolpnr_t  d =3D &alx_strtol;
	}

	$ cc -Wall -Wextra strtolp.c=20
	$

Anyway, I'll say that it doesn't seem to break API.

>  You would
> need to make a case that this is unlikely to affect any real
> world program.

If you have something else in mind that could break API, please let me
know, and I'll add it to the experiments.

Thanks!

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--v5mqd2nfawyuy24k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaKdtIACgkQnowa+77/
2zInTRAAn3lPBlTXFjCdw+Jg3CPWch2yLrH7YD3S8c+M08qLzAzcNt9lCBPV+hzu
jGojPY9nDiMcD5eV+aa69i4aFKi5Tc68fnfbh763TE5pOIlnwOrs74usljb59JFn
Dm2uJHNoG5Ivc3AQwHG8KbW6Zlmnb+WFPTnNK+yJPy49FufZ0/rhUJfypTJCCofl
XA8geG6gvfD4BgPkrxuMGFmffdorDTprOSC9/KqnwZBXrjH09pJ+fGXTkUW1lYDY
T/DOcP02FK+6wF7S+wbpcpy/GJKjC4d7RaCQHT4qD+g2F4AZhQh7ltRDsYP6IA61
PEwLxgTxX4mUeRc6YdnuT0E0YSZxK/6EQuqvd7pkaq2FFp44Qp8lFaC6uEOCqh7b
QdKZP341nyi8+Ogxb36rKq0Dc8hnpzA2Upooa7Ue7zw8KYdDs/WafOvgsVI+eyDP
7XRQ8x5RS3yZhcBLhLvaQIwhpjehklkY/PPNF9tUwc0Zpi9QjGDI4tKSjyo6SM3n
ru+LAcRhn90hZBcWu1Zqo9fyU5uV1cK/kwZOcHm/fNxT3w5puzTAocKzcbmmyXI3
+4kxDgC9oH+8+pvLzkXkYp3zpS8Nhg9WTh5+oAL+gxs68aBv6SBAj0G6uTGvzjbh
50Wr8RA8ZPGhI9OcauywEDSMa4leiNnKARJ0prnvmPyXqHe3fxA=
=XE4Y
-----END PGP SIGNATURE-----

--v5mqd2nfawyuy24k--

