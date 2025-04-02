Return-Path: <linux-man+bounces-2724-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E22A79630
	for <lists+linux-man@lfdr.de>; Wed,  2 Apr 2025 22:02:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DB4761893DCC
	for <lists+linux-man@lfdr.de>; Wed,  2 Apr 2025 20:02:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2AA719CCEC;
	Wed,  2 Apr 2025 20:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q96LzF1K"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 636206AA7
	for <linux-man@vger.kernel.org>; Wed,  2 Apr 2025 20:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743624143; cv=none; b=NE7RQQTYVUjNxfCchEm/FWp0Tqec88qZgUmvQhR5j/c5tGYpESLTLDj/ZDrKyXSsrlx2cXvenvq8J6/BZaaspS4RbLPzdju4cG5ua0M7iAq/BEJCW5aYQSy+OSBde+zVI3rUMOoe9dwdQnxegQmk1wcbNfvSWjgeEmZOtxKFVB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743624143; c=relaxed/simple;
	bh=8mEF/WiOdENRAgmb74dkDNJTVZLwIcqUkpYzTrG7/gA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BLgJ9XlanIc1Fr8V8knXiK0cectPPLas0pHEYanB2sMPfQ/d/VeBVZtEJOgfN/dRvLKvy4DvaPibjqU2C3CCmHMFiYxX4g8iMYDG95Mlq3Xxfs+iM2m7as5hM/CvRFLFWAxbHVcbka96RUfgBD7EAazVzLZmoIvq0q5BtJN0Mzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q96LzF1K; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05C6FC4CEE5;
	Wed,  2 Apr 2025 20:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743624142;
	bh=8mEF/WiOdENRAgmb74dkDNJTVZLwIcqUkpYzTrG7/gA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=q96LzF1KCya0N8Eb1T5F/m06an/r5km2TcLALsEmI1XYDstDxmc/drfH9EFagJyp+
	 I+eO1Wt9N2AROS30X8B8NQGDbn9wACmis0mg2vuQW/T/sIFm4NCSj3n8RcMNcMZIzC
	 sbY73NUQbpYLxsr5FIYOvWAnEhffE385jjgvh4e//eCOYIOC7wj+d2HU7unxDYnMlF
	 yHCCL1fIJLJWP+QJzxpqMgu7a9TepKQ2ONPKE+kBia+lG5KfsSc6wgVoMRGkByt4JD
	 1bLq+T2/Lf428ybM5bLmPsd1b9ojEDGsOkTSh0hfzerU/lHQuedMi/9V1xh41Vqkxt
	 YX6PZZgTub/gw==
Date: Wed, 2 Apr 2025 22:02:19 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Miroslav Cimerman <mc@doas.su>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3type/intptr_t.3type: Fix uintptr_t range
Message-ID: <tz7ob4xowybtak3lwo2muyji7oidrosbvbnnkt3elkry4xa33c@th36ra2skfrt>
References: <wsk_s0nLv-HYkjBgAMVkOJW4DSkT5iYYr2anB6R-7X8ftiYyEKKOuNqJlE1jtRjeZjSvnlkxJ4Lm50DmcuS9ftSR_OQxu-8RcySOD5vTaKk=@doas.su>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jlaom7cypurnshzh"
Content-Disposition: inline
In-Reply-To: <wsk_s0nLv-HYkjBgAMVkOJW4DSkT5iYYr2anB6R-7X8ftiYyEKKOuNqJlE1jtRjeZjSvnlkxJ4Lm50DmcuS9ftSR_OQxu-8RcySOD5vTaKk=@doas.su>


--jlaom7cypurnshzh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Miroslav Cimerman <mc@doas.su>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3type/intptr_t.3type: Fix uintptr_t range
References: <wsk_s0nLv-HYkjBgAMVkOJW4DSkT5iYYr2anB6R-7X8ftiYyEKKOuNqJlE1jtRjeZjSvnlkxJ4Lm50DmcuS9ftSR_OQxu-8RcySOD5vTaKk=@doas.su>
MIME-Version: 1.0
In-Reply-To: <wsk_s0nLv-HYkjBgAMVkOJW4DSkT5iYYr2anB6R-7X8ftiYyEKKOuNqJlE1jtRjeZjSvnlkxJ4Lm50DmcuS9ftSR_OQxu-8RcySOD5vTaKk=@doas.su>

Hi Miroslav,

On Wed, Apr 02, 2025 at 04:27:26PM +0000, Miroslav Cimerman wrote:
> From 066e0157fd049048e2e5437023c05a674d50c7aa Mon Sep 17 00:00:00 2001
> From: Miroslav Cimerman <mc@doas.su>
> Date: Wed, 2 Apr 2025 18:01:26 +0200
> Subject: [PATCH] man/man3type/intptr_t.3type: Fix uintptr_t range
>=20
> Signed-off-by: Miroslav Cimerman <mc@doas.su>

Thanks!  I've applied the patch.
<https://www.alejandro-colomar.es:8443/src/alx/linux/man-pages/man-pages.gi=
t/commit/?h=3Dcontrib&id=3D6ce472898351fc28d9f111af28c53f39c25ab267>


Have a lovely night!
Alex

> ---
>  man/man3type/intptr_t.3type | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man3type/intptr_t.3type b/man/man3type/intptr_t.3type
> index ac7b18214..30825eb1e 100644
> --- a/man/man3type/intptr_t.3type
> +++ b/man/man3type/intptr_t.3type
> @@ -41,7 +41,7 @@ such that any valid
>  value can be converted to this type and then converted back.
>  It is capable of storing values in the range
>  .RB [ 0 ,
> -.BR INTPTR_MAX ].
> +.BR UINTPTR_MAX ].
>  .P
>  The macros
>  .RB [ U ] INTPTR_WIDTH
> --=20
> 2.49.0
>=20

--=20
<https://www.alejandro-colomar.es/>
<https://www.alejandro-colomar.es:8443/>
<http://www.alejandro-colomar.es:8080/>

--jlaom7cypurnshzh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmftl8sACgkQ64mZXMKQ
wqm6aw/+LyhhAWXkw9Gk5l/wI3Wq1P52OIi0Hgtpgmr3hJ7/XfvAvmetO85l8c/4
gMXLsKFJ3R34TOJDC04233w6aoc3LRD/5hRTrdnofKUWYT2cJLa/6eKvf0WCATfZ
Wpo43RUfH1yPh1B6eVEbFW5qHyqPtjQlFV/ySIoKdKN8YsOI2hHS6MIP6cySU/q8
5IGisUzuk261/GqmkapAEmy3bugaI0/upunxu6uwfd9rj0iaA20P5dtZmckM+TZL
W0KA4i/qyhPQb2rHK5KWwG0EQOqWG5vgUhJ/BdNt3buyuP5X2xWPFkDeZ5Rnb6Zw
Akn/NmdTkXwxLv/hY0iTp6tgq6oMBnClTZIK+GYXEkWip+phW6GswH/s8V/ty7M1
UiNt+MalbObXP7FYF+K4uUgl60tqzrK/q560e4dXRPpQdE642alT13wJ+XKr7W0x
xv9Z3idJpOWY2iniBWh6q3bkNSeWJJgorZrzkKKOjFyIt2FXzXgdIdKPyqw8MWm/
akwjCh52SPVFTpf/UEn/opz/0P7+gyJxFkxHuZ+y2AhQVUtX+JxkM34s4hnClF3e
cPjFX0/xoO3ZXjUBVnH3AMr+MJRY17u89d+1kUaEJwSzwXpE38F++MmNIO6VAy3n
KomUkV5BE0IymVOorJxGUCPZi56euf7BgHCaYocSc1GepuZcAao=
=BaMB
-----END PGP SIGNATURE-----

--jlaom7cypurnshzh--

