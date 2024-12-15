Return-Path: <linux-man+bounces-2149-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9E19F2654
	for <lists+linux-man@lfdr.de>; Sun, 15 Dec 2024 22:44:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C98711652FC
	for <lists+linux-man@lfdr.de>; Sun, 15 Dec 2024 21:44:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 263CC1B87F5;
	Sun, 15 Dec 2024 21:44:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FcKifGem"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9401653
	for <linux-man@vger.kernel.org>; Sun, 15 Dec 2024 21:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734299069; cv=none; b=Fkkg9qB6w5YX+wN0+RU8fpE4kEI5woWlqcXiBx7NI/vyi43dbWgCiGEP78ckLINgz63jlHPQwl+ekCea3QAgej/Vur+gzM3/cTi6/I2bjUWBawi4RnRFRwpdYrG8PmQGAPc/2YQl8iiSVpBniZFrlvDLdw0gUopNFxVHYrm4jvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734299069; c=relaxed/simple;
	bh=W2rBkEo70QfpU6ZZNVZYf6GRtSGWf2V4BRGUni8pvPM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eQTGX/DNNEKyRejsOIdr4VlM70tdO64CzWKk96hxWBUziXb+FB7AEGCTjI7CIFI6VlfCdg0Y/P2PgZfM0wV7Lx0gpybKPfw1NnsnqvoIVQ+Qnw+Uku+dLnvvy5c6vxhzbsjU/4Mp3hOlrTMIH5kSpwvci37oIdLBqDyza/OFPUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FcKifGem; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4FCCC4CECE;
	Sun, 15 Dec 2024 21:44:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734299069;
	bh=W2rBkEo70QfpU6ZZNVZYf6GRtSGWf2V4BRGUni8pvPM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FcKifGem41ksqz4QEHS1aXU5XToAYUQ/5qUJNNo97JGGPxLTzrxjztuBLTBuzOMMu
	 HnJem8VCYweE0r0pXQJnukqUtZJDQlADUPy08wBw6S2tgh3ZgXimE57p4XY+mFdEsX
	 9G9e0T8gLRrK+fTTS5QcxMU2e9+Jl7yljaC09NQjYBfjZtlXilMWpPSlyX+qdhJtvh
	 t1iGtQA6YYSjzCSN4D64ZrXaOZi7G5zJ2kiXa/chydM4xBNe7SIXIQ6zfHMxmggTdz
	 +JpTtKIbZ08uJ2ENZ61jR/mymLLLP6pcYOJo/vZi8m/tmB9nAoZyiT2dLLgnlk3teI
	 P9OncCVOofq5A==
Date: Sun, 15 Dec 2024 22:44:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] strverscmp.3: this is NOT the ordering used by ls -v
Message-ID: <20241215214426.bykmhqabmmy7xyi7@devuan>
References: <pvaw3u77afqspd5vjqcke7qdmz4on7qsqbkjltis6hbpxqwwvw@tarta.nabijaczleweli.xyz>
 <20241215204358.toi5nb37sksfdwle@devuan>
 <wrudkskbkovv2hll3j4mfvd3hm5e5onagijixk6ymov5maolsk@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gu2gngtpai73cvrv"
Content-Disposition: inline
In-Reply-To: <wrudkskbkovv2hll3j4mfvd3hm5e5onagijixk6ymov5maolsk@tarta.nabijaczleweli.xyz>


--gu2gngtpai73cvrv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2] strverscmp.3: this is NOT the ordering used by ls -v
MIME-Version: 1.0

Hi,

On Sun, Dec 15, 2024 at 10:02:42PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> > Should we file a bug against glibc strverscmp(3)?  We probably should.
> >=20
> > And the reference to sort(1), I'd put it in BUGS, saying that this API
> > is broken, and does not sort properly.  Sounds good?
> No, this API works as-documented, and the implementation is useful.

What does useful mean?

> It's just not what ls -v does.

While version sort isn't something standard, I think GNU should be
self-consistent.

> @@ -44,6 +33,10 @@ .SH DESCRIPTION
>  .BR LC_COLLATE ,
>  so is meant mostly for situations
>  where the strings are expected to be in ASCII.
> +This is different from the ordering produced by
> +.BR sort (1)
> +.BR -V .
> +.\" because it considers a-1.0.1a < a-1.0a; this is not what you want

Re: "it": sort(1) -V or strverscmp(3)?
    (it's the latter, I think, but don't use "it".)

Re: "this is not what you want": Who is "you"?  What is "this"?  And why
    does "you" not want "this"?
    Please clarify.

Cheers,
Alex

>  .P
>  What this function does is the following.
>  If both strings are equal, return 0.
> --=20
> 2.39.5
>=20



--=20
<https://www.alejandro-colomar.es/>

--gu2gngtpai73cvrv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdfTboACgkQnowa+77/
2zJwYA/+MRkmp7IJy8+W8vm9XBZb7IPNdbHkGwtKHVkVlsrJ7mQXcHOPcgH2JfH5
uEhu/Pp2PbcHPxgS7lPW461Xi5vmjIEZjKDqbrTkvJk9Xyc1F72WxJofmEfcb+BJ
Yeo34nFVY3AKq4F8MsC+SUO5LlMscOQ7kJ3Q00Pdn90VodYcmR6PYL20LoFK+dsi
XpSUWhTyYFi0bvkJWz9nprQIHr8xTBsa3vsidF4yP42lg3Uwwg7Tf/WfrzvPf+Aw
BtViEBHFzUahdqah54OAlOWeVDWvEG+iaVZOW/LLDdlm66Ja87cz/5hL8G44vsfg
NJSNVeXw+RsamUzcmw2C8C2K36TrlAu39Ig6wUHiLhVTuqoiGeS5XXDYnaaknjj8
qU1+wWg3JleLoU7OtkYoA5bDZYv9Ni/Prdage+Yz2v2IEJ/7bWOHXjVnR0Qru74P
O0Xu+5fja4pQtAgQUKMDTdSAqvocCx+nAKMhBqk0WN5EEYW6QjtSdAXvioI30459
eOzRqdAZA+2wiyc9l8v2M/YQQXro90cvvHDrDpry6hTrDL5q/coXBgbPbKJAnSLl
Ax0sgL2a+xJ0BfpZcsgdBpRdO0sXlsrMAvgI6GHvXgnAZ6SZ9m0XStm0jU9vZlyV
5lZWivtWfbEAOU7JQ24zexutkQ2elTK4sOw9Y+YHroMvM1JUKos=
=8mvS
-----END PGP SIGNATURE-----

--gu2gngtpai73cvrv--

