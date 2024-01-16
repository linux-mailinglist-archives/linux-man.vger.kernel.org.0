Return-Path: <linux-man+bounces-374-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E69B582F140
	for <lists+linux-man@lfdr.de>; Tue, 16 Jan 2024 16:18:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 79B8BB22397
	for <lists+linux-man@lfdr.de>; Tue, 16 Jan 2024 15:18:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76F6A1BF49;
	Tue, 16 Jan 2024 15:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnH8Pd7M"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427071BF3E
	for <linux-man@vger.kernel.org>; Tue, 16 Jan 2024 15:18:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CCA3C433F1;
	Tue, 16 Jan 2024 15:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705418309;
	bh=5AXWffjdGGkyKmA7C4aa4qpR0qIzrJoQMYpS7Co++qQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tnH8Pd7MuZXvP30ibAH0iafDxpo6VRfYV+yOPmIsSWPd+/IyUtgO7+8AQuywpQkd5
	 Iv4f7wjrjX/PCGsE9Yieqsv8qxUNE0px4scCdScXwlS6/z0oYUiXOgoK48Hoy4FrJh
	 dEWmxoHAWZFXtRbK3mxtoM2tY7lCZcLecz+JG6/pk/8q2JWbOL7INaluCvL1aosE0w
	 jvoT7V9qew67iN+0tZ+X+sLdiWa9oal8bJ0P0GdCZcRmB7a8y1tbQyHGjdF8ignfd+
	 QOnVfltbNeaWrkbG1zbG0/tyhpffkghrq94haywie6J7IY/PQSV5+l2deceDGQF9QZ
	 0kWvmzVTADtnA==
Date: Tue, 16 Jan 2024 16:18:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 3/4] man2/open.2: ffix
Message-ID: <ZaaeQubgNxAQYCvH@debian>
References: <20240116134009.3hufaahoy3kk4os6@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="AMPmtY3rBCaY4vUt"
Content-Disposition: inline
In-Reply-To: <20240116134009.3hufaahoy3kk4os6@illithid>


--AMPmtY3rBCaY4vUt
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Jan 2024 16:18:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 3/4] man2/open.2: ffix

On Tue, Jan 16, 2024 at 07:40:09AM -0600, G. Branden Robinson wrote:
> Migrate man page cross reference in non-filled context to font
> alternation macro.  This is to prepare it for `MR` migration.
>=20
> Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> ---
>  man2/open.2 | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/man2/open.2 b/man2/open.2
> index f37ddbed0..42716ed8e 100644
> --- a/man2/open.2
> +++ b/man2/open.2
> @@ -46,7 +46,9 @@ .SH SYNOPSIS
>  .BI "int openat(int " dirfd ", const char *" pathname ", int " flags ", =
=2E.."
>  .BI "           \fR/*\fP mode_t " mode " \fR*/\fP );"
>  .P
> -/* Documented separately, in \fBopenat2\fP(2): */
> +/* Documented separately, in \c
> +.BR openat2 :\c

Did you forget the (2)?

> +\& */
>  .BI "int openat2(int " dirfd ", const char *" pathname ,
>  .BI "           const struct open_how *" how ", size_t " size );
>  .fi
> --=20
> 2.30.2
>=20



--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--AMPmtY3rBCaY4vUt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWmnkIACgkQnowa+77/
2zJf1xAAogNLKuHmqOPOyRFdp/AKHJOYNJHTjSaVHdZHi7Ct+z4qSPS9caqI4BkZ
MLtaU66pnLR+g/CLqHNMIez5QeX80zao413UYzER9enKzJPA2rxMQyJByUWR6/wm
MJ1nI2x+Axl0z7VRHI8F9NuPWcfQAyw1HxLNrZNDhFHrcjD7dCu+XUZRtFNixyOO
EIouP3M2oz0finPWP1hYMLqle4Sz0xfGHGuwHFBrXEYxjvAsRAb1+TNnkQdReaX1
ZwFP3bzfH4Qd8qLGc3ihIIoIJAT4BQ+19JH64LMUHiB6YaNT5FrYprRICtPAS2Qm
9yhgv8NI48IWjZwkpuq60vqZB0qIRO0tAVUtpQw3kQUvN1jhyIkRv0ABvo0H7Hfq
jYUvjSId40byU5XKTRZTBMKQNQtebqutSYGZ0dUoLyACXPvzL9f5uBUpDxSiTlMN
JSLfaPmc40jyqoqjvFpjUX4ZlovddLqGKo7cYiciOBqBxOIwnxMh0G6OuUw2rQSA
bCDi6fcGQgdIIlQElARSRXVv+BNsVsG6/N/5xfMKbjn4IFKTj1CQudEHg2Trts8v
D+CEik1raX6zduAwdXtiIADcIhwLMEe9cQuHvtRf25O2ejof15CUOJR5Vw675QZG
O94aEGwYTI3YTK1h42ICxTO8KzTSqBdlOXbXUaU7qIacAlzF34g=
=6d8+
-----END PGP SIGNATURE-----

--AMPmtY3rBCaY4vUt--

