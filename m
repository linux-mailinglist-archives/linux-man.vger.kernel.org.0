Return-Path: <linux-man+bounces-1616-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A66C954880
	for <lists+linux-man@lfdr.de>; Fri, 16 Aug 2024 14:07:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1DF56B20D2B
	for <lists+linux-man@lfdr.de>; Fri, 16 Aug 2024 12:07:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1CE419DF42;
	Fri, 16 Aug 2024 12:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHrxzTll"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7280E13AA2B
	for <linux-man@vger.kernel.org>; Fri, 16 Aug 2024 12:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723810025; cv=none; b=HKkjmHQFaFSPx78S661EvtiNi4VYleNmq4xkSL8ByWCr5+1br+y2py6YMdxuk/Pk8fsFEnJHAxw9EWFXf6cXeHGA99ZRJ1K6bXaKDj/8zbW2ItEkWAbIMjqa/utzSMiH0LB+m4FAFvZBEkXPu1Aqa1bl9VkD1Ma3nIUAXxMEioE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723810025; c=relaxed/simple;
	bh=TQtsJaMOmbDuU6lutXn66c12HYJapCJmaltrkmBqYAs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qtDYLQ4+jSVY8zZrnDg0RoAo5luSwINQf2IWSzWfpyGtCaiYOWenO1kU9vWtcWA7klUL01rNVO2pezuHi928HC62eRXCVg5Aj1gu93qaLPciPcbUf9sdc/y6VzVlE8NikHVyI4BH35yyZIFYYquqlSnPd6moCrPFWV5R+XNU3VA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHrxzTll; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3378C32782;
	Fri, 16 Aug 2024 12:07:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723810025;
	bh=TQtsJaMOmbDuU6lutXn66c12HYJapCJmaltrkmBqYAs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kHrxzTllD2QzS2O60tfC4AbDXfzRKqbcMoHNDEZKp8rPfriLA7uhRIKr6p2NViGr7
	 b5X+RCTlFUGuZF0nLD1zf3FpAzLGhDClAylx6jW2+Lb+OL9s5eSy+s5bEG9U3BFPVS
	 657FfwZWXFsI6TIJT94lrFGRFnV80vaj2kB0haKJqyWTh9jph4B7lJrO92EuTRGj4G
	 NLrT8e4FzLNMpmHqjdFCKDFGP0z7D0wzOx4vpeMOSW1i2wxtbpI52sgTfThohRvrjR
	 vYZMybx0Bqn6ZyiNH3tI/gFSgSpTWx7HMFhypkce2sLhwhxcj1ObC7tfT18adnqxNu
	 j81YT9CBU38zQ==
Date: Fri, 16 Aug 2024 14:07:02 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] syscalls.2: grow the Notes column to the right margin
Message-ID: <hz5qlcwhfgimcsaxhttuivzfbq32vsyn25sxzxmwprrln2anl4@uc4p5352cnxx>
References: <qruxkxy2wtmmaohagimcanhyoyfvmtzn3zmbasxqsgn5tvjfgc@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fwavemnktjplaxln"
Content-Disposition: inline
In-Reply-To: <qruxkxy2wtmmaohagimcanhyoyfvmtzn3zmbasxqsgn5tvjfgc@tarta.nabijaczleweli.xyz>


--fwavemnktjplaxln
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] syscalls.2: grow the Notes column to the right margin
References: <qruxkxy2wtmmaohagimcanhyoyfvmtzn3zmbasxqsgn5tvjfgc@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <qruxkxy2wtmmaohagimcanhyoyfvmtzn3zmbasxqsgn5tvjfgc@tarta.nabijaczleweli.xyz>

Hi =D0=BD=D0=B0=D0=B1!

> Subject: Re: [PATCH] syscalls.2: grow the Notes column to the right margin

I've s/grow/Expand/ for mnemonics with 'x'.
Also, we use upper case for the subject after the ':'.

Does that sound good to you?

On Mon, Aug 12, 2024 at 07:22:20PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> This prevents rows breaking when they could just go further to the right

Good!

>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>

Patch applied.  Thanks!

Have a lovely day!
Alex

> ---
>  man/man2/syscalls.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man2/syscalls.2 b/man/man2/syscalls.2
> index 7a7d6d730..795a3f7be 100644
> --- a/man/man2/syscalls.2
> +++ b/man/man2/syscalls.2
> @@ -140,7 +140,7 @@ .SS System call list
>  .\"
>  .TS
>  Lb Lb Lb
> -L2 L  L.
> +L2 L  Lx.
>  System call	Kernel	Notes
>  _
>  \fB_llseek\fP(2)	1.2
> --=20
> 2.39.2
>=20



--=20
<https://www.alejandro-colomar.es/>

--fwavemnktjplaxln
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAma/QOYACgkQnowa+77/
2zL1kg//QtIp92LcWLxTtkuL1ZDE/Xk6Sn64kv/+1EHepOVJXLdnpcGHaW3VCa+C
K1u77Fm3yw3IfbOr7buxPUrR3sa9VLXIQMYq8507qm/KYWP69F7K7kVDgw5ha3vg
lJa3wyQaVMCUm4tYhvC8rkRgKAf0MRvtwWxlCxQZoAavwQeN/xC/GVUTPBMaOGpe
PyVyN+N10fwe0oO1HujHdDyjgn+ez3rYpQsjCeJYOBQbwQKEb77ZEL42FiMe9gs8
u1lGsPcHn7I5MYi+cDF4nGmG4TlIzqlahcFdpM2H8lZbWr2HbxaIIVvWOjaPMZFO
8vMgmjnO1UHDcr4Fow9dbaiOT2IGMg4yKmVKtw2U3uOeCKbXDzVQnmJfxsiDcAPa
SZSDQKs9lp9wWg0yRIvQgpa1kw7ZB5+DcNf+2GyTeS8ZU69h6ol3DZbC/LBnGutV
loLs28YOYupsyweL9XjSiaMQHmyIhHj3wQ5j+/05IKHOTSQc+8zMBU2+C2mRywhl
1Q83WUkmaIdAc0VwXi3tPwbrSa+iwrbPN2CXJTb0zSgTNbChkgzfWd9+0pDQmTJK
9rkkGJ6J/VGobg4VlKjdp1r1U5g5XxZPQ1pEDLczRKgjhQO+CeVLUrXF7JlUk3ju
pGgwzfuuRVPnj/VDSGmITEXkeYZFAsUPh3cq6PuxazL+K2GdxSg=
=9ZZl
-----END PGP SIGNATURE-----

--fwavemnktjplaxln--

