Return-Path: <linux-man+bounces-449-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB828593C0
	for <lists+linux-man@lfdr.de>; Sun, 18 Feb 2024 01:57:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 40B46281E85
	for <lists+linux-man@lfdr.de>; Sun, 18 Feb 2024 00:57:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6AA7393;
	Sun, 18 Feb 2024 00:57:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XKNJJTLy"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6552836E
	for <linux-man@vger.kernel.org>; Sun, 18 Feb 2024 00:57:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708217865; cv=none; b=tGRmHVqJKN3tbfUFnKu11nquknEYCeg+SIMK3oYR7lxuEvJUSdovT77oTP46dN3am75FdMtWYv/VXEBipui4XQhlvHHGPrqEn0UnUpjd6RxXO3eYOolVzoBH32x7fQUS2frgkrwwc4gImRTnpx9X6QobDxbiQWoiqNmRicn2o2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708217865; c=relaxed/simple;
	bh=z7/vV1Q/s2vTgDRSl8M8jHMIa88kbyFc39B/UgB00Lg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ggdf2Udu72hxc28Nu5ZOEd2vdQf2jNSmTlXLy+deQ6Dl2ApLALBP1/lizt3hKHXItER1XfkjM0SVxPsYopFurpzkgwpwoWIMxAzQ3htiDdErAVjz0itF3hs1pqFFbEOlPUTw2/Db++4qgERKxeZ+AQ7Qa3fZgx7++ke/L17pujQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XKNJJTLy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30A5FC433F1;
	Sun, 18 Feb 2024 00:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708217864;
	bh=z7/vV1Q/s2vTgDRSl8M8jHMIa88kbyFc39B/UgB00Lg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XKNJJTLyI77thyF49JqAJCjn9h9EasE7BhtdA90TdL6CNxTorGhGkK1RqlXGdh54d
	 CUZsYTpWdCBKH0mP4+vGELgOqFlzxI1MzFb3U1lNs6OzIlLjw2tVVs4/Hxi+xyIhbv
	 rRswr5LmXVAivJGXIZ8wWaPDJVc5abFqIifbvFP3JMv62fe0dIo3KwPiex4DiwXsB1
	 41wAXqZDcaAEN85hMa149dMCnJ+dOkxx6TMMlKCOz/JoamXavOgnkiXGuF6CtF12PV
	 u8Vqov1h7ul4+YnPtMmWLMegVssgBFP248FWwndxXSJ/D/hlpsmMhnuPnI02TE9F8R
	 hQiE7PZksFqBA==
Date: Sun, 18 Feb 2024 01:57:41 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@smrk.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] getaddrinfo.3: tfix
Message-ID: <ZdFWBf0Sb3ayzowD@debian>
References: <20240212090903.645715-1-stepnem@smrk.net>
 <20240212090903.645715-2-stepnem@smrk.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cXpg6bHl4+rVbTrG"
Content-Disposition: inline
In-Reply-To: <20240212090903.645715-2-stepnem@smrk.net>


--cXpg6bHl4+rVbTrG
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 18 Feb 2024 01:57:41 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@smrk.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] getaddrinfo.3: tfix

On Mon, Feb 12, 2024 at 10:09:03AM +0100, =C5=A0t=C4=9Bp=C3=A1n N=C4=9Bmec =
wrote:
> (Incidentally, the glibc function source does name the parameter
> "name" rather than "node", unlike this man page.  (The POSIX man
> page uses "nodename".))
>=20
> Signed-off-by: =C5=A0t=C4=9Bp=C3=A1n N=C4=9Bmec <stepnem@smrk.net>

Hi =C5=A0t=C4=9Bp=C3=A1n,

I've applied both patches.  Thanks.

Have a lovely night!
Alex

> ---
>  man3/getaddrinfo.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man3/getaddrinfo.3 b/man3/getaddrinfo.3
> index 1d4f2d3d3a49..beb6434606f9 100644
> --- a/man3/getaddrinfo.3
> +++ b/man3/getaddrinfo.3
> @@ -501,7 +501,7 @@ .SH RETURN VALUE
>  included
>  .B AI_CANONNAME
>  and
> -.I name
> +.I node
>  was NULL.
>  .TP
>  .B EAI_FAIL
> --=20
> 2.43.1
>=20

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--cXpg6bHl4+rVbTrG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXRVgUACgkQnowa+77/
2zJcyg/8CQZ1y7ptg39YJNEW60jiD2hL+RIgTV1/CmqXdCVUMICd6j8kPEiSnFQY
f8zaY+wT19tieHgSyHdmVVBiujviQNSM+zFKpmfcleNfEHsxLeTfG0Xb+sXd3y+/
MCM0347Bj534ojVx8dkBofzy3b0Jris+7N0cO//y5YA3JBGmJ85QDkL7r92ROABv
t1a28uSe1aRgOWzLVUXeq8o7MsB4RnnBrzT3piUgPQ73mkbVDrodU5dGtTcwwMk6
+Z35pTGPjRGjSCBfWvWP2Gs28dldn0iB7BBZkAhhynN3G3CblxEcuTxGPbOi6QGU
7ZzRumwLgBXZyTJrRk2HFzwgdHRXuwjaooyvkeBdvQQjjfS0j2MdDaUKwtvR2HBM
+Y0Q4TQJ6stEI2RzOwiE47KK2DTSrlHamPYN8mINi/tYMjythJfHJ09KCQgGlD2P
UptOUUW9SfMKuan5fBS+teBqnFnpIcwsXGHZIHtLzPbN9MQySkVr87gTmvqFKwuc
oO4g5rodU4z1Ic4vFnuz9iatsb6sQOAqdJwxq/xijAkzefVIP/3W4EAFjliON6gR
Kn81ASNDmPe/ab/m53rY7g+87VOIBzMAQSuDwsSN0HQATyiLLK1qp40aXsiroyCl
xuZDRi2hh2rZOm8tsbTUE6a9uialUQbhHGYf5tkMhvx3T3/mtj0=
=OH8a
-----END PGP SIGNATURE-----

--cXpg6bHl4+rVbTrG--

