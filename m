Return-Path: <linux-man+bounces-313-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B086781FB26
	for <lists+linux-man@lfdr.de>; Thu, 28 Dec 2023 21:14:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 69313286740
	for <lists+linux-man@lfdr.de>; Thu, 28 Dec 2023 20:14:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4738101EF;
	Thu, 28 Dec 2023 20:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LNaTenYX"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CF7810941
	for <linux-man@vger.kernel.org>; Thu, 28 Dec 2023 20:14:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32185C433C8;
	Thu, 28 Dec 2023 20:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703794462;
	bh=G5K4BNbRCTvG9Uk7H4QuRqwhp2lxPXDigT1dNn+u/Jk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LNaTenYXU/HM+Vj4rRZm/FUW9nLvpgbevmEvYy07GKZC5KcwV2yUeHBFcEF9bCVbb
	 CrmMoswOlrORTYpdKxr1/Q/+FggbFtSMnBweJEf2ajDh4eCw7cWbTEnlx6LJz+dhsh
	 A+yQGNFfX7CoZk/Cn3pdvMna7sNeOSk+95XzMrFBGUmsMeaZMk04otGTyddInXdHvz
	 jeNH+0k359LB63lFPM1ul3eo7XGKtcHQLTQ74J4tHaeO3XxRX4covN72LBdo/M9ULf
	 wYoCevqrB1d/HFn8uqPQ7wa2KwvrZ1LWO/jY7i/kebWsIS8WLFenyxi1sSPYH05xar
	 +1AIatRmr12ow==
Date: Thu, 28 Dec 2023 21:14:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3] stdio.3: note down fmemopen(3), fopencookie(3), and
 open_[w]memstream(3)
Message-ID: <ZY3XG8_EaukdhKi4@debian>
References: <owwpm3vgvq3sme3ev4poriwqcokscunppxu4rj2t5lmxzrc7vn@tarta.nabijaczleweli.xyz>
 <nn6xod4zdcimrh2pbhng4n7ff4x6g3pfjyb6u24swkno7thzx4@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FM6+zz8jds62QlFi"
Content-Disposition: inline
In-Reply-To: <nn6xod4zdcimrh2pbhng4n7ff4x6g3pfjyb6u24swkno7thzx4@tarta.nabijaczleweli.xyz>


--FM6+zz8jds62QlFi
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 28 Dec 2023 21:14:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3] stdio.3: note down fmemopen(3), fopencookie(3), and
 open_[w]memstream(3)

On Tue, Dec 26, 2023 at 05:03:37PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> I was looking for fmemopen to remember I was actually looking for
> open_memstream, and it was much more difficult than it ought to've been.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>

Patch applied.  Thanks.

Cheers,
Alex

> ---
> Sorry for the v3 for some reason I didn't amend the commit
> (blame it on the holiday cheer).
>=20
>  man3/stdio.3 | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>=20
> diff --git a/man3/stdio.3 b/man3/stdio.3
> index 833230402..0809b4536 100644
> --- a/man3/stdio.3
> +++ b/man3/stdio.3
> @@ -192,9 +192,15 @@ .SS List of functions
>  \fBfileno\fP(3)	T{
>  return the integer descriptor of the argument stream
>  T}
> +\fBfmemopen\fP(3)	T{
> +open memory as stream
> +T}
>  \fBfopen\fP(3)	T{
>  stream open functions
>  T}
> +\fBfopencookie\fP(3)	T{
> +opening a custom stream
> +T}
>  \fBfprintf\fP(3)	T{
>  formatted output conversion
>  T}
> @@ -243,6 +249,12 @@ .SS List of functions
>  \fBmktemp\fP(3)	T{
>  make temporary filename (unique)
>  T}
> +\fBopen_memstream\fP(3)	T{
> +open a dynamic memory buffer stream
> +T}
> +\fBopen_wmemstream\fP(3)	T{
> +open a dynamic memory buffer stream
> +T}
>  \fBperror\fP(3)	T{
>  system error messages
>  T}
> --=20
> 2.39.2



--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--FM6+zz8jds62QlFi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWN1xsACgkQnowa+77/
2zKVbA/+J9c7B9spVjecBHvDvnKyJoYFAeBTXu3cQjgCSnOhV9V9GF26lAqsF22D
cFVbuQnszygfkxfv8ANM+3cl5EdqYLiumG8IEaNW0KX2uU6b81315bQAZYPIgWYD
qY4Wsmyj5zjmq7fYXaTFgc5xfTonllQEXXwQdfl80NAAZWrjeOQukubrWVRvRsEi
KuvXj09+6tWPPgNUUGaPY6eERGUEeEKgpcC6RdfJ3jPvTA1hf0AzW+6FfGnnexgL
WgLmG4lDzzBCMPvU568gFGmjs847zfRmixPiMRHw2DCunX2ePIXpBBMGo+U5wLJq
IQpW7JJM3zgDrvOSwLYGvMRnChL9fpiHrvR0inxJ73KAPIEfnyrd3nlH6uUrBUUz
VfQ4SS+lMgKDMiR72Q4mENLyk8C8EcGpIlhXP+sx5a51Lxwmqs8HFvR1Sxxi/wav
QYRP2ZGh1cq+S4bfSgNBFgXeLRvgHrA2vo17bBuy+MBsXH2iSeP2JqVa+bpj5Oki
nzDgOPKBTVemMl6qlnLv9yw7UgdJrVg216wk4/mnMRTmzLh9o5hbUvZGZKKEy4aw
KUu/4Z5SZ5QwkmubowmFcYBziarZG5/X/owImCD55833O6CxvkwPlSgN5smdtj5s
1qjGUQf1h4B6sK3HRbw74fEp2FkN7nOU8jXlQlPN5RC+mM1kpdc=
=hKsM
-----END PGP SIGNATURE-----

--FM6+zz8jds62QlFi--

