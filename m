Return-Path: <linux-man+bounces-419-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CC38D850ACF
	for <lists+linux-man@lfdr.de>; Sun, 11 Feb 2024 19:25:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 05E001C20B23
	for <lists+linux-man@lfdr.de>; Sun, 11 Feb 2024 18:25:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78A375D472;
	Sun, 11 Feb 2024 18:25:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="grXwjVC/"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5E133CF5
	for <linux-man@vger.kernel.org>; Sun, 11 Feb 2024 18:25:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707675918; cv=none; b=aiLmUGkFGGc/A2+aF6PRyA5YJSTAfktTm13iqlh94gd3e+FTdLESktf4oSxVsDVKKqSLJ3AivtD8D8MgzLERDyT9PebO+Tge4ndGabJzXUD+zR8b+AQJcvjZsL2W2oKXdRoK45Y2cPTtLBBJZOgl2YqiMB5w9iXNFBUGSN6Ge7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707675918; c=relaxed/simple;
	bh=eG9sz8Kn38wG2oVhACsEJTzi2XEm6+H+CMZzff0UYDk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i1UDT5YB2YLGvU1h+LT8vxjsqGe2a5WvKDc0nqQqbIEzaj9cR9LuqxbgDHBajQyZpPj5tkoRL82/7AQMIwpR79h0pyxGweYVWzilwAAU2+ih103Kt9H2f2sviBRntoXDEWPSj67QOiWUF6207aQF0MoQDJBYnXcTrvkCuQjZ/gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=grXwjVC/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A1E7C433C7;
	Sun, 11 Feb 2024 18:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707675917;
	bh=eG9sz8Kn38wG2oVhACsEJTzi2XEm6+H+CMZzff0UYDk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=grXwjVC/rk7/7O2bg9bmAoapAS0ogIiMcvFMi56d2g1jqq4H1GDxHdlwqTlWRkEKq
	 iTRxZZmRsrdhA9JpyZoW901cOE1KfvI6HkUH+dwqkUGSLP7t0M42rdzNIXgdKq9iFO
	 JDOX+eoklyg1706EJXssI8H4iJoM3n0I7snfCcKyyJ1LQ0nq5U+xCtEYBqeKNdj+QJ
	 XuDDhjuAr+Y4x0Y1NO2oe3eN2u5kJCLI7dSzqFzMthGTCK6FIL+C+gaQoqnevMKE7K
	 22wNIym8ZsqCJGeAZeryDGJdpe7rhjAh+ufOU6XbGMg4nl9wyNORYEtPfv2TEoqcyS
	 6kWD1a5AKyKPA==
Date: Sun, 11 Feb 2024 19:25:14 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Petr Vorel <pvorel@suse.cz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/1] README: Use kernel.org URL
Message-ID: <ZckRCjwkUguQ2IsW@debian>
References: <20240123110424.169915-1-pvorel@suse.cz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uC0nNph3Rs9/EDKp"
Content-Disposition: inline
In-Reply-To: <20240123110424.169915-1-pvorel@suse.cz>


--uC0nNph3Rs9/EDKp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 11 Feb 2024 19:25:14 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Petr Vorel <pvorel@suse.cz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/1] README: Use kernel.org URL

Hi Petr!

On Tue, Jan 23, 2024 at 12:04:24PM +0100, Petr Vorel wrote:
> https://kernel.org/pub/ is redirected to
> https://mirrors.edge.kernel.org/pub/, but it's better not rely on that
> and use the primary URL.
>=20
> Signed-off-by: Petr Vorel <pvorel@suse.cz>

Thanks for the patch!  I've applied it.

Have a lovely day,
Alex

> ---
>  README | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/README b/README
> index 115e9f53a..974bd7564 100644
> --- a/README
> +++ b/README
> @@ -60,7 +60,7 @@ Files
> =20
>  Versions
>     Distribution
> -       <https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/>
> +       <https://kernel.org/pub/linux/docs/man-pages/>
>         <https://www.alejandro-colomar.es/share/dist/man-pages/>
> =20
>     Git
> @@ -69,7 +69,7 @@ Versions
> =20
>     Online man-pages
>         PDF
> -             <https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/b=
ook/>
> +             <https://kernel.org/pub/linux/docs/man-pages/book/>
>               <https://www.alejandro-colomar.es/share/dist/man-pages/>
>         HTML
>               <https://man7.org/linux/man-pages/index.html>
> --=20
> 2.43.0
>=20

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--uC0nNph3Rs9/EDKp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXJEQoACgkQnowa+77/
2zICGw/+O61bLLARYRWZkvWRAfSZtyMaQoHRwD4avQ121+o27mzUSmyRRi6csrWu
zifMQGnd5vP2TDYfbQYTS8AwDVPwYZHvvXob/U1HMd6e5v3AJ6E8A6RAEafWSp6K
5IPvXZszuWhLj/GxH5M3tygxUFu8XRi7Nf4sAsIJ9Z2WKowbNJBZ1cPMEJF3TOpt
CMTX2virEZZONxNogUhZ+tacerBo1IMj61qQvS50mlHRriwVvTcqGtTEIL8hkdu+
FwA55r9N2zjF/sfspH7axH51GoQs09U8w7nkuNnnkwUWy8LNB8WuDiNOcU2RAgHO
XTeraoPIR5hZvanVfkjx6sz9ovKfPqWesJfismuvwoYSfHelXiyy/ff2AA5M7V4s
lJWzpX8/fdu5HOMxWCGZhSTPQNI4wNyFPygC9RwbI24NB2SqMmAqUb4ypbr5HX/U
7zJs05HBsP4VOCWfQaFpW2labD0emLAszUJjh0Yt+n11bgtF14rxoJ28B/8wrO8W
Pljm5JMLUBcFXC1vaqfzigjztJXqejySsw9Ma5lEKvTn8eceL1JibWy4pYDjz+S5
a8DT76sSTskWMr4hEkaQsukIT3Op6D5HBMqZlem59ACa25kEN6XFXPHJJvsMhE+H
eRkCkQObwSr3q0YP5ABeH5uVc+c1ehTQ+ZAokYM3ydtLBCxg+pQ=
=xTZ+
-----END PGP SIGNATURE-----

--uC0nNph3Rs9/EDKp--

