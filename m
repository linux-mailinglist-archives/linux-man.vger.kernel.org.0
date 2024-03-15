Return-Path: <linux-man+bounces-616-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9F487D75D
	for <lists+linux-man@lfdr.de>; Sat, 16 Mar 2024 00:34:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1E40B28306E
	for <lists+linux-man@lfdr.de>; Fri, 15 Mar 2024 23:34:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C40825A4C4;
	Fri, 15 Mar 2024 23:34:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mV56SzHC"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 856E65A0E7
	for <linux-man@vger.kernel.org>; Fri, 15 Mar 2024 23:34:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710545678; cv=none; b=IvOqSmPZz+we4AxAeMb0Xm+aWk83pBBsT7LxUFh3BTSlprvMu5tHEB79jZt/Al+uuFD1+XPtNomgNEcsLJEbjU06rC4tAjrKlOpiYhlX9Ec7e8Jl160zdU7Ne/9OtmnStjMa+KfFNG9/7Z3y2dk7+4kiHqh42BNvGDjpQI5JTZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710545678; c=relaxed/simple;
	bh=hr+XEtyEygrRTqkeNfhozJvzIsRAr/PFWNDYkXEkk68=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZxDIk9fdVA8IJRth280fw5CSOLLHumgi3ne3ubbs8dQ+eYPIYoCBrrFqieMj1U5ZVuJYjNiUxiWEOSGz/AeeF96gbSXEXzYuIl7aBkH0LoJmOVWjmSEuUDkP2r6DbH0YotXtklkyDXv9/AT9OfWjuWYjom+7gk4cSvS5iAldazw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mV56SzHC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DEEBC433F1;
	Fri, 15 Mar 2024 23:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710545678;
	bh=hr+XEtyEygrRTqkeNfhozJvzIsRAr/PFWNDYkXEkk68=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mV56SzHCXpYOw2OehPoQ0EK5+bqI+KGvCcRWqQq6gUSycA7KtCj0pCTDm7xtU9yMK
	 uwPK1b2N12HX9BOGHFPjn2nYXnf5vGup4cCU+yPzCYeweieYphUxvvTKk03a4CUCBE
	 lMebQYjIM/Uiuu7l+ZQ8fjfbLM0ChzzrGjHQbaTZhOpwtdotp6yxvRBQ4oE1rkjoLN
	 TcL5jymY8YvTxAGBEUu51ZTPoHcz4YPGf0aFWrgstcH1Zm+RsBypnf2BthtXbqAToD
	 QAjZN4ccijVu//2tayGgOhw8aBeaGdaZv+jnCVIgr81xRS5+hy5Su4sN2bjxUDAPS8
	 FOvceiKdUK+dw==
Date: Sat, 16 Mar 2024 00:34:34 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jeremy Baxter <jtbx@disroot.org>
Cc: linux-man@vger.kernel.org, quirin.blaeser@freenet.de
Subject: Re: [PATCH] printf.3: Return the number of bytes printed, not
 characters
Message-ID: <ZfTbC3v1ruEeqRfw@debian>
References: <CZTX6HB4IQ2Y.261V2LM2EIKZ9@disroot.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nr6uFVZaoowJWfgm"
Content-Disposition: inline
In-Reply-To: <CZTX6HB4IQ2Y.261V2LM2EIKZ9@disroot.org>


--nr6uFVZaoowJWfgm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 16 Mar 2024 00:34:34 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jeremy Baxter <jtbx@disroot.org>
Cc: linux-man@vger.kernel.org, quirin.blaeser@freenet.de
Subject: Re: [PATCH] printf.3: Return the number of bytes printed, not
 characters

Hi Jeremy,

On Fri, Mar 15, 2024 at 02:07:14PM +1300, Jeremy Baxter wrote:
> From https://pubs.opengroup.org/onlinepubs/9699919799/functions/printf.ht=
ml:
>=20
>     Upon successful completion, the dprintf(), fprintf(), and printf()
>     functions shall return the number of bytes transmitted.
>=20
> Fixes bug 218600 <https://bugzilla.kernel.org/show_bug.cgi?id=3D218600>.
>=20

Reported-by: <quirin.blaeser@freenet.de>

> Signed-off-by: Jeremy Baxter <jtbx@disroot.org>

Patch applied; thanks.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3De0fc7ee5e3d664c83bd0f4fc751ef80cf38ae1bc>

Have a lovely night!
Alex

> ---
>  man3/printf.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man3/printf.3 b/man3/printf.3
> index eb152aa19..15ed75439 100644
> --- a/man3/printf.3
> +++ b/man3/printf.3
> @@ -875,7 +875,7 @@ No argument is converted.
>  The complete conversion
>  specification is \[aq]%%\[aq].
>  .SH RETURN VALUE
> -Upon successful return, these functions return the number of characters
> +Upon successful return, these functions return the number of bytes
>  printed (excluding the null byte used to end output to strings).
>  .P
>  The functions
> --=20
> 2.44.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--nr6uFVZaoowJWfgm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmX02woACgkQnowa+77/
2zIpGA/+NiCFlMOSekRrI/csnSicM4tlvs8SQ22bfAOgZIMDaLG+eVDZZMAi/VFj
NvoF+gqlo5QkXWBGt+ZFVkA5Qc1ug96E6uVznGV4x0ymDEs2ClJe2RDyRG7pZAhq
IJ1DI7EJn+P8IZyGeoWTGQPjtlH8uAn7Wfr7fo/gVuMMWeC7qqwvIeY75jAEr/Ni
3E8ONSPcESAG0VJXh0Sfcg2bR8UVIucQXYVdnDkpXkamEqsxadnMCk7jTwKYhYvq
vkXFYJpo0VAXUMWOWUoasBtKaz1EuoczbyQ5DBvDAbHEGe7jClx42udmEvgmL83a
oVozkLFsAK58M9Wf4xyYwFAqKS4Nwu44ddA1Jp2tTuHzaVrCmYEx10bfdip/YHnH
IDr+eqh01KLMqhzkLEn/4YsJyeFKXHFbbc/XwGTsRXTmdaT4nfIdmvkJKbRtd4+A
9HVTefMBVF6Y3TA9q1dy3B6SjuxNCuhPFSmEwlbYgEczSv7cI5eJ/H8sKPHhy98u
hpxQwqJMlNAA7eH02pLBHnSUWE+I2CLdRoFlHQMuz/p8NlyQJC+8hIkcZVIfho7u
XMCq+cYqW7dt2Tr8+7n0Z7cp+ZBk0i598fub4RUbr8sy0izw0o2z6UYhNj6Xunmj
YZsXbJ6mCyTWV1s399t664jfOUKxvyb2UNffMe9Kt1rWOxZWNW0=
=KrJs
-----END PGP SIGNATURE-----

--nr6uFVZaoowJWfgm--

