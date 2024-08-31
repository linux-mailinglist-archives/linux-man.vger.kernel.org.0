Return-Path: <linux-man+bounces-1740-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B3C967340
	for <lists+linux-man@lfdr.de>; Sat, 31 Aug 2024 22:51:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7D179282FD5
	for <lists+linux-man@lfdr.de>; Sat, 31 Aug 2024 20:51:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E38EE17C22E;
	Sat, 31 Aug 2024 20:51:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dwux1mgG"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A5C117B401
	for <linux-man@vger.kernel.org>; Sat, 31 Aug 2024 20:51:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725137486; cv=none; b=BPxICcvpPdGuTiYVoA/QQSURv4mLumtO6Rs3KuRq3JXygttsla+zYqhxm3K/q9Bamw3uiolaBXxBIENydsCr7MM7XmmHTfKmroWJEVrGf0nzvdusP5N33m0RmtqfXfk1zGDjripcJyazD6VLVpeB3X603ZUKmOqGpMONG3Afeqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725137486; c=relaxed/simple;
	bh=m0Lez3z0hxg7Sn7GPcTIxrfrW9aHJJEA3qHCzinmfGU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eZqLDR9ISXNXF+9SpidtJkud9RRWEa2TyDEuPXuX6+k2agm/vOdpqrgG5Pw3x0ns9rTOmezXTOdYfsyqrHvD2pD0anP15LVEJSoS5bLBuBVy5OtjOE8vy8Nc61oSTaFOnnQpe5QkwW4M59ELkl+2oKQsRHNEfwJlG6f2tgwTquc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dwux1mgG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 726BEC4CEC0;
	Sat, 31 Aug 2024 20:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725137486;
	bh=m0Lez3z0hxg7Sn7GPcTIxrfrW9aHJJEA3qHCzinmfGU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Dwux1mgGiBg//ZKCAffZoEEv6GJvPs59t59hjb0JAJ2A9XQAoEbWRh9qVzsIrSCyz
	 +lTCoiWwK0TlrjgPfIu8L+sy+OZ/u0djEw0/9wxKjFtQBuTRNwljhuF17R/h0i6wiR
	 TnnVPUMoL7yLj3+BuPyEd5yHW+ZnSoLL7iBAJikxrIWepnwYkLxXHUdAs5Cjw80ilZ
	 zrI8vr8hhVWg687u6C/5UcC46MjZvOKq0LwtMvkuelxoeZUt1wldE4KwgNqO4BEakq
	 tC3OyoV5wKOOU70MLZ6uo83m7teKAu1iFOAU5VnGKJC3T37JJ3N9RBt1J7zPCxrVuR
	 ap2ioHg+uxEbA==
Date: Sat, 31 Aug 2024 22:51:23 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 3/5] namespaces.7: ffix
Message-ID: <dg74uszi4ni5mtr2cxznqgdj57hgdh7pmzktiog6vyzvyttpep@r3qenmyr3cop>
References: <20240831182057.u6mza33uhz55j3xd@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="z4ail46mjtrqsfjn"
Content-Disposition: inline
In-Reply-To: <20240831182057.u6mza33uhz55j3xd@illithid>


--z4ail46mjtrqsfjn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 3/5] namespaces.7: ffix
References: <20240831182057.u6mza33uhz55j3xd@illithid>
MIME-Version: 1.0
In-Reply-To: <20240831182057.u6mza33uhz55j3xd@illithid>

On Sat, Aug 31, 2024 at 01:20:57PM GMT, G. Branden Robinson wrote:
> Let the table columns breathe again.
>=20
> Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>

Patch applied.  Thanks!

Cheers,
Alex

> ---
>  man/man7/namespaces.7 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man7/namespaces.7 b/man/man7/namespaces.7
> index 9f0fda553..cf3436f09 100644
> --- a/man/man7/namespaces.7
> +++ b/man/man7/namespaces.7
> @@ -30,8 +30,8 @@ .SS Namespace types
>  The last column is a summary of the resources that are isolated by
>  the namespace type.
>  .TS
> -lB lB  lB       lB
> -l1 lB1 lw(21n)1 lx.
> +lB lB lB      lB
> +l  lB lw(21n) lx.
>  Namespace	Flag	Page	Isolates
>  Cgroup	CLONE_NEWCGROUP	\fBcgroup_namespaces\fP(7)	T{
>  Cgroup root directory
> --=20
> 2.30.2
>=20



--=20
<https://www.alejandro-colomar.es/>

--z4ail46mjtrqsfjn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbTgksACgkQnowa+77/
2zJQqA//Vif4Sg/KClwRow2i++Xu/tIn2P6LtrLpQTcdppk0PWm7vB/qXsFiR6w0
JbeCvLSSu6iwxSri1y8TW4Ihd3yROsRURdZCNC329s+EOzedHAb7+p+rgENC/PLB
7Jc8+X1OoQGpsnY5QnspEdEh6S2+dRMmInsDu+1vsEDvqHYYEyv3syDSfGrMKDQV
PqMgmYx2yDZbdP5+hVSgjfCzJYWPYqd3Y5rVNZVCIW4F5EII1IuMn5ClyTTIPhQF
YdjG7vaqi8gyri7vrBGHyunCLlk8FBKJi9Cbz5Ig2W8kXoTak9x6Y69CFPrOFQMD
UKddhdmi0d+MQ5qmVuwEQqP7MdJ75rLntBfElv+bq5C/RWx4ckpQvPtZ5zEY/UAf
NBIwOqd/Jlv7FPeZ0QVH/lMowzV+elHgbV/An/fqLQJzWbofL/a5knwHjTj+hS3g
jT8SiLvP+QvuR5CZqyODQ8nHoaUej9vUwipaCvekpJrCXtNWPc1ILI3PadUIeKXA
MhYcoKpylZhTyT0y4+7WDw/URjv6fYjjfPRSpTr5DmBTXn3mqtTcZvm6bPEyPol+
SMqRtVBwNCKDuwtxFOLP/UAOXB8EGQDIyRSzj+/7BAVt9omR74c5dFifFcQ4p/9d
OdGPbmvGp8Z6xDt3PCLurVYL3gIH5Czta2JLwmXyp9vqcnFkcGE=
=GKJj
-----END PGP SIGNATURE-----

--z4ail46mjtrqsfjn--

