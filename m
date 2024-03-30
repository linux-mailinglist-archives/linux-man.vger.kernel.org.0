Return-Path: <linux-man+bounces-709-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C9884892DAF
	for <lists+linux-man@lfdr.de>; Sat, 30 Mar 2024 23:55:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E93221C20CDF
	for <lists+linux-man@lfdr.de>; Sat, 30 Mar 2024 22:55:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4C64405C6;
	Sat, 30 Mar 2024 22:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQVmql4H"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7431C2EAE5
	for <linux-man@vger.kernel.org>; Sat, 30 Mar 2024 22:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711839325; cv=none; b=FM1Ztlysqx918PNagNl/ml8/LjmZLGuYaQkZVKp/k6gldd95SXbEiuKHSxSYcQ7rtdzI4U2vgoW8LLOqpbHihHzIli9VmPsfXFeEkpld560OqUtr3sLhKUxl5qwX1OR7AmYmC7YbYgl+qzbXFnWYtQsvoWibpZEpPmkhi0H8Kiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711839325; c=relaxed/simple;
	bh=/YXu9NH9ppnyW6ECTqOkvfhFF8WXljTJTq8zAyzpMnQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LYDLiDJhhQDcoko1TbQ2CiUXtRX0z65m+YuM489M9ywwONZ2xvRqRqkDs7dywYXrxYWrbyNLgQX5ojwzp4AM05Um8WAWQyAoOgHMBYP+Z/e3S3qvhxviQYNYTWIu3UqTOPNtjZaXP1BP2IaUVQrN/nSVx3bWMRgXuoliLXC9EPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQVmql4H; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E2D7C433C7;
	Sat, 30 Mar 2024 22:55:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711839324;
	bh=/YXu9NH9ppnyW6ECTqOkvfhFF8WXljTJTq8zAyzpMnQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tQVmql4HX87seYm/P6Z34wp+IGqHZGXMwVW34waEY01MZnFa5OVPIgtZ5uOmtkaFS
	 fiDfr9KkIBVchcEDQ6Ex7C7fWcCEo70spqSV5o+ZikAdie1VnueFeg2Ad+Vr8fcpdl
	 9mx/M9GuhvXJfjWrdFeoJjjgZgkeN9SiKfL15spBO0BjdTQvRSFU0lIRr/8hsAuSNx
	 FLv3OFb2SaLiwHxODbI0Fe+7gpxm2HZbNIXjoagvhx2EfE9ahlw7fuF3F5VESXmiUa
	 5WKDixO1bjzCejxkY+ost/0Yc9Qk04kSWfWwAhvm20V5NCd4I6fblG5Rb1fGW1BKU1
	 YZmRoBkIJrHOw==
Date: Sat, 30 Mar 2024 23:55:21 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Fedor Lapshin <fe.lap.prog@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] getgrouplist.3: EXAMPLES: improve error handling for
 getpwnam(3)
Message-ID: <ZgiYWl7Y396WFLQU@debian>
References: <CAJ_gjBoqD2mWoJF0QH7YB=Z0Wy00XFO2yRJ0VQDxPmp3niisYg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8JeOnBkIJozl5oLi"
Content-Disposition: inline
In-Reply-To: <CAJ_gjBoqD2mWoJF0QH7YB=Z0Wy00XFO2yRJ0VQDxPmp3niisYg@mail.gmail.com>


--8JeOnBkIJozl5oLi
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 30 Mar 2024 23:55:21 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Fedor Lapshin <fe.lap.prog@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] getgrouplist.3: EXAMPLES: improve error handling for
 getpwnam(3)

On Fri, Mar 29, 2024 at 03:21:11AM +0300, Fedor Lapshin wrote:
> Signed-off-by: Fedor Lapshin <fe.lap.prog@gmail.com>

Hi Fedor,

Patch applied, with some tweaks.  Thanks!

Have a lovely night!
Alex

> ---
>  man3/getgrouplist.3 | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>=20
> diff --git a/man3/getgrouplist.3 b/man3/getgrouplist.3
> index 41389b6c3..e2e640d56 100644
> --- a/man3/getgrouplist.3
> +++ b/man3/getgrouplist.3
> @@ -162,10 +162,12 @@ main(int argc, char *argv[])
>  \&
>      /* Fetch passwd structure (contains first group ID for user). */
>  \&
> +    errno =3D 0;
>      pw =3D getpwnam(argv[1]);
>      if (pw =3D=3D NULL) {
> -        perror("getpwnam");
> -        exit(EXIT_SUCCESS);
> +        if (errno) perror("getpwnam");
> +        else fprintf(stderr, "no such user\en");
> +        exit(EXIT_FAILURE);
>      }
>  \&
>      /* Retrieve group list. */
> --
> 2.34.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--8JeOnBkIJozl5oLi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYImFkACgkQnowa+77/
2zJsew//dT9Ce9EtQobgvDBTAVHhI63jF8tf4NF+GUoriI1NGlgnW5C7GxjKxHrd
Qez1h99AX66ipvXQzpXM9sZHD6arTTQoEOkGGv8ZmSvKH9gQ0LMx3yYwMKWn6+V1
PXq1tIQj3dS24xdr+F3UhgtwYt3o6p4Ujy/cgmwy7EhWCmUNwP87+3gjL9xzIY5d
3+dXk3FZSywlVKQZLS144Ac8ORq1pXPQwnUIk+XJztSZUxr2QvkzIpPrXidASXp+
MttnOvUXY6DNS9yIUuloxuH7/0J+7p1MQUWtGb3YN2h5V/OdF+FKa2BOmCDx8RIj
vbrP5vuYQwqSxOwygywXnwvQIf5ZdNRlu6Hom72lvrJy52kEE7F6CHdXRglJpqC8
DdAGSkanJSdmRyyaHj95SA1e+/y+6TOmMw31KcyWvJNFSYT1gOPJgANPaldnGd9D
I8s9t0HLtwad/RBsPNYmadR4kHBY3i4pYabTOf+HG9OLyB+FHyXv2jf9amVv71ix
G6DFpKVFoYRT2/+DZWp0vJDOQnXv4ugc4AqYU/O683pEIb+aQGAgP6VY/AhXRTd8
m2vU7QoEyBPbB/cxsxrUVNDDhy99Z3WlsQZ6+7OuKt30rSrHRc3r6jn5bY8OvsTX
xXZv3YJQb6jdiJAsrxHZ+/2JtsekRTFQnfaiunPCmID7P1lXdIE=
=uxrp
-----END PGP SIGNATURE-----

--8JeOnBkIJozl5oLi--

