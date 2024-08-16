Return-Path: <linux-man+bounces-1614-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AE01F954839
	for <lists+linux-man@lfdr.de>; Fri, 16 Aug 2024 13:47:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E1BE31C22068
	for <lists+linux-man@lfdr.de>; Fri, 16 Aug 2024 11:47:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4F15194AF6;
	Fri, 16 Aug 2024 11:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QiTpto2q"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66D4419DF9F
	for <linux-man@vger.kernel.org>; Fri, 16 Aug 2024 11:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723808832; cv=none; b=V2JBP6Qq2IdXtVUsgBRMwE8ylvqBjkpEs0LlNyCmb38HMr3RTWz4ZNILVz7Io0TAHWeMyEFfmRvuuO4jCMx+LCuroSzwnUUv/1zRRPRQHQUypcYc0WBBJQMVWo6t2dd65wGey9kgIyW+sFF1d6DyMBN+mP02OGW9xJDarxyihFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723808832; c=relaxed/simple;
	bh=1bOHboniVa7ZfGWdVnKn9jQkwoUBSjAaSpu/vBSl/yo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k2h1eI+OQ4OwZkKprLZXfkZiJ3yKWxqZrhwte37bfImBsukCFug+9zg2evQLdfoA3dza0KkQNyG9+oJkzyWi2V0upVB/NsQcZL5jYEFy1uZUzpD4HYshBY68Hu2qA+XmTj1htQ8COawYeo8Ts/P9EUdZOEvfb599gRJEC+mWKFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QiTpto2q; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 375F3C32782;
	Fri, 16 Aug 2024 11:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723808832;
	bh=1bOHboniVa7ZfGWdVnKn9jQkwoUBSjAaSpu/vBSl/yo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QiTpto2qrpvONFb10vcGTzC2W7n6f6jZHsqrMq5cIElUzql2s/TJgkSrzB7moBE1M
	 SPzA3lGN15I6Gx3WSdcdu77AqCqVWIqBmli7dSS8ty656msOIfjfy77ezeosJYrtig
	 ikI3fCG0ieGGjWnIr9ITgj74WUqV2OSmUBYSqD+Wcr2PnhWh4b0VCe3SLfHusQMINv
	 OKVfAFqT9Gi8B4e18JbTHfSHpNHM/g1boJENl+vRHBjh6r9yMwxP2hKxfHdRda+Civ
	 jcVkDtlEojyTDaxpjq9NFjwnkoNMAJDMk/LY8ks42Hqkgyj4DqdDlovJJ9tbNp6c5E
	 cZtQ0qi9Uunng==
Date: Fri, 16 Aug 2024 13:47:09 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Lefevre <vincent@vinc17.net>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] nextup.3: minor improvements
Message-ID: <a3kn6smqwspla7x5cl5tccupn5myo5ba5gemkb7a2ea7zzbr2n@txtqxk7jvpvm>
References: <20240807105617.GH3221@qaa.vinc17.org>
 <oa5aca4pqtnnwjopngqkouwueglyujmusnms535mgh4ipyawbk@4wonm4ymhcdv>
 <20240808025636.GE3086@qaa.vinc17.org>
 <wpkh52aryrsgp52qur6igf5uwidbhetszb4krfcfgfpyarv7yg@abea5srk4kuy>
 <20240808115610.GC2669@cventin.lip.ens-lyon.fr>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ahqqd3jly4g3tgst"
Content-Disposition: inline
In-Reply-To: <20240808115610.GC2669@cventin.lip.ens-lyon.fr>


--ahqqd3jly4g3tgst
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Lefevre <vincent@vinc17.net>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] nextup.3: minor improvements
References: <20240807105617.GH3221@qaa.vinc17.org>
 <oa5aca4pqtnnwjopngqkouwueglyujmusnms535mgh4ipyawbk@4wonm4ymhcdv>
 <20240808025636.GE3086@qaa.vinc17.org>
 <wpkh52aryrsgp52qur6igf5uwidbhetszb4krfcfgfpyarv7yg@abea5srk4kuy>
 <20240808115610.GC2669@cventin.lip.ens-lyon.fr>
MIME-Version: 1.0
In-Reply-To: <20240808115610.GC2669@cventin.lip.ens-lyon.fr>

Hi Vincent,

On Thu, Aug 08, 2024 at 01:56:10PM GMT, Vincent Lefevre wrote:
> The current "If x is 0" condition is a bit misleading because "is"
> is not the equality test (just like when saying "x is NaN") and 0
> as a FP number stands for +0, while this condition should apply to
> both -0 and +0.
> Replace this condition by "If x is +0 or -0".
>=20
> Replace "Nan" by "NaN" (typography used everywhere else).
>=20
> Signed-off-by: Vincent Lefevre <vincent@vinc17.net>

Patch applied.  Thanks!

Have a lovely day!
Alex

> ---
>  man/man3/nextup.3 | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>=20
> diff --git a/man/man3/nextup.3 b/man/man3/nextup.3
> index 285c2bcda..568f3b13f 100644
> --- a/man/man3/nextup.3
> +++ b/man/man3/nextup.3
> @@ -38,8 +38,9 @@ is the smallest representable negative number in the co=
rresponding type,
>  these functions return \-0.
>  If
>  .I x
> -is 0, the returned value is the smallest representable positive number
> -of the corresponding type.
> +is +0 or \-0,
> +the returned value is
> +the smallest representable positive number of the corresponding type.
>  .P
>  If
>  .I x
> @@ -52,7 +53,7 @@ of the corresponding type.
>  .P
>  If
>  .I x
> -is Nan,
> +is NaN,
>  the returned value is NaN.
>  .P
>  The value returned by
> --=20
> 2.45.2
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--ahqqd3jly4g3tgst
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAma/PDwACgkQnowa+77/
2zKTVg//a9q94n5la+sGmEI5LvqSg8F9+jeRu81eoaZ28oQJb1tp37umezt8BJEv
VleCbPs62YarvbT7HQ3C967UrWZ6qtvcEqzqEwZlhz/ejFT9njeaegiNG9nKEQGE
iOiDx16xAnbqpvZwlwUiXtvm+177vN8XNct2PZg6g+xOFlj1lbabizekk8NzMypZ
jYETYK5BW2dX/xXCkKM4B2l3nnlbnW41ZSksaIpyy3Z2qOIOADtw5QmgWoqaROd4
PVNZK6avAA5TM8eUpWMgtNjnmqKFA7e/kpPYP2sYbid5Sr7E0w2/gln/qilNEuiF
5gGbSEL+6P0KdcP0jcqVHT+WmTZVZv/5dIkTlGr/z95vVbfapSPh1P/TY3u2rmrV
nD6vIbGtjvrfa5KRk86B3WOCShy36ARKj7t7NIjO7LvYo8fkCIne8dj1XRx4FftB
IRB6PEG2bfYQlmCKAxPfe+/gIetdTH1KeNeXQXZCEU5VuTcB8kzW/1Cxi80JDouX
kb11h0VVM9ss0+ieeC6boyg36pWxIsQJUh4o0BrXz9n/NX/ow1Ao1VBaVS9u0M5e
fs78aRO7RuxFRG/WLb07KWuxP34HhBkYmuKBZfQGKTK5LbSBG/PfRcm/qOYwOq/t
X3vZeyJVFcfr67k9tD1dWF6OIbBlZkfQysTKSJgb2ItnPJnljL4=
=Qud3
-----END PGP SIGNATURE-----

--ahqqd3jly4g3tgst--

