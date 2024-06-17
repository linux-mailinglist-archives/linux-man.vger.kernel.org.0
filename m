Return-Path: <linux-man+bounces-1218-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1379B90AC54
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 12:56:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BC55C1F2744C
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 10:56:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 552A71946D5;
	Mon, 17 Jun 2024 10:54:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IlFrI7/L"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B5F1946CC;
	Mon, 17 Jun 2024 10:54:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718621651; cv=none; b=ozx0bIrIBKFMUaRVYR4qUauhCyR09k+LKH5ELzRaLle1P/68aoSLn/UBY+J5Nl3CteTZbuAjWqMKUhiJvQjRwI/9/6niaZbrUYZN+2eE/67CJWIyhkIuZBtREtPvOpJ6O+VCVL6AId0V+J8ZuYPDI57O3stE+Jsj1WIv/vK5+IA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718621651; c=relaxed/simple;
	bh=rPgDYDj5ao1OWQfPVv5enLxiCvgRzh+CJooSkr92NZw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P5Rx6mz3sni2VdHLj3uialRQ/Pv9azFYKUxyIPSP3NsuaCAJnohuHZZYRF6hW0Hu9Qczzh6ceZK/+xXXgpX3g/iK0UkCM8Omnrqr+oYPdYmVODmM1E/lKjeLFcSw5s4VflHr2CDa8DiBFfggKdkytm7QDlSmVAkKRXvuxJBC2hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IlFrI7/L; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C90EC2BD10;
	Mon, 17 Jun 2024 10:54:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718621650;
	bh=rPgDYDj5ao1OWQfPVv5enLxiCvgRzh+CJooSkr92NZw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IlFrI7/LCifOAF0aHIKvw1hWZqnztgcdl3wQE2eFN2bABHcw4FSY0x1myM9beh6ou
	 HJqw3fDYeCzjlN8gH+0/inZXRhxmk/Eb9q1IjKPaCvWAyWbfzJizwBlDHlg3C0cNqB
	 2qwNGPOX1ar24sxPgWuc8iBOAVkJAs044210tqZiyo34GpkgNHMynfVywvUxE9pIkF
	 RXH8u35LsN2l0wtKEn8D5uEYd09otrm34xI/Dqu2qwS8fq+JRhr81ttnJbAr04LsAC
	 H+dVraAKA+x0f4lWS/M2kp9EaPuMhLy6lacFTihWTwEowqEDDUsE5ejhXSdAmApRhQ
	 xGOSlz5DqB4Xg==
Date: Mon, 17 Jun 2024 12:54:05 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Dev Jain <dev.jain@arm.com>
Cc: linux-man@vger.kernel.org, mingo@kernel.org, tglx@linutronix.de, 
	mark.rutland@arm.com, ryan.roberts@arm.com, broonie@kernel.org, suzuki.poulose@arm.com, 
	Anshuman.Khandual@arm.com, DeepakKumar.Mishra@arm.com, aneesh.kumar@kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] signal.7: Clearly describe ucontext kernel dump
 to userspace
Message-ID: <covxubn5xegwevqjieovannko2hyq6hzwkloltxlca6fz5ygvu@rzofsbealrpk>
References: <20240611090823.820724-1-dev.jain@arm.com>
 <20240611090823.820724-2-dev.jain@arm.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5rrvyfrw3xbp73ch"
Content-Disposition: inline
In-Reply-To: <20240611090823.820724-2-dev.jain@arm.com>


--5rrvyfrw3xbp73ch
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Dev Jain <dev.jain@arm.com>
Cc: linux-man@vger.kernel.org, mingo@kernel.org, tglx@linutronix.de, 
	mark.rutland@arm.com, ryan.roberts@arm.com, broonie@kernel.org, suzuki.poulose@arm.com, 
	Anshuman.Khandual@arm.com, DeepakKumar.Mishra@arm.com, aneesh.kumar@kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] signal.7: Clearly describe ucontext kernel dump
 to userspace
References: <20240611090823.820724-1-dev.jain@arm.com>
 <20240611090823.820724-2-dev.jain@arm.com>
MIME-Version: 1.0
In-Reply-To: <20240611090823.820724-2-dev.jain@arm.com>

On Tue, Jun 11, 2024 at 02:38:22PM GMT, Dev Jain wrote:
> The set of blocked signals is updated from struct sigaction after the
> kernel dumps ucontext. Mention this to avoid misunderstanding.
>=20
> Signed-off-by: Dev Jain <dev.jain@arm.com>

Hi Dev,

I've applied this patch, with some minor tweaks:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D9e1f221b2099ee2c936ce4d6562a61e1e253af47>

Have a lovely day!
Alex

> ---
>  man/man7/signal.7 | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man7/signal.7 b/man/man7/signal.7
> index 4ba5306c8..7d22a7cfe 100644
> --- a/man/man7/signal.7
> +++ b/man/man7/signal.7
> @@ -282,7 +282,13 @@ the thread's alternate signal stack settings.
>  .B SA_SIGINFO
>  flag, then the above information is accessible via the
>  .I ucontext_t
> -object that is pointed to by the third argument of the signal handler.)
> +object that is pointed to by the third argument of the signal handler.
> +This object reflects the state at which the signal is delivered, rather
> +than in the handler;
> +for example, the mask of blocked signals stored in this object will not
> +contain the mask of new signals blocked through
> +.BR sigaction(2)).
> +
>  .IP (1.4)
>  Any signals specified in
>  .I act\->sa_mask
> --=20
> 2.34.1
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--5rrvyfrw3xbp73ch
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZwFc0ACgkQnowa+77/
2zJ68hAAnbdVwoNO8cQtj9ulazxTwXPoHpnOHbCbvSIwJePeW9t01i1jjqL2KoYo
BtH9BY6a0k9mCRYZuTLms/gm43fKL3sCcr/Igt8NTB6EE1OiyrT5wArVV8FpC5rL
9A2tKrWb5NPtyPBEtYHyd4vWE6y8YUmPtavw/zdzplslbr2d0TW7DzpEZmR+G57C
HuqcZj0gXhYnmYDn4+mZilNbpOiWh2IXGbZqkTKaJMNMKagAp9Nn/VFkJ3VqjURC
4TA0psWkvwECrEyq/AQF/JYE+lq6FJxT4zgB/T44J5h/IrdRKG+J1U5hUZWDZv3o
SUrB2tBE5V5WQUZIdTDfvqGcm6L3RCZ6jPY3MSzPhnwW+WW0uZqhj+SUb/VIAAU4
30U761vICrNumRf3ufqD+6FI9aVZMhGhiA27YAYyIr55yfMEF3dn7qkYTg2aeRK/
BzfQl7H9DiVLXPLjguR68IXvl+QzgALS01EeAP5v0wafgEURB/me2J2AK1NcNFUp
DJS/QKWjsrD1G69n+EK40/KnEQeFgysMfXhBrDEmcEhh9vB9qKnjI8Psb6jP0yjN
yp0+UlxXI9DpfolfJ7GSxNNv2RKWRE3au7I3837vgff5gyrbjgDn5B4FXcnSVw+a
PtT49mmGVlw1VX70ItLWSrzAvsRpAMlRjVJx+E4K9Jk7ldiivLs=
=GO1b
-----END PGP SIGNATURE-----

--5rrvyfrw3xbp73ch--

