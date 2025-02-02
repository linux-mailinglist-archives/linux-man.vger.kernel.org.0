Return-Path: <linux-man+bounces-2331-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AACFEA24E96
	for <lists+linux-man@lfdr.de>; Sun,  2 Feb 2025 15:27:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 324DA162D1D
	for <lists+linux-man@lfdr.de>; Sun,  2 Feb 2025 14:27:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EC0D1F9EA9;
	Sun,  2 Feb 2025 14:27:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUveBRlW"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC6A1F9EA5
	for <linux-man@vger.kernel.org>; Sun,  2 Feb 2025 14:27:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738506445; cv=none; b=IHW0hu6POhAtQ4T0vF2nlkpIysNl4MhbgjzZXpxDhbhhkUbagCRyKBvujKOsvuCltu9ouJ9fFHqb1VebiZ8OkzTW0gZunupa0inMQK450bpHa30lXk67fqpatnFnEmseXW0jRVc6iFXdM7v91EwNGhd7xm+YjxsLwa/gNfBtcLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738506445; c=relaxed/simple;
	bh=AqQ1P70XbbLxUVZAlDSP9nXw6+8GlP6oABHq+gJw3is=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EL/Kx+OMnPk1NK+SpH0PNikvhvr5KrCDpdQRV7tPjpiwYTgLhFmWlZ0qimSJPwZ2UhVgaCP/poqTA9EZXRXEQYyE8mwjczwlEhRqzRoeIPFuwQFxRTmiHxBHRsxwdbvdPV6kf6BYNLI8rQCk8p7Fm0R0cfXxcRbaDafBFig3Yj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUveBRlW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3934C4CEE0;
	Sun,  2 Feb 2025 14:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738506445;
	bh=AqQ1P70XbbLxUVZAlDSP9nXw6+8GlP6oABHq+gJw3is=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EUveBRlWjbrhC0gmOlyub08N271ZQTxXjjXQG0PkjK1B8Oz7aLjZf8HfIK48NmvLX
	 s2z4/H0dTLdn+90ziyjuI+aoWmFKLXqQHFt30hGiYY/BZALZ7/Ant6QE62yW1eO3bY
	 6Onb4SD5IZVq93K+YBszirTdUxeiInrAdkB2Y0+faJqLjCt79p6+PLYoMQsiR8D+ya
	 nZ4puJvoAu1kKZB6zTrK3kdEv2MW4Wca8DekEGAyORHlbEwAY3kEIoprfM3c1sdP9W
	 f+0+M792KdFFSqaBnVGlxZA/8zfBwsNbgOAcoSWJkrmwW8lXCdD+Wahv90Ox8vWQ7t
	 0UNjFGCvbPonw==
Date: Sun, 2 Feb 2025 15:27:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Chen Linxuan <chenlinxuan@uniontech.com>
Cc: linux-man@vger.kernel.org, 
	"Eric W . Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH v3] man/man2/mkdir.2: Add EOVERFLOW
Message-ID: <rcmdqzqtvxu6xh4v65fqyvlpbh225ct6pvsap4uatj6zmfbenr@3btil2otctrn>
References: <F22A2B1500170B63+20250202135733.11800-1-chenlinxuan@uniontech.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="674vnlq3wxw5tmxn"
Content-Disposition: inline
In-Reply-To: <F22A2B1500170B63+20250202135733.11800-1-chenlinxuan@uniontech.com>


--674vnlq3wxw5tmxn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Chen Linxuan <chenlinxuan@uniontech.com>
Cc: linux-man@vger.kernel.org, 
	"Eric W . Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH v3] man/man2/mkdir.2: Add EOVERFLOW
References: <F22A2B1500170B63+20250202135733.11800-1-chenlinxuan@uniontech.com>
MIME-Version: 1.0
In-Reply-To: <F22A2B1500170B63+20250202135733.11800-1-chenlinxuan@uniontech.com>

Hi Chen,

On Sun, Feb 02, 2025 at 09:57:33PM +0800, Chen Linxuan wrote:
> `mkdir` and `mkdirat` might set errno to EOVERFLOW when UID or GID
> mapping has not been configured. See
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit=
/?id=3D036d523641c66bef713042894a17f4335f199e49
>=20
> This is a small program in the commit message that shows this behavior:
>=20
>=20
> Signed-off-by: Chen Linxuan <chenlinxuan@uniontech.com>

Thanks!  I've applied the patch.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D55802dea2042524eb93d8730c789a62f77e70c96>


Cheers,
Alex

> ---
>  man/man2/mkdir.2 | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/man/man2/mkdir.2 b/man/man2/mkdir.2
> index d84dbc27e..2af618d68 100644
> --- a/man/man2/mkdir.2
> +++ b/man/man2/mkdir.2
> @@ -203,6 +203,10 @@ does not support the creation of directories.
>  .B EROFS
>  .I pathname
>  refers to a file on a read-only filesystem.
> +.B EOVERFLOW
> +UID or GID mappings (see
> +.BR user_namespaces (7))
> +has not been configured.
>  .SH VERSIONS
>  Under Linux, apart from the permission bits, the
>  .B S_ISVTX
> --=20
> 2.43.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--674vnlq3wxw5tmxn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmefgMYACgkQnowa+77/
2zLwEBAAoncSC6SvksFPfi7AFAcEpmxlDI6nj08g70KqtfVG6eWz9z/S1zhD/YnK
bLgN0Umyi0xr2zWQxBsx63lhXtUJDvonNTIMXVLjBR/DQaLjhVsb4DNn7JfNpPjt
owJeo/+JWAxdElTdCVzPzx+2p8zkbpCtSoaVtwC6S+n+P1l4nJUlFInJIm+jTHN+
yGETRVJYPtT02xL/2KjGfLA55TJwivXC4108gxrf5ZWP8+W5HB+K/TG77u7tJrL5
cslSA4MXgck+v5GLZABhkXpFiCbVwusmNUZviBulVO9HvkfBOXsD1vMV8lYJg2JN
X99sju+06Vd++6FBuFCIcQ1Gzi5ZcLpIoHjaM6wiXcvA3z7C0KMKCD9EafiC7H3l
Sqbks63EhDL5Ec+lZsGTgGNQ/WbsDAfELma5nYgzaGhnDic2EeO+22GGS8FBDf++
nhjS7D1Nv+bYIUf40E191POLyd/F7bLMfRU3GPq4ugJvitRFlbbLLqQEDWDGkExQ
peNKTJmBU+Z9BytFLf1YrKC9h0LxoM2rF4fxgbjqFZ9PqHOArD47CqnXlyjNKRHo
OvWIY7aU63UWkcZlw349C/CMMs1c9Dc5+hp0aPt2J1al91Z5Fzfg/o4ABgCFQr3G
3Dw+VldXtjEoVl7JjHGrMIakcTDYvG4eYcKKJ99d2QRvz04rkY0=
=VYRo
-----END PGP SIGNATURE-----

--674vnlq3wxw5tmxn--

