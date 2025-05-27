Return-Path: <linux-man+bounces-3035-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A5096AC4EEC
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 14:51:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A66B51884501
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 12:52:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 789C1269B08;
	Tue, 27 May 2025 12:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ks24n8ne"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37AED26989A
	for <linux-man@vger.kernel.org>; Tue, 27 May 2025 12:51:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748350302; cv=none; b=EBVHd7dCDjnv73yg7hw0vLRIWAqRWSw41jwkDY/3qSnE9PxQIYu2B8Mf8bgIQVYuanDiLk9jw81emn/E0aA+DqlYw3fLJXFqzo42dxDih8gFVKRgF7SeMCAGM0UQTvPiSWOXnQReXksXDpUpdR/MlmXL006K2WyuvPiZJb1p5mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748350302; c=relaxed/simple;
	bh=4ACch3tLOfW61bG5SFnBn6GZi5Q9T/Fix6UphU0KDvY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Gx2jeVab6DviHMzo+lfZJkShM2P4I0Vrny7r+9doL2HF/rGt1rdMMuh9DaUb9uNvpEDuOKwtqr5BviLsFJweBPnpcoKrq5VYpugRaeiMf8jJFGoYqq8w1hyeFu1E5sfCpAokH6UP+K7R22l1/d/AnxtnvIFbPXbjZXdNCKjK9Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ks24n8ne; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1875C4CEE9;
	Tue, 27 May 2025 12:51:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748350301;
	bh=4ACch3tLOfW61bG5SFnBn6GZi5Q9T/Fix6UphU0KDvY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ks24n8necYI7px50Gp2XwdG8WXDwL45bWK2P5rTJURBBBc/7n79/IjYrWB08Sxw6u
	 f4v6GOZFHshyeqbRT12EDZmW7TB/DxFR5eEU3sc7MBjtpKPOF53P8vVXfGxR/Fi3lI
	 bho8ztryyxU8HXdvq6jhUi/l7+NwiA6eGueyEXjitYD9cj5/+GaRi+jYW75xkiXPeu
	 7tICsY+K+vEqrMZAerrVHTGzCjMm7BcZzw5ZvmgC8la/nF5PC0vA1tEHNSkVq2YQvf
	 gyUylsUfmA9dk/cBOm3SMcPlU5JZK71ULKkP5a+C1+EwT74f5mlRAmhN4qiOpYnjVw
	 A2E/wRGmA8NVA==
Date: Tue, 27 May 2025 14:51:37 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: =?utf-8?B?SuKCkeKCmeKCmw==?= Gustedt <jens.gustedt@inria.fr>, 
	Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org, Ulrich Drepper <drepper@redhat.com>, 
	Ingo Molnar <mingo@kernel.org>, Todd Lewis <todd.lewis@gs.com>, 
	Alexandre Oliva <aoliva@redhat.com>
Subject: Re: bug in futex.2, FUTEX_CMP_REQUEUE
Message-ID: <3bk7nlklhg5kft33gyworbh7pbs2ezwmxm2gfxfnh6sqctq52v@scjej2sz423e>
References: <20250527115303.3304206e@inria.fr>
 <s5ec3atfffzxdetxbkjgkdiarnuk2yucnpi5j3h3ppqr72mxna@ml6zpucwnbz6>
 <7d4c29a5-6836-48bd-a6c8-009264be000c@redhat.com>
 <20250527142812.51ee1c30@inria.fr>
 <3a1f14f3-f2d7-405e-a6c8-6f19893358cf@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="o245bmnjbxhnwp23"
Content-Disposition: inline
In-Reply-To: <3a1f14f3-f2d7-405e-a6c8-6f19893358cf@redhat.com>


--o245bmnjbxhnwp23
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: =?utf-8?B?SuKCkeKCmeKCmw==?= Gustedt <jens.gustedt@inria.fr>, 
	Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org, Ulrich Drepper <drepper@redhat.com>, 
	Ingo Molnar <mingo@kernel.org>, Todd Lewis <todd.lewis@gs.com>, 
	Alexandre Oliva <aoliva@redhat.com>
Subject: Re: bug in futex.2, FUTEX_CMP_REQUEUE
References: <20250527115303.3304206e@inria.fr>
 <s5ec3atfffzxdetxbkjgkdiarnuk2yucnpi5j3h3ppqr72mxna@ml6zpucwnbz6>
 <7d4c29a5-6836-48bd-a6c8-009264be000c@redhat.com>
 <20250527142812.51ee1c30@inria.fr>
 <3a1f14f3-f2d7-405e-a6c8-6f19893358cf@redhat.com>
MIME-Version: 1.0
In-Reply-To: <3a1f14f3-f2d7-405e-a6c8-6f19893358cf@redhat.com>

Hi Carlos,

On Tue, May 27, 2025 at 08:37:16AM -0400, Carlos O'Donell wrote:
> Since the parenthetical is not clear about val vs. val2, it can be
> read in two different ways.

The entire paragraph is

            Typical  values to specify for val are 0 or 1.  (Specifying
            INT_MAX is not  useful,  because  it  would  make  the  FU=E2=
=80=90
            TEX_CMP_REQUEUE  operation  equivalent to FUTEX_WAKE.)  The
            limit value specified via val2 is  typically  either  1  or
            INT_MAX.   (Specifying the argument as 0 is not useful, be=E2=
=80=90
            cause it would make the FUTEX_CMP_REQUEUE operation equiva=E2=
=80=90
            lent to FUTEX_WAIT.)


There's a parenthetical after talking about val, and another one after
talking about val2.  I think the latter parenthetical unambiguously
refers to val2.  I would have written them as part of each sentence, to
make it even less ambiguous, though.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--o245bmnjbxhnwp23
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmg1tVMACgkQ64mZXMKQ
wqnP6g/+ILcnF3ODYfvQmzTdkE1ZsZj1PqzyoHsNRuAkZTdXxxspEqKvoeCEr/fj
5ArJ5+NLlpXgn7yZOly5+KseSxpkBAjW8NQlq1TRCXJ+jTxXWzTG0qbt++H1OR+/
obaTZfIeA4JZu2u6JID9KGhAO2dMncmQ/ac67XSMDI6R7TQts0Zl1jQJXXPjMU/q
RumUxI/rLAZG5iLWmIZdJ4woMYvAN9MhEykdaamkeuOz2qjYZyM90ae8qdyhMm6i
aaGbn0qOJ7BxLebK8755pE9Kbp6eSboY3UtGPFM7ch6qyx9sQF3O5siFuMy10zO8
i/e7dsOkIFI9TczgI4LYzEqRr0jyTRMEon6Xfz+2hF+FwRliY7fUpE08H8XngNh6
dAJjh94qPhQNmNF0r18U1uEI1YhynjizVAB/n9tKgLuDXdN0Czo9ogOlaHzrhApS
oLQrH+rNfBrXgLqEPUevMpGEdHPnIRXKCN2+n6Qh54yAcAOYSZyVlFp3gNs3Hm9f
hUtR/0qD05s1jOGJKTY1nG/Ifptxul0fNGm/cN6D4lKoURMhY1gqGKc0r2U6OaG/
ktJn0+XeC4vmoeGR4uYGcGj1kwivsiQbzCXBOgTMLeC2hs5cSprtnv3qFALLi0zC
Tf/k9fA0zBEtpjX0m0g9XSooI4gt6Yd5s97scQ2J/xwe8FREjVU=
=n3Ep
-----END PGP SIGNATURE-----

--o245bmnjbxhnwp23--

