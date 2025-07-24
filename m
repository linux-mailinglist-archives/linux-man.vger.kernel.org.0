Return-Path: <linux-man+bounces-3293-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D0CBAB105CB
	for <lists+linux-man@lfdr.de>; Thu, 24 Jul 2025 11:25:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5017F1CE1310
	for <lists+linux-man@lfdr.de>; Thu, 24 Jul 2025 09:25:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AADB7277CA3;
	Thu, 24 Jul 2025 09:24:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FayWEI46"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3C8277CBF
	for <linux-man@vger.kernel.org>; Thu, 24 Jul 2025 09:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753349085; cv=none; b=iuopvUpjuyB2ysmf0QBQtT639rpbVsyk/bY36vTbnzL6xahcK85cOL2Tp/0UG4N/9L2ymM6C9UVwmItan/uak1LUYKG4nt9FFpk68oBUMJm2BqMBZByPrday/ti3BlBp6pK0qgiwnqoQ/rfNtEx0HUgQpp6fDJxwczWQ9kywCak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753349085; c=relaxed/simple;
	bh=zG9LkKugoRDQJjDiOmzUfUs3WoPmQxc7TU6qOSserv0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KeuE5MiYZ57hJ/s3QxaWVe9d/kMuIi82NJdLWau/Qhao6l60ggJVPIfoTn0wRTf+XnMNUazW5C6EhAMSque3dw/937ugrDHiFTE+Fa+isaf0PZlvdu3frelCP+YKRmATyjWwXyL80PVLDY9CWEd+Rzdge0IdL8Jg0ibE0nmrmz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FayWEI46; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7725C4CEFF;
	Thu, 24 Jul 2025 09:24:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753349084;
	bh=zG9LkKugoRDQJjDiOmzUfUs3WoPmQxc7TU6qOSserv0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FayWEI46pSdSeMC87WsiQbYOMQYFaw9b19LBVdN3kbPRY3C7/v1c1fzL2IZIl72tq
	 vTKQ0+oPXDf7Mwh3GCcSd52Sb8PF7+oN15+KrwcvwhTH4rxVd6deQenLZS874aPivm
	 l5+93yYWMYeTODT1bQzZmSebrsAQd2ui9J4lUN7CXex7wMctRNE+ReRuIaGstRcvmV
	 /ltA9D4Pe21hyuahkmIzHUXooQwcjzF0nXNuseC5MWB4A05QK8uyXqII86NkvjQibN
	 vKI7nzg0KQ3X4l8xnGVTciRxdUAZTv3WMudUxTPkcBf9JOkkf6ZsMRdkvQ1W0Q13F7
	 vcqUdY1VkY5Rg==
Date: Thu, 24 Jul 2025 11:24:41 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Aleksa Sarai <cyphar@cyphar.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] openat2.2: update RESOLVE_CACHED to mention kernel
 version
Message-ID: <pqy5aqum4tzqgjxxu5tjqyxrqane4uwn7ovpad2pm2h7iwug3r@u7ly7eu6q2je>
References: <20250724-openat2-cached-note-v1-1-037e7398f797@cyphar.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hl7ds5o5v2alt5rl"
Content-Disposition: inline
In-Reply-To: <20250724-openat2-cached-note-v1-1-037e7398f797@cyphar.com>


--hl7ds5o5v2alt5rl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Aleksa Sarai <cyphar@cyphar.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] openat2.2: update RESOLVE_CACHED to mention kernel
 version
References: <20250724-openat2-cached-note-v1-1-037e7398f797@cyphar.com>
MIME-Version: 1.0
In-Reply-To: <20250724-openat2-cached-note-v1-1-037e7398f797@cyphar.com>

Hi Aleksa,

On Thu, Jul 24, 2025 at 02:58:25PM +1000, Aleksa Sarai wrote:
> Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>

I've applied the patch.  Thanks!
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D2d9d6deeb4dccc4f46e7aa29878fe65b6642682c>


Have a lovely day!
Alex

> ---
>  man/man2/openat2.2 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man2/openat2.2 b/man/man2/openat2.2
> index e7d400920049..ab296b9cd0d6 100644
> --- a/man/man2/openat2.2
> +++ b/man/man2/openat2.2
> @@ -371,7 +371,8 @@ a system pathname that is used by an application is m=
odified
>  (e.g., in a new distribution release)
>  so that a pathname component (now) contains a bind mount.
>  .TP
> -.B RESOLVE_CACHED
> +.BR RESOLVE_CACHED " (since Linux 5.12)"
> +.\" commit 99668f618062816ca7ba639b007eb145b9d3d41e
>  Make the open operation fail unless all path components are already pres=
ent
>  in the kernel's lookup cache.
>  If any kind of revalidation or I/O is needed to satisfy the lookup,
>=20
> ---
> base-commit: 5d53969e60c484673745ed47d6015a1f09c8641e
> change-id: 20250724-openat2-cached-note-4493c170b8a8
>=20
> Best regards,
> --=20
> Aleksa Sarai <cyphar@cyphar.com>
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--hl7ds5o5v2alt5rl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmiB+9gACgkQ64mZXMKQ
wqk2LRAAvDLpGx+Kvv73E1/KJAME+Pfe/A/umOhSSUixK1zTExVgfMnbH0CfdNis
OCRjhYgLeIcm4KTrYo7rgXEHe3/JgiME7h1X89foPdkEu5isro8nf1MiLxT9HfrN
pqtNzbeOskYXQjsraP0hHRVVgQ+C7cWK37tpvI4IViLcvo28o7jDzB4h6cJpqcBr
qeqJcRdaNhxr4X+GUjpNF3VRzPhcZQZUB8XZUgvFEGF9bdD8gtdD3J5ANyeB1aD3
xwHI11Cub22HwMMoO9Uo81UWIYb00oDFy8gTNQNS/dn2PqavNsuVqQNaebvKdidd
68Vh6jq6aGhyjrj0jDQCs7mOEYcC1y/7r036b/crbZ4gIQH5rt67Z0zddJNl5h2D
MIzGDnUIW1qCFmHo4RCTmyOVA7jcY+kW7PHf3ykcWsuR5pX7NSF/G5ZONZnOsG6V
mzzl/xrSsq0KYT0Ey+1EKPGfiFI9pE8oq8S4CpUNFD/4Dw9arGInXbclsmQaGK/1
gbIe9VNIiGfpqZxptQkFuoNpY5cOmVzIzSUEHqBpZi56e2G+eeBD44gZiqFW+oAz
Nh1+NODXPT3Usze+tMH4JdRjSmSNQmQf9c9LB2Kc0e92KjjT9VYs3WrEFQXqObmU
sLZynWNzqs9KPVhNXVWM03sB9WO0oYZBBUu1tKrlEYFMWnXSBrw=
=/dip
-----END PGP SIGNATURE-----

--hl7ds5o5v2alt5rl--

