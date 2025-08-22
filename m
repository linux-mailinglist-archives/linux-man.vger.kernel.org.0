Return-Path: <linux-man+bounces-3535-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A3D9B317D5
	for <lists+linux-man@lfdr.de>; Fri, 22 Aug 2025 14:30:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 99BBC7A2A93
	for <lists+linux-man@lfdr.de>; Fri, 22 Aug 2025 12:28:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF6932FB63C;
	Fri, 22 Aug 2025 12:30:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KtNX9tmj"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FEC82F6585
	for <linux-man@vger.kernel.org>; Fri, 22 Aug 2025 12:30:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755865819; cv=none; b=LePa6ePfbNBhTA8KP35AB2tIXTZFIuJZBL/ukFuPk4LNGNK06Ks5Fu2P5y7uMHAKCdzimA9ESVIJComRmVG/Q4czn1eNYVMGPv2/9uZpoLnQxBm7LbJZwEFWW3xtUM6QaOCc/XMwnFxLKXaUfYXNQKhbDppB/7k14DM6Vecvk10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755865819; c=relaxed/simple;
	bh=g0xcHQJJ5y6Q4CQyoljgGe9Lt57PRlYBducklfE++nw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QQKCf+3o0qdgm4Enp0lt+EUO286EYvOsoHMNgLgsMxHT0fa0C6IgTxpVpMJqcHsSZPAKI3zqXxuzPfiQ0R1iBme5yR3Yy+CjKiLNvC0iHHuAGC8KzX3EeB2PThf9hoy7jmqdJeJNIBWQqd7M75aQss8veVff/WbSTvujQNL+300=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KtNX9tmj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07900C4CEED;
	Fri, 22 Aug 2025 12:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755865817;
	bh=g0xcHQJJ5y6Q4CQyoljgGe9Lt57PRlYBducklfE++nw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KtNX9tmj/Hu6Na4r1VNUQblU7G1V6DI7/JjDg+7LTJaIIdfNyQIfc9wsd2UwmPwCe
	 tI4DDqc94U4nDJauzFpL3OzW0SzRVYJszmRhYfWo34LZqETpIQ0mfBRLLj1Auro244
	 tYsPLYU74socJyPfW2X1XdtZRXT5MO3tblyfXkLajzysCi6GB2cMFXQAV3dDbXrpJq
	 AK9Mqkd2cuEwQyj7yZTdlIwaQS+J1LYXGjmeyhNxa8wWy7H40zjP70YISzrfto+hjJ
	 kXpFYChGh0RejxffcutVUIWbBfwyhdEhXhESfMmXQ2coERegPDSigWzg978LPn2z6L
	 WRZc3QHc/lXDw==
Date: Fri, 22 Aug 2025 14:30:13 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@zohomail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/2] Remove pread and pwrite from list of syscalls,
 ever existed in removed archs
Message-ID: <vevk3e7yvmij7yrhdaxgwkkrdtj2mqps3joqv3rn5lxjrcfjv5@nbtk5fx5dn22>
References: <20250819161000.768159-1-safinaskar@zohomail.com>
 <20250819161000.768159-3-safinaskar@zohomail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kbs7p6g2sho6irza"
Content-Disposition: inline
In-Reply-To: <20250819161000.768159-3-safinaskar@zohomail.com>


--kbs7p6g2sho6irza
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@zohomail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/2] Remove pread and pwrite from list of syscalls,
 ever existed in removed archs
References: <20250819161000.768159-1-safinaskar@zohomail.com>
 <20250819161000.768159-3-safinaskar@zohomail.com>
MIME-Version: 1.0
In-Reply-To: <20250819161000.768159-3-safinaskar@zohomail.com>

Hi Askar,

On Tue, Aug 19, 2025 at 04:10:00PM +0000, Askar Safin wrote:
> Current version says that pread and pwrite ever existed in
> avr32 and blackfin archs only, which were removed from kernel.
> This is not true. pread and pwrite are present in modern
> Linux for all archs. They were merely renamed to pread64 and
> pwrite64 in Linux 2.6, as explained in big table in this man page
>=20
> Signed-off-by: Askar Safin <safinaskar@zohomail.com>

I've applied the patch.  Thanks!
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D81ef9a35b5b6de9325de9f0c57feec2c3fb397f3>


Have a lovely day!
Alex

> ---
>  man/man2/syscalls.2 | 16 ----------------
>  1 file changed, 16 deletions(-)
>=20
> diff --git a/man/man2/syscalls.2 b/man/man2/syscalls.2
> index 142204839..947974ebe 100644
> --- a/man/man2/syscalls.2
> +++ b/man/man2/syscalls.2
> @@ -1028,16 +1028,6 @@ this system call was never available to user space.
>  Some system calls only ever existed on Linux architectures that have
>  since been removed from the kernel:
>  .TP
> -AVR32 (port removed in Linux 4.12)
> -.RS
> -.PD 0
> -.IP \[bu] 3
> -.BR pread (2)
> -.IP \[bu]
> -.BR pwrite (2)
> -.PD
> -.RE
> -.TP
>  Blackfin (port removed in Linux 4.17)
>  .RS
>  .PD 0
> @@ -1048,12 +1038,6 @@ Blackfin (port removed in Linux 4.17)
>  .BR dma_memcpy (2)
>  (added in Linux 2.6.22)
>  .IP \[bu]
> -.BR pread (2)
> -(added in Linux 2.6.22)
> -.IP \[bu]
> -.BR pwrite (2)
> -(added in Linux 2.6.22)
> -.IP \[bu]
>  .BR sram_alloc (2)
>  (added in Linux 2.6.22)
>  .IP \[bu]
> --=20
> 2.47.2
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--kbs7p6g2sho6irza
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmioYtQACgkQ64mZXMKQ
wqmdchAAhH1wYpZx+ov55DXhVqUpMO5XbQjKYeuII9bHNHQL30u5/MVYZrpALj8g
/MoiYsoey5p7LuANzIZg2od7UomD3iTuB89V+FprBigjEvXK5xHPcQJMmW1Y63FP
rSharUccW3Xh9xYb5EK/Xz2iOAp2yFnM5K9eQhwDdjDFtdvhAy+/nd+6hnyH9bDq
D5i6L7RqDv/pp1Viefr98Jto+wC/UU34Fg3ce/qzrQsrJjWHwEQ9hK7eY8OAyoEa
Eeo6gu7O/qB37S6Rb8XAD9Fqcj3f0rtXwpoZKBI2NRB04uyv0ruOzI1RM2y9JdYl
axgsF9hWibpnw7ZGdiYaKTvQ8C5WmeEZFypWPBYbty4toSAYNMWbSlJ5sCc63wQK
YZub91CklobTngT718VVI44GxCYutLSLJ4pSwXRzBNqGvn3ApkJTIQ6DCpslyVtq
yLKyLtYaEp706IgCSDPMVL5v9nntXhajK7IK/Jsx7PWXKAdGORZsmsuKhEPZ9N2H
sdC6TPQiABMbZUetDzhwVKiimdowa0N1OhXoC0MIB89i6KdYUpNSbgtpWUIVAhHD
0WeCbYM9xi9e9xxkV1Wp0V/N+GkatH9y1si1Rj2nx2ht520b4WvccRShoXO2bBCC
v1kAtu3w6hXQYoddC92846DEdvSWJsu+xLdBQDm+zyBzstNVPig=
=ZjaW
-----END PGP SIGNATURE-----

--kbs7p6g2sho6irza--

