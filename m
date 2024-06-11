Return-Path: <linux-man+bounces-1113-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 28FCB904045
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 17:42:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C8B221F25D3D
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 15:42:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 897312E851;
	Tue, 11 Jun 2024 15:42:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vF6NUz3B"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8C71BF53
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 15:42:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718120564; cv=none; b=tp50f7KQG5ieCeDY6VgILOLEDtwKix23cDaD/PVyUirxoBQwFRmYf78hyWUTw8YjcOnWUc/kvv76yav9FeaC8fLg4wGPEutVBg/gm7C8bHJzE8aDfk8zQD0crIIU6hHeJymV0sr5QKMOODjYnWVJ/485yjEF81pJfW+E6m/0Wmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718120564; c=relaxed/simple;
	bh=1jrTYrS6IsACbtDDcwDG5KRQqjwIdMZ4XJ2FiXwWdJo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JxPuLNJNbtCdyVtpNojq0ez3zIZB+Ck2plTPGC9hXHIwqBTdLe6ol9VdQ1h+e1Z/x4dN4l3gkpwi75n9dYlODr1F2vtpj1DPkSZ56BBxXUR15XmzxULzxYTBymYflKQal+nLWcM/LOZLwwPU+xq/gv3X2yMsbmI94Tvm8jQui34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vF6NUz3B; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73C6CC2BD10;
	Tue, 11 Jun 2024 15:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718120564;
	bh=1jrTYrS6IsACbtDDcwDG5KRQqjwIdMZ4XJ2FiXwWdJo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vF6NUz3BE41WiHRtVQ30z9tZEXoxy5aLdQuSuMXP/B9RWRJum+ODmFZiZSdQ0M8rl
	 E3940RMGUi/MoNW0kbpjZfFY1uIa+V1HyzzVt4Lbm7njkRlgNARbBXsCIOpAfhFXtt
	 +hfDA2UB/W/vRoqTdW9AH5MEwJ6E2oloEZrAugbqyHc7vBdH4wDAxe44WaLJAc0oWf
	 k2YMtKZRlZUFKCKXuTiIGn2UteJDM8MFx9rM0UNd4Mhy2uT8SBWi+YqgZEdTj5Xwtc
	 Pt+O5ei7LU/XzwE1ri4oeVbXcxQe4pnLfsQtla6bfquWltVVmgpyE8V/7pVjjEKu3d
	 qAHrO3SSW5Ltw==
Date: Tue, 11 Jun 2024 17:42:41 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 02/12] tzset: state vars unspecified if geographical TZ
Message-ID: <qupp7ab3hqxer7mqiw55yzx5k3osuwzvwisdrv2ewksj7mdtgw@gll5krm3hxoy>
References: <d054fc63-6ea4-425b-94ce-14402d448ccf@cs.ucla.edu>
 <20240611153005.3066-2-eggert@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tt2wkmdtfa7e76rx"
Content-Disposition: inline
In-Reply-To: <20240611153005.3066-2-eggert@cs.ucla.edu>


--tt2wkmdtfa7e76rx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 02/12] tzset: state vars unspecified if geographical TZ
References: <d054fc63-6ea4-425b-94ce-14402d448ccf@cs.ucla.edu>
 <20240611153005.3066-2-eggert@cs.ucla.edu>
MIME-Version: 1.0
In-Reply-To: <20240611153005.3066-2-eggert@cs.ucla.edu>

Hi Paul,

On Tue, Jun 11, 2024 at 08:29:05AM GMT, Paul Eggert wrote:
> ---
>  man/man3/tzset.3 | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man3/tzset.3 b/man/man3/tzset.3
> index 8479b17b0..6e89dd530 100644
> --- a/man/man3/tzset.3
> +++ b/man/man3/tzset.3
> @@ -63,6 +63,11 @@ In a System-V-like environment, it will also set the v=
ariables \fItimezone\fP
>  have any daylight saving time rules, or to nonzero if there is a time,
>  past, present, or future when daylight saving time applies).
>  .P
> +The
> +.BR tzset ()
> +function initializes these variables to unspecified values if this
> +timezone is a geographical timezone like "America/New_York" (see below).
> +.P

Do we want this in a CAVEATS section?

Cheers,
Alex

>  If the
>  .B TZ
>  variable does not appear in the environment, the system timezone is used.
> @@ -155,7 +160,8 @@ TZ=3D"NZST\-12:00:00NZDT\-13:00:00,M10.1.0,M3.3.0"
>  .EE
>  .in
>  .P
> -The second format specifies that the timezone information should be read
> +The second, or "geographical",
> +format specifies that the timezone information should be read
>  from a file:
>  .P
>  .in +4n
> --=20
> 2.45.2
>=20

--=20
<https://www.alejandro-colomar.es/>

--tt2wkmdtfa7e76rx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZocHEACgkQnowa+77/
2zIFMQ//anDUhX5m0uvc/ub1c9E/cMjzufVjOp0mhXT6arkp5Xclim7qbeBIsFXo
gKQXCx4lwoAnV4EUt1q4hlTec1qxvspUH6M0QJTxDcz5GTc59T4X+f2WHgzsuFER
PSdA+k5EzErwWN2VO7x8fL3YfZRCTE4mG7Tiz942nWzJCdH6iUsz34WvJF9YVL6q
0WRfEYfDkW0VRTGzi0YvkncLfZNHWUei4rrYUXDL29KAwL5fXcPDRXjnIAls++l7
4Ua0MfX9gkWdGhvK8YnIwCdqA5pwW6UXxPpSOgdvoCZPPk+4OEXeIzqIT9Du9tl2
/db89RwrRLmR9H8u8bcQaIJiLq2yzEojDyajxarrgaEz/I37zwgANu0QC1GuhKYq
ng1uCv775PIQ8dynC2dQ7D3GNAQZuu7sdK7Xg4ECKFs+rOwMP5p9SzTm4kdDuzi3
vdOkvS4+Zcg2j/5y4frJis3CAp/vjCWKgAVt56d10go+LeAxms1f5VUX4NEHYjl5
wRdcLVIyzh11jUjNQIQ+d6PrSKK3W4wlVuc22mD/29asUQcl42zu5n/VzcEkb8YO
KG58vfoh4X8Vne7qVkldLYPAfr/SrH+835IHLLc08Fahgm1UliTEi1bN+80qCSEd
UqnhbJv0GYvLwHwXg79j7pIXWL1RymUyZozISoR/hEbKefUji/A=
=sR0X
-----END PGP SIGNATURE-----

--tt2wkmdtfa7e76rx--

