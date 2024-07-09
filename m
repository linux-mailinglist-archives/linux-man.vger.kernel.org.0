Return-Path: <linux-man+bounces-1402-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4F292C202
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 19:14:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 926961F228CB
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 17:14:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AC21187872;
	Tue,  9 Jul 2024 16:57:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jA1+SjaJ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFC417B056
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 16:57:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720544252; cv=none; b=Mr5P+m3gfZ5L1C5zXKGJmqZJXLtWclj6VscnwYVe6mY0O6FH840hrRSQ4Or3Ork+IGM0N+0mnuNr8kKHSmDGit9af1m8tLF8sNOBG4/Z6zfa5dRXvXzCd+LxD6T7Pfl3W6YX/SOFbyx09RZqnjAFjNo1qnBrL34zYAxVMueWqXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720544252; c=relaxed/simple;
	bh=iwY4LQNOzWVj+PfieO5Z+C2Jjzr2+cQMLhFVap0dXnM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YuUU8OEAH74Mfd/5qgs4pmSw+loqoPb8XJYR2lbi84irDmkEQxfznHi92Vc7aTIDctl+Bzpvv+WZEkOXFJ3wcMjeVMOUUfA/yQq9gsYE2gAFGmR5l0O71BeDo4TqbkBhHfIOiYZ0IujgCJz6R0sJNmXMWY+38HGnKY5URvMR7kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jA1+SjaJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25AA3C3277B;
	Tue,  9 Jul 2024 16:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720544251;
	bh=iwY4LQNOzWVj+PfieO5Z+C2Jjzr2+cQMLhFVap0dXnM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jA1+SjaJ9DRfx8XvktBmPzkyLcYqCV/zx1ykFT4KvkLC486WP3AzSZblr/CuAlyMo
	 Qyta80IR3oRhYtWVjmrnRtrLQ+5Qbr1gpycC22CYKWqR4dUK0lLqH1oDTGKC6hL2nQ
	 9OHEenCZQGoPXbb2jo7kl3mw8qefKsUjtp3822o3K341kIjOeErTPdzjpHgxsXkS9u
	 dquChzM+SxaN7JAYJ0YVZTQghoGQ4ltvokYY8SpXIK8rYfxqujJs3sgMVQ3S95iaio
	 guN/0d/A4RNjbOKs8I5OcehcpQSfOh/VHOBWOtdfVBkGRu4zYRJk+zBZEuvF3CCHAQ
	 sA1v10YsncV5g==
Date: Tue, 9 Jul 2024 18:57:29 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] printf.3: the overall syntax is "%argnum$...", not
 "%$..."
Message-ID: <gbwgs4u4acvwtabte47aljprwnhhxsznh7il2yfafhwkwrysbm@ij353jrj34qu>
References: <atyx4os7275jhfsrnblyr6ykxwghjzdpdnvnrvxcskei7kbb6n@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ttcuhpwmts2avzzs"
Content-Disposition: inline
In-Reply-To: <atyx4os7275jhfsrnblyr6ykxwghjzdpdnvnrvxcskei7kbb6n@tarta.nabijaczleweli.xyz>


--ttcuhpwmts2avzzs
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] printf.3: the overall syntax is "%argnum$...", not
 "%$..."
References: <atyx4os7275jhfsrnblyr6ykxwghjzdpdnvnrvxcskei7kbb6n@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <atyx4os7275jhfsrnblyr6ykxwghjzdpdnvnrvxcskei7kbb6n@tarta.nabijaczleweli.xyz>

On Tue, Jul 09, 2024 at 02:35:19PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---
>  man/man3/printf.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man3/printf.3 b/man/man3/printf.3
> index 771e295..7b8594f 100644
> --- a/man/man3/printf.3
> +++ b/man/man3/printf.3
> @@ -180,7 +180,7 @@ .SS Format of the format string
>  .P
>  .in +4n
>  .nf
> -%[$][flags][width][.precision][length modifier]conversion
> +%[argument$][flags][width][.precision][length modifier]conversion

Maybe argnum is clearer?

>  .fi
>  .in
>  .P
> --=20
> 2.39.2



--=20
<https://www.alejandro-colomar.es/>

--ttcuhpwmts2avzzs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaNa/gACgkQnowa+77/
2zJycQ/8DxZNjDpOgNLjgt3YIjjSFGNpWGk4+s3V6mQpGWnctoHnfuI8CKVwSYcV
SziTk6hEqLGfw34EHrz3SAVOVmo332A6qCFUuR9iEwvsyaxPIQfg/gbxfz0jftU3
cg6Np5DtBhN/Zepznq13cmU2Fq8RiIvven2aaD6nmXWsbb3Ek01NbeJ9CvJFJR99
AhC3kT01dTPN1V8dl9UM4o7gwtauoLfj4EnAtIc+CfaArpL0dA3OXmWG3DzheCNN
W0PQnHNrAf0eyHV472QZWLJSM2ozwKbJsD06SW/LeapNhSFhJy4ngwM79V8ECGtR
1KCiM6uOR4zi5lY1iEev4aRMWO2CmAiBZec/i59eSK4b6KkgqjDwusTV5TcN4Gkc
Dqv+MJ8i35DOERR68Hy5hl1fWqMiliv52LEKUlcCt7SzVeLyxQBC8G5OUXqm87pC
KQTI8PBiX9GOCFTjsjgzs2J/Fw9kEeyrD3D50R7dbVxqnpYYDh7DXysJoKcS86bE
hiGe9SK7d48b8tXAJmgtY35Q9IdlN5CgVGZbnGCSWQITMM32tmEYV++Y+q2R+Ize
S02mZPU+p/MlvCBKkIBJmGtYHen2JfQYE2AeSjpIBtgESM7bFiaxdwlaQXGFJ39w
YU2oPs2Ut0C3eUG82eNjOFCH4xW9fg5zFs98gfoHa1PyZqd803s=
=ly2h
-----END PGP SIGNATURE-----

--ttcuhpwmts2avzzs--

