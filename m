Return-Path: <linux-man+bounces-560-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D71876778
	for <lists+linux-man@lfdr.de>; Fri,  8 Mar 2024 16:39:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8EC24B2204F
	for <lists+linux-man@lfdr.de>; Fri,  8 Mar 2024 15:39:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32ADE1EB36;
	Fri,  8 Mar 2024 15:38:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s4Qls9Ov"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E77E21865
	for <linux-man@vger.kernel.org>; Fri,  8 Mar 2024 15:38:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709912337; cv=none; b=V/QzQbSesscHBKBzFIWq2Uqw8kFwX3bZgwFE5LFNT7OvJyRrhXoe2Vp2uaJunJQyQCR3STzWbjpL+f1snnXamroz0/jef2FapPLdXgf3at0xizNiYoEjY41iP6hezbbswrPTDGCQx8g2coiKmTeG2OEfzApo3XqrBFrQ8dnH0v0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709912337; c=relaxed/simple;
	bh=m8ekRSMTNSCWfaSjx0MBgNaElJNzvVoJJn9rvNX3II4=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SXeB9bJ/Cbc2VAIydLLVBgAG8eHU9KAMUu2pHjcFPnYt2bEO5tIsfal4M20FM86iiW0ENB2XRJMFxC4x4wSAY0xy+MB08lv505ZozWMX8sFKtwCv+3JRx4/pN7hgNygwt2yDS+DlKcrRfwxm/vna/ctYIhhLNANKqYMVIzatDLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s4Qls9Ov; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA4A9C433F1;
	Fri,  8 Mar 2024 15:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709912336;
	bh=m8ekRSMTNSCWfaSjx0MBgNaElJNzvVoJJn9rvNX3II4=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=s4Qls9OvHZG9RamxWYECHgUillk8jyQp1PYXjjvct98c7DwPUIJZnCyX3mmaKPbw/
	 cKC6wJABerqq+VwSi/AnCdL2elO46RZq5E/bhZfeUDZPZMmBv3E/cb27PPx/1MFzDH
	 jKA2iblUolZOArdndANna42j9bc15vrYHGf78qEhc+u3rV0yqp79MLmvogNYY/G8j5
	 ol+hYoxnQwZDF/VPDurUS+6FOnHDRnKkP78ijj7VftKd9oEFNeRDT9cnJiwqIhyWHX
	 eGLNV7N5c/+gjmyLIF7s4jf44E0xzuBgahmqGr/+fFrNrseFrIa3XiLXcCnoKT0Auz
	 VvEe3J44xXhRg==
Date: Fri, 8 Mar 2024 16:38:53 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Guillem Jover <guillem@hadrons.org>
Subject: Re: [PATCH] TIMESPEC_TO_TIMEVAL.3, TIMEVAL_TO_TIMESPEC.3: Document
 these macros
Message-ID: <ZesxDVwME_6E7zno@debian>
References: <20240307022451.91077-1-alx@kernel.org>
 <ZeqgxrRvbjOTL_dF@dj3ntoo>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="JfU02JYTWw09akex"
Content-Disposition: inline
In-Reply-To: <ZeqgxrRvbjOTL_dF@dj3ntoo>


--JfU02JYTWw09akex
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 8 Mar 2024 16:38:53 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Guillem Jover <guillem@hadrons.org>
Subject: Re: [PATCH] TIMESPEC_TO_TIMEVAL.3, TIMEVAL_TO_TIMESPEC.3: Document
 these macros

On Thu, Mar 07, 2024 at 11:23:18PM -0600, Oskari Pirhonen wrote:
> On Thu, Mar 07, 2024 at 03:25:01 +0100, Alejandro Colomar wrote:
> > Reported-by: Guillem Jover <guillem@hadrons.org>
> > Cc: Oskari Pirhonen <xxc3ncoredxx@gmail.com>
> > Signed-off-by: Alejandro Colomar <alx@kernel.org>
>=20
> Looks OK to me.
>=20
> Reviewed-by: Oskari Pirhonen <xxc3ncoredxx@gmail.com>

Thanks!

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--JfU02JYTWw09akex
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXrMQ0ACgkQnowa+77/
2zJKVQ//cmkz9MXIZz3V7XdJ8shKXlJYnpri9OUdvKtcMad6fNC3ocqZ/cipSuPl
FSPviUCSLHmU2oLVjH9jkIrXFC4VrXcCqYRJE7YPhCxI7MABr1TNTowcJFE8MTKp
U2GcXK5hzOIPtv5e9jw2IT6IvmOg6W7Ci0T2Jw1kYX5GqmsYREg8tyXJD7jJFsjP
U4yu/1q/HAFxqVOvTlqFHoN4L19Vx2hoGStOaYzU3YXLVbwvHxEiAjqxflJp2O56
6ep4xLCGpFf0Zn/dkRrU7T7KbkkU+8Kc68U/qxX5IKTbw+hriM6G1RDfF76KgYYt
xzl35O/ZZbWQYyGtWUigjKCvcRDxJmhVRO/i85b9Zx63OAsoLxaGGulE2LmijNrk
pZpweNupaCm3+7d7vt00xkwjubQZUzKkTRoWHJAEk0xo9M1D9eC6uHXo7m2leeXa
9tIGKuV3fim/6K6fnW5b/w+wjf7EP8N54Hrgd+ApyDTtPtB838v0gqgytVLb3FXL
6cb7UDYpOdiLQ9hdN2vRFg4OkSXdwPJlABIXLa5zV3di0eq2baOt8hBBAEcCvBx6
/GYDEi9pp67ytIh6x/3M9EA0dz2Vru7fU+ZvVwTUi/+JUwHN+Uim6YXmyGoAdcZH
3sZl06+jQH2t8nc7tC8rsKcyOJCGT/9S6r4cwW02azLiNAo4N5o=
=CamT
-----END PGP SIGNATURE-----

--JfU02JYTWw09akex--

