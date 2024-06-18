Return-Path: <linux-man+bounces-1246-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2679290D302
	for <lists+linux-man@lfdr.de>; Tue, 18 Jun 2024 15:57:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9872F283FAB
	for <lists+linux-man@lfdr.de>; Tue, 18 Jun 2024 13:57:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A795D13B79B;
	Tue, 18 Jun 2024 13:32:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QOXLthqg"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68C7613B2BC
	for <linux-man@vger.kernel.org>; Tue, 18 Jun 2024 13:32:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718717528; cv=none; b=nEhjEojZ5h+6lHJecIfT6undj8EFFwudT2jtWGs8VRSossFsurkhhC6Ob8U0XpqLzzmGTXjheJYDigiPJ666HcdO0gv+DJ0QKn6gqj8rF+jHkq8ZtfAs4gFp57MTCeN1l2xmuYstYDrNeDLaCm4r2SPpbNaw50d+VQ3zP5Ijygk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718717528; c=relaxed/simple;
	bh=CU1X6MyaaBVlQgSOuFBiSTxSyEwdjKQyps7Sq8L5Prc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kK/QUlBq4WseG9NLf49fypAvKQeAdB+/F0BuhCWd3fS7QSSIF5lfLVgwK4SIkCXa3N5hM+c/pQClmR94PNDRJBAECd2RmKBt/bE2Zgk6vWJzHdbpjUcGx7NJXbnstZaNpxihGS+fsDNv9RITJEgpOzjHsD8yYaeAhBNzLe3CALA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QOXLthqg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F854C4AF1D;
	Tue, 18 Jun 2024 13:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718717527;
	bh=CU1X6MyaaBVlQgSOuFBiSTxSyEwdjKQyps7Sq8L5Prc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QOXLthqggoyktxEgnzUdQK28pdApmJFEY8YDwWVv/l4rSQYIbBMvOWRlIMjr6nHSF
	 0hL1zGpR9D5S8XpUibfP8/Uald4RigDUp494L5q6Or+felL7amCxbRpKLcRzbLAwsN
	 siKPHv3LXJY9dL/GX8mgfY2RvwrclvqC+LBF94dzSTKpixiA0+N580ZMYMlr+DSU6f
	 4doyOtQVdGB6B14Jq1U2TiSIxTEz61wbHNkMevQAHTANr/H4y6h5fVXRbgMacf9xJz
	 nmhGuUsmY9J9A0fi7RYGmRH50NCDVKt0Ehy0heVf/tBnYD1LLOnQnu0yPHi3kQKW5G
	 YTs7ATN0wWoNw==
Date: Tue, 18 Jun 2024 15:32:05 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Kir Kolyshkin <kolyshkin@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 07/16] ioperm.2: fix wrong section reference
Message-ID: <57pe6whtqdzwyqr223w2uhmdfi5dqyrulslrcc54fwun6dofyj@6tl6uan3vf23>
References: <20240617231035.1766780-1-kolyshkin@gmail.com>
 <20240617231035.1766780-8-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hz42fnewj4lwdxmo"
Content-Disposition: inline
In-Reply-To: <20240617231035.1766780-8-kolyshkin@gmail.com>


--hz42fnewj4lwdxmo
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kir Kolyshkin <kolyshkin@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 07/16] ioperm.2: fix wrong section reference
References: <20240617231035.1766780-1-kolyshkin@gmail.com>
 <20240617231035.1766780-8-kolyshkin@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240617231035.1766780-8-kolyshkin@gmail.com>

On Mon, Jun 17, 2024 at 04:10:19PM GMT, Kir Kolyshkin wrote:
> The man page says:
>=20
> > Permissions are inherited by the child created by fork (2)
> > (but see HISTORY).
>=20
> Since the commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS,
> HISTORY: Reorganize sections"), the discussion about permission
> inheritance is in VERSIONS.

The commit message is inconsistent.  Here it says VERSIONS.
>=20
> Fixes: 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY: Reor=
ganize sections")
> Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
> ---
>  man/man2/ioperm.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man2/ioperm.2 b/man/man2/ioperm.2
> index a2cde4721..5b6550e46 100644
> --- a/man/man2/ioperm.2
> +++ b/man/man2/ioperm.2
> @@ -50,7 +50,7 @@ .SH DESCRIPTION
>  .P
>  Permissions are inherited by the child created by
>  .BR fork (2)
> -(but see NOTES).
> +(but see HISTORY).

But it's changed to HISTORY.

>  Permissions are preserved across
>  .BR execve (2);
>  this is useful for giving port access permissions to unprivileged
> --=20
> 2.45.2
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--hz42fnewj4lwdxmo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZxjFQACgkQnowa+77/
2zLEEA//Wlnr0RZxqhK/fcfvKNxDcuD6ttLbxS2yiYj0e8C/R23/bu/2Mf/hgcv8
sc7jJ1x5Np/ntoInVgjxe0XwdLm1Xkp/C7+V1rEXPivRyebGb7ZOphpmIJ1PXiju
9ivjdRd5uwv4BwUKaov5RnnuHrMKvZqKoJLqIrdYbdfdq57DZ/qUOUuhcrjVwiyR
KV4rvxjYGjwIeWQsqum0DZDu2QCaXUShNNjMlEwrTtzaFsL+UBQCAiuL55ISVFdD
1OJUEdIl/OOjVDtcKluy9xgny/LDH3tHGmGiTrkz6pde5z1FK9l/YoHBxF8ChuEI
fGu0U8+E7tWxYHdTo2iOVbDEZb3qRKP5U/efx2xbXVK59xPwIyqJZ0BppWRScvDg
o+zRTc4suJ+9k8JByc4X/l1at1KJM1TkOs60ke2UtNyjpSeUp0lhY7oi2c8Y3I7c
oTbHP4jmHS4FtAcyQjRW8BYKcLnXm2MSzz7md1z9zQlL2UzZfo6Qb3I2zDMq1G3J
fEfOyjQgCRJoVd4+yd2ccJmqU8sVcYDY4ngF9orzHr3yrVTat9tm7KP/33jyoZAW
l3aAmfV/wpT0nMCiIEj6+MMVZwYt5wdRWYk2cQdHLfmfLPDCd/X1885sDPw0/ypm
pIj38eB5ILfIQe8zWVVSHPA9G2cwNEPJUL9g7mLsFSkNbPagjCI=
=Y5i5
-----END PGP SIGNATURE-----

--hz42fnewj4lwdxmo--

