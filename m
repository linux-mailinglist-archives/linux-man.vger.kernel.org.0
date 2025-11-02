Return-Path: <linux-man+bounces-4244-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F59C29421
	for <lists+linux-man@lfdr.de>; Sun, 02 Nov 2025 18:43:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3C965347642
	for <lists+linux-man@lfdr.de>; Sun,  2 Nov 2025 17:43:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69C072DE70D;
	Sun,  2 Nov 2025 17:43:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rzyaXBYL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296391F4169
	for <linux-man@vger.kernel.org>; Sun,  2 Nov 2025 17:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762105381; cv=none; b=iNqjjOVPNoosD0U1E7VnWUzR13HWPy0xM4Hma794YYognYrQlL/CjRTVvtXWTLr69DupsEEc4NY44fNLOTTqZyeDiimBhlNXU83CktlzApUVCAVeYJc8/huayiE84RwwOonCECq+iiQ4zYDt57potZwqp5rxbvTrZpzpe8bO0Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762105381; c=relaxed/simple;
	bh=4sQn4YxuT6VYr2Ctb7QCbvB3dYpnSWJ4eMbJx8Hi7j0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bI9X/1GySGzU8gR+Zbfh/8AJuqIKN/GV+rXySCptZRMbM5fjksGIE3V/JDKtM7Q4xWFr7+FfZW3QdvU9ye/e9ulXjgvt3o7yO0U9n2cGiTRZmRh5zOYy0P0GvKSf16skhUpVbSTF2AK4fQSGa2QRPct9gUjg1/Nj6/cj1jndwP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rzyaXBYL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 046F7C4CEF7;
	Sun,  2 Nov 2025 17:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762105379;
	bh=4sQn4YxuT6VYr2Ctb7QCbvB3dYpnSWJ4eMbJx8Hi7j0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rzyaXBYLK2O4s8XSG9kBMh3NbQAGs6db30FhWl76kaUbPuEBsRLGLZrB/Z47lgofO
	 wzRMYl9ekNUaRutah9Nq41C7w8YB8/JYeN0V3SssHffzvb5qHrTvDWhMuipq0zJEgg
	 s+tkeVtm+51+A8QBby+lQzfA68PW1dwmPoPQqSQlqH/OfMiBpklZEwXr3pEpRlsDVS
	 Uk0r80FJqzJiIXuTV7IM2i1DRIc9+m2WXZXA6eByP+8Twq/iiCI0+RU1kzN97noTEQ
	 5YveJ5ngxY3p00zQBGURGcf/gibz2hbStHxMecXFw9DpXT80Ad+25kHnFT16PqQrIR
	 HvUqx9D4NgcWw==
Date: Sun, 2 Nov 2025 18:42:56 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Rick Stanley <rstanley@rsiny.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Errors in two Section 3 functions
Message-ID: <zb5tsdfz4zvjclsxt2saroxrijoh5bzc72o3wnxacqmn7rcbnf@knjgxqt5jreg>
References: <d167e81b58255fb1e3bf068adc146e7a461981bb.camel@rsiny.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6pe3tsxxn34hwsy2"
Content-Disposition: inline
In-Reply-To: <d167e81b58255fb1e3bf068adc146e7a461981bb.camel@rsiny.com>


--6pe3tsxxn34hwsy2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Rick Stanley <rstanley@rsiny.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Errors in two Section 3 functions
Message-ID: <zb5tsdfz4zvjclsxt2saroxrijoh5bzc72o3wnxacqmn7rcbnf@knjgxqt5jreg>
References: <d167e81b58255fb1e3bf068adc146e7a461981bb.camel@rsiny.com>
MIME-Version: 1.0
In-Reply-To: <d167e81b58255fb1e3bf068adc146e7a461981bb.camel@rsiny.com>

Hi Rick,

On Sun, Nov 02, 2025 at 10:47:47AM -0500, Rick Stanley wrote:
> Hello!
>=20
> I have noticed two errors for memmove() and memcpy().
>=20
> memmove():
>=20
> man7.org:
> "void *memmove(size_t n;
>                      void dest[n], const void src[n], size_t n);"
> string.h:
> "extern void *memmove (void *__dest, const void *__src, size_t __n)"
> (Leaving off the __THROW text)
>=20
>=20
> memcpy()
>=20
> man7.org:
> "void *memcpy(size_t n;
>                     void dest[restrict n], const void src[restrict n],
>                     size_t n);"
>=20
> string.h:
> "extern void *memccpy (void *__restrict __dest, const void *__restrict
> __src, int __c, size_t __n)"
>=20
> The issue in both is:
> "memmove(size_t n;"
> "memcpy(size_t n;"

That's not an error; it's valid GNU C.

> IMHO on man7.org, they should read:
>=20
> "void *memmove(void dest[n], const void src[n], size_t n);"
>=20
> "void *memcpy(void dest[restrict n], const void src[restrict n],
>  size_t n);"

That would be incorrect.  You can't use a variable before declaring it.
See <https://gcc.gnu.org/onlinedocs/gcc/Variable-Length.html>.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--6pe3tsxxn34hwsy2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkHmBoACgkQ64mZXMKQ
wqly9g/7BvarMQbzkYnzv1fG/LR1QXU0Myc8V1w8b+GeoVYpXKBGWlQR1jmqQFqK
E0v+q2mCAhySqKA8qCYM6RFoXbShHXSa9Q7GO8GSNtTCBvrOrLkVt4r7EE07IKhZ
liVIBwjl5QZy3YnhjjQelgACneWXvrw+74y1IGi+hW+20iN9ryPpA4oNb7rlAKrK
KwV+z/gEIdii9hjNgcDDsHVTfaR+CG0tZ+vJwwqn+4ckmyOWanHSz7gueyqbx6Em
kwCm5zuTzj8vLGnGu7jhhWVEjy+4NYlfdbtxVpWMioAUT05MvKz3qIVv1z6rbPoc
mI4bYbOs4FyNnVoI4zx6wAIfOvpyJIgFx6n8SYnmwD3Q09xKJlFbYgxzMI/UwKlj
4Uw+rznvJy6Rwn5/ujqme08muicOqVSFJ4NFXNjUs7ig9RQBP8aWSmbo+kjln0hE
0uFPjN2O+tNzbDrIxV40c+JhRw892r8aLfPC+kJPiohNVxl20fZiYqfujKzJDc2z
OTY/ceLjyA7TxoE2RpjykFqr3tN1or7hIhn1ZvKv51sj+VDKsiVJfkMKD4DIWmdi
P4Q3eFXP5RCVmknUcuOhylFWC3CnhUFpSkIrlmNOwl6VMSiI13TZr0f5AS5WGXli
JY8szcgEqQaYvul+OrltzwhMw959Rso3FoXLZaCCvM6oSVACBpM=
=Q/IP
-----END PGP SIGNATURE-----

--6pe3tsxxn34hwsy2--

