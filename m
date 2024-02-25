Return-Path: <linux-man+bounces-478-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A3BF2862A54
	for <lists+linux-man@lfdr.de>; Sun, 25 Feb 2024 13:35:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C53F9281490
	for <lists+linux-man@lfdr.de>; Sun, 25 Feb 2024 12:35:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28843C2D0;
	Sun, 25 Feb 2024 12:35:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DroUnoZ5"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD2AC2F52
	for <linux-man@vger.kernel.org>; Sun, 25 Feb 2024 12:35:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708864535; cv=none; b=IBo59Wz1ZwMhkCBvL/bX+8y5ZYjlAfqT9t8y6x6OW2kbaBieOIp/MNa8f2xC8JLSiv1JZR9fxDpfESkBv7x/HPncyZGx2bdY7Ebl9diy9v32n7bu5mnENne9wGlSjHFK1lazpkwsZMxHnGSGro297AgPD7XL1YEl7WSToNJmf3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708864535; c=relaxed/simple;
	bh=Do7BQbJpG2Lw4uQuPTDFKIQrt+YtMoW7zOeYy3z5KCA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SkEZ2gAsHEAUeFbd0gFG04wKOJJ/2tOlKFZNs6p6Vg6q092YLUwiGk3ChRIc/PZY7bPi3qNlplIEEYqmaEb/N9Nnxg1JTCDEXOJeNZYSpz4LcCRgJwUfympsf8vP6SZ59M2m19HypTsZGwdZAyMABa93lsLETKP4eKO3lOixvc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DroUnoZ5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 015EAC433C7;
	Sun, 25 Feb 2024 12:35:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708864535;
	bh=Do7BQbJpG2Lw4uQuPTDFKIQrt+YtMoW7zOeYy3z5KCA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DroUnoZ5ixgB1pv0lnckOoNGy4cbE/EdzzETYCrrLm17qIbjTywKUVN6WVdZhmnRb
	 zKnn90R/7RGtF2Ru8hBmbOAlcCYxKrep8R7XrZJ4ra40cyvi5qKKmnYuNt1nzaLNfw
	 icvjz2snRnFH/6CqzZlzA2UbjlOrsSFGpliFH7iel5ck4SiZShRf1vtImLfyRS7rMt
	 hKza9hCTBgyA8EVAov9+qRI/qwGksS4Qqa+amf6WMRev/BTXRbyP5/Dn3kew/iVsVu
	 suieTXRBKM9Q4ODy3cUOneK0xTQ5J9G4E6SySbmQ+A77jJZbgt2BxUFAptCismudVQ
	 3a/CNFn/ofmxQ==
Date: Sun, 25 Feb 2024 13:35:32 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] vsock.7: ffix
Message-ID: <Zds0FKkoYN5HTc2q@debian>
References: <m4ycah66kndxoyd6yajhpe6xogiyg3p6pghwoquhegaqewcjuu@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="t+991F980/OrU9i9"
Content-Disposition: inline
In-Reply-To: <m4ycah66kndxoyd6yajhpe6xogiyg3p6pghwoquhegaqewcjuu@tarta.nabijaczleweli.xyz>


--t+991F980/OrU9i9
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 25 Feb 2024 13:35:32 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] vsock.7: ffix

Hi =D0=BD=D0=B0=D0=B1!

On Tue, Feb 20, 2024 at 07:11:25PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---

Patch applied.  Thanks!  And sorry for the delay, I was busy lately with
many things (might write to you soon, regarding some, if all works out).

Have a lovely day!
Alex

>  man7/vsock.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man7/vsock.7 b/man7/vsock.7
> index 0add12a..fb30781 100644
> --- a/man7/vsock.7
> +++ b/man7/vsock.7
> @@ -156,7 +156,7 @@ .SS Local communication
>  The local CID obtained with
>  .B IOCTL_VM_SOCKETS_GET_LOCAL_CID
>  can be used for the same purpose, but it is preferable to use
> -.B VMADDR_CID_LOCAL .
> +.BR VMADDR_CID_LOCAL .
>  .SH ERRORS
>  .TP
>  .B EACCES
> --=20
> 2.39.2

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--t+991F980/OrU9i9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXbNBQACgkQnowa+77/
2zLxExAAm0JFefI6weeIPj14gjIxBs+P+b6Gimal7pdPLirXdDl6PQeVd9Re4p+0
k6g6iQN11PqI0f9GEzOJyo6GpqMlWpfY0J+wCLtLiYdrGZiJaVtuF8Ul0dL1HW8m
ziif/v84s4Vm5chahzulRm6MKIID1iNEPitJ7KGriHDHxyIQ6jRmrEyqo9u4gjfQ
zlu2Rk5JOPI7bi82w+SEXB6MYwqaHwzuFxboHTN/1mXrKzrHsY+tl1IyRCRBf1pZ
gu13yFZs5Aui6e4wSS6Dkljc+ecQqQ1lQ+oU3TFsAu7ZSrqdPG78pkIoqwIO+EVZ
MsZCWYZvPl2mdXQS6kAi3+Q7xmiQ2HHEEkHfrHj41gr4VX9mDidaqhMEBApfmYfL
/HkUMTuOCfr/qcevu4ayCwfFqVgKaU6Y0Dj446mSRCGMVAQItFJim7G8s/48pZjh
XJRqzn+mlzyF+GkZxWEg5m8qry0iQIDGyFvKYeD5gEH85qAcQaQsA1Y/Lm3tnOV1
qWKM0xSmVs3XfiuWGaQAXsy5yeJ8HV7D2lJFctbeOhwm/b6k/o7YTGCmTLOw/7Oy
7vRRQER5Xx9ec4ltV5are5nHBuk5BE57HW7ma/7BCNF82AQT/q0DTpi+w2fsFwTg
7pywwJuDiHSBFfV7sKkJO8N78SO4zQlNMH7lDbo4AL0Qag+VnL8=
=WuCN
-----END PGP SIGNATURE-----

--t+991F980/OrU9i9--

