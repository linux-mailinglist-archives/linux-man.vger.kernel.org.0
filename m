Return-Path: <linux-man+bounces-1871-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F24D99BCC2A
	for <lists+linux-man@lfdr.de>; Tue,  5 Nov 2024 12:50:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A91061F22EE4
	for <lists+linux-man@lfdr.de>; Tue,  5 Nov 2024 11:50:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9C581D5146;
	Tue,  5 Nov 2024 11:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/uB0lOF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A6931D3590
	for <linux-man@vger.kernel.org>; Tue,  5 Nov 2024 11:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730807416; cv=none; b=TOAaJcAy8flKENzcGdN+mor0VQw/dhe8QLotGLc6orXe4xnus8Synl5LyQV9OSe0Ut42J920rz6QBWSrK5kMnOW+BIFHE+IApaVV1q/gL7rhr8Gl/hdvtB3U+zDxMgBgOp8jeTOL3t47IRlSKSCNqFJRVEWY+vyLRkqSupLMQ6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730807416; c=relaxed/simple;
	bh=Uifm6vy4oQ3iea8c/i5jP18R6DLh8n/AKKJtzM1vPvc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MbEdGnBJEEcoLd2zon2yziWp7hkJTsdikmQMwBRGl0uhDfTAi+ka0YknT5K8UVYhUX/kVGjkVYfNFqCfhGQIDnfpIzX6TZER0RPEbXmlLKhnMwG5oFzG2CanJogk1noc0YfXdYjafbTIK5Oo1bqXTfzkfHEqnL3HWcnX7o53Cr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/uB0lOF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EECD8C4CECF;
	Tue,  5 Nov 2024 11:50:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730807416;
	bh=Uifm6vy4oQ3iea8c/i5jP18R6DLh8n/AKKJtzM1vPvc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c/uB0lOFv6g/ko90/FOZchWUivyyfggRwm1PCGrWTx/ouiIvTJW/YwJV2cgmseRxZ
	 2Fq9A9RtmXSk+IhL+zakxbSU0saQie5A1/Z12dh7FJF7HrXua8L0qp1uNNNKgPmgu4
	 5z0qbD8qyEexbOzDvqXkHzsF0RjpewxdUSsSNqGKDC0mluaU6BAW7au/YCe1TqhBKo
	 MApfjNb/A6ATtjHckKkhuzZ3d3sxFjZ0vX5a2awogY/8TnySsdNFtBsP0TJSjZNV4t
	 WF5CcKRw8J80AnvDRdEB2HKrLgGdQ6Y0CbjjX0NtOCUXEeibbhLonuUydYU8XB21Z3
	 WFeesDO7bNjog==
Date: Tue, 5 Nov 2024 12:50:12 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Alex Henrie <alexhenrie24@gmail.com>
Cc: linux-man@vger.kernel.org, bgeffon@google.com, linux-mm@kvack.org, 
	branden@debian.org
Subject: Re: [PATCH] mremap.2: Update information about MREMAP_DONTUNMAP
 restrictions
Message-ID: <fqpd2bawfx7grb7mt5jcskvkht7ntnm3mmgvskwziav4remdmj@rkshuokqjupa>
References: <20241105041700.1386571-1-alexhenrie24@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ypmbjju2ulhfwbjc"
Content-Disposition: inline
In-Reply-To: <20241105041700.1386571-1-alexhenrie24@gmail.com>


--ypmbjju2ulhfwbjc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Alex Henrie <alexhenrie24@gmail.com>
Cc: linux-man@vger.kernel.org, bgeffon@google.com, linux-mm@kvack.org, 
	branden@debian.org
Subject: Re: [PATCH] mremap.2: Update information about MREMAP_DONTUNMAP
 restrictions
References: <20241105041700.1386571-1-alexhenrie24@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20241105041700.1386571-1-alexhenrie24@gmail.com>

Hi Alex,

On Mon, Nov 04, 2024 at 09:16:41PM GMT, Alex Henrie wrote:
> See "mm: extend MREMAP_DONTUNMAP to non-anonymous mappings":
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit=
/?id=3Da4609387859f0281951f5e476d9f76d7fb9ab321
>=20
> Signed-off-by: Alex Henrie <alexhenrie24@gmail.com>
> ---
>  man/man2/mremap.2 | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man2/mremap.2 b/man/man2/mremap.2
> index 53e0bcf2d..b99ab9492 100644
> --- a/man/man2/mremap.2
> +++ b/man/man2/mremap.2
> @@ -106,7 +106,13 @@ remaps a mapping to a new address but does not unmap=
 the mapping at
>  .IP
>  The
>  .B MREMAP_DONTUNMAP
> -flag can be used only with private anonymous mappings
> +flag can only be used with mappings that are not

I find the position of "only" a bit inconsistent here.  It probably
would be more appropriate right before "with".  (I'm wondering if I put
"probably" in the right place too... :)

> +.BR VM_DONTEXPAND

Please use .B, not .BR.  You'll find that BR causes a warning in that
file, if you run `make build-all`:

	$ make build-all -j24 -k
	TROFF		.tmp/man/man2/mremap.2.cat.set
	an.tmac:.tmp/man/man2/mremap.2:42: style: .BR expects at least 2 arguments=
, got 1
	make: *** [/home/alx/src/linux/man-pages/man-pages/contrib/share/mk/build/=
catman/troff.mk:65: .tmp/man/man2/mremap.2.cat.set] Error 1
	make: *** Deleting file '.tmp/man/man2/mremap.2.cat.set'
	make: Target 'build-all' not remade because of errors.

(You'll need to run a sufficiently recent system that includes
 groff-1.23.0, such as Debian Sid.)

Cheers,
Alex

> +or
> +.BR VM_MIXEDMAP .
> +Before Linux 5.13, the
> +.B MREMAP_DONTUNMAP
> +flag could be used only with private anonymous mappings
>  (see the description of
>  .B MAP_PRIVATE
>  and
> --=20
> 2.47.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--ypmbjju2ulhfwbjc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcqBm4ACgkQnowa+77/
2zJMUQ/9HyivPw6Ccw/UCy2WivbZKQxzXKxYkLsaHJlJXS5Twk4F+ZXhTN5QOV/n
iIAkCFe/SUY54QXkeBRyuhQ3AHCxrInCIh0TTIQGgjk8floPFMWAdPACYp5aleBY
ijgCXD/wlecWUGJwLNqpxl9OoT63Az6bd/le8T2pm3TDQHbVfw7lqUtvXjwMZJHJ
lHcA4Po2Xf9RBH1GxJlU6p5pz/RS6T0Qbwto/fHMkvv4S1NUx+XkKNt3qYQU8Xc2
wO2qDdH0ZsQN3akoE2122FNpyd0oz2+mj+KYBZ+Cn/g5a2eeFhUF/lS0KzjNAyne
YVE7b7HN2tXyonYQUuWRuxC/+/VJqO/U0xa5V3oNN5GchDiofM7XoB9n46yokvVB
CGklvfJbg+RkMo9RYEXXHr9WqE4Nb/91lC5DzlHBmgNrLPz5esUD5lrqneyR/UF+
5Fjbt7zvscsX8R1rt808eKfUzE7HYHcSICewiQurt8YF9iaW38C0m14J6J8VUAPo
VwAdvL5WkSpItQrOC/qVgTw5j8kFeGypPl+5kGsoufQxqwMGmfBJQKH5wNxuG+En
rhku+O6MXKzaTpMSZUxaGfHWrywwbEYfun2DwjdIUQ9ETpMAbAz2IM6aEVmBrC4J
VEsE/MHWiaZr2yKQlz00tx7zQkZ6FT7HgFOSq2cjdRhfSd8d2vw=
=X8Bw
-----END PGP SIGNATURE-----

--ypmbjju2ulhfwbjc--

