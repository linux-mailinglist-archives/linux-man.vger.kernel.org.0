Return-Path: <linux-man+bounces-2202-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E18A041EB
	for <lists+linux-man@lfdr.de>; Tue,  7 Jan 2025 15:15:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3BB773A8A39
	for <lists+linux-man@lfdr.de>; Tue,  7 Jan 2025 14:11:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 489911F2364;
	Tue,  7 Jan 2025 14:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BrXq0VEs"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03D7D1F191D
	for <linux-man@vger.kernel.org>; Tue,  7 Jan 2025 14:08:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736258937; cv=none; b=PfSH1Z9Ay2xgGQItSvxDhGGxHSeonOUURU0q1BmUs4dlEkMc5UzufRJzcIf8d9+H7/t1rd/5SASH7m3e0aarzk3awl5CWbWJ26ZUHo1j24Q11ZY56xa7qL4yMR0nclC1AJx59/rATTfg/p3sPeStzfL37zlm87TS0ol1LE+MoFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736258937; c=relaxed/simple;
	bh=eAXuIZFzHhzb9Up28FOkJfXOMrcm/UXKq1K4x8CdVPQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qILahAsCCjeSUlFj/8h1RSZZxRNEM5T+IrLXJudecpe3qxymsFYIeu2Dq/9E+QAKE6liGIaePqVLSej8mbUR5N3jc1KN8fdioSZxE0elMquR81Ui1BlFRCUwXK2TCfYJtPXXJN24OXZ7VqvDoCGTi9vFPT+gmZ4C5gmKIwp4mxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BrXq0VEs; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7F8AC4CED6;
	Tue,  7 Jan 2025 14:08:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736258936;
	bh=eAXuIZFzHhzb9Up28FOkJfXOMrcm/UXKq1K4x8CdVPQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BrXq0VEsqUNonwT3PPL2b9TH9alHeLifWYHbz4gl3CqXCsgHNnHBEurpkTRwbZOnR
	 r1t9oeOArK6aOjArNrmqCPAJhdwf31BmsX+noLYeuDU5VOSez5qOFX/6AJXomKf64a
	 /7A3LcUmMCPZfqJMv+oquVUhaFFR4rZ6TcdLhK+wflFf4K95Tld15VjbkG/LqaHT+D
	 IXlU/NNn/C9wgxs2/oxL6VrSDc4Eu4bPK2D/tueKAVoZ2RPzuAf86UOtoOH4r7aYEk
	 /VNSA8GAKQDhXWPrVqdK67GEbo9YF3I66zVudL1AbU0dE2bLsXZt6r7XpA49slW9rr
	 VtXQElRq4GhBQ==
Date: Tue, 7 Jan 2025 15:08:58 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Michal Clapinski <mclapinski@google.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] setns: add missing info about time ns
Message-ID: <auxtd4puikcfkabpog7nwwtzacjauch7yziy7fnk5era3txgbl@tlxrc7ratsqt>
References: <20250107135700.3995936-1-mclapinski@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="slzqvoxn4c35u2l6"
Content-Disposition: inline
In-Reply-To: <20250107135700.3995936-1-mclapinski@google.com>


--slzqvoxn4c35u2l6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Michal Clapinski <mclapinski@google.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] setns: add missing info about time ns
References: <20250107135700.3995936-1-mclapinski@google.com>
MIME-Version: 1.0
In-Reply-To: <20250107135700.3995936-1-mclapinski@google.com>

Hi Michael,

On Tue, Jan 07, 2025 at 02:57:00PM +0100, Michal Clapinski wrote:
> Only singlethreaded processes can setns into time ns.
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/k=
ernel/time/namespace.c?h=3Dv6.12#n309
>=20
> Signed-off-by: Michal Clapinski <mclapinski@google.com>

Thanks for the patch!  I have slightly adapted the commit message, and
applied the patch.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D48618d7701d55ca9401b259bb4e6200d841df6d0>

Cheers,
Alex

> ---
>  man/man2/setns.2 | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man2/setns.2 b/man/man2/setns.2
> index f32a91bd8..619717b77 100644
> --- a/man/man2/setns.2
> +++ b/man/man2/setns.2
> @@ -237,7 +237,17 @@ Using
>  to change the caller's cgroup namespace does not change
>  the caller's cgroup memberships.
>  .TP
> -Network, IPC, time, and UTS namespaces
> +Time namespaces
> +In order to reassociate itself with a new time namespace,
> +the caller must have the
> +.B CAP_SYS_ADMIN
> +capability both in its own user namespace and in the user namespace
> +that owns the target namespace.
> +.IP
> +A multithreaded process may not change time namespace with
> +.BR setns ().
> +.TP
> +Network, IPC, and UTS namespaces
>  In order to reassociate itself with a new network, IPC, time, or UTS nam=
espace,
>  the caller must have the
>  .B CAP_SYS_ADMIN
> --=20
> 2.47.1.613.gc27f4b7a9f-goog
>=20

--=20
<https://www.alejandro-colomar.es/>

--slzqvoxn4c35u2l6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmd9NXoACgkQnowa+77/
2zIW8Q/+MBa3sxn5dVovFHVa9k/uESNQIMIFNvOWKcIW19NJgvEfjf8CHzuWvJws
jYcnbOrzV9X1NFqD8Zyp0v6D5YrnEdj6vZqg2eBQ4LMVINssiEaOu+z/VzFdBruV
Igt7MN6P102huPh95ny1Ca6oEyPfFB4lshoFI1+7gHJLM22TBEkfKbNcUSyR1Bg/
3FRJwnZc1b9H1sXVWaeJJfZWPGg36g+SO+yMYIzzJU0K/mnFFB0saesIIA506dYO
t0jSooIA+bfyMQ/W0vSWSYCT/IftT1o0HBCAup6tRBcbJPZ2agfZkY2ILkLNX4Wp
l1qW2OFGYuVbsWscdgsGpqWNsT+eSta7pHJCvW1A9OIH/lrrXiyPv0ZKQZkSLWC+
Ikau2YDkwzn0JEZRmQA044bMafDkt5HcoRXeSimSpcbAUkDne2B3Q7MMr/2ZjApB
s2nn25Ks/wo/BRXbQP5fc8eJYUqit2Nvipzq7maSnAwTfq3LDHHOacCNI7pYXGii
SJxz7Y1PhNAQg6vEdZjQA4v7ZBqkN6Vy9NR8eZk8s1v7dDhrGeHfCvXYBKio+GTf
M9/yull+xBOXjTBGASOgolW1N7t+qDcXgfGjElQMIxWPxStUPVDRe6SN8+dZsxRF
niz9a6LXKhh3GDKIcR7qWT7P31sjO0Av8gDzJLx+f+buCH058rY=
=9tUj
-----END PGP SIGNATURE-----

--slzqvoxn4c35u2l6--

