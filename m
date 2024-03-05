Return-Path: <linux-man+bounces-539-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6E98728F1
	for <lists+linux-man@lfdr.de>; Tue,  5 Mar 2024 21:52:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5317A1C2353D
	for <lists+linux-man@lfdr.de>; Tue,  5 Mar 2024 20:52:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2728A12BEBE;
	Tue,  5 Mar 2024 20:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iCa1Dc+C"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E0312B16B
	for <linux-man@vger.kernel.org>; Tue,  5 Mar 2024 20:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709671916; cv=none; b=bleOVLDfyiHGtGnuXeutm7KMIYIJdXNReDt32/vrH/sfraR6MlPDU3s2tmjJ79xELfL4WQ4Ac/9rU3ziQew1Rn60M3cc0we67C4PVVUmbWbC2a7JvQsKSVzLNrl19b9/fWD0GgUe1lLcEDa9rWiz02Q7DfhnE+c7AaOOSPJchSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709671916; c=relaxed/simple;
	bh=cfvKtmwKuMLARVNR8u5zV0bH6gcVyxZMg9vByJF94mw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G7kg8metMRhmdJzwHnOFDTGHYjyGLZthGJ7Sw+6SnoHm3eBP03X2ltq9jDcmOzqabWo5I0TF8qCXIsKk+SPMviI9DUyBytfRB1LpV/u+mF5izoFanbvgCfZYbp5vUT0e8HV78tCOhTyQxL4nzlviyZ3enFUUFoFdZbfGwMMrkGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iCa1Dc+C; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A2CDC43394;
	Tue,  5 Mar 2024 20:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709671916;
	bh=cfvKtmwKuMLARVNR8u5zV0bH6gcVyxZMg9vByJF94mw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iCa1Dc+CB/cQkV6actlft3bEtOMYRcCj+9/VaO7k2XDaOV3IGDElEcXMCwVcmi+l+
	 KNwYE79JWJprrNMSXD5JPQ1Dv+gl3vAjp9P35hSC9aboyWrvYA9Jn0Z9FlbuSpLHqW
	 BHqm6fqMyh09L+uXntAG4s4jInvTfv0K4P9Nz3BIJKt0muzuvBkWVQW4PzDIJryTCF
	 0BKBZj4DjlKJlQ02VVcxVH7JoolJ0+yNvjMSVAKz4t+nrZ8dM5nkBlrCUEuiYKVwFA
	 rgE98Q+0Gl7XoEPTRzrxJXHTWzfqmF8fDDjdS7kIPOwvMsNN0DVpno+5esgtusaSSB
	 8Gfp3xpALwrUg==
Date: Tue, 5 Mar 2024 21:51:52 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Hugo Gabriel Eyherabide <hugogabriel.eyherabide@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [patch] man2/read.2: tfix
Message-ID: <ZeeF6TSOhTkYxax7@debian>
References: <CAK7k5HHf9jpAv7hc58GathsOdyDEmPjaMs9LCD=2PtxY+aNDLw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DVkJN372IG8gC0vD"
Content-Disposition: inline
In-Reply-To: <CAK7k5HHf9jpAv7hc58GathsOdyDEmPjaMs9LCD=2PtxY+aNDLw@mail.gmail.com>


--DVkJN372IG8gC0vD
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 5 Mar 2024 21:51:52 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Hugo Gabriel Eyherabide <hugogabriel.eyherabide@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [patch] man2/read.2: tfix

Hi Hugo,

On Tue, Mar 05, 2024 at 07:23:37AM +0200, Hugo Gabriel Eyherabide wrote:
> Hi,
>=20
> The enclosed patch fixes a typo in read.2. It turns "with respect updatin=
g"
> into "with respect to updating" (that is, it adds "to" between "respect'
> and "updating".
>=20
> Best regards.
>=20
> Hugo
>=20
> Signed-off-by: Hugo Gabriel Eyherabide (hugogabiel.eyherabide@gmail.com)

(this should be in the patch :)

Patch applied; thanks.

Have a lovely night!
Alex

> From 14a9159e96b060ea56ecd9ab8db70a10ae524656 Mon Sep 17 00:00:00 2001
> From: Hugo Gabriel Eyherabide <hugogabriel.eyherabide@gmail.com>
> Date: Tue, 5 Mar 2024 07:14:06 +0200
> Subject: [PATCH] [patch] read.2: tfix
>=20
> ---
>  man2/read.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man2/read.2 b/man2/read.2
> index 2b92597c8..c74f62a0b 100644
> --- a/man2/read.2
> +++ b/man2/read.2
> @@ -216,7 +216,7 @@ perform a
>  (or
>  .BR readv (2))
>  at the same time, then the I/O operations were not atomic
> -with respect updating the file offset,
> +with respect to updating the file offset,
>  with the result that the reads in the two processes
>  might (incorrectly) overlap in the blocks of data that they obtained.
>  This problem was fixed in Linux 3.14.
> --=20
> 2.41.0
>=20


--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--DVkJN372IG8gC0vD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXnhegACgkQnowa+77/
2zJXgRAAoSQpnmiIaw5eGU/cU0O9GbRGF9zv7kkTKX9eddVN7Z6K2HpSWi/EFVie
HBNVbSvFYVqE0JBKzu4NM1Xk5Zq10rTyZfkMowOUrF3S1El72gOaxFCuyDGLhDLb
O4rtsx9MrSalK22OeK3TvkXTMywCVjhOjUQWC3HO6nx+u5lA/habVwpZTfVcmv76
2QmB6bEQ2k6nHnprZddO+9yIat/Kn9MvrSazn/vXJKuU0Vu3wyVu1oU8M9oFU/hd
rNgAyv9mF4aEaHmOCsQ5ta4IuI6ctPmfzbP8NANMGLckjJAyAePQrcsvfnKeUJT+
6Db5/3+N3XBEIWUTlBTmUDZPLNlxVHdloUD5G6QWiBTKB0TydwwtHEFjC2H6OEYP
0JqSwO7zznZ+byVQK1CP9QgVx74TSHm2ZN14d1xZin/rfB4EUuZ9sJdi0j8GTx5D
mH4tLBt7zsb3/9sO+lMi4euBqSSn+YKFK/r0CTrzy9N+NtGObh8CfSjEm8bblcSW
q1WH4LL1hOEvTJzaTiwjYSL1Fvt/Qp14Wd8eMU5f0hVbsybc7wrNs/EPCd/v1Wkt
oAWkc75wlgzNVkcH8I9tE1COQKT9uVay2BQ0MD5LVzh/C2c7IyVSqcjFfQFXTEH3
ghMbDrPxXpxi5teIz2t2L3TfQNXT+HhkurXFxsdax+7vGuymors=
=wHvC
-----END PGP SIGNATURE-----

--DVkJN372IG8gC0vD--

