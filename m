Return-Path: <linux-man+bounces-583-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F8187A98F
	for <lists+linux-man@lfdr.de>; Wed, 13 Mar 2024 15:35:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0DD5CB23692
	for <lists+linux-man@lfdr.de>; Wed, 13 Mar 2024 14:35:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 785B9443D;
	Wed, 13 Mar 2024 14:35:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="po041ScZ"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C53AD10E5
	for <linux-man@vger.kernel.org>; Wed, 13 Mar 2024 14:35:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710340524; cv=none; b=TrQQXHXl8c/W6nlidbTqOk3nhEA8acFAkYYeYug+YBVZ1Mqq4V1Wgvd2F4oLhir8ITtBoXbUI7YCakGfJC7Cg6jKoWX56DomXehlxAm2UoPnKty0bqwk7BEZXuOs3U9SrMAS5NDlMuTKNx5O3Ohl7tGT4otptasueWNpdghaN4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710340524; c=relaxed/simple;
	bh=QFp0A8heUzDiNPerazS0/TWDPySW+z7BFn0EVpZOFQ0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BTAh3Q1o+ZqYOM/Tv5stzLwDzxmGPLUDVg+OWk8U5IV+JhF8wNUX9er4I9yvYchlOxPW9ua9U7+i5tejaaM9USfuULXFFYKmf/+VeNYGD6uDKoMIAqP6WGZTBKgBNxjc9BC96S4xvthEtxcrSD4Z8H3j1boTsaoe4XIvb5avkp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=po041ScZ; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202305; t=1710340010;
	bh=QFp0A8heUzDiNPerazS0/TWDPySW+z7BFn0EVpZOFQ0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=po041ScZ5fKTc518TfllbDSy1oc0uJROP17/FFKOxPCGeSBB34rN+7oXe+MLIQ9Ah
	 vi8jK1ST/Ujm1L4KMcKXEAY/ZKk/8AQ+CUMHGfzIfEww04ZSKKKlHSRyv48JKtt+N+
	 y//qsBN+5nssPAT7NrlPpGsDmrTEJCjDHHAFfkyOKzHow/Hlml0v+3vr0OQst0ZoRf
	 LLrYybdJfTVys8Iw1y3P6tKdnC6l7pp47VcjC/EVRSXPJYKpVnnJXaVmm6nSbX+Ggn
	 Z5nlczU3OX3XBzXthISqlViv009hjhvIxnkv91y5Ns0T5n4YDuuqruihUhvOw1Xotu
	 /xT/4XWIPTc2g==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id C5A901012;
	Wed, 13 Mar 2024 15:26:50 +0100 (CET)
Date: Wed, 13 Mar 2024 15:26:50 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 4/6] proc_pid_io.5: mention atomicity in atomicity note
Message-ID: <bf3b3c49fca51b0fbfb85fc905bfc9030f106d1c.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
References: <1513ee2073bcf0fae7bb720bcee8a8de847e5cf5.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sooqmq2vnorwmxdp"
Content-Disposition: inline
In-Reply-To: <1513ee2073bcf0fae7bb720bcee8a8de847e5cf5.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--sooqmq2vnorwmxdp
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

And drop "current implementation"
(wording still literal from Documentation/filesystems/proc.rst).
Of course this describes the current implementation.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man5/proc_pid_io.5 | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/man5/proc_pid_io.5 b/man5/proc_pid_io.5
index 4d97bd95f..181717192 100644
--- a/man5/proc_pid_io.5
+++ b/man5/proc_pid_io.5
@@ -82,11 +82,10 @@ .SH DESCRIPTION
 .RE
 .IP
 .IR Note :
-In the current implementation, things are a bit racy on 32-bit systems:
-if process A reads process B's
-.IR /proc/ pid /io
-while process B is updating one of these 64-bit counters,
-process A could see an intermediate result.
+these counters are not atomic:
+on systems where 64-bit integer operations may tear,
+a counter could be updated simultaneously with a read,
+yielding an incorrect intermediate value.
 .IP
 Permission to access this file is governed by
 .BR ptrace (2)
--=20
2.39.2


--sooqmq2vnorwmxdp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmXxt6oACgkQvP0LAY0m
WPELVBAApKs3cIFxAVABpabTrQD1er+ygqGap4CaJYmhAxcYnSd3dc44n64HzkLb
w/dGX45hPnp7+MKJDlFoaXrYifA+GbDkjMIF5l47/p+PPR6J4k1OfCqMfpVq26ws
q85nc5gTZUBXZwUeKEF6qCDCM0yx+5FdJlJjQbiFP0CsMH7bn/7lbEx/T9cb188N
twYZFZih2nczDRnpF52jNBT1uIUbc/moBKC1B6XkUIAcJHesk8SBEAIG2Sb1cLL6
zQ6mFCMJ2zmI0y5cSHPSjx727WfSI2JZOyJkW7pK+p+WLUu2gi6WLjPVQfpsz9fS
OyuRCdgn8JCD5jqAt2cIjO9pHXCIYOYlTh3No99HU5/2jiWZV6YUCHCCgKPIwBD/
FoIoFinT5mA4GtqqCgOAbxcQOYTBXMWe3wNvMNVDRH7f65gfKCWvGR9UD1GHhBLI
pbzFChyhPN3Tsplmp8bulrLRqJ2aWeMV6PGGz7FMRH5+8+BCx8T0YA+tFKizUgX6
0cPqT8lVSzeyPnXEpvYu4UjTxVWQt4RAEoRVuovlE88+xqlJqDOBqneL5AaRahDi
ZWq2zaPm1EGO2ScIXbDy5ckoDKd/reTwdJaKf7p533bhGeMyNivBFnhdDKn3twtJ
+EkCPnhr7/5WcItR6cP0yBNDHHzKyVrFbljmycbPbGALjSROH+M=
=dpza
-----END PGP SIGNATURE-----

--sooqmq2vnorwmxdp--

