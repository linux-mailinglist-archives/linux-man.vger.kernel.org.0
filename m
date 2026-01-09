Return-Path: <linux-man+bounces-4774-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC6DD0895F
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 11:34:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9784B30042A2
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 10:34:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B40163382F7;
	Fri,  9 Jan 2026 10:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+24cbXl"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7465F3370EF
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 10:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767954842; cv=none; b=fLkvwyBbtJU/NXXteBuqHbKI7AGAhtgD7Mvltb6eztBRopNGd8HPExxdD7NHsqNRuAKhrmgquqyrkTA/eyOPnbW0GhxaeB3UDuLHfD64Xi/jXwPeLUFdpOALvcAyzwnC9NkdmvvUsgaXF+pX1IDV0Moj7vd6mNgPrt+DdHd/w4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767954842; c=relaxed/simple;
	bh=eLXEpjrSYDjrHuTGDAf0fzRUc7GH8l4Q+CpGnOWvk/M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JoydIFBcWd8/Da+Cj9fLgUXwHrHAyt++D8UOnq5hnOqsUpciqijkU9PhZDLgigJZlX5ORvO0R6wTN91CTGgaM8ezFSevVEF4mFXZYnuN/4h9vCY0egpxdcS6daaLqVu7O2qFUeaO1X2pifPxl7CTlJTlQ2JaaetTcXsjdRGpn7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+24cbXl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5FDFBC4CEF1;
	Fri,  9 Jan 2026 10:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767954842;
	bh=eLXEpjrSYDjrHuTGDAf0fzRUc7GH8l4Q+CpGnOWvk/M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u+24cbXlnBihPnNps4w0Ta3eO41A49vRDAxWieoOWOwOVWupzm6OhUmlgQjyhZ1HC
	 /qN4uv1dw8clp8obD/LLjxH7AYX6N0Y8lISCVmopERaiX5c5HahGtfjxfUrUcX9B6Y
	 FcfiTC2PJMb1bn7Z5tZm6GEIRuSueriVxmP1JBBtMBA9cgLaTFbAKAf4lW0ccVEkPr
	 3cgIOXVdIoAZX0FYqKaNzqXhLCu6UPGbp6C8LJc505PSgOXaC3ohelyIQc2g1QEKKN
	 oCYdKt+GbWY2gzAMub3oE55roKZn/RRwm3orOkLcKMulK+acmBH/Kamrb8aUDYJ5HB
	 vsMlkIPlhs8rQ==
Date: Fri, 9 Jan 2026 11:33:58 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 19/25] man/man3type/void.3type: HISTORY: Update first
 POSIX appearance of void(3type)
Message-ID: <aWDZFvDvb-hAXQMJ@devuan>
References: <cover.1767939178.git.sethmcmail@pm.me>
 <efe8112034e9388465c108fd0418d7e0c68d12ee.1767939178.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="i5qu5ujpxwr273fd"
Content-Disposition: inline
In-Reply-To: <efe8112034e9388465c108fd0418d7e0c68d12ee.1767939178.git.sethmcmail@pm.me>


--i5qu5ujpxwr273fd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 19/25] man/man3type/void.3type: HISTORY: Update first
 POSIX appearance of void(3type)
Message-ID: <aWDZFvDvb-hAXQMJ@devuan>
References: <cover.1767939178.git.sethmcmail@pm.me>
 <efe8112034e9388465c108fd0418d7e0c68d12ee.1767939178.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <efe8112034e9388465c108fd0418d7e0c68d12ee.1767939178.git.sethmcmail@pm.me>

Hi Seth,

On Fri, Jan 09, 2026 at 04:40:37PM +1000, Seth McDonald wrote:
> From: Seth McDonald <sethmcmail@pm.me>
>=20
> The void pointer (void*) type first appeared in POSIX.1-1990 as a
> parameter type in the read(2) function.[1]
>=20
> [1] IEEE Std 1003.1-1990, Section 6.4.1 "Read from a File".
>=20
> Signed-off-by: Seth McDonald <sethmcmail@pm.me>

I think 'void*' is important enough that it would be useful to dig in
its history further.  Was it an invention of C89?  Or was it an
extension in some existing compilers?  If the latter, it would be
interesting to document which systems had it before C89.

I'm mentioning this just in case you know.  Feel free to ignore
otherwise.

Anyway, I've applied the patch.  Thanks!


Have a lovely day!
Alex

> ---
>  man/man3type/void.3type | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man3type/void.3type b/man/man3type/void.3type
> index ebbeb4d154e1..9a46f84b1d37 100644
> --- a/man/man3type/void.3type
> +++ b/man/man3type/void.3type
> @@ -65,7 +65,8 @@ .SH VERSIONS
>  .SH STANDARDS
>  C11, POSIX.1-2024.
>  .SH HISTORY
> -C89, POSIX.1-2001.
> +C89,
> +POSIX.1-1990.
>  .SH SEE ALSO
>  .BR malloc (3),
>  .BR memcmp (3),
> --=20
> 2.47.3
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--i5qu5ujpxwr273fd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlg2ZYACgkQ64mZXMKQ
wqksPw/7B0W4gVN3QXLL9/dPSk52t66yajV/tTe5wDWbtnbLphtR0yRAC1jTlQN+
4Ui6UOt09IX9pT9bH/Bgd1deOXB7aMwEZE9KO2HvcrMC37HHXGAHmfnGjtNvzN38
Pu7bGFN0/fqTaQdssBLDoNjFzmjCuaUkuisjNofPSZ/a0IwXYHcs6ZaVQLTyvNG6
KHMIOmacGnvngxWi/Vx51JWHI8BBKdESlcV8iZkm4cWb7UX2O+uvLB+MfeWFOu7D
+xWYN6IUmz+Bj2fKfnBYC/6gdQ5EH0lhNmkxKpYtclaI8vMzpuvoYMaj+XX1K2kv
18rktCpAy96oMz4ULyAD5MPRpHQK3mDYyd/pYgV5Mz4gN/HUTI9pyyRxwgwZkmkv
jwqP0JHkj7S3FJHfAk7tTpVmrPIQNafVToIjMpKLigiQi6Ym77qL8xFwcUIATxVD
FcaNXkmBpTeLETHelwSiF4mVAOh5EBww1Lb9ZYUxlH5c/vqSBU2RAyF1ldUyBLHy
h6MEU/IaZRjTlURnB81gAfp5qOqfoLqdHDqpJeZgxeLX2ECxqDKyZWIih9QMYeer
1B9VVAb/CMA2esavOLsRveXxiK5rzAxdaWHoFzEmIHN+8u8e2kt3KYHR3uv62nu/
7fTRSPZr9s5JWZjUSSbWcrEiV+RTfzCdBXgunE90S4A/b3J1AI0=
=w6vd
-----END PGP SIGNATURE-----

--i5qu5ujpxwr273fd--

