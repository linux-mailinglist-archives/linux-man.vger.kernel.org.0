Return-Path: <linux-man+bounces-994-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 349948CF3E9
	for <lists+linux-man@lfdr.de>; Sun, 26 May 2024 12:15:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 63AB61C209FA
	for <lists+linux-man@lfdr.de>; Sun, 26 May 2024 10:15:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 948628F40;
	Sun, 26 May 2024 10:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TwP0Qon0"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5649B946C
	for <linux-man@vger.kernel.org>; Sun, 26 May 2024 10:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716718546; cv=none; b=dX1B85XLShXvNelR6GoqaKFZpLoZIDcC8Nz+AKERh47SD2rvsWUIBWgidT8w/FIEu3FexfJOyjubXvut+yr8+GLWDkyYDuLTy2SIijDJ+VEo+JlY2O6+okN3sW4ZIFWrA6eQGnW3EHJTQPmQ4VTLjnPTo5gjJHJD9Z7V+5NrLn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716718546; c=relaxed/simple;
	bh=7QKGAugSyacH7M8gNGfmBF23s9xTXhHqFhX3hvuS4wM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aKQgn7hBkKhvz5jTiRP8SSzptTeGxe8gAx2i/iIBQQrouuFm0kxVbw1jISK1OeIyXB1tXniKoiUhkF7vMwSYXF10l2Q1w2EHwXE0eTj0of71wVqKnyEtSN1sbvTgLMqio4uqpVMv1s+dVlJGa+tlOItUsHM2ENWBWaxOYTvejF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TwP0Qon0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2FB3AC2BD10;
	Sun, 26 May 2024 10:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716718545;
	bh=7QKGAugSyacH7M8gNGfmBF23s9xTXhHqFhX3hvuS4wM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TwP0Qon0vWMdfJOqOv2C2YpgDDwicLn3838nW5tFQMXb7er1mmL6wYUCvASTZfxuP
	 scRUKlOF114U19joTeA/N+u0LPBjca2J0OdpJFZxUZgjJiMOiln/93WBfXSXbW0J22
	 6KYI0q342wtq4C2kIpxAblbU7pEzE/m7s/ykdd6H9eQDQmUCc7w5UB4sc+H1A6sJbP
	 A9/EepFtNOTXHxa5qqN6P56Qe81c6imyxLDtJnGKhXgSol1XYscJTUu/qiRY3YkzLt
	 0kU7ukBeRhwhCHbHO0GTcGWNWNC+OzTkx6yIBuAAtSbgIxHPEKj/VRpDG7UPPqMw01
	 PNqPFsEa3ijwA==
Date: Sun, 26 May 2024 12:15:43 +0200
From: Alejandro Colomar <alx@kernel.org>
To: maxj.fnst@fujitsu.com
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] prctl: Fix the description of arguments
Message-ID: <egayikom2r5wlop7yjh3koliy6tqrntreeyks4gbvdmsowm2rn@cuca7rqqu7ya>
References: <20240521034342.1967-1-maxj.fnst@fujitsu.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4pwv6ryvuuqk5lh4"
Content-Disposition: inline
In-Reply-To: <20240521034342.1967-1-maxj.fnst@fujitsu.com>


--4pwv6ryvuuqk5lh4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: maxj.fnst@fujitsu.com
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] prctl: Fix the description of arguments
References: <20240521034342.1967-1-maxj.fnst@fujitsu.com>
MIME-Version: 1.0
In-Reply-To: <20240521034342.1967-1-maxj.fnst@fujitsu.com>

Hi Ma,

On Tue, May 21, 2024 at 11:43:42AM GMT, maxj.fnst@fujitsu.com wrote:
> From: Ma Xinjian <maxj.fnst@fujitsu.com>
>=20
> The index of arguments in ERRORS section is not correct.
>=20
> Signed-off-by: Ma Xinjian <maxj.fnst@fujitsu.com>

Patch applied; thanks.

Have a lovely day!
Alex

> ---
>  man/man2/prctl.2 | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/man/man2/prctl.2 b/man/man2/prctl.2
> index fad855832..cc6d3b4a8 100644
> --- a/man/man2/prctl.2
> +++ b/man/man2/prctl.2
> @@ -2124,7 +2124,7 @@ above).
>  is
>  .BR PR_SET_MM ,
>  and
> -.I arg3
> +.I arg2
>  is
>  .BR PR_SET_MM_EXE_FILE ,
>  the file is not executable.
> @@ -2133,18 +2133,18 @@ the file is not executable.
>  .I op
>  is
>  .BR PR_SET_MM ,
> -.I arg3
> +.I arg2
>  is
>  .BR PR_SET_MM_EXE_FILE ,
>  and the file descriptor passed in
> -.I arg4
> +.I arg3
>  is not valid.
>  .TP
>  .B EBUSY
>  .I op
>  is
>  .BR PR_SET_MM ,
> -.I arg3
> +.I arg2
>  is
>  .BR PR_SET_MM_EXE_FILE ,
>  and this the second attempt to change the
> --=20
> 2.39.3
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--4pwv6ryvuuqk5lh4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZTC84ACgkQnowa+77/
2zJaOQ/+IigqlRnbkIEvctgfR4WeJuw1FHZeNZPv/mNiLFKQYeoPeyoDFNzhFrjy
ULxAgUMe2NxUkodJEpHFZSpY5DQRlFJVmzgY1Pdkhu6N4Q204I9ItZO3PWtdDSS+
BcI89fKJlLEcizG0jALDYUmOKj2A2PPDqmkBLFnaTHEoXP00xikAxw3vxV1clkvR
av8hT/5LjgPrpOG2cWkDy5sFVvudx4+63sWrS00EKU/tzktoN3HdnIBUW3j+gCRD
CE0GYv1KvLXiRIN2k8McowWN6LIvQS7GYEcN9oCEy5lKHR+zuDm5EVoRx5zCNgHW
9oCl0FzltSn7mul/S2Xay8Z0azeoHxPSDy9HALICEQb/3I0WVnkOY1mVTBp+/l4z
KGoeX31yyewrXhppkM2XzPJfsSo8mxUS/5SpurxffRZoRxn61tnZvlbhTbO1dNoP
jqL4qdp3gg1dJSsogo9OAPrLvXi3SKobFDx8YsXygK2b9Zj5xvsAUIY6J8w5KKZN
17umIfp6NxDXHy8q0bsnWmzv5RCU62yskJAKbljLgYxpJobzTMuridtVINy+TC6e
ZvFnCXNYg2tXWkN9e+610QgiRTy4H/6H1pgRfT/w4y1X+eEw6AAUMoBEyO47jicb
d9W0UvVjmGi6Oz4I05UzKMqga2mom2ep1RzmCzCMZ7V6PD8uKUw=
=kCJw
-----END PGP SIGNATURE-----

--4pwv6ryvuuqk5lh4--

