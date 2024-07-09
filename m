Return-Path: <linux-man+bounces-1396-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 115CC92C1D1
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 19:09:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2C1EF1C203A5
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 17:09:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45F251C231A;
	Tue,  9 Jul 2024 16:38:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fchywKLZ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDAFB1C2301
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 16:38:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720543126; cv=none; b=CPlCrB1JIOyF1KiUqWmX/Dx65BtDJZI10SyjY9vBs0W2sBEzvMnErchi5hk4QqheL192kLxl+EzgcKU2ilmtdu4gSSqoepzQESpYq7I9ppFvmTASJUoAjCDe6wNoqc30iuz7Opz+wAmYzTCttEMd4CPaMbWboSufvaSkHje0oMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720543126; c=relaxed/simple;
	bh=OpKT7lF/brP77dcohcS3zdPS9Gi1nKkjCuOxtUyWhDQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UxATRHHJAmGDfZv464Xf4qbfWS/9t6WJ3oQuaSdc2XDRIgZLALxl1xiyAaQKV82Y6/m8YjAjSN9S2JG+zHXRsLk/l+QrQb6j/Ku7pjeNz6LNqRCKmG1HXKwRVjeaxzH+wtO3DqOJOPc+IOXWc9uXBspnjpTihcW0qdAo04v/EIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fchywKLZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9E64C32786;
	Tue,  9 Jul 2024 16:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720543125;
	bh=OpKT7lF/brP77dcohcS3zdPS9Gi1nKkjCuOxtUyWhDQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fchywKLZKvnv4bVmKad5rl0+9U4FKaiUXFMQjWQ8JTZcc1EO0kEtFtmuvUjvTileZ
	 9f9B8ByKHq9hteH9qHuKusc9dcEyKS5CbQ4BQjaEsdzCiPXSj1HHEeOvxyo7lzxmTL
	 N0T4QGmS7GMYJBFumJbdjB3ImubjTMUJ39JtkLz25YB/SnN+vohG7yjnmQI7rl1cVG
	 FKbaxHp+A5v+w1hEexIz1uReutzU3WuilK+czBlBhqV4t18H5/1zML7bT/5KUxm+dT
	 Yq+lAEVRekzHT0pYWWEf1sEXkB9sp1+778eofTKstn6tx+JLEpl0M2PBGefrHGHeQG
	 5NIntqKvxdRCQ==
Date: Tue, 9 Jul 2024 18:38:42 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] sigaction.2: setitimer(2)/alarm(2) timers yield
 si_code=SI_TIMER too
Message-ID: <l6nvhqqcvytn4kgx6fnh4kalip6sqhvh2m75q5ee32n7k4vy2d@razgfd4n2zn3>
References: <xnwurjcbcwr3nrdpeqtt3afnafem7pbvlkiula5vvnb2mummw6@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jyzciu5oieuqpjr6"
Content-Disposition: inline
In-Reply-To: <xnwurjcbcwr3nrdpeqtt3afnafem7pbvlkiula5vvnb2mummw6@tarta.nabijaczleweli.xyz>


--jyzciu5oieuqpjr6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] sigaction.2: setitimer(2)/alarm(2) timers yield
 si_code=SI_TIMER too
References: <xnwurjcbcwr3nrdpeqtt3afnafem7pbvlkiula5vvnb2mummw6@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <xnwurjcbcwr3nrdpeqtt3afnafem7pbvlkiula5vvnb2mummw6@tarta.nabijaczleweli.xyz>

Hi =D0=BD=D0=B0=D0=B1,

On Mon, Jul 08, 2024 at 04:03:40AM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> Applies to Linux and NetBSD.

Is this non-standard behavior?  Should we mention something about it?

Cheers,
Alex

>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---
>  man/man2/sigaction.2 | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man2/sigaction.2 b/man/man2/sigaction.2
> index ce5ad7579..538028f54 100644
> --- a/man/man2/sigaction.2
> +++ b/man/man2/sigaction.2
> @@ -645,7 +645,9 @@ .SS The si_code field
>  .BR sigqueue (3).
>  .TP
>  .B SI_TIMER
> -POSIX timer expired.
> +POSIX or
> +.BR setitimer (2)/ alarm (2)
> +timer expired.
>  .TP
>  .BR SI_MESGQ " (since Linux 2.6.6)"
>  POSIX message queue state changed; see
> --=20
> 2.39.2



--=20
<https://www.alejandro-colomar.es/>

--jyzciu5oieuqpjr6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaNZ5IACgkQnowa+77/
2zKJlQ/+PXwv+qJPlWjb1T1vPHkfGOsZbB4Qy1WmqWfhx4RGjl865glSOul34U7A
lLlK5zLccxUexCRcmrHZHpwyWj72UGYRDB6aT1MzF1UHOILqzlFOH6U8pjdZNVhy
UzaPgrqm+5t9E+ZoptqG5zhRiTzHYV+xn7vdGtC1X2XjjLEwX75ZNSMIfkhbNkc3
XCuY+vVoFLaOHo5JpSsoRiQZ2NdOVxqrK0o4GHDL69y8RYvqXWbo6Cao7DPDEaaD
mWyMRx/GNlLLyqzc0C5jwQGqiPUlxHCIcVeMPh7FjbR4q008gQsVTs02OZEg5opn
5rw6yIDWu0S7sHFUW+UGmtvqm3/TT7M4Rw+J+643FYeVbJwvmTxeS3Q32h7PCErU
GlAIDgbm53a3x4Z1NHMF9c9mL4ofq52KmfCU6Yhdftv5GyDbP/ZQlZ1ufBUh5pCR
r7VWG6wzgJOA9vIoM6x+E8XTMFk1nH4SaececAxTubNRLIU3QaprUICBcLliQAh0
vXQv88NuM5ccoKieTbzCmvp9ooowDmJrMCnWsLrC/bIim7IQuDbyE2ICWpJ84twR
XiStlav98QR/l+86AwydQOd0r+gFwijSGxnysEix30otQcwKG50EmaUZV1zdHBmc
STLkt/fHxP94Lh4cCRVrGcp+dAy029w4l83ws10pB15U50GjzTo=
=pP9w
-----END PGP SIGNATURE-----

--jyzciu5oieuqpjr6--

