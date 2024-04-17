Return-Path: <linux-man+bounces-773-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 912B68A8046
	for <lists+linux-man@lfdr.de>; Wed, 17 Apr 2024 12:02:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EB7091F22983
	for <lists+linux-man@lfdr.de>; Wed, 17 Apr 2024 10:02:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B126137766;
	Wed, 17 Apr 2024 10:02:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWH2ozpQ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6F93F9F9
	for <linux-man@vger.kernel.org>; Wed, 17 Apr 2024 10:02:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713348147; cv=none; b=qupelX7B0j4aCuidgPyZXuGz8S0fDPqhe04S1mT0pWmQ0EtYJtcfNX4eq3nbIFp4hyivdFh5pi6tUEWxBr7wmHwrqBnniryyMlGAj9RSaLH6aMOaOKPABJt00QOn5nPZyhvbbLMlG4U8ynIwVC77qYTs53PqWL5TumYGUadpL+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713348147; c=relaxed/simple;
	bh=REt65lZ+YFXTjlGpAZjWBkqTtogM5zC7VBRLcF3sDHs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rFn/Us20S+pzExvY5Vi3r5izSKAORAxNbyQkS+6Ho/0Opdpm513GZ9jLN7mCnIAm7eFa2QaNjQEGg1kQzQHmXbO8swNkP7VENjr1BIpBA1WJsxuv6LvJjIxOltZogSdz1a1VyAnMI3zSslft60A/7lfaocPUPWlRx61Il1iGCQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWH2ozpQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B894C072AA;
	Wed, 17 Apr 2024 10:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713348146;
	bh=REt65lZ+YFXTjlGpAZjWBkqTtogM5zC7VBRLcF3sDHs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SWH2ozpQ8ne6UVE8+NbMK0HN2Q2I0EFlMYb9fG6oTdOHWsgwJTiPA23Rrcs8ZndBW
	 D7Vb29f4cYs8WdYHB/wvu8OwiEk05FjVTpLoiArM29bElzg7W2F3LLrvaoPc3F9Imv
	 LIkEZVQaaXvX7OaNKDiiBtShMGBUB8ireSLiirfIK069Jt0o2Vnitdrq5FY1t9MpTG
	 iIIz56B5UUqRTkpOZYbHa+gckfoGKGK80DGgFzfc/7aFFes/xboElfyTezlod0wsvy
	 XeVhiyy9JKB+O46/cDfecvVuyP6o4GB2iQL2ix8XfVjImo3oHSc6KOsJUmEUeGvZ+0
	 ozMl5tDwSo9HQ==
Date: Wed, 17 Apr 2024 12:02:23 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/3] man2/getpagesize.2: tfix
Message-ID: <Zh-eMLJQNiJyfris@debian>
References: <20240415223929.xl3lk7a5q2hpqvoq@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="P8RIDp2M44VSRHtR"
Content-Disposition: inline
In-Reply-To: <20240415223929.xl3lk7a5q2hpqvoq@illithid>


--P8RIDp2M44VSRHtR
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Apr 2024 12:02:23 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/3] man2/getpagesize.2: tfix

On Mon, Apr 15, 2024 at 05:39:29PM -0500, G. Branden Robinson wrote:
> Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>

Hi Branden!

Patch applied.  Thanks!

> Subject: Re: [PATCH 1/3] man2/getpagesize.2: tfix

Michael omitted the 'man2/' part (as it's redundant).  I haven't yet
decided to reform that.

BTW, how's it going with my groff patches?  :)

Have a lovely day!
Alex

> ---
>  man2/getpagesize.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man2/getpagesize.2 b/man2/getpagesize.2
> index 7abc3a246..fcdac938a 100644
> --- a/man2/getpagesize.2
> +++ b/man2/getpagesize.2
> @@ -61,7 +61,7 @@ .SH HISTORY
>  and it was removed in POSIX.1-2001.
>  .P
>  glibc 2.0 returned a constant
> -even on architectures with mutliple page sizes.
> +even on architectures with multiple page sizes.
>  .SH SEE ALSO
>  .BR mmap (2),
>  .BR sysconf (3)
> --=20
> 2.30.2
>=20



--=20
<https://www.alejandro-colomar.es/>

--P8RIDp2M44VSRHtR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYfni8ACgkQnowa+77/
2zJgUw//bcqulF+UENzA2zBLSUgPet99Ry5zkr0buDc1dDS60buDcCgfvpcjiLtC
H/8A9gTrPVhRdp1H2uBRr8Q17n5M+oQ4w5RVIavgqkq8cG92f5RJ+9duYgHyd0Hl
h3M6zW+6HoZ4YH7rMe2EQyewC7szXWEepeRVPRohMsBd3JGSgLqNAx0P/SJ8LLWI
2Fe+g5lG8a/VyYcTb/+0fHl63JGcxO0/AVfpL/SkZhvnB4OHOsdn3LDsMq9OdyTa
QWnBitwq3eRbfAUQ0/NtemUBfbI/4uHD6wabyvG0GsySweN+/wqm6hTGMA19J/je
jESN+lOvZxtZ9k/KYA3ST2bw0UuRc8au5NcC8ZH5wC056tFoo2Cu1Zs712ASCt6V
84tQ0VCbvpi4Q8WzCcaQX3eQdg2pDu8b2/xRbQMpB/QV/lRGwMFimUut5yT/FmIF
KL6tsUsdwrp9RFW+9BZvhDbVWbfBVHmbFyEgfL7G21+144H5cZDmx0TSnEWXjl37
3Aoq0HK7ZHG/5bTWH4G4sfp9lFXUwnQ3WeG4h69N6VH8uvMI6NqdhuM8QRJgCZGp
M2Nwh6drwvrBGipNDzU6h35PwvOAaSvfbyHmzkjRkyFnaWilTYNZksFlREBMskNG
TUQfEVHWb+MvjrQZIY1i308cLiGm+qZlniAbbNuN1gyhmr/7uPo=
=BJd6
-----END PGP SIGNATURE-----

--P8RIDp2M44VSRHtR--

