Return-Path: <linux-man+bounces-2586-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2C4A57FEA
	for <lists+linux-man@lfdr.de>; Sun,  9 Mar 2025 01:01:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B503D7A3BF9
	for <lists+linux-man@lfdr.de>; Sun,  9 Mar 2025 00:00:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFDC5380;
	Sun,  9 Mar 2025 00:01:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QqR9wtnC"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D1917E1
	for <linux-man@vger.kernel.org>; Sun,  9 Mar 2025 00:01:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741478510; cv=none; b=lzuGf2c1+nkNR47mIw6PGdSMWlVVqnRLxyOCXk/nYDEBzn+YlRIsTDtKTDzXRCabOWYb5uP1BXFY3f3RSE5a/ouQib2jbhCk1SNqdeDac7usSSIRRE7je9muTLSHJpzkRMpGVT61urJ+x0MlFvBhVIO4LXDFAZ37cG+gQquEsVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741478510; c=relaxed/simple;
	bh=LGm7wEK7xo539lM+D23+kPWFEfI5l/M/Yn6VFTPLMUk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l2mVB2Jh//odDGKFZ0EfxxR2XVh3QI0RZapYsbOGZ99EICh+Zn7Jm1guURbWYtDpgTNWMO6FdgN/6s9Wzlse6xbTmSKfF0GeVRw7gHETy3oMIkYT4Z5LLTPyXFBcbJT6R4lk87jVBkiO5eUKQ+8Isu2vJvG1CByDGhbjy6EYMA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QqR9wtnC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30C80C4CEE0;
	Sun,  9 Mar 2025 00:01:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741478509;
	bh=LGm7wEK7xo539lM+D23+kPWFEfI5l/M/Yn6VFTPLMUk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QqR9wtnCnZCJKHXshTIaPbyBe9nyiLvB8ln/GVQmj+Aivl3kaFtb3Ili4EWdwHawx
	 FygOx3LdGwIu3gNq1dC+LaAHI2wCNEqgbVDl1FfOdglgDI8cmn7lR+q0VcNzlv3P8E
	 7hczfONF7nnYgVHjkDSrrjWUjDDTewEAJMS5+FR6Tp4cEXD1VTIoN2sk2pQ0G337wF
	 Su9zAaMcS8Q1wSRYwebbRyjRImYeaI14tLS3/gAMM8Z4FO3tb3qx6LPLri50EV0asX
	 DQnD1Norb83gUGBSvVmh7tBunlYFOD0ttN5jLVh31IWeIA4y+HSkEvFwlrqFea2yEp
	 JlGREys4lzagQ==
Date: Sun, 9 Mar 2025 01:03:00 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Matthieu Buffet <matthieu@buffet.re>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/ip.7 Document capabilities to use IP_TRANSPARENT
Message-ID: <ieh6lpakyfyetvu5i63fhp55knwq6qolyixdkcdmq6jxzs4q5k@742ymdofppsi>
References: <20250307222244.597006-1-matthieu@buffet.re>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3innu36g4nw7k2sx"
Content-Disposition: inline
In-Reply-To: <20250307222244.597006-1-matthieu@buffet.re>


--3innu36g4nw7k2sx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Matthieu Buffet <matthieu@buffet.re>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/ip.7 Document capabilities to use IP_TRANSPARENT
References: <20250307222244.597006-1-matthieu@buffet.re>
MIME-Version: 1.0
In-Reply-To: <20250307222244.597006-1-matthieu@buffet.re>

Hi Matthieu,

On Fri, Mar 07, 2025 at 11:22:44PM +0100, Matthieu Buffet wrote:
> CAP_NET_ADMIN has been overkill to use setsockopt(IP_TRANSPARENT)
> since a discussion on LKML[1] and a patch[2] in 2011. All that is
> left to do is to let devs know they don't need CAP_NET_ADMIN.
>=20
> [1] <https://lore.kernel.org/netdev/20111020.182214.629562655202957174.da=
vem@davemloft.net/T/>
> [2] linux.git 6cc7a765c2987f03ba278dac03c7cc759ee198e7
>     ("IP_TRANSPARENT requires CAP_NET_ADMIN - why?")
>=20
> Signed-off-by: Matthieu Buffet <matthieu@buffet.re>

I've applied the patch.  Thanks!
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D0c1e05eb27abb5e8ed2aafca1af064e13867165a>

Have a lovely night!
Alex

> ---
>  man/man7/ip.7 | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/man/man7/ip.7 b/man/man7/ip.7
> index e75aa7ca40a4..00e5274c552a 100644
> --- a/man/man7/ip.7
> +++ b/man/man7/ip.7
> @@ -1088,6 +1088,8 @@ socket option).
>  Enabling this socket option requires superuser privileges
>  (the
>  .B CAP_NET_ADMIN
> +or
> +.B CAP_NET_RAW
>  capability).
>  .IP
>  TProxy redirection with the iptables TPROXY target also requires that
>=20
> base-commit: 64199c5bf76806f13a78b9fd5792ccfcb28a5551
> --=20
> 2.39.5
>=20

--=20
<https://www.alejandro-colomar.es/>

--3innu36g4nw7k2sx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfM2rQACgkQ64mZXMKQ
wqkh8RAAqe2K3DbaIyFhi+x4uFMQIA3C3csEER0VbRQkw4EzvnpAosxoSB0bHMOZ
1BTgAzQM6BTkYUDxtnrRbRVE93Tpx6ryD34ffUK7J8bSQbQw5vQ13c5mRNyPUHRf
vrG+Oh1CE8rJLCZu1EuRGZLsDV3m3PbYiNEE16E5ZPeNwGooVfabmeRkuXAOhvHs
U2EWdmupehWcC1hepAiDLS8/z4CR86Z+9djyHByVSk1bIWySw++0EKeoFU+pfuZQ
T1752oAsL9iwhmFie7Fd0YIPWX5z/417ZCK4iUOVKNed9tGs/59oueeJn3gjuMpg
Z66leK08aAYNCT61thiqXqWD2DDhPr7rH0Frrd2V3CNrdUU/WaK1AcvofOwnI3pC
bY1ARcwg6eIPOKTVMzpC9aojEKbO3eWtX+ovlwHawB+ZzBU9FPzGGi+FaBQxUK/x
mmRqtVK7vVrW89Zf2g0UZwcy1Mw0hJNMVpCaFOEOOX7gY1vQTckSSf2pldP3CBmh
bdNSqaO93yN3YtRKg7oO27GESsMG5D8TLoRVMjA3XdmFk1IN9zhcUuYiqGzon7QP
gaFLJcKEIcCKNfI0WHUwRkBjaulllnRHdcuWcTeMsh4RSLT1Mc8eCcL6daJ5UU0j
XYizbWR7wlmei7vEbu4eafOVZ7yG4bCY+9ynskoTaFjcMLZF/NQ=
=4TIC
-----END PGP SIGNATURE-----

--3innu36g4nw7k2sx--

