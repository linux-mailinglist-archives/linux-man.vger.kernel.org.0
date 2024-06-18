Return-Path: <linux-man+bounces-1249-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 73CF590DBDB
	for <lists+linux-man@lfdr.de>; Tue, 18 Jun 2024 20:49:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A4251C2280E
	for <lists+linux-man@lfdr.de>; Tue, 18 Jun 2024 18:49:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06FA814F9E6;
	Tue, 18 Jun 2024 18:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kx1Q/HGb"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9A431171C
	for <linux-man@vger.kernel.org>; Tue, 18 Jun 2024 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718736593; cv=none; b=RuDVBa7tHOD/J32U/1qjgt4FrBsqzaPGYFewNFe1bMR28xwsIA8S8ACJf2dE4U4z4JSIwNBlahl36dZWKTo+p/DCJydOSZuAkBkgAR6lEjTsz81dys3lM+6KBDKVDxEtYJGm3cv5pqDuudPbHoVPl8Q8vrV9I6Gy5C0nWA9F9pE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718736593; c=relaxed/simple;
	bh=9AWgmI4LkPVfWYH/Qk39CMegFHIcnQCs6JkM72ZlZUU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h0IOCyMNdnbFFoZudBPE3pnp8ISs13t237IUyc6atfaJrwE23lGFc134Y7AmP358oMKnXsUJePBP/PZykYT1l4ObQu9sRSSO4imYDnry0g2JnVyLo2Zxl/IkqHz6qpc2WREZ2DQ/rBn1BHJPa1CNBY9Pk63SYeb9sVzPWwgc3TY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kx1Q/HGb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A20F3C3277B;
	Tue, 18 Jun 2024 18:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718736593;
	bh=9AWgmI4LkPVfWYH/Qk39CMegFHIcnQCs6JkM72ZlZUU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Kx1Q/HGbi4CNmW0nhsS5fLT9vkbfZ+Tics8IO2HYlDLI9Vqpe7U9/tclwKrrAXs29
	 HDv+Ognp+isSjKww0SfxYJOspsCnf3AWvk27ZuqUil2NgWi7tNYskWpzZqygdwrqAc
	 sl02Y2Gx/sN68B67BMirTC7IjGIxpa3uDmod4on+CfGcyIqtzlC42Xocei/RSsj2Dq
	 vIsj6jUKbxL5LVGd1XMbFWFI2TYwPDdzur0QYnA/iCOsca5SlHf3HvIxFKhZ1jvSSS
	 p5yLWYW9mRkVLDozMRBsyNyISaVdrWzvz8pnb/pjclcHD1Azc1fhQ5EagNKbTJPiqC
	 a6jqWxmCcZ2xA==
Date: Tue, 18 Jun 2024 20:49:50 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Kir Kolyshkin <kolyshkin@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 07/16] ioperm.2: fix wrong section reference
Message-ID: <uekr4ptkxwijvtbfyjwi7qeaf6xupkno2vv3yn2dq6rnghsert@522zvpookdje>
References: <57pe6whtqdzwyqr223w2uhmdfi5dqyrulslrcc54fwun6dofyj@6tl6uan3vf23>
 <20240618173524.1797697-1-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="anoevf7bcivncx2u"
Content-Disposition: inline
In-Reply-To: <20240618173524.1797697-1-kolyshkin@gmail.com>


--anoevf7bcivncx2u
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kir Kolyshkin <kolyshkin@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 07/16] ioperm.2: fix wrong section reference
References: <57pe6whtqdzwyqr223w2uhmdfi5dqyrulslrcc54fwun6dofyj@6tl6uan3vf23>
 <20240618173524.1797697-1-kolyshkin@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240618173524.1797697-1-kolyshkin@gmail.com>

Hi Kir,

On Tue, Jun 18, 2024 at 10:35:21AM GMT, Kir Kolyshkin wrote:
> The man page says:
>=20
> > Permissions are inherited by the child created by fork (2)
> > (but see NOTES).
>=20
> Since the commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS,
> HISTORY: Reorganize sections"), the relevant information is in HISTORY.
>=20
> Fixes: 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY: Reor=
ganize sections")
> Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>

Patch applied; thanks.

Have a lovely day!
Alex

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
>  Permissions are preserved across
>  .BR execve (2);
>  this is useful for giving port access permissions to unprivileged
> --=20
> 2.45.2
>=20

--=20
<https://www.alejandro-colomar.es/>

--anoevf7bcivncx2u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZx1s4ACgkQnowa+77/
2zKTFw//erj0+IweejUu9BxIGQemlRFbK/slpsKZGd5bi27qsmWMLJNpidMYnLcr
YKtYwzmOD6fb1ALunV0C1mTy/jdLWCKkHMmqUXKQp3vElAkMRyh2GO50iPYzmDBm
0XZQKo4MB4BQuzmVUtpicaBkrE9YUjytCQnaeVfUBBQjPR82NNfVQLzYYN62II3B
ZJgSays4oe2sMLCRVm1cCTTsUKAuUeQJ/YGfqHMWo+dvSaD6757+Dqk3SXc4K0gZ
fzxaPSXhuM7XeIxieBPZFh8slVd0JWbURnevJ2GhgWt19CjwBgtXBCGiTBvCXqE7
KhtvjnWbgRt3+IkM8/JDL+YoudW4FA8o6SMLRgTRu5bOCMc4LkFWev7xNN7wTwjf
5HL44adjxfHO9i6VSH7PjQRcS3nRoVnZC78ozy+lrYRtNCDtey8tUkb2cy6IuFVM
Wjgq5YLzx8Obgz1n9ZGMPe83Q7QdXeJGH/BdgVyB1ITdRv0f0D1KavvezQxLVrd3
Uh6LHupsrsrl6Rl4MlkRstPwLEK+PPxsqd1/xWuUAnP4s3VRDEfsE2Ln5pZkFT+I
JUmAWCXzkeZyri6SL2voJK99PEetYjWaLlKr6OtPIuqoLa2egurUJeOmsa9AcO9f
xusLFviCBT1qBJrM58nWR2/3KfORVac2FKOf81Z1st+dNRTpWqI=
=6eKs
-----END PGP SIGNATURE-----

--anoevf7bcivncx2u--

