Return-Path: <linux-man+bounces-4690-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C1AF4CF8B14
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 15:09:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5FBFB30090BF
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 14:07:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EC2B203710;
	Tue,  6 Jan 2026 14:07:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vO90y8zd"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD841E5724
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 14:07:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767708461; cv=none; b=VUR3/tvFhVlV8WRmlgN5RXXZuwcAfK+PWS7ZNateeifRTRct8pQlHCfETwpc62z9sRYjXEMRX4UouebX5NXMFgdbNHjHg1JxqmPDTZywFR/QOEoDiasbpweELKDVaDqPwJqQH2EnLVomeFuRyb/sumSrDJGWz/+xC/yl6qLlVzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767708461; c=relaxed/simple;
	bh=ieTVP94m5bS4BQPQJgchokhDNokqXe0DP2gIw7RwTY0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hs0UwmgUjNhzalZWTM2Ic/+ZpLcJCnVKY5TUMW8Oa5cccci1H1b333h2JVCysRIvRIDAJtZY8bbM4q1mSFiSr4LH5gYEhktfFXFsrjS3gT8rZ1E86BC76t9dheJyQ0YrYUYH0TzkhtGDB4JyTbxZLjC0B5qkz3mZo9HEsuhhVYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vO90y8zd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13659C116C6;
	Tue,  6 Jan 2026 14:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767708460;
	bh=ieTVP94m5bS4BQPQJgchokhDNokqXe0DP2gIw7RwTY0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vO90y8zdsxfHX+N2y/A0zR72R335/9DyNP/RvfI660n7rbwo+XYfwo2oxmSY7GdcV
	 P0aw/VYhUbjy3On4sNAbyi9MHfYn80zeaaIh5L7wasQibizADmX3KSbkT+01J0jbnu
	 TdbVyG36n72a5SWR+AoUXmq4py1qIupVtEncDuu9NTzYKwiNDpzvxTbcvo0oL1s0e/
	 0n/ISQ7hGndjOA50nKi3NKgop1wqO94n7Ynd4kYWtDLBBuCTPGQcKKCc4fHyWjiwsZ
	 AZ807CUR9jAa59V99ftdR5gSsaseVzMl5i1jGI8MhMZ4A4CDb80L33DMvXLOWmimGf
	 JewgY4Ogaigxg==
Date: Tue, 6 Jan 2026 15:07:37 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 11/15] man/man3type/id_t.3type: HISTORY: Update first
 POSIX appearance of [pug]id_t(3type)
Message-ID: <aV0XIbpcjdM0R9r4@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
 <d32b6148d2a987e686c40c3e6ffba0e25fe8c2ab.1767675322.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zncn2lfdid5dllg7"
Content-Disposition: inline
In-Reply-To: <d32b6148d2a987e686c40c3e6ffba0e25fe8c2ab.1767675322.git.sethmcmail@pm.me>


--zncn2lfdid5dllg7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 11/15] man/man3type/id_t.3type: HISTORY: Update first
 POSIX appearance of [pug]id_t(3type)
Message-ID: <aV0XIbpcjdM0R9r4@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
 <d32b6148d2a987e686c40c3e6ffba0e25fe8c2ab.1767675322.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <d32b6148d2a987e686c40c3e6ffba0e25fe8c2ab.1767675322.git.sethmcmail@pm.me>

On Tue, Jan 06, 2026 at 05:08:00PM +1000, Seth McDonald wrote:
> pid_t(3type), uid_t(3type), and gid_t(3type) first appeared in
> POSIX.1-1988.[1]
>=20
> [1] IEEE Std 1003.1-1988, Table 2-1 "Primitive System Data Types".
>=20
> Signed-off-by: Seth McDonald <sethmcmail@pm.me>

Applied; thanks!

> ---
>  man/man3type/id_t.3type | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man3type/id_t.3type b/man/man3type/id_t.3type
> index 34ea0029b5de..c4b87642c755 100644
> --- a/man/man3type/id_t.3type
> +++ b/man/man3type/id_t.3type
> @@ -46,7 +46,7 @@ .SH HISTORY
>  .I uid_t
>  .TQ
>  .I gid_t
> -POSIX.1-2001.
> +POSIX.1-1988.
>  .TP
>  .I id_t
>  POSIX.1-2001.
> --=20
> 2.47.3
>=20

--=20
<https://www.alejandro-colomar.es>

--zncn2lfdid5dllg7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmldFykACgkQ64mZXMKQ
wqk9sxAAh4GwYHEUr8YvJxK08mn20G9rgVtzaA4QImfrKc8fQdRxlm7ZlAGDzymP
wwfAsNoudTqi4ZnGU3IUJvf0SQriEk9HOj2mGXMv7wbuR4hOZMAGxDr4itHsZDkS
j0Ct+8m8U4t2hhbtT4lp1Hy4Rk5O+UmlP+MB7lEvb6Of8uxf7Yv66rhCy71DzYZI
iftwYTrQZ9DXALWcXjcmcvgYKZQoSSmQQ3bojIgjkqbdsm/AP4+wN/Ba2yZPpUha
pROB3rzPbh3mnUKIvDmIvxwaWtntN+lGjwly8XAWHyGoY9j0OCDz0wS2TkGuSOCX
hunjpBfalteVSo8O/eHN1e24Fxcu76kgVVqB+qd/+9KmD3MqLS7N6Q4tqXXeYokb
yOII4FiR6oBpH4hJ3i2/S2UWgE91gV0gmWGx5ka0oE5Qk6NJugoRKb0+rwHRBD9S
+6nuwB7uaoeqKBQXKyJEdi9EVp+8K4jyfW7oqwUD//s8UdfrguNt6/gI3YUUdclu
OuhGBvTVR8lVo5IDM/EXfoLy1mwWWKEDf0CKQkxfcOTW3eRipFKw+575tuMHkSDG
yC3xzZtAGc1mbox0Gicrfo59n0MNL3AYIKLyI7fccS+1yfq3v3G7PcBvUVs0L5VG
1y9T4KK7XaWCD3o/yRSCbRRlU3YfRbM3P7UF+luLUmi2DyB7oUY=
=DEFW
-----END PGP SIGNATURE-----

--zncn2lfdid5dllg7--

