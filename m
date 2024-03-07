Return-Path: <linux-man+bounces-552-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9595A8745E3
	for <lists+linux-man@lfdr.de>; Thu,  7 Mar 2024 03:05:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F25E9282168
	for <lists+linux-man@lfdr.de>; Thu,  7 Mar 2024 02:05:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C85774C98;
	Thu,  7 Mar 2024 02:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dA1RxrBA"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 899ED5C82
	for <linux-man@vger.kernel.org>; Thu,  7 Mar 2024 02:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709777150; cv=none; b=BX8pXMA194N7mhQE1QdEoc69It9MX48ppU205CW7M8njvJ4pTEjXMPdjV/RBMZEn4EMhxszyDEMX34LU0gvaFgThGnoGT/RnqouUzKOSk/ofl2ezGko8KGVvr3ndWj8F8/tbcP2eqgEoLNZFHnfcwW7Z1kSOZuEnI0j4C/Db/ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709777150; c=relaxed/simple;
	bh=REG+VSIVAuWJXD/t+Z/eQNKwVPkgGzmmqQ6lVihxisI=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NurmBnVeLayTxSwyVaSkOoAY5eexTHHVRLFy8K8+0+CZNM65F6EQ8QasbhmLOkKQZ9i/woCt0xRr/q9Py0nsCUvr7z4KIWaT+CNvIC/bsL9GXEOCoM+XAzaLglCyNTraGXhSmf93xdw16qzpAnARjmWbVsjQRxPx3fVcxTvqxcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dA1RxrBA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77A7BC433F1;
	Thu,  7 Mar 2024 02:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709777150;
	bh=REG+VSIVAuWJXD/t+Z/eQNKwVPkgGzmmqQ6lVihxisI=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=dA1RxrBA+bZB/kwamO8jsQgjYpnX8FzhNXlsNR3A9LyARcc18AhZza3MmUbKcwDMI
	 g4KhAmHbUFwn8EHb65s5+0G+4UPwzQ2GEv9+pJSGPcng26S41NNt6tdJn7j9wy+OFH
	 FkCVFCs5M6sjfARiskSjoZvY/uMpbPGgysgrG05IBzlMU2j8Jl/jZAv1uTxvMsptuA
	 t65bDxmmhrLNCOtn8jmaoPLyMHyBBXiUHm6yGUAfvljay0VxGjjNRo83s1/0/PvUYU
	 n20hDkl7erLiEVk7IZ5pFYtvSxlRBav2h8hxDtgIkVLxRjPiiaf1KgwYa5L9YzEzbK
	 Kp/ck4PDQwcHw==
Date: Thu, 7 Mar 2024 03:05:46 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Guillem Jover <guillem@hadrons.org>, linux-man@vger.kernel.org
Subject: Re: Order priority issues for special 3type sub-section
Message-ID: <Zekg-91v4KYQ7go3@debian>
References: <Zej60rSb9Ve5rRPy@thunder.hadrons.org>
 <ZekNZuR3nRczAIqX@debian>
 <ZekThJn_-AGkDyRb@dj3ntoo>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yQQM48vUrbkEshfe"
Content-Disposition: inline
In-Reply-To: <ZekThJn_-AGkDyRb@dj3ntoo>


--yQQM48vUrbkEshfe
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 7 Mar 2024 03:05:46 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Guillem Jover <guillem@hadrons.org>, linux-man@vger.kernel.org
Subject: Re: Order priority issues for special 3type sub-section

Hi Oskari, Guillem,

On Wed, Mar 06, 2024 at 07:08:20PM -0600, Oskari Pirhonen wrote:
> They're super helpful for sure. It was really annoying to have to track
> down where some struct was documented if it wasn't in the page I had
> open right then. Now I can just do: man some_struct

Thanks!

BTW, it seems these APIs are not-so-recent to glibc:

$ git blame -- ./time/sys/time.h | grep -e TIMEVAL_TO_TIMESPEC -e TIMESPEC_=
TO_TIMEVAL
8be918b7bb2 (Ulrich Drepper     2001-01-28 00:00:08 +0000  38) # define TIM=
EVAL_TO_TIMESPEC(tv, ts) {                                   \
8be918b7bb2 (Ulrich Drepper     2001-01-28 00:00:08 +0000  42) # define TIM=
ESPEC_TO_TIMEVAL(tv, ts) {                                   \

I'm preparing a manual page for them.

Have a loveyl night!
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--yQQM48vUrbkEshfe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXpIPoACgkQnowa+77/
2zL3RA//ZLubp6gQ4DpaJINEjBUH0gWLRLekjbjnnqre3KjDERP+GeQdeUuPo7fY
CFMjtV/IK815gM9/rFmDKKOuuTxM/wFhsFicQwVvfgX9a8jP9fc1cU6n0iJQFhK/
7MWKTViKgYE8vQuOjgUrCtxO53x8xePTnjuIUVWsJtxL5uyrk+p9ga06Ya0ZoEbQ
izAwujCYEkVH1DTc7H+E+aDqPQDpewQXVONyJXfzaQZWkFQSYuCEsL3eaWQcK15o
tiCmDwwlEu7QFbq5L3XPelpk0EqB5u/PZ2DgNj8UzkvLUaoDE9w+luXDE99NYmK8
zNJLzTyt9Omgha/B4wNvzqp0hDy4WraelE0tLd1TwWmSTRjzvaqxvETFmh0GZtAJ
VhWdoEluysGxgWxj6OzekJsHIS3uc9KRJpfTMHVxqUSQvHfLXoHks6nz2fcMykWu
Wnxmh0DEiz6GqRHMuNYJJyRrh/tNXogTbVhxBnBEtS+gL/lZr/aZUwLcOMWky1/Q
i1TJWmSF8SJw/lUVOgeyKfTfwadUMQDko6gxnh4lI5IHE4EL0uTJ3S1o3YNcMQ1C
AKvppN2im7wLsZDTQrWppiTdP51tkuSm+KZYzl9rTf4L+83XpQxw7As9VSwe5QAs
S2ZImgO8O5yTq8Pmd6FccxDPuB2YhvFnWWlTMlKwgi9hmqxIrA8=
=b9Sw
-----END PGP SIGNATURE-----

--yQQM48vUrbkEshfe--

