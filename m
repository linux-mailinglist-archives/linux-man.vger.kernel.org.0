Return-Path: <linux-man+bounces-595-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C621087C12C
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 17:22:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 821FB2812FF
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 16:22:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C08773500;
	Thu, 14 Mar 2024 16:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwF/G4f+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEE446FB80
	for <linux-man@vger.kernel.org>; Thu, 14 Mar 2024 16:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710433343; cv=none; b=NnOLVQmlb2XN+QoGryv7My8yUv4fAahqolXFwBc7X/2h208lV0w0irg1ahZIvSR0X8OFWbwqbfVcJn/KXmCPIVH8fsfJ8nEsPzdKnRipNzvAWAdUcsWwr8Hmm0bDBicjr8gOU+nC0jp0LVVtdKc87m8yHPmk8M/XctQwXuvfQoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710433343; c=relaxed/simple;
	bh=N5OlNx2UpL6hNBkBtVl+33/g4nwcDnSupml37UJPvkQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JqpB6IEJzrUuWc9AHKe+dS2M4LCnbeneAQgWdUfNUaERv+xPgEG+8DRLMBXnHw08XeDG9qCFIuvDV6BqiA1n1gMnOu07p0o9K0tNfC5Pi3l8tyUNtqZy352eFqOddii2wxA0Pa5hoBNt8mpYlQQp46XxwFlzj0B8xOUVEJEXPWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwF/G4f+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1A85C433F1;
	Thu, 14 Mar 2024 16:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710433342;
	bh=N5OlNx2UpL6hNBkBtVl+33/g4nwcDnSupml37UJPvkQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SwF/G4f+L0EwnFImwmm4gdR//NPjU+0/JaP1syxcCBItVBW+FdAQHOvQQqcb5EI9m
	 SebqYDEMqUjw7rmst9hJ1j5Gc4JenKxfuT9v5rYuBVgPp+FybaR2q3OI/nuppYLkmn
	 ZVGR1thCKVqrTLjFKj53krXxeZzKwAQ/rV77witHR5EeO7+aC55OILsBbvWiCvh+IU
	 kW9fUcNrc9R3EMsBunT3Pu8Brd+jI97oGHVRxA2rmyWwT4I0nloNpYmnKC2vjtLs0A
	 nuSI5/As085bNddmr6iYORyBZ6jbC8AkANhTik73NI5jw8HAi+ifBrIt2BgKhdLv6k
	 bym+AKJwbPEqw==
Date: Thu, 14 Mar 2024 17:22:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 3/6] proc_pid_io.5: wfix
Message-ID: <ZfMkO8VeD63b-ucQ@debian>
References: <1513ee2073bcf0fae7bb720bcee8a8de847e5cf5.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
 <b59362221695a6671c767e9b3adf4e671193acb2.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="UlYbgzTUTAr5dJ8z"
Content-Disposition: inline
In-Reply-To: <b59362221695a6671c767e9b3adf4e671193acb2.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>


--UlYbgzTUTAr5dJ8z
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 Mar 2024 17:22:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 3/6] proc_pid_io.5: wfix

On Wed, Mar 13, 2024 at 03:26:48PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>

Patch applied.  Thanks.

Cheers,
Alex

> ---
>  man5/proc_pid_io.5 | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/man5/proc_pid_io.5 b/man5/proc_pid_io.5
> index f66d8c635..4d97bd95f 100644
> --- a/man5/proc_pid_io.5
> +++ b/man5/proc_pid_io.5
> @@ -88,9 +88,9 @@ .SH DESCRIPTION
>  while process B is updating one of these 64-bit counters,
>  process A could see an intermediate result.
>  .IP
> -Permission to access this file is governed by a ptrace access mode
> -.B PTRACE_MODE_READ_FSCREDS
> -check; see
> -.BR ptrace (2).
> +Permission to access this file is governed by
> +.BR ptrace (2)
> +access mode
> +.BR PTRACE_MODE_READ_FSCREDS .
>  .SH SEE ALSO
>  .BR proc (5)
> --=20
> 2.39.2
>=20



--=20
<https://www.alejandro-colomar.es/>

--UlYbgzTUTAr5dJ8z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXzJDsACgkQnowa+77/
2zIoOg//T5AElZn3UKSLQynf3MMPvWqmhaXAFU2xnYpywMxou3oNOiAMEikDXbW/
LYnWUts2Vht68PKLrrXWclUCf1DWey0qOsZ3RzJlCJHFc4D6RWNxVG0TEbD0Smv4
p3HNsMz/yjjoLu+R0LJSzXh5NpI1DHslMNoKajIH0c56t5pabpxPRVo0o9VB8vV9
SJzBLqkQvNwRWIfwbmBZOxNZCyP2XrCqUTE3KwGt7dWOzeER7843knLbpN0t1dxg
JXdVmYmCGe16cMcpx4nNQtnj7bDwBzjSKMLS3Ku8hcejpMmS9xXHEw4jNKDMn3nW
zXeTvCn6QqEL9TklLaU+rRDmA+iuxVQ0ntAkwaNzDIZiIus3nsrMBRTzxIzWQmvk
B62gNeuK/87KLd3jADrm6QXjL83zTqM1H/vlGDzVzxKT2LiqJLGxkTzcJELNe3IF
IF17SKWTjBeRscrMCSls4ilDE2lWVK1y0AmVTOFb+lDEIcrybvZT0GQ8jdYFu+bj
FjonmIPkJTSuS5mjQVRe3cXHg18B3vEwqFryZIYM6U0lpHqv8gpMQIZ7MIPnOYJe
KRU0FcUsJ7mQx9YRsobbcuqeJoWINDoBnwjs4jjbTFZrHDFE0yb8j3ylpwW0prck
jas1G2maEL6eQkxZik9KN5xNKKerWSYqf5EnmS5bTpHXVWjfG3M=
=taFj
-----END PGP SIGNATURE-----

--UlYbgzTUTAr5dJ8z--

