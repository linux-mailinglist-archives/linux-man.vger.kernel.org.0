Return-Path: <linux-man+bounces-2566-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FBDA4B93F
	for <lists+linux-man@lfdr.de>; Mon,  3 Mar 2025 09:28:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ECD4C1701F2
	for <lists+linux-man@lfdr.de>; Mon,  3 Mar 2025 08:27:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC96A1EF094;
	Mon,  3 Mar 2025 08:27:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3/yv7Hu"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C2351EF080
	for <linux-man@vger.kernel.org>; Mon,  3 Mar 2025 08:27:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740990423; cv=none; b=ihtsffOGNv/KrsUcUKzDQY9jTUfZzx3UjPJ3Qt87w5dHlwmpZH0Ejtt/8K55UcCCsfALJLjJeeajjw/xmDScp30PH2+PmHJKm5pKyDNUh2Tq1Wo+aIU2w5+uVJWN0KZ0nvEatLsanSUv5eQf7OCICx14blpNzDlZgfVAaeJf9Tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740990423; c=relaxed/simple;
	bh=7+rs1Y7Qm23lb6g9TiK0qXnk0sVRR5BaeSYDCF2Vz/M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SIxAiCz/2wYEMO3OFcK8SrNfrzNb0u/orbi/7+q3GdVe7SnXsHsqm1TrGkcXBLB18+1eg6o/i7PK95YkHFvvmWrwS2Vx+NVVnvKp9ncd+yt0LcKYjGPBXWgCi9wC9hdmVJz4Qjh1ntRTXWktncjeU/Gd9D9vQBRCu+wKwsq+1wA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3/yv7Hu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBDD0C4CED6;
	Mon,  3 Mar 2025 08:27:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740990423;
	bh=7+rs1Y7Qm23lb6g9TiK0qXnk0sVRR5BaeSYDCF2Vz/M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=W3/yv7HuDA9LpFhdWHN66jRts7ow974kD3kSd038/mNvZTfb7p7FtUVEV+U9g2d5R
	 c2hh1J9K6n80jKM7i8FpesOQfhCa97WYXeAawvwtSNOaltsgqMjk0lEdGWdPtOBzkm
	 O3uRLlAK1jF9yPp+5CETSJbB2Kt8KblXWjVpBLchZZk3edEtmJDs7G8+DA34+z9JWV
	 Xvd1bikNN/nAVYMxERCbSHak8IQjS4CAAC6f3tw98PrOnjeMFywmUsYNWyV0zQBxmh
	 Lat/lWag0HZta+UvoHSC7MZ7obAv9zGpNjWD2lSOBgLnK5uJAmDg/SdYBIbETPQ/eM
	 8F8DDnymRM6VA==
Date: Mon, 3 Mar 2025 09:26:59 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jared Finder <jared@finder.org>
Cc: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>, 
	linux-man@vger.kernel.org, Hanno =?utf-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Subject: Re: [PATCH man v3 1/2] TIOCLINUX.2const: Restructure documentation
 for TIOCL_SETSEL selection modes
Message-ID: <vtwhqbnk4fzbeeluc64eif4pyq4qqsjxzpeiir7p5kvggsbocn@je3ctydavolk>
References: <20250302194331.5135-3-gnoack3000@gmail.com>
 <20250302194331.5135-5-gnoack3000@gmail.com>
 <a8b66420ad75307c2c0a8803df021920@finder.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ntzmdi6iqu5t4zyu"
Content-Disposition: inline
In-Reply-To: <a8b66420ad75307c2c0a8803df021920@finder.org>


--ntzmdi6iqu5t4zyu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jared Finder <jared@finder.org>
Cc: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>, 
	linux-man@vger.kernel.org, Hanno =?utf-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Subject: Re: [PATCH man v3 1/2] TIOCLINUX.2const: Restructure documentation
 for TIOCL_SETSEL selection modes
References: <20250302194331.5135-3-gnoack3000@gmail.com>
 <20250302194331.5135-5-gnoack3000@gmail.com>
 <a8b66420ad75307c2c0a8803df021920@finder.org>
MIME-Version: 1.0
In-Reply-To: <a8b66420ad75307c2c0a8803df021920@finder.org>

Hi Jared,

On Sun, Mar 02, 2025 at 02:50:09PM -0800, Jared Finder wrote:
>=20
> No additional comments from me, this looks good.

Do you want to send an explicit Acked-by, or Reviewed-by?


Have a lovely day!
Alex

>=20
>   -- MJF

--=20
<https://www.alejandro-colomar.es/>

--ntzmdi6iqu5t4zyu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfFZ9IACgkQ64mZXMKQ
wqkZZQ//fmQMI6vaRy+CMOuQJWkf7OWkkLGbYzJ3Yfn/yJOcjdr3A7eCKI2dELXU
TfdpSxwvb4CoV1euKWH+USqoWp1J5BsiWj6NvH/TasgluthssgEyk2pSr/EgkRDh
D2LFnOHjbGXDsVXcUDygVkQeEThL2ryG5urr7YdSiN8smJ1VEUIIozoKPQ8kdnYf
r6LmJ5WrQqcsvPqdJffR/s723caCDusdw3Tss40J1AsecRD2BIfgmA6al5mPuPP7
IINYXnGquqT1X1ipLqvIfqNFQhfvhUXmozAKAojsbUve2uOmOC6ChWaTwpuHudkT
ch2J2M33dJjfdsg4PNTYlI3oObwTWo/19OAoiqJcM/ksQQA+PsgLedbQk20qUDg9
XoRHI+iBSCRK5C9vTSzWNc5eFvDbQDlJX0zS8HtYfNTWP5rFxIQt+j6UBq1q09yI
gHkKbCHh4rj/0C2iPYf46iPd/65anwsYrXyRk/dOuYX3Qx7befx+NUw1tYiQRO1v
6go2IBdb1RqB+nXcfw3sqOiHWBpibE7yKqwKiJQMyzPiMiFdFpH+O3Ens/Kjv0bJ
he4htP1ub+u3rk4TLVYzPqZvvCe0cZJLvJw8i0rtXBKDhUYfePuBabJuYk/DvKbi
JQ3lzc+QneB1GowFpGlnIV1Ji3GDYb1Pstwag4tv7EwliGFR1Js=
=CVGJ
-----END PGP SIGNATURE-----

--ntzmdi6iqu5t4zyu--

