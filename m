Return-Path: <linux-man+bounces-4692-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B7966CF8C09
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 15:23:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6E46C308E99C
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 14:16:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CF4829CB57;
	Tue,  6 Jan 2026 14:16:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLVZEo52"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B1172417D9
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 14:16:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767709000; cv=none; b=jbSaLQm7RJ1K9hNvg41rv3ops06nR2Ya2XCkOj2Pqwf8+17Re0zm4DXwjp+gjtqAQwkVtPCopEMMSBuZ4NhtK8jjRadF+P0RT6KYfmRoOrrB9ynafstuSJy3AqG5r5c+zemyH/R4jHmHwW8Sj+NRmY3wj/JIW8ACDGh++SFeKJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767709000; c=relaxed/simple;
	bh=TsTfahQdFUosWHnCaqvQsIdazKFahks5+lUEIsqxn6U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HcMuAEcXF0oLbh/iATsyUNUN2qA1/ElT1T7S4kxyAi07PZDOeCokia/CU6leSO2ag99RtA0eP+1DtyZFl/UJ+/Mb1EV1j/pdupldNOvULgkx/pDvNXM/uJk7/xDN6tEuVyGDww5y6N5WSnUCU8CC7Q/TExL0usVD4IY9I6hQOno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FLVZEo52; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34E6FC116C6;
	Tue,  6 Jan 2026 14:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767708999;
	bh=TsTfahQdFUosWHnCaqvQsIdazKFahks5+lUEIsqxn6U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FLVZEo52E47HcQEfB9LNeRFgzdYTTpUfw0NJ3RXuqZLLPFzsuji88E478QnMekvH4
	 zZpWwek+eXZB841y/zHRR920HhZ0XpZ3fa+WGyavJlCw0cd7dUdC+5Ocjjm5Ofzn7+
	 NNgkR61yAsohn4xFS8mOkE4UJ/FNX8YV3ZCAgctAKFI32ZjyJLbpwzIR206bGQbAXI
	 oIx/C2xX332pF++/yBZMiGPrnhx0gqkrjAhJydcT3DEsE98hWQINWdBtfRambApMkg
	 gP52T4mR5wbu5i9L+dAMcNRNqztZYS7/LqjdcGli3uLSsfj3KLSYkshSwUQSKA0Ybr
	 DciHL/qxQCiRA==
Date: Tue, 6 Jan 2026 15:16:37 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 14/15] man/man3type/intN_t.3type: HISTORY: Split types
 and macros
Message-ID: <aV0ZPfVZv83AEwxA@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
 <903b6a6dee42c404176b4658aba98950deab9fe9.1767675322.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oujrge7m5c6nxpsr"
Content-Disposition: inline
In-Reply-To: <903b6a6dee42c404176b4658aba98950deab9fe9.1767675322.git.sethmcmail@pm.me>


--oujrge7m5c6nxpsr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 14/15] man/man3type/intN_t.3type: HISTORY: Split types
 and macros
Message-ID: <aV0ZPfVZv83AEwxA@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
 <903b6a6dee42c404176b4658aba98950deab9fe9.1767675322.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <903b6a6dee42c404176b4658aba98950deab9fe9.1767675322.git.sethmcmail@pm.me>

On Tue, Jan 06, 2026 at 05:08:03PM +1000, Seth McDonald wrote:
> Signed-off-by: Seth McDonald <sethmcmail@pm.me>

Applied; thanks!

> ---
>  man/man3type/intN_t.3type | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>=20
> diff --git a/man/man3type/intN_t.3type b/man/man3type/intN_t.3type
> index 8f68aeccee54..5078d0040cfd 100644
> --- a/man/man3type/intN_t.3type
> +++ b/man/man3type/intN_t.3type
> @@ -156,6 +156,16 @@ .SH DESCRIPTION
>  .SH STANDARDS
>  C11, POSIX.1-2024.
>  .SH HISTORY
> +.TP
> +.RI [ u ] int N _t
> +C99,
> +POSIX.1-2001.
> +.TP
> +.RB [ U ] INT \f[I]N\f[] _MAX
> +.TQ
> +.BI INT N _MIN
> +.TQ
> +.RB [ U ] INT \f[I]N\f[] _C ()
>  C99, POSIX.1-2001.
>  .P
>  The
> --=20
> 2.47.3
>=20

--=20
<https://www.alejandro-colomar.es>

--oujrge7m5c6nxpsr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmldGUQACgkQ64mZXMKQ
wqmjSRAAnEa/yUgxPbkLSOmPSAFZEOUFv5A21/6gTHLSedNHVOYmm9hsFzuH+fOe
P9jRGBYBLaDonOkr7sRp29lCZVZ+JMD4znlXI4rrfH57Pxs+90+fM2FoXf585dOV
5PyguyYUIuaqH6P8BUxY0Gibyz112m5llup3C+6Ecr9JkSE8FBSSIli/QsjvM5/V
rXee6Iv9dhPmkMeFumFmfk3YciXyCDwSW8T1XjeKYPC50jbOHRajg7dTQhTJr03X
JOs0fw3Rragrhg84Kpj3Vk8O5fvXLa5YwCmlhOGp3URuDXYzI6TXf3Sc023lC+ni
MXuH0sNmmZmDIcg7wgroGfoPB3PV6CsIGIkb7U00hzQX+MWFK4XX7NvAoAT+rJ76
rZmQ1yNKW6GkbzQhAIU18FaU3Zp9K5hKyHochRy8Di788B5vgzD2qDobYJLHoqoV
Y+NMrg0SQ/7HEO9dc0/EQHhUrrveEMGXugsQR58fcM3MtB3kJFxjBULSs9tnoOEI
pESLjsAbudJ4/d+sMsbu391q0dxQqA1Gc5njYwtvDJj/142Rj7gcL0MEG4o2ZIOl
wmXx0t+RhEGAop7l6/y1zQwrM2sRAzXNT6xcDPFKfgndk3zzHvKHzH6tcseTRwna
Zh2PgMJf84/SFQBr2SDHkVIlfoNLgEqkotxlBGXml6y/e1rPJLU=
=G9/B
-----END PGP SIGNATURE-----

--oujrge7m5c6nxpsr--

