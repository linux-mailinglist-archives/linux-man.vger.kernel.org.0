Return-Path: <linux-man+bounces-1996-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0CA9D0380
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 13:15:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7289C1F231C2
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:15:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F0631422AB;
	Sun, 17 Nov 2024 12:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rkHq4UCV"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EEBB26AD4
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 12:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731845722; cv=none; b=iYNHDgLrP0IhoxML/aL4inI9Y5zahc2QA8h0JlTUbj5e2R5o1yLqltbQyZ05KTVJRjXMQGZAVWN8kfFVK4zM1uOn3fJmpxSYdwi6HUSkWkNojzW3O7xbvIMUhK8foRfby5HXAogs3JJ68cuZxMiHciQcWsRmtki0iWsDIbHnuRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731845722; c=relaxed/simple;
	bh=SZYHkPt3vMdTUxbsrOMr81avM/vfPqh/Gx/BfNOHhr0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BzsDa+UZCIvEwTnr8BB0yAzhS3CVdUle1KWN0J+6nLKwhH/tV2p0NZosHeSCbzVrh5MsYwaVLjBAILzpPqnUoeZyfKKa0gLRdudxvxWqYB/f4lND8ovqVvD3ifgeexnfZCxTfmjp0xK/q4EioSJBsQLilbUbFu9p+q0FHUOBALo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rkHq4UCV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36997C4CECD;
	Sun, 17 Nov 2024 12:15:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731845722;
	bh=SZYHkPt3vMdTUxbsrOMr81avM/vfPqh/Gx/BfNOHhr0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rkHq4UCVNNKkN8jZk7OTljDCIyhSFQJJ0iITLESjrgFgFVVGmoeZTPpPGOWFLsKQv
	 tM1b5NWUeF74ZpYFW/s5AYMpNkvoumxfpWJbJc5QQwUo9HS/IWt7gvb7k5AbGAc15t
	 3iKpV1zSIQEwxiud98yuVVeeP+yv+c4YYseP0criOliOMdJySDgeS9nxFvn2jlGwhe
	 3z2Cg/AaYT6u3OYpNMzos03g7+kHHm0HpO2lQexWLaglew9buv1aJnaBci2XwCQjJe
	 zjpqctB2RBpOWYjELHojHB0f3c76I8Sb0nCWZP9J01HTKRMQqJe6VGq5GBZfp2OJqz
	 5Y3IEEEkmToOw==
Date: Sun, 17 Nov 2024 13:15:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page time.1
Message-ID: <lyw6xkefqvoh5eem3lftm6myviuscipvkjwf36a5bk2nz7iddo@6hvadteu2zqs>
References: <ZznJgExHeg8mPwB-@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bw77pod5x5bqzaoc"
Content-Disposition: inline
In-Reply-To: <ZznJgExHeg8mPwB-@meinfjell.helgefjelltest.de>


--bw77pod5x5bqzaoc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page time.1
References: <ZznJgExHeg8mPwB-@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJgExHeg8mPwB-@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 10:46:24AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    time =E2=86=92 B<time>
>=20
> "GNU time version 1.7 is not yet localized.  Thus, it does not implement =
the "
> "POSIX requirements."

Fixed.  Thanks!

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--bw77pod5x5bqzaoc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc53lYACgkQnowa+77/
2zIMwRAAkbFNh9aZnlZoPYwZu307B3yCkHTl9Rydig23agjHcVZHySHTrMdHtOaR
IDvwXdWg5+C2S7GX6+kKJHGF/nnt/Zc56rrOOA6RFnJvwcRHTumE2Sz/kmFzr7f2
5VyenT51K8ZW1Y30DY1zOiQujLPdvqW8LNDhFn7Mhi4jFa1VQuGbpO64UoX8J91+
2yv0TmW4elqoYedFT7DXXbes1HQjpF41aX4ERlU2zcsJ8LVcm8lFfVFEc9LY+5JV
CD9gppD24ehRhxK6XGMLCARi/N6jfQeQLdgP2xWYbLv38jLLuzOxWpBe2jkQG4GC
dtS3Yq/5E23NltX4KK6DVYfi1h4D4ay4WDJeyambTlmxRUOEjGbTPNIzzCbWd+Gj
zF3XjIGSxEBLu0arSRGueIXWxNQgVxRNxj31Qu51YQrU67tTb2amJ0JJf6Vv0Qjg
+PTeKn3HRCCxEsY9g4FiDP1s2RcuSXBY3zdK66sYOF/tNBlLEDXJk9OjBfXVMAdB
Qp6O31b8IyQ27WXNF1Kluizzhw0bvkq+/55Za+6tw0v4r21w+Z0bLEPcdFoh1Nj6
zOJp2Br5A4pRCi0YCc1SmQaYc8UMDbAi7TQbXpixRrSWlIvreEKNxnJinJdg89z+
7feXMo2PpXNCRzu/1JVJnI7mdNEBxdOBDXfsyAAHtHlE2gqrQOg=
=uaky
-----END PGP SIGNATURE-----

--bw77pod5x5bqzaoc--

