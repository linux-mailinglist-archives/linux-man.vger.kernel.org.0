Return-Path: <linux-man+bounces-2648-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE49A6D0E1
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 20:47:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 488483A75CA
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 19:47:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9384C433A6;
	Sun, 23 Mar 2025 19:47:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tgXURYdj"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5231728E7
	for <linux-man@vger.kernel.org>; Sun, 23 Mar 2025 19:47:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742759235; cv=none; b=LCm/CxfTxHg2MS7tzzCdekHmrL5yT51/ZcN9cKGPGmMPKkGp13moFqtalqwkPz4bk4S9wm8dtqAPoJNdQTDXwKUKwt08hdUU8un1n3TOl4dTHBxsrkyBbd7q9RitJS819LtlvrRjXJ4OdwksACIHunItbkKU8ENBRxqqTev+AG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742759235; c=relaxed/simple;
	bh=c8RqXUhFXltzITFAcRQhO2KPMkcDGc6dPzzuYO4Af6w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r+1h0BKFOeKGpmazdqZFSGKuhNK8X6tugSrzNgRtO60X34FBu21Jzv9y8qwId4FgD3H3qWnnNy6PebYR6K9fS+OAdFTIjT3Hsx4XB1O11fPe0+hdmQIM+AE+T7JIeMz+bhAmEKZyTDn2MLDc9Pz77As5XAWZEjhIRa5OFxWP6PI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tgXURYdj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EB43C4CEE4;
	Sun, 23 Mar 2025 19:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742759233;
	bh=c8RqXUhFXltzITFAcRQhO2KPMkcDGc6dPzzuYO4Af6w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tgXURYdjxVc40pXDZDHOg217FVQqycp3rfwssn0wKju2/y9yFI7xDf5Fcn8P9qSo2
	 SKDgyCO9NDKaxVql2Kb3K76Mof+alh88DsvAYqRTjmoopXPtmi3lS4CPlyYsRc8rD+
	 BSxehU+jUKFWV7OTQbu+JWaRAuYc7KQQ1LTe57YKDhZGYy7ydkLjskobwjHuA+Gj0n
	 iILPvELdS4BI7jytCWj29flNITBESSNse8l/bnrOe4HdtiUibAdXXKENm36fisIb2X
	 oRMYB2NP3Zj13k9vfcY1oLvzHWHk4LoHnIboGMW4l/bKqblXW4noEIcPwIghCmQA9r
	 ZeHeUv+7JmiAw==
Date: Sun, 23 Mar 2025 20:47:11 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v4 1/2] man/man3/strto[u]l.3: BUGS: Signed numbers and
 white space are not rejected
Message-ID: <x3o4iblfxmh6mhe2lg2mrhg4beabrkd2zsftmegpbqmzinkd76@4y33ay3nw6hs>
References: <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>
 <2092070.kUgFBCI4xA@nimes>
 <lcm7spgzau3sr4oeaqrdf4qpprekojl6z3sc4nqtvmfkerftze@mu7anfvdcc7y>
 <2953780.FA0FI3ke8A@nimes>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oexqxgb7pbs7jdq7"
Content-Disposition: inline
In-Reply-To: <2953780.FA0FI3ke8A@nimes>


--oexqxgb7pbs7jdq7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v4 1/2] man/man3/strto[u]l.3: BUGS: Signed numbers and
 white space are not rejected
References: <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>
 <2092070.kUgFBCI4xA@nimes>
 <lcm7spgzau3sr4oeaqrdf4qpprekojl6z3sc4nqtvmfkerftze@mu7anfvdcc7y>
 <2953780.FA0FI3ke8A@nimes>
MIME-Version: 1.0
In-Reply-To: <2953780.FA0FI3ke8A@nimes>

On Sun, Mar 23, 2025 at 08:26:02PM +0100, Bruno Haible wrote:
> Alejandro Colomar wrote:
> > 	diff --git a/man/man3/strtoul.3 b/man/man3/strtoul.3
> > 	index c6a2bb9be..4e85f7a30 100644
> > 	--- a/man/man3/strtoul.3
> > 	+++ b/man/man3/strtoul.3
> > 	@@ -182,7 +187,7 @@ .SH VERSIONS
> > 	 or to
> > 	 .BR strtoul ().
> > 	 .SH STANDARDS
> > 	-C11, POSIX.1-2008.
> > 	+C23, POSIX.1-2008.
> > 	 .SH HISTORY
> > 	 .TP
> > 	 .BR strtoul ()
> > 	@@ -190,6 +195,10 @@ .SH HISTORY
> > 	 .TP
> > 	 .BR strtoull ()
> > 	 POSIX.1-2001, C99.
> > 	+.TP
> > 	+"0b", "0B"
> > 	+C23.
> > 	+glibc 2.38.
> > 	 .SH CAVEATS
> > 	 Since
> > 	 .BR strtoul ()
>=20
> These same two hunks could also be applied to strtol.3.

Yep, I had forgotten.  I've applied them a moment ago.  BTW, I also
updated the info about POSIX too:

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D2b2519c7722166dbe4313da6ec048d137ea42ba7>

	@@ -183,7 +188,7 @@ .SH VERSIONS
	 or to
	 .BR strtol ().
	 .SH STANDARDS
	-C11, POSIX.1-2008.
	+C23, POSIX.1-2024.
	 .SH HISTORY
	 .TP
	 .BR strtol ()
	@@ -191,6 +196,11 @@ .SH HISTORY
	 .TP
	 .BR strtoll ()
	 POSIX.1-2001, C99.
	+.TP
	+"0b", "0B"
	+C23.
	+glibc 2.38.
	+(Not in POSIX.)
	 .SH CAVEATS
	 .SS Range checks
	 Since


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--oexqxgb7pbs7jdq7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfgZT4ACgkQ64mZXMKQ
wqnhfhAAkFHneWoAqUUmoSgVmecItD9uQRFwMtFCXpoXo9jGC0NBlrrJF/cToNbH
McNlJxExn46oI+8caXa4q62JLcnm+UM2N7kB0GIkJE0UrAGDdHl0um+hhG3BO/+f
XE0ct7qKQyexJoZMu1azpRa3oQqaTnu0b1CoVL5jbrGTn7F77f4RRjMVCcL1VCof
0TFxVedjDo+LZTfa6XOBAs6t6MYh5OdRuyHvg9KmlbULYbpp4y3nwUcvbDsmvB1A
P2jjqGmW1QQjtra+dUbBycFBCUAedfJhPr4QL01N786VZJqPv94sj7s2IXrLiTjW
wqrk4CjihsWmeefzRGIJhMvJgdM/Bj0dyUAlCLuDEco7/AafJKD29PZVIjQc2Avl
kz7HFz9zKhn3jVI1iwxMpzxpeuvmBYDilXQi26VfEhDDkXmRX7955VJNQg97zcKc
t0jIq8sPRhmR13cyMskRrwKL1xdpojIe9sSbowr53D1loAt7j65Nnk/gzJCzj9EV
r2l/NNW4vFnBUSXKMnV4jAe2BmLZfoHUIPUPQh71+NmoWYZaxJ5DHQ18L+LfjtRP
7ltkNOLWUx2FbmcTJjf6CyTKLGeLbvles7cwQrE5SJR6zpdbV4bbPnJQVMUVn2yW
tfqGRJowIyx4W1GNDA2qfWksEthNxbA45zAnkTV0EdT4T4v1cVw=
=1BhQ
-----END PGP SIGNATURE-----

--oexqxgb7pbs7jdq7--

