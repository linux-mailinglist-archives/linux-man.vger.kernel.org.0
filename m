Return-Path: <linux-man+bounces-344-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AF337824BD0
	for <lists+linux-man@lfdr.de>; Fri,  5 Jan 2024 00:27:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D56541C221F7
	for <lists+linux-man@lfdr.de>; Thu,  4 Jan 2024 23:27:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B5712D04D;
	Thu,  4 Jan 2024 23:27:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EwTyb+0f"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66AC32D041
	for <linux-man@vger.kernel.org>; Thu,  4 Jan 2024 23:27:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32F86C433C7;
	Thu,  4 Jan 2024 23:27:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704410868;
	bh=M1aJpbtpXgUyoqu9ulrBIpx47ZVuML+XInKcwKzDSNM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EwTyb+0fcCdbrA2M9WFFJyD+MZ1/N3wGC4bxvJrE62ZLxOxj+SuJI2ASjabtSdB0a
	 6iqw6cM1742yVWqQOl+fDS3B6qqKLxRIw7puclH1a4Re+HTLcW2uvy25rEZrksK+mD
	 X7XAzW9WUK/dosmpb6oQuh+E/euF1pbeS6xQSpWB5DL/k4Hfw8vJ6siHW24wsyIer6
	 ceT8Ib+RiaGzCqBJwBssjbVk3Yy1Jadb1b8Z41jC0AiH1CiLv4jN5t8Ut05PQ15gWr
	 gI9K0UDAs8qmoWM0lFhq/cqHuQaVFQldV2JY745KvhXiUYiDa9OZLvfDYIgxhyc48h
	 2zZTvjfDitpqQ==
Date: Fri, 5 Jan 2024 00:27:45 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] cpuid.4: note which CPUs don't support CPUID and what
 happens
Message-ID: <ZZc-8e-9ul4FiXS_@debian>
References: <kyyfpi3qhcyvxvj6jhevlx5m3st4hufo6f4xbqz45wmzpe5fgr@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="i9D+2SDtb6ssw6LG"
Content-Disposition: inline
In-Reply-To: <kyyfpi3qhcyvxvj6jhevlx5m3st4hufo6f4xbqz45wmzpe5fgr@tarta.nabijaczleweli.xyz>


--i9D+2SDtb6ssw6LG
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 5 Jan 2024 00:27:45 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] cpuid.4: note which CPUs don't support CPUID and what
 happens

Hi,

On Thu, Jan 04, 2024 at 11:31:21PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> "Early 486" comes from an uncited wikipedia table, added in
>   https://en.wikipedia.org/w/index.php?title=3DCPUID&diff=3Dprev&oldid=3D=
592047209
>   https://en.wikipedia.org/w/index.php?title=3DCPUID&diff=3Dprev&oldid=3D=
592047978
> but I spot-checked the rest of the table accurate to CPUs in my house
> (the oldest of which is an original Celeron, so no 486),
> and "early 486" is better than "early x86" which can mean anything.
>=20
> This does leave earlier x86 unmentioned,
> but Linux hasn't targeted those in over a decade,
> so they're out of scope anyway.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>

Patch applied.  Thanks!

Have a lovely day,
Alex

> ---
>  man4/cpuid.4 | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/man4/cpuid.4 b/man4/cpuid.4
> index bd883e6d3..0b38fabe3 100644
> --- a/man4/cpuid.4
> +++ b/man4/cpuid.4
> @@ -69,7 +69,9 @@ .SH NOTES
>  There is no support for CPUID functions that require additional
>  input registers.
>  .P
> -Very old x86 CPUs don't support CPUID.
> +Early i486 CPUs do not support the CPUID instruction;
> +.\" arch/x86/kernel/cpuid.c cpuid_open()
> +opening this device for those CPUs fails with EIO.
>  .SH SEE ALSO
>  .BR cpuid (1)
>  .P
> --=20
> 2.39.2



--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--i9D+2SDtb6ssw6LG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWXPvEACgkQnowa+77/
2zKpUw/+JUfZ+9wE1SXn3h/8UYPU5mAoOkDLWgXrUPDswCpUdbq932cwiwFMfYK8
N6B0ILcBUOfIgAsQlzOg2yFhGQlp1UNUGyPmnUOo4AvNpM8OMxiLFegLTJ1c40De
dU/MT4xc56h5kcXGM3QX4s47j5KrHIkGUA0u9hB4nmK4LAhpkIjoX5MpHnO5GBdt
FXqcbNfrvxNQuaumVMJ+ygayFCz32fvpovdJf4FLNAObpC9ueLRnRND5fe7tKGsA
MZDr05uMgH5aqoT8TschdUokTFO2UGGDfKPIRhdhpZG0u8EMvTUjwR7D22s0FQ3p
x90UoyR76kXfky+FFOucZ4559HPY4ykB2p6dK/59DCO8p2zKVM/nRCJdPqHHPemf
vGvyVx/28Iv+lJTJcEdXpQfsS6/a3C3nHFiOFMMYiggws6I2b363kJdy0W6pJyrX
gWxhzliQg5NJGUKsC6FfIMb6ylS4P0Hn3IVcQcz/+b6ZBRFRm2CfcQkNGzDaMC+B
XVixdEO1TqX7GrBqNa7ACjQ5ZJXWM1Gfen83OJQUafgSlJ9IthlrMrX0P+Kwr29Y
H3mziNr4tE33VuvMw6gJooP1pj52ID6oMeeA6777qqI1DAYMmY0qoTKlFtgUphMn
eKDBlLy800Gf4xxEH2uKKVTH8NqBY+IXqDVEba+fVZ/hkzj5G+o=
=XXt/
-----END PGP SIGNATURE-----

--i9D+2SDtb6ssw6LG--

