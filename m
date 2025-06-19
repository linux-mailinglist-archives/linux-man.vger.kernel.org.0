Return-Path: <linux-man+bounces-3158-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE18ADFA84
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 03:07:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 118F91BC091D
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 01:07:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FDB718EFD4;
	Thu, 19 Jun 2025 01:06:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bPgk0x6a"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1B2F18DB20
	for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 01:06:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750295214; cv=none; b=HtdmYDV17OfbxEYST42Pg5YB1Ty9LjEKGNw61ZWn5PRj/Ku4rEWO/n1ASHNOLyxh7abt5g15l5VqCaSBBI1I7PDRB6uNTMKPRaLvTW5sV0s8AUAKxc6DdplY1eENQ9bLf8wCTKBZaWm3P4nf4+UZysPmnVxfefUc2WOZITRv64A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750295214; c=relaxed/simple;
	bh=NDhlNcDJmwAmbsShlTop18ZzXBuAZzezIxElVCNXNgA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tLx4OJNrP8mjQTBIyB3eZnlfbHVNUj/NhlwzO5Hdn3ivgMm3LV3aBxPh1BbrHjdu/iA4s6sYY30azO8FN0Fe72HDm9UzaC7+NcFMgW/zyYAlOqnqDk36tF92QlXsvljaJErTK6JD8HnoFKIdU1/h+ij7Xwa6CYUhFqh4m8q+Hq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bPgk0x6a; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A9E8C4CEE7;
	Thu, 19 Jun 2025 01:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750295214;
	bh=NDhlNcDJmwAmbsShlTop18ZzXBuAZzezIxElVCNXNgA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bPgk0x6ahS4cpdQUdp7BNozqJkkDZ+oeFcL0ieF2iYT/lbJtT3iUOJ9X/5qg6blYe
	 e7qXRSs3TvN8H45gutHP4oSnZdFFp6teVmakxOBQsg9Wmw/kRESNuodnpY9ytoNK2a
	 th6kMeBY2BgwrKRKWQGHrlal1CsV71bx/vTkATczhsCk4Mv3PPJQFwM6BFv/+eeInZ
	 tvZKBLD8y7Q4pex7i2pxZgy6N23LTmCdZ4DDMAytxo7nUTmjTU6VBWOBUAIT3mF69X
	 35cWs2DH0BduhGWDnOPgsMpcqa2/k5CsaFoWgMa/d2V8n3sqZjLLeihmQ/GsLxxOok
	 3iZzUWmLUzDPg==
Date: Thu, 19 Jun 2025 03:06:48 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Benjamin Peterson <benjamin@locrian.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man2/chmod.2: Document AT_SYMLINK_NOFOLLOW support
Message-ID: <hysyqaedbl4tplvpkagt5b4p4exmrzfpea4qwexmaysgomfkvv@uogz3x4ngwno>
References: <20250611151158.365610-1-benjamin@locrian.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y5ypzrguzsbs4qwi"
Content-Disposition: inline
In-Reply-To: <20250611151158.365610-1-benjamin@locrian.net>


--y5ypzrguzsbs4qwi
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Benjamin Peterson <benjamin@locrian.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man2/chmod.2: Document AT_SYMLINK_NOFOLLOW support
References: <20250611151158.365610-1-benjamin@locrian.net>
MIME-Version: 1.0
In-Reply-To: <20250611151158.365610-1-benjamin@locrian.net>

Hi Benjamin,

On Wed, Jun 11, 2025 at 08:11:58AM -0700, Benjamin Peterson wrote:
> Historically, Linux systems did not support the AT_SYMLINK_NOFOLLOW flag =
to fchmodat.  glibc added userspace emulation support in version 2.32, and =
Linux gained native support in 6.5.  See glibc.git 6b89c385d8bd (2020-02-12=
; "io: Implement lchmod using fchmodat [BZ #14578]") and linux.git 09da082b=
07bb (2023-07-27; "fs: Add fchmodat2()").

Please format the commit message to use only 72 columns.

>=20
> Signed-off-by: Benjamin Peterson <benjamin@locrian.net>

Have a lovely day!
Alex

> ---
>  man/man2/chmod.2 | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man2/chmod.2 b/man/man2/chmod.2
> index 307589481..24b9b0dbd 100644
> --- a/man/man2/chmod.2
> +++ b/man/man2/chmod.2
> @@ -197,7 +197,6 @@ If
>  .I path
>  is a symbolic link, do not dereference it:
>  instead operate on the link itself.
> -This flag is not currently implemented.
>  .P
>  See
>  .BR openat (2)
> @@ -329,6 +328,10 @@ POSIX.1-2008.
>  POSIX.1-2008.
>  Linux 2.6.16,
>  glibc 2.4.
> +.TP
> +.BR AT_SYMLINK_NOFOLLOW
> +glibc 2.32,
> +Linux 6.5.
>  .SH SEE ALSO
>  .BR chmod (1),
>  .BR chown (2),
>=20
> Range-diff against v1:
> 1:  6a1171eb1 ! 1:  f234de5b8 man/man2/chmod.2: Document AT_SYMLINK_NOFOL=
LOW support
>     @@ Metadata
>       ## Commit message ##
>          man/man2/chmod.2: Document AT_SYMLINK_NOFOLLOW support
>     =20
>     -    Historically, Linux systems did not support the AT_SYMLINK_NOFOL=
LOW flag to fchmodat.  glibc added userspace emulation support in version 2=
=2E32, and Linux gained native support in 6.5.  See glibc.git 6b89c385d8bd0=
700b25bac2c2d0bebe68d5cc05d ("io: Implement lchmod using fchmodat [BZ #1457=
8]") and linux.git 09da082b07bbae1c11d9560c8502800039aebcea ("fs: Add fchmo=
dat2()").
>     +    Historically, Linux systems did not support the AT_SYMLINK_NOFOL=
LOW flag to fchmodat.  glibc added userspace emulation support in version 2=
=2E32, and Linux gained native support in 6.5.  See glibc.git 6b89c385d8bd =
(2020-02-12; "io: Implement lchmod using fchmodat [BZ #14578]") and linux.g=
it 09da082b07bb (2023-07-27; "fs: Add fchmodat2()").
>     =20
>          Signed-off-by: Benjamin Peterson <benjamin@locrian.net>
>     =20
>     @@ man/man2/chmod.2: POSIX.1-2008.
>       POSIX.1-2008.
>       Linux 2.6.16,
>       glibc 2.4.
>     ++.TP
>      +.BR AT_SYMLINK_NOFOLLOW
>      +glibc 2.32,
>      +Linux 6.5.
> --=20
> 2.48.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--y5ypzrguzsbs4qwi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhTYqcACgkQ64mZXMKQ
wqm1GA//e/Tz+wJw8dYLlrIzBtU4cK9MXnf3kaqnGsdTPvC26SOBVXfd/Xz/lDnv
tje8hg2f/3nfH+8RKUmG8JtAJ+HNl5Uys857ngQZvRzqlaGE6RrV1gAY1bzeg8kS
baFmc88Te0n0dg0VQxGPtOq0OO+KkxAsilCLqxlMjZOBn4znMlGwsWEJPtNXIqtI
Qw0afUlUzUIccAyIArsmBY23bQE1XUJR4gpyJv4aujKimXQC/Znui2I1JX55/qoK
gl71VL1IkhDLZD5llM17ut2ZHj/dVcEl3KhXV/3TWfINIdkm/iukJXePvyu8+Bbb
1QZHgdlmSsQ1t1YTxBFWKeEIU5SmsBcr6rhHs7Wwa0znwxiccM/VJlws4/RPqqRK
AtmWDtZ0242bKOaBbAONDT3z1q/TEATOxYgUVcx0+P6zmgeegSK3UzmXr/YRiHf/
/g/4VsX0Cul2nH/2137tKSPgkPvIQN8xUttreQ6Nq4TR8TGUHceHPOArz/oh5JHn
gkIGau0NYWvfuYyZQR2n/b6Je7HAsppzaUflWv6tCMGUXaOKb2lOGX+uJfz61g03
naWSdjsONew3qX8lW8f5bAEJOae5+iC/bE+AJv9B8oM8eQxHUki5kpJ2LrVEn+dY
DvsowDaL7Nrx3RpcwjzUdc7oFESpJ0LYpfWb8CulZjCgRhvH6d8=
=ByQV
-----END PGP SIGNATURE-----

--y5ypzrguzsbs4qwi--

