Return-Path: <linux-man+bounces-4443-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 896A4CC9C6D
	for <lists+linux-man@lfdr.de>; Thu, 18 Dec 2025 00:15:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 32A03302BD3E
	for <lists+linux-man@lfdr.de>; Wed, 17 Dec 2025 23:15:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 851FC2EB5D4;
	Wed, 17 Dec 2025 23:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fqiUZydF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329F227FB3C
	for <linux-man@vger.kernel.org>; Wed, 17 Dec 2025 23:15:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766013325; cv=none; b=iXFUm688syuSxHfWv+JD92toBsFb+O56qShBNpyzEudHgKLQt97LafKovvghEUwa/vXcEIjVIxThNlUg5MB/ovVHl+XFFF5swi0uWz7TA2i6l+Dxp2hAyVz+TFJNKOktxrCLdgl1bD71iw7urcGTRflI6WmhMRSxA5PRJ6VtuZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766013325; c=relaxed/simple;
	bh=Yll+GSLRK51XQxAX3UttqhcvgipYnR/vbEJhlqD8YiU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NoE9AUs57CV12G4SXXrQQY7U13sZCzAuSbUQFCJZH10ST+dzEn+FAs3sUecRQ1bx8nJ9j8Gb2mDpwOaxdHG9oPv4w9uO27qgOM4p7lBarbibh+zeSnaXVAjd/rbUb7xGi4SPPQyYGqSMH95LZixv9V3Jg3Zqd99PrMBe3Dv5xgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fqiUZydF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20CFAC4CEF5;
	Wed, 17 Dec 2025 23:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766013324;
	bh=Yll+GSLRK51XQxAX3UttqhcvgipYnR/vbEJhlqD8YiU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fqiUZydFDeL9sjQIFBVxUMNN4Yne5iWXQEOIuZTJC5OZVE7xknvg2JQxWcyje0Bv0
	 NCYENcDQDGlLxW1fqWr8ZZ98hR+njixmvTO/JrAdXws2r3MJGmrLfre4S2nJ6a8kPG
	 JU2MIxgODXx4XJoA0HcVG+QHETvTt8Lyp5thrloW85x0BsdZmHvQdgUBLo18ys8rzJ
	 rTrWHf7XcYm4ur1MvZCD1FZxTOIMr7mXcJJettK5q/zsBDiZ4hhgwa3qyY61MoDQF8
	 EfbiiwbrypZyx0MxnYo0faNizyPHGEyJ2XVt1s+SjasiGK9m3ZzY+ceYuhykOX4Kur
	 eMcKnPpD7vmAQ==
Date: Thu, 18 Dec 2025 00:15:21 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man3/getopt_long.3: Assist users
Message-ID: <dfezdrhg7wupodwha53d7yzymf43poxonxhelekituha7yuma6@rklvqpo5fwfa>
References: <20251214013754.hvrmeblfbr3cb4he@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jr76ig7kwj77tbu3"
Content-Disposition: inline
In-Reply-To: <20251214013754.hvrmeblfbr3cb4he@illithid>


--jr76ig7kwj77tbu3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man3/getopt_long.3: Assist users
Message-ID: <dfezdrhg7wupodwha53d7yzymf43poxonxhelekituha7yuma6@rklvqpo5fwfa>
References: <20251214013754.hvrmeblfbr3cb4he@illithid>
MIME-Version: 1.0
In-Reply-To: <20251214013754.hvrmeblfbr3cb4he@illithid>

Hi Branden,

On Sat, Dec 13, 2025 at 07:37:54PM -0600, G. Branden Robinson wrote:
> Throw a bone to users of this function who need to report (in a
> diagnostic message, for instance) the identity of an invalid long option
> name.
>=20
> Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> ---
>  man/man3/getopt_long.3 | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/man/man3/getopt_long.3 b/man/man3/getopt_long.3
> index 73e8f3e6f..a464349fe 100644
> --- a/man/man3/getopt_long.3
> +++ b/man/man3/getopt_long.3
> @@ -102,6 +102,12 @@ .SH DESCRIPTION
>  is not NULL, it
>  points to a variable which is set to the index of the long option relati=
ve to
>  .IR longopts .
> +.P
> +Its analogue to
> +.BR getopt (3)'s
> +.I optopt
> +is
> +.RI \[lq] "argv[(optind \- 1)]" \[rq].

Would you mind adding \% to the entire expression?


Have a lovely night!
Alex

>  .SH RETURN VALUE
>  See
>  .BR getopt (3).
> --=20
> 2.30.2



--=20
<https://www.alejandro-colomar.es>

--jr76ig7kwj77tbu3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlDOYkACgkQ64mZXMKQ
wqlXXA//RS4+kZeMIhNeTMKREGbVl4D+7PNyLt2Bdp1AjoR81+kWf+mIyspIrsyv
pMb4+abxZ5QyvrY8cATrHAe6cW0qYd/jUA0U/RIryOMT4/yqW8Xt0L/0kC0bcS//
MHfdwPPdVevi1Fe8UEL5mfZOHz2W+DdUreYx0cPCDkIi0gOs6uqknnX7XGcwUsXI
AMfKN+qhm+mawL0s0r3VP/Up4prdWmf4sb9Dsm7xwhHy3IOSvJFCVkhNJMeMppAk
l1jyxmJ95v+LSuDmJc6IdxXDRW3TwvPJlG1HNqOvwY/yoWLTvhnQhu2QKDtrB7+B
f/trAlOXxl5z9bUhZgNdISnVAWebkmLcJtytyBI52N1tgb0cv3/ej+wW1yaMoUgp
57TI1vXz/fSXVsG1kFQ5vUi1H5CH35xgteAtEoA3Mvf/TBDrS13zKYFgsAn3zrg8
gb5TaYgfIoC+E9xBJjpCcWHBhsudQoe1U3o4cjxhfKakxP6W6TUZAB7ybQG/LBAV
nLMWM1jFeAnClK6YAM/1g2NZS/uPIXDUJ1KT3Ig4smkP3Pd3lwvTdEmYLvt5Injl
gYBO9JmVFJO8kvgkQmCuwv7NmBHUTFl4XfG++uUoJv2b8OOrCY4iUX633eV+nhOf
xx03VWdTK6ZLfwtg8/ErzQm2SR+kk4nKdnmfTOG/HV0ruuOu5og=
=q3RP
-----END PGP SIGNATURE-----

--jr76ig7kwj77tbu3--

