Return-Path: <linux-man+bounces-2948-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A456ABAC8C
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 23:20:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8FC8F7A7D36
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 21:19:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC6A9265CCC;
	Sat, 17 May 2025 21:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+71yaA8"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A800265CC0
	for <linux-man@vger.kernel.org>; Sat, 17 May 2025 21:20:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747516818; cv=none; b=dK8mKLJuS+1yBtlObzcvfZouOGpwmoiKL5KjwXfBVR3IgNKExQLXnDchOIIqu2q6z0K3pQszwU8ifsVTBlORh91pzVH5YCLsIV4Padn53aG7L55ZhHTwHPRvWwLcg/edNItpdTysX9lFCrU1gux1Ass9zh08qoFWv3FBI2o3x14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747516818; c=relaxed/simple;
	bh=fHAuy1rDh1UfbCNG0v8h0N9leYcZWGWRnZYxvpkxPF0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hDvsWNz3Ui3E7EoITCyQcEKx1TNm3ZFs2uSVIhUDAs3k9b4Tiu+N071vxmRBWzYjtMt0OSHdLcP2hgattHIRous9NThdo+VMnXY5g0RanGcEgwVzXw8zBZg0URZsWTyRn68nl8kw16BLJTOKDgNnlzrBYUCUHt8rREFl+8HLJLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+71yaA8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C253C4CEE9;
	Sat, 17 May 2025 21:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747516816;
	bh=fHAuy1rDh1UfbCNG0v8h0N9leYcZWGWRnZYxvpkxPF0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=H+71yaA8VXhu0ZWmmmGC1vJgFGVXYiRduuqHEV0vMnrefDME4EDUhu+0B1fEM/PGy
	 XQ2ZpLXYVaOqIWgj17RAVNI90RQCeRBgPK3XKmWUkE96Hc/5v7mJlb+BLaLUNnctV8
	 kLM8qF/vR+f7Lzl9B72BysOV56zDNf4nBYeEW0SegeKK67pT6RXPiRcwAEYFsxT6v2
	 QUHcOzLNIOu6AOlw3LSQaVtNLl6TOb8qN9frz04LkXjMp10/gJXSPhLL3JFgteqKGq
	 V5SWSQky/mOOyRWdCyrozwuaSv3BlTzcr+8ejqVckT8K2VDzxoLGy+RwkMgFuNXuih
	 jlxpyObewcJYQ==
Date: Sat, 17 May 2025 23:20:12 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 3/3] man/man3/ptsname.3: Mention ptsname_r was
 standardized in POSIX-1.2024
Message-ID: <opxxqvd7ve7dp72j6xkbjjw3rrwgnt6jaeyqiekvok6sdyx3uw@nflouarf7lhm>
References: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>
 <883d4a9b8cfb757a080710cf0133be5d0e12adce.1747515178.git.collin.funk1@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="k337zqn5fxqu6axd"
Content-Disposition: inline
In-Reply-To: <883d4a9b8cfb757a080710cf0133be5d0e12adce.1747515178.git.collin.funk1@gmail.com>


--k337zqn5fxqu6axd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 3/3] man/man3/ptsname.3: Mention ptsname_r was
 standardized in POSIX-1.2024
References: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>
 <883d4a9b8cfb757a080710cf0133be5d0e12adce.1747515178.git.collin.funk1@gmail.com>
MIME-Version: 1.0
In-Reply-To: <883d4a9b8cfb757a080710cf0133be5d0e12adce.1747515178.git.collin.funk1@gmail.com>

Hi Collin,

On Sat, May 17, 2025 at 01:53:04PM -0700, Collin Funk wrote:
> Signed-off-by: Collin Funk <collin.funk1@gmail.com>

Thanks!  I've appplied this patch.


Cheers,
Alex

> ---
>  man/man3/ptsname.3 | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)
>=20
> diff --git a/man/man3/ptsname.3 b/man/man3/ptsname.3
> index 748f1e19a..34d04fcf1 100644
> --- a/man/man3/ptsname.3
> +++ b/man/man3/ptsname.3
> @@ -120,13 +120,9 @@ .SH STANDARDS
>  .TP
>  .BR ptsname ():
>  POSIX.1-2008.
> -.P
> -.BR ptsname_r ()
> -is a Linux extension, that is proposed for inclusion
> -.\" FIXME . for later review when Issue 8 is one day released
> -.\" http://austingroupbugs.net/tag_view_page.php?tag_id=3D8
> -.\" http://austingroupbugs.net/view.php?id=3D508
> -in the next major revision of POSIX.1 (Issue 8).
> +.TP
> +.BR ptsname_r ():
> +POSIX.1-2024.
>  .SH HISTORY
>  .TP
>  .BR ptsname ():
> @@ -136,6 +132,9 @@ .SH HISTORY
>  .BR ptsname ()
>  is part of the UNIX 98 pseudoterminal support (see
>  .BR pts (4)).
> +.TP
> +.BR ptsname_r ():
> +GNU.
>  .SH SEE ALSO
>  .BR grantpt (3),
>  .BR posix_openpt (3),
> --=20
> 2.49.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--k337zqn5fxqu6axd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgo/YwACgkQ64mZXMKQ
wqmG9A//fGPsyewmlifiEFZVmPJOkZS0KuV7Ql6IGiLrWLF1tsWhQkvP/2cSRKDV
MgDzFKMB8vGHEl0prqL0yUQrj9qfAynOqNtLR5kAET20T0qmJfxU246VlHHWEBzP
TLZ38lEArIsBejaNCgByQOU88+rg2Dfzt0TIQh+kvDO0DtCdiTz+du8wy6AC5Jry
pjmdWIklDcux59DujAcylK5KE7xA1j/jUHHFCYZlOSyfDoE7vB+1oouDsLLNQ4mH
MPLRU46pbVSJhcb8XeIR407nzyz3eAx7kRs8j0VTlYZsAC/GGtnhr+G7HYP+IfXR
CTHYnSOahvMlMsThWWIx/0Oja+jvyWoSsBiCXiGXD4JE+fZuCxy3+hdEukFz01Ft
LL4yNUil+NzOldHspaX/BCkPyn7uZsYySMQ8Ysrc2EcNFxFFGWwYd3j6ir5iAeLd
udgWPi4ZQgBWuc/FaETjl9UjuCApTnDSqu2vZuoxlRdXIbEGxlN8d0xqjDzJYQSM
aL3C0SVREjwtzEEIV0RvQ5/DCmMGymo+///IkdBlJIMLeqRGMyX75G5K85VV6O5e
2ft9RilYTnxVJ3rLELQT121slpmbWGJgKQfzUhsq/Nsx5TQCykYbv8I3CB3STxED
X4wQW+nSTh2gbUGkM1WCQ7MubrL5ug6eZHCKM0jELt2704ZIGaw=
=NuYQ
-----END PGP SIGNATURE-----

--k337zqn5fxqu6axd--

