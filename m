Return-Path: <linux-man+bounces-3225-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA66AEC4B8
	for <lists+linux-man@lfdr.de>; Sat, 28 Jun 2025 05:51:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E2E211BC7B74
	for <lists+linux-man@lfdr.de>; Sat, 28 Jun 2025 03:51:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CB361F4192;
	Sat, 28 Jun 2025 03:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KuUOuYmX"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE9B43ABC
	for <linux-man@vger.kernel.org>; Sat, 28 Jun 2025 03:51:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751082666; cv=none; b=E8E5xNrScBD7/Wi0f48XJjfg0JZCOZmAK9C3htq50ZZX1hZBj//51LhNeN9QD88eSi+cgnj6FkkqxbFfCEF7hN3MH0lNSx+BtfJjH3LlAq7UiBdIe/u7meha8FV0vHGJE9KvxByDBNL2++JbWgn+Qu1bej0ICD3XCYj9ipYdnwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751082666; c=relaxed/simple;
	bh=qvvfHzo/r1E7oaBbtNvSUoBL5zWeMs28OacG9TeagPE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AKKP2wZZwTOypKuNMb8LYSpbIrFG0pHQa6iPfK2L9yVXNxgAEgCAP5X2kKTVQb4aaGuzUNAODEXR7ELRpVC0u8GZPI6QI0nXJoecjQ1CISjZPNPj8NuLj9Kdm4FHM1c4AxkA9vcbSJHOx72fRu314u8MqhWRJiMyIX+vnp2qxOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KuUOuYmX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F2C5C4CEEA;
	Sat, 28 Jun 2025 03:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751082665;
	bh=qvvfHzo/r1E7oaBbtNvSUoBL5zWeMs28OacG9TeagPE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KuUOuYmXZVFXMNZhTbyLi/jrLKhohN2YyzfbNXH+OyMWRvhcuz+ILzE1Q8lSmy5zy
	 gWanHOzWQd//kyT8DJN661CpGFQktRBQMK5MD1EGCWmJ8EjVY0gyQ9M1DJ1XX9t7+Z
	 SdpWvKdfdvZAg1K5HMET3nykL1jlkIwUz40CKzrAthHBhtqURIgxblOq1XpVf80cMU
	 MQdo5Zubrp/XQnP+cLnXV/OBhq8M+pEBdha3o1wXweQjw82HuUER4yuJFBdZUOadI3
	 Nr05Uh+2nczMr4GlqGzAncSCVYujER1eIIT3qROW3SI3nbELj7D5vK25SU9hpMkApj
	 s2KD44eRHfDbg==
Date: Sat, 28 Jun 2025 05:50:58 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Brian Beuning <bbeuning@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: add_key(2) missing error ENODEV
Message-ID: <blbpv2wtlyy6ofkbeyymgkgsza245ekipe37ggldcv6j7jaqa3@f4fsnkllnjpi>
References: <CACbk2c9mr7-jHodA=0P73RCDXep6Bvpq8snh5zD-Gze+4NgGLg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4sppb66voxgqimg4"
Content-Disposition: inline
In-Reply-To: <CACbk2c9mr7-jHodA=0P73RCDXep6Bvpq8snh5zD-Gze+4NgGLg@mail.gmail.com>


--4sppb66voxgqimg4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Brian Beuning <bbeuning@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: add_key(2) missing error ENODEV
References: <CACbk2c9mr7-jHodA=0P73RCDXep6Bvpq8snh5zD-Gze+4NgGLg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACbk2c9mr7-jHodA=0P73RCDXep6Bvpq8snh5zD-Gze+4NgGLg@mail.gmail.com>

Hi Brian,

On Fri, Jun 27, 2025 at 11:24:01PM -0400, Brian Beuning wrote:
> The man page for add_key(2) does not list ENODEV as an error code.
> It happens when the "type" argument is invalid.
>=20
> I spent about 6 hours figuring this out.
> I looked at enabling TPM and UKI.
> Then got the kernel source code documentation which explained it.

Would you mind sending a patch?  Please include links to those sources
in the commit message.  Please have a look at
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING>
if you'll prepare a patch.

>=20
> Brian Beuning
>=20
> P.S.  This is the second sending of this message.  The first had HTML.

Thanks!


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--4sppb66voxgqimg4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhfZpsACgkQ64mZXMKQ
wqmDMg/8DqKg0d2Vsre3Lr75docR6pw59WPFoab8v+VOv1dnebygrYfiqqVoYfKw
C84oooqjUFmYnxThh20I4g1kVlVgdvOsk9sAMVgPQnfgDsUT5fleds3mtnBUgwRO
nPczm1U1DXvUKxD++DiXrbMUDDCbTRT/Wp+HHp3dlpOJKiwbLMdyeIRUvRAeQLlU
fo3fusRn1APGBYHmpBGGJT2MGoqjqgE5TVCZ2b9m0kROSOdvsiMg6cguR94bsLRQ
IaepvbJQMGLx8M7WuvApotGgDxQPmRm7DIFUlWCAFQaihqExFT2OCEEyWIMSFi73
uzeAfSZNr0BE9weUPSYmnI97vYOPYu6TnVC9Lp6BBlNEYFMkvXnujVq4sitQM1PN
wKQi9XoP2wuBMknojICeAsmd+bLLdpJQyi9DbkcWEzKR+05J/AWJxAboo1CPHOKH
PKT2soOuvL/5Z3V4DR++i6rX3owwELyCVf2T7nUbdNhR5sQoayK6RtPCrj2rKqwH
/ETYJciCCVdM+YkDAt87UoK7xouJM2CeI8Fb9jgRNcZAASfNFNhbAcS55iKhxU34
HIXPgdUaQoRnXX8u7L9G5K6m7f+PFuyIfV9O2McwEEwl5JnefldNAPHcxgXgcFD1
QMFp+dVYSCN3oU1lK+qoXKRcNdXltT4oxxABmL0zxJbSolJ2XOA=
=9T6+
-----END PGP SIGNATURE-----

--4sppb66voxgqimg4--

