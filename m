Return-Path: <linux-man+bounces-2699-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A98A762CB
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 10:55:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 51D1F16650A
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 08:55:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 671B11CEEBB;
	Mon, 31 Mar 2025 08:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJHrEj1h"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2818413D8A4
	for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 08:55:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743411333; cv=none; b=BKjQ3sQ3PIErGFXEyEC/8Nkt4JCppfY33J+S2O1iPed/DBr5gWiCdUoUCO/3Ow8pEb5WiGFdWGrHUSpNvrx5QoOfNEWLBjIyG5C4KTt7IWodKSsPRuq5WuR7aeAFHF/5PHXDYkbIQaYQ6NT/6hIL5dpUNUGosxk/kQvgXfvC6E0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743411333; c=relaxed/simple;
	bh=PDKfw8BdncjJjkODvcF6Ysu4JgScox802qeIfiqV76M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JdPT88spM6JNBKZP+V/nvRRhguEfGZfigz/+9j/d8P+Fl9qJ5ceBWZ/dvgsI7LMW4pP5k1Hhni5XE1u9K7fD+l+n+d6cvdSV1aBh8TqJUZr9rMTByf2TIx9ZOIErjvsgFo4L+QdzgOxofbo+AuhQ0mvZByTw0ZjHZvZSQy4C5u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJHrEj1h; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C558FC4CEE3;
	Mon, 31 Mar 2025 08:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743411332;
	bh=PDKfw8BdncjJjkODvcF6Ysu4JgScox802qeIfiqV76M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MJHrEj1hG0hqIz9oXSCLPeXwggwDB9rnkapnCOD7rZqA7WYkgqWLVl4k3nkHkqXMk
	 /963qPTHuNdTD5Y28VasZAwffKt/43lU0qxP86wwcTCxjeiyaa/Ej/XNd6raHIlsPy
	 oWStKatq09vvP3eCO6Y5eDE6w48Qb8XDUd/zFnA2oiPoL5fHwbMRmcbiCbGibnWVW8
	 pMEwabUCi68TR0ie4nZCMBJyqHLFuSHL5FwfXxTA9IJ75rDvOh4b7yPtBv2aTFT8Mx
	 /QG83RBIJYSOvypcgY0QgeYe5pkGaiKKMvSRzx425eOco1Jjzbs4Y0nGoZp4DZs6Jv
	 bWmbmhs7v0eGw==
Date: Mon, 31 Mar 2025 10:55:29 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Jan Kara <jack@suse.cz>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/3] fanotify.7: wfix
Message-ID: <kges2dgabyhanoqbbxzx22mqf7valp3offxugrxeip4cbcqh7f@uth44hjeg7jp>
References: <20250331082759.1424401-1-amir73il@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="unhbpqybc3t5yzxv"
Content-Disposition: inline
In-Reply-To: <20250331082759.1424401-1-amir73il@gmail.com>


--unhbpqybc3t5yzxv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Jan Kara <jack@suse.cz>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/3] fanotify.7: wfix
References: <20250331082759.1424401-1-amir73il@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250331082759.1424401-1-amir73il@gmail.com>

Hi Amir,

On Mon, Mar 31, 2025 at 10:27:57AM +0200, Amir Goldstein wrote:
> Since the introduction of the FAN_AUDIT response flag,
> the response field of fanotify_response is no longer an enum
> it is now a bitmask, so fix the wording around FAN_ALLOW and
> FAN_DENY.
>=20
> Signed-off-by: Amir Goldstein <amir73il@gmail.com>

Thanks!  I've applied the patch.  BTW, I've reworded the subject:

	man/man7/fanotify.7: The response field is now a bit mask instead of an en=
um


Cheers,
Alex

> ---
>  man/man7/fanotify.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man7/fanotify.7 b/man/man7/fanotify.7
> index a5ddf1df0..ad864b762 100644
> --- a/man/man7/fanotify.7
> +++ b/man/man7/fanotify.7
> @@ -769,7 +769,7 @@ This is the file descriptor from the structure
>  .TP
>  .I response
>  This field indicates whether or not the permission is to be granted.
> -Its value must be either
> +Its value must contain either the flag
>  .B FAN_ALLOW
>  to allow the file operation or
>  .B FAN_DENY
> --=20
> 2.34.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--unhbpqybc3t5yzxv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfqWIEACgkQ64mZXMKQ
wqngbw/+MJ9ka0PlTQTdK7gn8v8ocKy+q+WKKWMhCVT3p/lgRDzB6Szx1oqc/Gsg
c1AfrqgCo6gtvEcDnB9ndZasE9A/hUdENCqrbAtk+IaUEGaSxuj3P9DbEh4erHrU
nH5faFCI9u4djoE3YuFJn6Xpy11rLWQzKDyDc9mXqQB9oh6utrHOEiS2yZi/NtHS
38JhoSUlEQkoCOVVJIAZEhZXq5LIuz4jByEa5XQ4hgkTVMgqSfh1qjNKbnnmHBXs
1jh4A8O56iSmNGR/0JU+NBFnsYVrwRwAvQLK+RDtOzhBEN9n5X6ekEzA+Zx71oiB
IolYgoWyI/37GRidrsKyc318HWSdZuFuiDEKcZ8twfQI2v3tv78j1Ob0frlwj9Ip
PdGuaQe+qhapKy6DoFJ0vHEWR/Mg1qHcUIydi8XOgIFVctWgXCsVg8NJuZBpKXBC
HJKtdYH6uQEMqnlXDu5K5TmysVE+5ntGIT/fRIidt/XlmDc5VuZZK05ofUbyW7ju
54c5xtqYd9WfokV/G2Mqwg98Z2WJNX1c2KyI2l7UzfAmu6L6Z4D2ZFiKj6rjem3s
jAEVg5frPe9i7l0eCudjhIsd5Kglt+6ZPA9ax5cix1wfBRWm6SZxQfp7+b7jNK1n
Bh1Oaz+BfZ8rhIxcxZZb5C/4sRk1PXdFDuon7DUDBX9Qz+mzjCc=
=nsOY
-----END PGP SIGNATURE-----

--unhbpqybc3t5yzxv--

