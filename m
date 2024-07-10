Return-Path: <linux-man+bounces-1439-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D780192CEFD
	for <lists+linux-man@lfdr.de>; Wed, 10 Jul 2024 12:27:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 14DC61C230AE
	for <lists+linux-man@lfdr.de>; Wed, 10 Jul 2024 10:27:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B8DF18FC85;
	Wed, 10 Jul 2024 10:14:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nZZsNrvY"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1A2F18FC7C
	for <linux-man@vger.kernel.org>; Wed, 10 Jul 2024 10:14:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720606472; cv=none; b=SCOngqPqU7CqVX01obnlb1pLB2x84PxYpbOlvbGqWR5Pe0aON5DWoR0BD3getiqNYyx4Mcd4wprz6KWiITuO+NcstTpD8/1w0Nx7y3VRTuG1umzZVV0hLcwliJ0WBK4eH7bnGOf/12MDySlxMKlzLuiUeBVCSvKHjEK6/tc4WI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720606472; c=relaxed/simple;
	bh=iB+d4ISDgtiBi/gn420s8cbyhxv3dmipp3mfiLAB7x4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RQtuFAgZHvwBW/YgTacK/w+uDU1Uq+EZ4yD6CvqbXyK+i2Frdrp0GEamSjvWXYzaHr5Hh96k1KslsMPKY4EB1feJquQOfHyjhFx5sm5WTAJXThibFOyaX9I4fir5UWN8xuEbQcYdOy+VQasUy++MSHq0vI7SbfdMKkXylajMWJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nZZsNrvY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E771C32782;
	Wed, 10 Jul 2024 10:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720606471;
	bh=iB+d4ISDgtiBi/gn420s8cbyhxv3dmipp3mfiLAB7x4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nZZsNrvYzJGNLXBixCICuP3uDRT5LSpimCzb482hCsTRg6lZnrvprKPnTnf+Qft+V
	 NXfxd8fbshIBkURsiQNEH8eFmvDtXYaOknS9ioOI/M7xE6e2GMBWNoJuYSHJ8oaGKH
	 hrzIRQiOGfm42ohhmwLd6t7TGV5+pSW9rlVIq891HsA4EoxhrSQC1WbYm6eZc1R0A5
	 2JQ3iBY4w7GyyXEblUOJSBD7OtSsGb+0DDFIJysW0lVjJ9AUjTp0k17wbzBmW1ruWy
	 OxPcva1DVexEypQH7ZyUY3dE1Q2uLPfZRPJUX6YOSvp7DY/VA5t4RS6EJOeSt/GKCI
	 egc+rQggHcbpg==
Date: Wed, 10 Jul 2024 12:14:29 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Ma Xinjian <maxj.fnst@fujitsu.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] utime.2: ERRORS: add EFAULT
Message-ID: <2wv3ypx77fdoumexsqbn6pcpboal3qtgf5p6rn3vx4ir7jmyqr@fdo3qvvdhds2>
References: <20240710081926.10913-1-maxj.fnst@fujitsu.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wyrazmm3i2zo7co6"
Content-Disposition: inline
In-Reply-To: <20240710081926.10913-1-maxj.fnst@fujitsu.com>


--wyrazmm3i2zo7co6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Ma Xinjian <maxj.fnst@fujitsu.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] utime.2: ERRORS: add EFAULT
References: <20240710081926.10913-1-maxj.fnst@fujitsu.com>
MIME-Version: 1.0
In-Reply-To: <20240710081926.10913-1-maxj.fnst@fujitsu.com>

Hi Ma,

On Wed, Jul 10, 2024 at 04:19:26PM GMT, Ma Xinjian wrote:
> Signed-off-by: Ma Xinjian <maxj.fnst@fujitsu.com>
> ---

Patch applied; thanks!
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Df6d812f94f980b2948ec115c0f757aac392af250>

Have a lovely day!
Alex

>  man/man2/utime.2 | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/man/man2/utime.2 b/man/man2/utime.2
> index f4858d3e3..78e6eec2f 100644
> --- a/man/man2/utime.2
> +++ b/man/man2/utime.2
> @@ -132,6 +132,10 @@ or the
>  .B CAP_FOWNER
>  capability).
>  .TP
> +.B EFAULT
> +.I filename
> +points to an invalid address.
> +.TP
>  .B ENOENT
>  .I filename
>  does not exist.
> --=20
> 2.18.1
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--wyrazmm3i2zo7co6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaOXwQACgkQnowa+77/
2zJChw//ZyBbiVeDtJG2IWycKy0AUNlD60BMRICz83fmCkPZ3xP+Wklq0amNNphv
JTxMNBw3bRUHU49rW8riuw2UWeu1lkFd7SEzoYFkYcpMkAh9dOc+Wmutk/bX6ROn
oQ2z09A6zGcH1Vvqn2q5ajogpnWD8CjgupbMLIHAFUaSpFj/gwm7wja2ZC+u/tyH
LF3QSD5f5dKiMF8R6v1SvlleLd6uoF7YdjXakR5EJ5//A31W17ePTQrYDCVzlKIN
CvjpJek09+ZsQvLnCBjcDr2AOXKz7bj66LWEEbSAT7MK2/U6mtnIcB7KAjCGwauJ
/NUo6M9UX9kDsab4nv3lnZluIs2vPqTSeJAGiwCRx7S70seFqW63XwRXOT8lmkhD
9XGprk9y6quE6ZKN1m+WpcGc531NFZ6nBW8MWNgJOOR/H3F0xUC7lJUV6V1Y3J3+
I8HenQ3eQ6g2y/5RCwEUeQcnymxvaNTBkAVvTS5hj+Gp3zlg6QQRHaK6v2Ftlzvg
FOfh9ztGKJMVJC/BtmbBbGGBbki/FA+EhWn7O23cMGZpg+diELFkZ4f1hm7rnxkl
Dtl3Yl//V2J67qAtIt673PrUukF95jFf2+B5EMyanhM8LAQ8lirQa0TdejvQFPC4
SWUNiU9ACixgbBosp4FpePW+rhCNcpN22lEtveMGBLlTdMrDoGo=
=WiJQ
-----END PGP SIGNATURE-----

--wyrazmm3i2zo7co6--

