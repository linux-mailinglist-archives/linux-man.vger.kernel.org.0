Return-Path: <linux-man+bounces-155-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F23B7F52DE
	for <lists+linux-man@lfdr.de>; Wed, 22 Nov 2023 22:55:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB4B028128F
	for <lists+linux-man@lfdr.de>; Wed, 22 Nov 2023 21:55:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B271D1C2A0;
	Wed, 22 Nov 2023 21:55:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GsTPMuNT"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BA1B1D548
	for <linux-man@vger.kernel.org>; Wed, 22 Nov 2023 21:55:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D054C433C9;
	Wed, 22 Nov 2023 21:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700690141;
	bh=uu9xVsesUDZM8ocPRt8gAMB3J9xGgHgyC7pHsx8Ov6g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GsTPMuNTpI2NlgM9OmelKt3qKZuCPL84rdTJZgV8tcmrbgwPC+et3GzWXQsmLVXmQ
	 o0WPj0U30xfmzxrP+CsD8Rk8hEvY11STbDsvVKaoeIGP7R38atJyw9FN41q8HwIsN/
	 X0YwPxKSEqHaRs8vOHKu/D4yIxAYdLDRmUlm4JN3ky9HwwcCJdHZC2uP4bsiwBNzA2
	 EYRWsBXpZdnLjIxha1mwtdbm+zWXHGw8BUTcVldtmVOtiPbuG9iP3qZDaDbWzOOoYz
	 n0+T9VYnsf2BuuV2oS+TVSMirPq4qzl7lgiI4BuEbB2+0vft4MZUdEOmf38c2jxlnG
	 JGJ7lhMemkkxQ==
Date: Wed, 22 Nov 2023 22:55:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 5/5] proc_sys_user.5: tfix
Message-ID: <ZV542qKsUSuVW3e6@debian>
References: <20231122210826.1025-1-jwilk@jwilk.net>
 <20231122210826.1025-5-jwilk@jwilk.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vx7FWtWfksWtbkiE"
Content-Disposition: inline
In-Reply-To: <20231122210826.1025-5-jwilk@jwilk.net>


--vx7FWtWfksWtbkiE
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 22 Nov 2023 22:55:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 5/5] proc_sys_user.5: tfix

Hi Jakub,

On Wed, Nov 22, 2023 at 10:08:26PM +0100, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

I've applied all 5 patches of the set.

Thanks!
Alex

P.S.: I'm deprecating my gmail address.  Please use <alx@kernel.org>.
      You can check <./CONTRIBUTING>.

> ---
>  man5/proc_sys_user.5 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man5/proc_sys_user.5 b/man5/proc_sys_user.5
> index cd0ef1be3..1566e7630 100644
> --- a/man5/proc_sys_user.5
> +++ b/man5/proc_sys_user.5
> @@ -7,7 +7,7 @@
>  .\"
>  .TH proc_sys_user 5 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -/proc/sys/user/ \- limits on the number of namespaces of varius types
> +/proc/sys/user/ \- limits on the number of namespaces of various types
>  .SH DESCRIPTION
>  .TP
>  .IR /proc/sys/user/ " (since Linux 4.9)"
> --=20
> 2.39.2
>=20

--=20
<https://www.alejandro-colomar.es/>

--vx7FWtWfksWtbkiE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVeeNoACgkQnowa+77/
2zKXLw/+PVvgzyg4x8U8gBwmV/jPHiD7nbOyRjZOQY/F8bzbyaj2jko5B9dkZa8n
iNSzFCZ7qCT5u7OSkp24YUwLjTILnVMHnUXv1icsA756v8343XYgHrDV0jXWMrah
pSupF7k8oNwmtB0zcPhJMKDSRgdP8LpFp+dHyhiIesa+1c51tXPPiSC0H7bz4sFO
QurjazsMt/2ZDCZselsOJOPDtuBaXnodKxCDckX2fY6xt/LeBqzeFPjp51gDhGM8
vspsTKUMUBByPGtLWHQlp7Ag4OgHuWfJiGoVKRe1qa7VKzQ1Rcok1quSbHvbObUg
5qWkGX1GbIw8qL+MMkkR06MIj1zs5POzTW5C2ErArmOpI1QfaQlddbkqQQBVq+v/
flM9Y+mFeEgBQDaONvORhlxqlPTpItEfbd8xWYv7yfbFt99VOXGtsqazZtqz60Oz
z8MbEBOqOIoRj932Ruwrs8VXsfFzonYmQREAqw/RE38sHyandK2hzr7TOU6GMmXd
j47V6NVFvAoyAZjX8DrwN4PHNNXcIj1UBIYnceZPx/CNNRCvL5HJGq6ruWK+6UAe
ndXxm55KpqA2tkjLkFHWz94PqhsvvOe4ZA9ohGXMECpd/yX3pHruC4mfLJ+TguVS
jLeHLH16QbhO9WWTMbfSYbsDyniB5uasmX0zXAvIR2SiTt1tR1A=
=GF3i
-----END PGP SIGNATURE-----

--vx7FWtWfksWtbkiE--

