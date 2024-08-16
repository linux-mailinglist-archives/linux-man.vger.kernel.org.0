Return-Path: <linux-man+bounces-1618-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 778259548AA
	for <lists+linux-man@lfdr.de>; Fri, 16 Aug 2024 14:22:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E7718B22751
	for <lists+linux-man@lfdr.de>; Fri, 16 Aug 2024 12:22:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C350419DF4F;
	Fri, 16 Aug 2024 12:22:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QMmvG8D+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8548E12AAC6
	for <linux-man@vger.kernel.org>; Fri, 16 Aug 2024 12:22:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723810940; cv=none; b=YZJWcYgW8olZS0H8dehPlj/7O4QwWWEuIppnH1UPAxzYgcnvX1GfMTmlV8Qq/gd4BTCNY/jli4sT/fC4qH/QExoKUqhCY4fVIFVUA+JBsWdQM0mCoY/4p0VnO5RBuJ7ekp1kR7orwz+XJB2sQTxET/l3hsj+aEeaKUGrT4oJSDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723810940; c=relaxed/simple;
	bh=5MCDYj9PvEsCZfdDmq3qGn6IPV6+Udqx15Lk1SsxHjo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YwrrOEebiLYr3GzQdWcgN2uQgqviheeE+87QWMXK859GITYD3LCIKQK2xvY4IGMbMyOW4qpVKZSXhVTIhfATE/LblVUlaS9L89LLwXg9l0irKYv0rwm0h1zUvdhO/MaPCEgOiu3G5lv2+DYxZhwA3dQLvuIZ6tJgxqF+wG+l18w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMmvG8D+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A289C32782;
	Fri, 16 Aug 2024 12:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723810940;
	bh=5MCDYj9PvEsCZfdDmq3qGn6IPV6+Udqx15Lk1SsxHjo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QMmvG8D+IlMqW9B2GQeWjRj+521p0luEXn1QuoHffcHtrmQYYryUb9BYEXtH+/RrD
	 YixIr1PzPsMNiuf+BGDFTjEv/Vp+4UGJy2WlJTidM1mhLBPky70p4Iaj8IOQBjYU6d
	 rULqeFzOHYvgNaEmqm+PGpWZMMJXMm7EuVUs9yAUznkLIlmkbDBlr5ZE9WrNdykkpZ
	 UvjFNKYyI+AAHRTukbeBZ5X6arX8Fiszx6EtP7sThA0lvGfmyr8cIyO3HdjGd7SLoA
	 /58PN8hfwJAMotfn0qZUr3h/95AMWk/66LeN+CXnCmkLSN0P+OZ1utymV87vO1iCVP
	 X3dyG+OlmlFNQ==
Date: Fri, 16 Aug 2024 14:22:17 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Dirk Gouders <dirk@gouders.net>
Cc: linux-man@vger.kernel.org, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: [PATCH] regex.3: *preg is initialized with regcomp() -- not
 regexec()
Message-ID: <wjxwwjordhf32423k3457tsaq2mxbo67abck4yovycc2uel33i@fcocy7lvcxtf>
References: <20240813185011.3806-1-dirk@gouders.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="q2x73joyc47pyroi"
Content-Disposition: inline
In-Reply-To: <20240813185011.3806-1-dirk@gouders.net>


--q2x73joyc47pyroi
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Dirk Gouders <dirk@gouders.net>
Cc: linux-man@vger.kernel.org, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: [PATCH] regex.3: *preg is initialized with regcomp() -- not
 regexec()
References: <20240813185011.3806-1-dirk@gouders.net>
MIME-Version: 1.0
In-Reply-To: <20240813185011.3806-1-dirk@gouders.net>

Hi Dirk,

On Tue, Aug 13, 2024 at 08:49:51PM GMT, Dirk Gouders wrote:
> Fixes: 1838a55edd6c47cb ("regex.3: Desoupify regexec() description")
> Cc: =D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabijaczleweli.xyz>
> Signed-off-by: Dirk Gouders <dirk@gouders.net>

Patch applied.  Thanks!  And thanks nab for the review.

Have a lovely day!
Alex

> ---
>  man/man3/regex.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man3/regex.3 b/man/man3/regex.3
> index d49bcd465..3069489cb 100644
> --- a/man/man3/regex.3
> +++ b/man/man3/regex.3
> @@ -135,7 +135,7 @@ is used to match a null-terminated string
>  against the compiled pattern buffer in
>  .IR *preg ,
>  which must have been initialised with
> -.BR regexec ().
> +.BR regcomp ().
>  .I eflags
>  is the
>  bitwise OR
> --=20
> 2.44.2
>=20

--=20
<https://www.alejandro-colomar.es/>

--q2x73joyc47pyroi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAma/RHgACgkQnowa+77/
2zIkkhAApl9/D63nosLYawx2bvfxWrJlzg8q2tbaEERFZhFq5zU5ucV5DcoN6iGe
5JTWiPLzWEIIsaqwo6LqWZyNkd/CMkYTApSNoBHyn2/Q3ka42VaVO+AiYDnhmnl1
hAj3vLkm9L6IJlP/BNcTTNYKxRnZaE0rAZWA5p/WVuEqNTuSdv3usyomKhnq7vr8
rqoV2cvA4331rbV0X6PsWJxQw6TIKn6Fb+rUkV3jdfqPBrI6YAnSrUFjUkmrnfBY
MaBdvRmvFwgcCMTU45flAhvVqCptYgahrsJfn/24bF6//NImzREY8SfOSbOiN/y7
aaHSTMIHdMoCdtP57AaAZ6sLDDHjoIf1RSV7ukt/nkqnv/ysziihw3Zx44/4nKhp
sVzyKwlUHnXnb8oUcPg8KN2oFWyb2Jyw5DW3Eh+aPpOQ/ViYKJVhiLThZLlQNdd4
32/xvf039zrqNAh0Qys+CVGZxNn/zPNEM+k5SOGHK8i9e5tYKOwlOB0AY1rlrtoJ
w+nYgMoJoMWrMghupkcLe5FCAt805uSL+FrQkyYRIJ3GCeh5QAtPfiNij3RnjRhp
9tRxylOxHz0b1tBHxoo7Kb9BWGEQ0TQEs/P9p59yss0t1u3cpI/01pSAHCEmzrKe
5DtzIv2kLo9M0qzFdsvV5QK+B4VD3hhSrLTqWXGXWVJeHInwFWM=
=esWB
-----END PGP SIGNATURE-----

--q2x73joyc47pyroi--

