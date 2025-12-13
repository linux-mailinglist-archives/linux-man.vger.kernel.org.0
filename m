Return-Path: <linux-man+bounces-4406-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F66CBB248
	for <lists+linux-man@lfdr.de>; Sat, 13 Dec 2025 19:44:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 729BC3009AAC
	for <lists+linux-man@lfdr.de>; Sat, 13 Dec 2025 18:44:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 402C52F069E;
	Sat, 13 Dec 2025 18:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FsQLswib"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED70D2EFD9C;
	Sat, 13 Dec 2025 18:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765651474; cv=none; b=SC5zJGpPXm2r05TOR5AhPd1wxtMbYdcBpqFI9pqZlgJqMGlrLBqyV+HM7NLymHSs1kw5HAiyBH5VQfluCXnhXaF9bC7hOqUr90+tvsNQYxUOdk8Sp1Vk9nQ1JQGJBrlTvH39i500x+9amt4Eqw0wJP70fft964k8+HYhC6FEGTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765651474; c=relaxed/simple;
	bh=m/BcUGGbuGbXbl0BFORq0MZN1fmYKQFlhfLVShUfWc0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D4SmTYuOcUXBoCKTWGr6p3Nsyrg7GzSkfBaZ4aMVUbnjd1SzKQ83BmWw/9qOjdE5kR7wStcRTQyPhRf1o3mYOhqGX46e7eK/PNRN+eaX1kxAUY0zzvu2Hunet7H0P3FdqxXFGDnCZInzzd1EBX1g8Ed1C3FNPyhKRFRinUhmeA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FsQLswib; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40844C4CEF7;
	Sat, 13 Dec 2025 18:44:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765651473;
	bh=m/BcUGGbuGbXbl0BFORq0MZN1fmYKQFlhfLVShUfWc0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FsQLswib/s2qicwwPGZIwQ9OqsK48DgaAZQRw7bNmaoa3UJMXdhTPAM0OeLtljcxZ
	 30Js4uUJfRW0pQzUiY3QaG+Cnc0SeFhexHhqkDJqKq+XEaAA5QHIbipOsvssKrMZWH
	 PQhG7bE2c3u0gI9UprqWrDtRiRNt1rYSIbOTEDz+Z93e57qWvuFvRtYpnBMBKujrzq
	 Te75+CttDGu29pTVT15Ru5HkBYE8zDGX8ITqxWCO/2BfyNJykt1fHzDc3TP+er7pEn
	 XxODZE3/9UMCJNa77jLFS9CLqSaJjfsTU1JMY1Z4hblAXpA2ii8QZNB4YcNxOlri5k
	 vrrU+dDjmFGiA==
Date: Sat, 13 Dec 2025 19:44:29 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Alyssa Ross <hi@alyssa.is>
Cc: Christian Brauner <brauner@kernel.org>, 
	Al Viro <viro@zeniv.linux.org.uk>, linux-kernel@vger.kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/setns.2: clarify type of nsfs fd required
Message-ID: <iddnfcdrppivtq53zrajuiidfmg6sw6bxdg57j2ielnnor4mlk@i7ddvvhfu7dm>
References: <20251213175853.555517-1-hi@alyssa.is>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l2ryhrqzqz5vm7ix"
Content-Disposition: inline
In-Reply-To: <20251213175853.555517-1-hi@alyssa.is>


--l2ryhrqzqz5vm7ix
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Alyssa Ross <hi@alyssa.is>
Cc: Christian Brauner <brauner@kernel.org>, 
	Al Viro <viro@zeniv.linux.org.uk>, linux-kernel@vger.kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/setns.2: clarify type of nsfs fd required
Message-ID: <iddnfcdrppivtq53zrajuiidfmg6sw6bxdg57j2ielnnor4mlk@i7ddvvhfu7dm>
References: <20251213175853.555517-1-hi@alyssa.is>
MIME-Version: 1.0
In-Reply-To: <20251213175853.555517-1-hi@alyssa.is>

Hi Alyssa,

On Sat, Dec 13, 2025 at 06:58:53PM +0100, Alyssa Ross wrote:
> I was surprised to discover than an O_PATH file descriptor was
> insufficient.

How did you discover it?  Could you please link to relevant information
(or kernel sources)?

> Since the mode of nsfs files is always 0444, tell
> callers to always a file descriptor opened for reading.

Missing 'use'?

>=20
> Signed-off-by: Alyssa Ross <hi@alyssa.is>


Have a lovely night!
Alex

> ---
>  man/man2/setns.2 | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man2/setns.2 b/man/man2/setns.2
> index ea6a9c054..ed4937280 100644
> --- a/man/man2/setns.2
> +++ b/man/man2/setns.2
> @@ -23,7 +23,7 @@ The
>  .I fd
>  argument is one of the following:
>  .IP \[bu] 3
> -a file descriptor referring to one of the magic links in a
> +a file descriptor opened for reading one of the magic links in a
>  .IR /proc/ pid /ns/
>  directory (or a bind mount to such a link);
>  .IP \[bu]
> @@ -265,6 +265,12 @@ is set to indicate the error.
>  .I fd
>  is not a valid file descriptor.
>  .TP
> +.B EBADF
> +.I fd
> +is an
> +.B O_PATH
> +file descriptor.
> +.TP
>  .B EINVAL
>  .I fd
>  refers to a namespace whose type does not match that specified in
>=20
> base-commit: 46950a0845de91c422efe6c639091ace42cb92f8
> --=20
> 2.51.0
>=20

--=20
<https://www.alejandro-colomar.es>

--l2ryhrqzqz5vm7ix
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmk9tAYACgkQ64mZXMKQ
wqn1Tw/8CEGIbuw6wS+A0Ul12J/OxYgSiBeUtouYAbnusoR+MH0Azf3kZr2XlD+s
Dp4fao2O4gspg/s9qQyEctn9QvGy0i7ZZGom21AANOyHoXxjfda0A7xO9kUpGXRj
xbd6iQXBnyr+ZJjs6k+2tcAnZlRv51Je3xa6ORlxgE/6eK4V6zxejxwMvCrpOeYn
lAYjJPDRjuEW0mNYXeOAeKKkhHYa9+k8xNiys2NienmZBq8omeYH2yelwjKyev+h
M0HfSlMNsDrIG585wdB3toEQ+v3c29g1bv+o20MMwsY2F9c02uIjyPZU4dlNxK3H
E3ZsVh736XsfHa9QTgpvO3XjBtQDFb0fjeKujEKBBf0ntX9FOvTw4vqvrZ4Nl8ix
XioJeUEYEqj1xnvk10YLvQOgA/TNso71NXrB12R7T0rellN/bO9AWe7BJ/eD6ogU
1Z9EOvL6Kec2QQOtCaZsZqZ0Fb+R4J6J9fXWB/U8aZQVF8guIgwM73AWB+0l4GDv
8UcSnGOnjNNSHneSmSndUppfBN5H19tOFgMwGWF8/b1mpaTiZH2wHMWw8V/hVfz2
P+rziqvFjlXuZtFippuOkI2quZfKA019CXE/IzcYg/fG7M9UE3bjgq3nKVNoN+DV
e73VpawJH0I1Icukjg4dfyZr/PiLU8DVortwzhHQQL1z7FcMmhE=
=9d5R
-----END PGP SIGNATURE-----

--l2ryhrqzqz5vm7ix--

