Return-Path: <linux-man+bounces-2927-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C528AB9215
	for <lists+linux-man@lfdr.de>; Fri, 16 May 2025 00:02:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D1193B1F82
	for <lists+linux-man@lfdr.de>; Thu, 15 May 2025 22:01:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E02E628C5DF;
	Thu, 15 May 2025 22:01:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DvnChh9T"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A07A728C5B5
	for <linux-man@vger.kernel.org>; Thu, 15 May 2025 22:01:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747346469; cv=none; b=p/Yxp9keSBd0T1HNxmtCp0bupdl9Ve7LUxJQ3Cv53CS3noUkyjq4T6tsIHigPFba1nQ47hZZYQislGPbeQLi1qdH/LlgMhkDPg54dtKfBe/bi+tkB9t6f2O4wbDxhQRyt101Sw+a7LSXurj6u3KTUsTzJN0vnTsSQarFxSg87/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747346469; c=relaxed/simple;
	bh=7cz8NTffqd6qLnBIh/LHKyrRue5KBcDqc+ognGLX4SM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AFzltLPNvc6hMijhAaE4UE5zHQOTT/V3ejmTm+8iyHxRLHYr2IrTD+QrNYZL72GYeYf+iccBWEZxG/HZkmLeK1q6GfUo2ZWla6KOMjWdsua8PFpKlzIcsuvCGkvknmXS/4cUOFE0U8YxKfgqHwsQD3EqJGt4WJZGoi4BriVcl78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DvnChh9T; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09C14C4CEF0;
	Thu, 15 May 2025 22:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747346469;
	bh=7cz8NTffqd6qLnBIh/LHKyrRue5KBcDqc+ognGLX4SM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DvnChh9T/LKU9zEdwnIQ7Vnx5CljXEezsROOOBqWvzucdmI30zbWrH4tr4iW1J9M4
	 W/GRh+hQULFX2cCbRavg87UN6+10OVrT3DZ8mIeaJ0JCYU+xb4GK3hIH6bqnU6xD8p
	 7mhSlvHOVwHTAGEelAuiOm3VesaYnvmIqywe6PHUdZDNqfLuhxBs1ovrE8HRUhVeCO
	 eg77Yh5+We8xLXKgRyJ6b6DEVkjd5IonC3abNs06roGMGy2KwqJU12SAb18zhPOIaA
	 gWuB5Cf3o8GohRKBvNh1D/AcIk/2frQNyiMdgeu+UI9pOu28dU2hlQTHHtARCjtWYM
	 rLzEyRN1l2ixg==
Date: Fri, 16 May 2025 00:01:04 +0200
From: Alejandro Colomar <alx@kernel.org>
To: bruh momentum <mondeendeguise@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: PROBLEM: fread.3 SYNOPSIS - inaccurate function declarations
Message-ID: <4to5qmurlmoilbtbwyoyh7zvjf4ukz626tlku46a5hapxwre3f@nm4xstq3kyvw>
References: <CAGFZsbMJTcyHhDgAEKkSJ9xW1Cd--D_suYbyrjFcXGPV_VNetw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bveadeltdjuxkcah"
Content-Disposition: inline
In-Reply-To: <CAGFZsbMJTcyHhDgAEKkSJ9xW1Cd--D_suYbyrjFcXGPV_VNetw@mail.gmail.com>


--bveadeltdjuxkcah
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: bruh momentum <mondeendeguise@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: PROBLEM: fread.3 SYNOPSIS - inaccurate function declarations
References: <CAGFZsbMJTcyHhDgAEKkSJ9xW1Cd--D_suYbyrjFcXGPV_VNetw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGFZsbMJTcyHhDgAEKkSJ9xW1Cd--D_suYbyrjFcXGPV_VNetw@mail.gmail.com>

Hi Bruh,

On Thu, May 15, 2025 at 03:22:02PM -0600, bruh momentum wrote:
> The SYNOPSIS of fread(3) has two inaccurate function declarations:
>=20
> size_t fread(size_t size, size_t n;
>              void ptr[restrict size * n],
>              size_t size, size_t n,
>              FILE *restrict stream);
>=20
> should be:

Nope, it's using GNU C's forward declaration of function parameters.
<https://gcc.gnu.org/onlinedocs/gcc/Variable-Length.html>


Cheers,
Alex

>=20
> size_t fread(void ptr[restrict size * n],
>              size_t size, size_t n,
>              FILE *restrict stream);
>=20
> and
>=20
> size_t fwrite(size_t size, size_t n;
>              const void ptr[restrict size * n],
>              size_t size, size_t n,
>              FILE *restrict stream);
>=20
> should be:
>=20
> size_t fwrite(const void ptr[restrict size * n],
>              size_t size, size_t n,
>              FILE *restrict stream);
>=20
> bug was introduced in commit d2c2db8830f8fcbb736bdea52b398257447bef6b
>=20

--=20
<https://www.alejandro-colomar.es/>

--bveadeltdjuxkcah
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgmZBkACgkQ64mZXMKQ
wqn1IhAAr6UPot3lRdp5sH1REB/NIulmHxaR+hKUAGuNUkVx2MBDZDpUSKOExJCt
8AMxQa7Rqt2ApEKwqbt2ekzM+1HiHTfhPpP6705SCX++bdVIsxXoKbllTITPFKwW
89fnFCvEH3iCYzRtQHCqTEb0Xh4wN2x+z5XZf8xodJ8SApTXn429b1KUwRcJ3Ez/
DwmWgznlQvR6+oypNLriYqLzyuQLOZEklPD9lCm/u7nLJhCD6i2VvcoqEYTvxYDv
j8HiaFGmDtlUNGtEb7h0xMSORIbw7byQH+2NKFuqjciRcvakM2S60k/aP/MN+Bjg
nhBvVK/NgHAUUX89bAzC32Tt30UabfjIQZ42qbbQ+nGXJzB6q4FD5AeDe6x6GR7o
gvtF3OybNTTeoW4FlNhsOEKymp/vlM2buj8AOSfOqwVKVFMNX6ss4aJKJXNaXPJf
DGQvJRSH/2k26+7bgMMVpiwDuhKF190j/JikUZy3bfDjqkNDg7uU8aS8L6qfqlt6
gPAKBOsR/nSqHBVq+k6QeNyJDYUZC0IpdmSZtsrwRdpl2Z7FEZpQYYbSDgfULxKa
2RgOWtvHcoljvCCk+IbM03puIILNsBf+0RWHWO+0fmEAkQwGsKJbpDTT1RJfBPS5
Hv1NACk8hI/W+FNx0Iy4EKAROjSwciCtnOGRjnzlY2DLmPMyjqs=
=/H/Y
-----END PGP SIGNATURE-----

--bveadeltdjuxkcah--

