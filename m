Return-Path: <linux-man+bounces-2139-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E9C9F1B59
	for <lists+linux-man@lfdr.de>; Sat, 14 Dec 2024 01:37:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D0E6316AAEA
	for <lists+linux-man@lfdr.de>; Sat, 14 Dec 2024 00:37:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE2D16AA7;
	Sat, 14 Dec 2024 00:37:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LPt6LC3H"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EF95539A
	for <linux-man@vger.kernel.org>; Sat, 14 Dec 2024 00:37:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734136641; cv=none; b=JcnBsytRI7F4OY4NuO+bCVgsOZwX6rFdnMTsv/Qb3i+VWuTIeEjAzUj5gwDDs4tD3Jq31yqvLRhkFH4d80y279dXcI0XwgawCRx6VENjnPnpoQumZ7LCLT3VP7u1iaO/LyZ5TKXi5JaFcNTh3ppwmLbeGYcIDiW8Rersu8D/hVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734136641; c=relaxed/simple;
	bh=jjbzHErVcbPDzJZMP0qe3/Oal8huTlx09ej6vdSEfqM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FSQAHV7oI3b0/lp8BrMdNv9T26YNCQMfi/GldNWWII9zXYMv19oxKdH6Ow3feT2IFMVJg4nKktLGAVhwzLSgk7IZApzfAHdTnWNWIxFpxppYU1HHy1Dgj+SBNuDRTlpLzAXcfKzBjtjm9EpE1uQ8RJCx5Dc2sNaFGLg9QDPPhYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LPt6LC3H; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A33DC4CED0;
	Sat, 14 Dec 2024 00:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734136639;
	bh=jjbzHErVcbPDzJZMP0qe3/Oal8huTlx09ej6vdSEfqM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LPt6LC3HnSbruAzPNvRU8IJLR+l5TnXb2ACpdES+MaMEgBI8NNzBj+v5uc2xrPtkY
	 BzCQe5WYc8UikG5aaMu4MYXLOU7aboWqh5FuQuaaBkH7UIb3CwFBeY/Z9o0iZtUkHn
	 wqkSPIR95UP3C3LqnjUkZ+XaTrX3McTa4MIZNNhw7p8fvXk4SfZOlkqMDNNz0/q+nh
	 4SrNcXjaUy6kl8uxcurhDKaPrt17H9DnRXk5JMkFyPuG/hMonW4sHesVDHzRUjMMlP
	 edgF+yMFz/E5fpiTBBaIZTK1tNfUOLH9jLXfrD0sTj/TR28yjTzQLFZqfIM8EMSz96
	 WuL5JwMwHclOw==
Date: Sat, 14 Dec 2024 01:37:16 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: linux-man@vger.kernel.org, Helge Kreutzmann <debian@helgefjell.de>,
	Mario Blaettermann <mario.blaettermann@gmail.com>
Subject: Re: names of ISO 8859 encodings
Message-ID: <20241214003716.gnockyne6qh7jpml@devuan>
References: <3678665.hdfAi7Kttb@nimes>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pdj7yfq4zammrze5"
Content-Disposition: inline
In-Reply-To: <3678665.hdfAi7Kttb@nimes>


--pdj7yfq4zammrze5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: names of ISO 8859 encodings
MIME-Version: 1.0

Hi Bruno,

On Sat, Dec 14, 2024 at 01:23:09AM +0100, Bruno Haible wrote:
> Hi,
>=20
> Commit 3ed1de0ddccb42bae4151c7225d3fddeab04ff43 should better
> be reverted, IMO. The ISO organization or their *standards* can
> be renamed to whatever names; what matters here is what the
> *encoding* is commonly referred to.
>=20
> The *encoding* names are standardized by IANA:
> https://www.iana.org/assignments/character-sets/character-sets.xhtml
> The first ISO 8859 encoding there has the name
>   ISO-8859-1
> or
>   ISO_8859-1
> and the first among these is the preferred MIME name. So, please,
> in encoding names:
>   * revert the ISO -> ISO/IEC change,
>   * change the space after ISO to a dash/hyphen-minus.
>=20
> Likewise (partially) for commit d5e5db91ece5955b21ae1aedc03ba1d56d3cf423.
>=20
> Bruno

I'm okay with reverting those if there's consensus.  Would you mind
CCing the interested parties (e.g., the people that requested that
change, and anybody that participated in the discussion)?

(I've CCed them now, anyway.)

Thanks!
And have a lovely night!
Alex


--=20
<https://www.alejandro-colomar.es/>

--pdj7yfq4zammrze5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdc0zwACgkQnowa+77/
2zLkyg//SVBiE8yCrMeSasgLlj06MundQfnvsHW7ENxIaU7iXNUFeQPXXiSQwAYu
X6IlyL7V+QMKHLEUhRDmCeq09G4sOsgIA0mEiinWB0Ha+WnnyTRrnUcXhat6iNC8
rB9QcbTQA5o3BiuX1AjlNU6WufGXQtmjAY0dZfYqQiw91lWcCyv/vDL3xD5ry7de
RI0Mk8kTJudn5dn9RW6R4gt05TGxFlMyZJs2FY2FHwXUelNn4Tvt0+G749480x24
ymnByshML5xajrdh0V1WN9fQ8sG7+CNmYsSKD2dnRUazgqvbktVaIwe4LQ/bCGC4
Iu8B3kqWIPFzRdaY57p2Op3HYE4zBvqCO2WxD71csU05AaicVtCYyzFIhSfvVWM9
NG41B90m2RjGIlTsSVgkd45Wy+rZK2STCP8ATGyvmG+ZqaK5szb7wFn1kOcIAM2W
fO5xNDQJ4ZS6IVIVZSWCTul5OStfmM6M6CIXxqi+izVJA1jlo0Xz5RlONyQ7Fy4o
Njj6lMaq3gobiM5u8rchVx7J463pjCUjVfo66hzYzlw1zHEGHfJNi0o7ap0cvm+x
JrU9qH4ZeXTNrXhAgArM+qk36g4D/k+cm6OuNTLFqceYXvG+ug7x10pRYUaHmidh
Dzl/Pdp4xpMQ1wguMH2yERpkFlQEZAfzLLbyAyzaLhvzm6mqMFk=
=S2WD
-----END PGP SIGNATURE-----

--pdj7yfq4zammrze5--

