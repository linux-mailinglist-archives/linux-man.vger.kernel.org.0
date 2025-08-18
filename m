Return-Path: <linux-man+bounces-3461-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E22B2976C
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 05:44:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 515E23B2CEE
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 03:44:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AF6125A2DE;
	Mon, 18 Aug 2025 03:44:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UOtdhzRx"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2F320322
	for <linux-man@vger.kernel.org>; Mon, 18 Aug 2025 03:44:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755488665; cv=none; b=g9p5Ix9bZ4WkqlnlSLKGUPxwy52HIZRltDATl6BGXNCoLp9gmMbH7T6LbL2cQy2h7O9JubAVzuNRGyHc9PSo8cMWqqUfEvFWrLGnR8BmnPIRhiKBYY5jq9gxqC5Sk05eMhq9it4NJnMcoS7XmeAVydsJxQ+jiBPQrp2pEz/7Jr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755488665; c=relaxed/simple;
	bh=p3SG838NR3YS7JupBq7wlDwBqXQJIuNZ3+0mrMKW+7Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XL0K+CXacq3zI2ZG/9lCLJkxKX/gd5+O33Ub1fWfa8Stn2WXLpSA7peii86mEoRIcaemKkmPTjEJAnJqCgsBcFgXMx5AD8/zZj5N4HdpYa7sLPdP3kQZw0/eN3GvDwDPjqJ1BXV07i/LOmosu0OJzeaUi6HUUjSmD+kZwxkrDm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UOtdhzRx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA246C4CEEB;
	Mon, 18 Aug 2025 03:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755488664;
	bh=p3SG838NR3YS7JupBq7wlDwBqXQJIuNZ3+0mrMKW+7Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UOtdhzRx9WxAzs07lEEWXsYMPnEfAAp4Tr58TNVC7GUHWsvAWCbUAef73mcKIaojb
	 JpeAiyjq0ga40oPImtQBo8T89jUXoqmz2nT8oR8Fk5K9cKn0ElIw7ylwurHW/XYEEa
	 5N474PTHKDToJJuYpxN/xxrBzd+E+jeRqGg0VfeIAaXtpnrtuhGpAVtVOC45ajOBue
	 yOFJ/Luf3xvenRAQ9LkBiXIjCJIk2eLSGkx22ntYFHmxooDM3MxMHsk9XsdvIFSPUO
	 nQQsBGvHjJUH0Ed6d+DEKJd2UOa0W1HT9qgvEbqYCBgt0bMsDvIR5r3xyOrO2SWq7t
	 qtnG7VoJl7e2w==
Date: Mon, 18 Aug 2025 05:44:20 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Alex Tran <alex.t.tran@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man3/sem_post.3: EOVERFLOW add SEM_VALUE_MAX to
 description (wfix)
Message-ID: <msre74j33dj5j7l4zni4e3ipfwb55rvtcy4amexern242eaywx@vrvrt3ng54d5>
References: <20250818033256.54899-1-alex.t.tran@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="x6wdagpd6q7czofo"
Content-Disposition: inline
In-Reply-To: <20250818033256.54899-1-alex.t.tran@gmail.com>


--x6wdagpd6q7czofo
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Alex Tran <alex.t.tran@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man3/sem_post.3: EOVERFLOW add SEM_VALUE_MAX to
 description (wfix)
References: <20250818033256.54899-1-alex.t.tran@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250818033256.54899-1-alex.t.tran@gmail.com>

Hi Alex,

On Sun, Aug 17, 2025 at 08:32:56PM -0700, Alex Tran wrote:
> See: <https://bugzilla.kernel.org/show_bug.cgi?id=3D219335>
>=20
> Signed-off-by: Alex Tran <alex.t.tran@gmail.com>

Thanks!  See a comment below.

> ---
>  man/man3/sem_post.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man3/sem_post.3 b/man/man3/sem_post.3
> index 1df132c89..03b91b9a9 100644
> --- a/man/man3/sem_post.3
> +++ b/man/man3/sem_post.3
> @@ -38,7 +38,7 @@ is not a valid semaphore.
>  .TP
>  .B EOVERFLOW
>  .\" Added in POSIX.1-2008 TC1 (Austin Interpretation 213)
> -The maximum allowable value for a semaphore would be exceeded.
> +The value exceeded SEM_VALUE_MAX limit.

This wording is slightly incorrect: the value would be exceeded, if it
were increased, but of course, sem_post(3) will not increase it.

I suggest something like:

	The value would exceed SEM_VALUE_MAX.


Have a lovely day!
Alex

>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
>  .BR attributes (7).
> --=20
> 2.34.1
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--x6wdagpd6q7czofo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmiioY0ACgkQ64mZXMKQ
wqlaSw//bG963xqXrASbGzAIuuNBzpW5aNxUGdfY6h/AJbwrnPyp500eHsSUjrii
UryHE1/updKvcAw4RIlbE1Gk+86Ze6idqslQEGwWgFuqGFE8luDPmv7d0e4Sn4TK
hoNhZ9aRDqJclElh6IxBk0qQX2n9OUZYuK1V7NYAC8sBEFWczlCQHbb+H7+j6iVv
D2Li4qXpCzWYEz2yW8L/6GS6vcUryIoXos5Nvx7s+Z6TNPN5xyL92fffTb1Xr5f9
TeY4XlwOCwovi4sOsksw3tViAWQM9mFCaJW3Vlx4L+c/BHE6GptQ/dle63kJvWdn
tuvRAApq5Ce+iqLCCAAmmPOqML4cVJ/8uaZLLxpOsacUwXcR9y8SSP9fuERQ58cO
s8LtAQdhQD7+cbaoMTxdOSUBCf6t711N9H08zKiZJ2UowCODfVpr4H9s2+KPpkd+
sbXzfaOU4dvXrfqPBWP/dSWl7niVab646RSAe3Im1H5OFPilrihHGl+a8fb5Yv0X
tPSBL7xz8JE58uBBT+yTbs83hWy9Mg95ZKbA44cvgx2CgyS/R8YPE+nTDCRO18Qc
7JXDmmQEmmRskXExP4UttWHDtTAhWFRPhXd1xFQ2CtvTatqmbPtbtTqlRqBddDdY
0eGpK4OnJLBNjxU06lccfpBy/NhJyMQTX5R9hPxJ0WopIkKwMFY=
=N6Uo
-----END PGP SIGNATURE-----

--x6wdagpd6q7czofo--

