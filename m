Return-Path: <linux-man+bounces-3492-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B8BB2C04B
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 13:27:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4640A5A510F
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 11:24:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFED9322C92;
	Tue, 19 Aug 2025 11:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYPDqqwJ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FBA5319844
	for <linux-man@vger.kernel.org>; Tue, 19 Aug 2025 11:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755602694; cv=none; b=Ut+9XkBMv8u64SL0MwQMnX1iwdYrMizUhQ4ObqgSINQc0KR7MIEHJfM8IOPWbb10xAIIKpkFt2tWpcrUDwOq2R0hNeDFI2Dwra9m9mkU2zxD0B6UfG8h3gA8Q2WBdmZkSFbNryr7E+0wYnK9bFEaeBeTIsOZfFnRzdpevt1PAiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755602694; c=relaxed/simple;
	bh=h/jfD958PNA+uYD7I1sj7iE6n0vByNxV9rLlRErIzds=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ukoPg/S4by+mGrR3CiDSh/WpLbqEGA5gGnTAOVwBVwVOod0WXaabNL1ymQOiU0WVdlP1Ek9bQT6OPXJTQknh5uWrlAu3Zg/FZ7adbpLcv7gZqUkqieZ2tsAY27A1lqNUFwEfVgyidAApnJbjdDMH/WG2eLkHk0ydK3F4bX+Y+po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYPDqqwJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E17EAC4CEF1;
	Tue, 19 Aug 2025 11:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755602694;
	bh=h/jfD958PNA+uYD7I1sj7iE6n0vByNxV9rLlRErIzds=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EYPDqqwJF+Pj1wnC6bIBnL3RebBx3NTGyO6Gfjewwtbf2KoXrlUSI1iCGeW3aYRc+
	 IthbRelSdhdca2M+RnyY7fJ3IIU6nytr38i4/c1cuvCE78UYbtZg+rKnn8ld1IY3Cu
	 U7qY21W0QWh/Jb238Z2h8LVN39Ov1nIzrhmMUMfWQGftCvUhD1+CgVDe+Rk3EX18W8
	 +PD9Wh6EO0KVZLtiKvpztjH99x6inZx94YISW0uMl3opabxewyeLWlYSu+O8kGDF+i
	 O4Z2rDMGYliXSfgzJtHDkkv3huts9CdyYFn32yq5KkK4BTQZcLhLsRkLkHYyGS/J3b
	 ZaMAF/gbyUV6Q==
Date: Tue, 19 Aug 2025 13:24:49 +0200
From: Alejandro Colomar <alx@kernel.org>
To: dave@treblig.org
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man3/strftime.3: Check parameter
Message-ID: <sa3mkaxgskcwrma3g7chd6d2bokswwk6i32bn74ueca3qr7f63@tn4ddlmihqon>
References: <20250818174553.70132-1-dave@treblig.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="amk4yjb5rvl4akbz"
Content-Disposition: inline
In-Reply-To: <20250818174553.70132-1-dave@treblig.org>


--amk4yjb5rvl4akbz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: dave@treblig.org
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man3/strftime.3: Check parameter
References: <20250818174553.70132-1-dave@treblig.org>
MIME-Version: 1.0
In-Reply-To: <20250818174553.70132-1-dave@treblig.org>

Hi Dave,

On Mon, Aug 18, 2025 at 06:45:53PM +0100, dave@treblig.org wrote:
> From: "Dr. David Alan Gilbert" <dave@treblig.org>
>=20
> The strftime example requires a format paramter.  If you don't
> pass one it crashes.
> Check for the parameter.
>=20
> Signed-off-by: Dr. David Alan Gilbert <dave@treblig.org>

Thanks!  I've applied the patch.  (But see some minor comment below.)


Have a lovely day!
Alex

> ---
>  v2
>     Use a more standard Usage: format.
>=20
>  man/man3/strftime.3 | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/man/man3/strftime.3 b/man/man3/strftime.3
> index 4a3f805bb..a27dfd01b 100644
> --- a/man/man3/strftime.3
> +++ b/man/man3/strftime.3
> @@ -739,6 +739,11 @@ .SS Program source
>      char outstr[200];
>      time_t t;
>      struct tm *tmp;
> +\&
> +    if (argc !=3D 2) {
> +        fprintf(stderr,"Usage: %s: <format\-string>\[rs]n", argv[0]);

CI detected some issue in this line of code:

	remote: .tmp/man/man3/strftime.3.d/strftime.c:14:  Missing space after ,  =
[whitespace/comma] [3]

I've amended it with a space.

> +        exit(EXIT_FAILURE);
> +    }
>  \&
>      t =3D time(NULL);
>      tmp =3D localtime(&t);
> --=20
> 2.50.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--amk4yjb5rvl4akbz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmikXwEACgkQ64mZXMKQ
wqkdLA/9GVJ+xkpJVq0hhcs2HrQLHE6l5LvXjovIq3gh6lB1rj7Al/wvWg5T/0u5
MKMEc5jLoJ+20cfMAKKGcsGnExfpIWb8u+oldj4/u1ubG1WWjBgEixh84C7imU+7
bRqDvBBYQDp4ucBuJxWSTtMVOoDy8c7rYI1HtdU9I0JZ8N8HMwVKDQCUp+k//x7L
GNtJYcX6Q/2Eqdo0eL7j6VM0osPenJFsEi/NqlUpU6b1IP+clp+wB02UjmRjlk/A
u4N579LJGvFtvaMintGHL5X+aQY6RxglBQ3En90AdFPe31eX4FxM/KKroPIWxL9H
tP3ef8y76mBDLI3DoFmNYC+UW3oNbfH+KmSnN1ZtW3y7xyluOkd/7QLsgnvcH6aH
WXSW0fjODjfDXaIQ4RF8T0BzT2jQe+YkD1icXp1idpEWB0h6gKF8BLlIVgPI+/AX
OQ2qj08Hse3Q6OeJbYb9TSo2AQiqfaYLWS67hfEPJgANiFobR70yq3rwvfoUqheM
95CUtjfcIaWv2g3sr0qSaGBHg/w4R+VpBsgaRzrVTs0HH87XfPEpljk4Z0teRjAR
yo7Qrf6cVuXgTgJWAzquX3eSv1cIdVEuogEjeL5qcmC+DQ461D18xIzqXmrndP1y
tJ9GWfaFfvdAFdpSzumKYcHxUE0wwwCd8uV5omrAzpZHF9Wxol4=
=L0L+
-----END PGP SIGNATURE-----

--amk4yjb5rvl4akbz--

