Return-Path: <linux-man+bounces-2317-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B8BA24DA2
	for <lists+linux-man@lfdr.de>; Sun,  2 Feb 2025 11:57:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 04AA31883946
	for <lists+linux-man@lfdr.de>; Sun,  2 Feb 2025 10:57:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DB461D5CF5;
	Sun,  2 Feb 2025 10:57:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FgEbQrpx"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F04D91DA53
	for <linux-man@vger.kernel.org>; Sun,  2 Feb 2025 10:57:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738493859; cv=none; b=e1IWvF4J04f72xa0Rx61gEgNj82y7RRPG+CwQz9k13wzh8YIngXw60x2jfAV8YTaOM+Wiwa0S/C2vR57+llZP7sC+/rcutFDP8qzIIw5920b83DlSiI1EOKT23p8zFU4GK+iyPdoORKzfwnlUGQ5cm4s/nT2tW1rTtfAfUUJAA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738493859; c=relaxed/simple;
	bh=WU7m/ZacNG3kKd32HcnrNe1tJpkuqGHbYUuQheR3Tlk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eA1PYU+BtUQM8KR4kGPqBFAgF2XgggFlZ1pJQ8f2l4QHcfF9r9Nqur9BoeOiBiDGPOT2E2pcpFaZocNHExAIfnZbQU6jiGBXqybG3AROYRKfgYqzGp9IEEW2ClPdAPVY7Q1ny6W8Ig10+C6Hp7IZK3+Z7ZnDRmO+dOC4Oxg0qb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FgEbQrpx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3255C4CED1;
	Sun,  2 Feb 2025 10:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738493858;
	bh=WU7m/ZacNG3kKd32HcnrNe1tJpkuqGHbYUuQheR3Tlk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FgEbQrpxhKAcvGkDfz713xQKSc0sDLG95p4SVUdyc5Idp7st6zTI0TtirVzaGFJ9V
	 wslb68nHHsRH/iSdgFhNUIw6ub/soqagmznu2ISwwPZzxaNSITY1NcVV+YZPbbrupE
	 2dEhpwff6nmrqUZKxG8orFZJ8d9smCclGr2CjgTmYvLkE46MoBSS3y9+ea9LXR4aWG
	 r6Mj+g1jl1reP9rR9P17+Is0gzcZdWUfmfIWxOWaXxwrGj9478aODF/VXMYXzWcl+w
	 5jDDISs0Z81j6ej1UniSPiZ4mk3QYb5A+Fui6pRcoJ3zmA/1ILMrEKZN9o8A02KPW5
	 D+LLxw3yT8tXA==
Date: Sun, 2 Feb 2025 11:57:35 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@zohomail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/rt_sigqueueinfo.2: change tid to tgid
Message-ID: <5g75llchd52jvn5m536maibcpxqxuakucydymvecrgcqxxytaz@moet36ib7cho>
References: <20250130050625.3356602-1-safinaskar@zohomail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rerfpita77al6vri"
Content-Disposition: inline
In-Reply-To: <20250130050625.3356602-1-safinaskar@zohomail.com>


--rerfpita77al6vri
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@zohomail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/rt_sigqueueinfo.2: change tid to tgid
References: <20250130050625.3356602-1-safinaskar@zohomail.com>
MIME-Version: 1.0
In-Reply-To: <20250130050625.3356602-1-safinaskar@zohomail.com>

Hi Askar,

On Thu, Jan 30, 2025 at 08:06:25AM +0300, Askar Safin wrote:
> There is a typo. Author meant tgid.
>=20
> Signed-off-by: Askar Safin <safinaskar@zohomail.com>

Thanks!  I've applied the patch with small tweaks to the commit message.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D6f02ec4e583a56864dfe69fe168439e6198c593b>


Have a lovely day!
Alex

> ---
>  man/man2/rt_sigqueueinfo.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man2/rt_sigqueueinfo.2 b/man/man2/rt_sigqueueinfo.2
> index 5e55e89..8bd1800 100644
> --- a/man/man2/rt_sigqueueinfo.2
> +++ b/man/man2/rt_sigqueueinfo.2
> @@ -48,7 +48,7 @@ system call sends the signal
>  to the thread group with the ID
>  .IR tgid .
>  (The term "thread group" is synonymous with "process", and
> -.I tid
> +.I tgid
>  corresponds to the traditional UNIX process ID.)
>  The signal will be delivered to an arbitrary member of the thread group
>  (i.e., one of the threads that is not currently blocking the signal).
> --=20
> 2.39.5
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--rerfpita77al6vri
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmefT58ACgkQnowa+77/
2zIt1Q//cmc23q2clvFQR59IOjmETBo+BK6GNt/71lmzFT6Dz8SwRMNBcLxVIKhR
SyH8CUD0Z50Sy/4oHB6QMt5U79CTvUhnAnlw6dskXmCk3Ew1U+PQV3euF2WYsXl3
RVmCfYEqFEj0HDKW+lpUgBAe/GxzvrPCYIVv3kl9yGe3NsgF5wrk6Epqrf7dWz16
pZXPfe/s02v1l7QWvVhFODTABTKTU9so9y1C5BQ5OiZK0YQQzalvbCLD3eRHCXJc
Vj5yZ1dIFu8s21jpaP7fYOEuFcUwSIcwUUhmREVZg4E0SuA5riGjJB6nSRhlNlDz
G0njusSd2z9croVAlCy9x7/GY/dYX1nvmTog0KJ8ZIHjCneFZiEeSOV16qYeiQn4
2U3eRGs0b7vKKNr7VfDro0jA+WuZcvzgHF5M0gdwvwHcbhyDabwYDpSHMXKllriw
teJRmmsHiGfKMteEoxbA4bTlt6BKpBq23c/cwE2QoJUH+xIsv6drz9JID49ueDML
cs7IavUKHGetML4AJXXR0bILR73eZhzfOuUI3WbcD72ZyTiCYjQRoK7MnfLfI2BP
hhBho2i+X5R6wQ2imKhQTQ5qLM2P7Dv1TOX0fQsfoUpAo4vxWNyA+sU3Spjvxusv
5uB0dSS11UMUWA6AgqGKg5bieQjGgsuxCeOcdMCJtdXCqCF6Ob0=
=d3wN
-----END PGP SIGNATURE-----

--rerfpita77al6vri--

