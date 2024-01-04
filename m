Return-Path: <linux-man+bounces-343-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E1336824AE3
	for <lists+linux-man@lfdr.de>; Thu,  4 Jan 2024 23:31:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7F8AB282288
	for <lists+linux-man@lfdr.de>; Thu,  4 Jan 2024 22:31:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 604B118ECC;
	Thu,  4 Jan 2024 22:31:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="O4IBVmey"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA21E134CD
	for <linux-man@vger.kernel.org>; Thu,  4 Jan 2024 22:31:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202305; t=1704407481;
	bh=egI/y8WMsyTi6Qr3VRSIQ4hx7m9l0scyNOars3qyLWI=;
	h=Date:From:To:Cc:Subject:From;
	b=O4IBVmeyOviPdnH0dl8ZoUfAaKLW5FjQPA0i+jYLYfn9Sc3a4Los+ztgicqscTwPE
	 3GmvyeD3ovF1lyL3EisygKKaIt4G/kaDmMRSbQp0e/OLpA2BmBTv+hqxUsG0bzqdAH
	 l4BgIjF3/yfMwVmxowi0HUCM1hDYRJuAiElCpjWk0GeU8ZbuASeS0EiDhJcskRWx6D
	 5iygTrg//5+tyivqbWYB7t+1bLxsO0a6L6wgJhG2h3H9LpF3kVfrpZ6Rt2oQzzVcND
	 EEtS+wiyl5r0BdqmDIZynBaQ6aMs8aKWz3QEhaKYOUFAL9F5D8ZYBqoSGGsR/TTnRR
	 b3+WNA0uKnxVA==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id BE5551477A;
	Thu,  4 Jan 2024 23:31:21 +0100 (CET)
Date: Thu, 4 Jan 2024 23:31:21 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] cpuid.4: note which CPUs don't support CPUID and what happens
Message-ID: <kyyfpi3qhcyvxvj6jhevlx5m3st4hufo6f4xbqz45wmzpe5fgr@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dg4iljwphedkvrjr"
Content-Disposition: inline
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--dg4iljwphedkvrjr
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

"Early 486" comes from an uncited wikipedia table, added in
  https://en.wikipedia.org/w/index.php?title=3DCPUID&diff=3Dprev&oldid=3D59=
2047209
  https://en.wikipedia.org/w/index.php?title=3DCPUID&diff=3Dprev&oldid=3D59=
2047978
but I spot-checked the rest of the table accurate to CPUs in my house
(the oldest of which is an original Celeron, so no 486),
and "early 486" is better than "early x86" which can mean anything.

This does leave earlier x86 unmentioned,
but Linux hasn't targeted those in over a decade,
so they're out of scope anyway.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man4/cpuid.4 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man4/cpuid.4 b/man4/cpuid.4
index bd883e6d3..0b38fabe3 100644
--- a/man4/cpuid.4
+++ b/man4/cpuid.4
@@ -69,7 +69,9 @@ .SH NOTES
 There is no support for CPUID functions that require additional
 input registers.
 .P
-Very old x86 CPUs don't support CPUID.
+Early i486 CPUs do not support the CPUID instruction;
+.\" arch/x86/kernel/cpuid.c cpuid_open()
+opening this device for those CPUs fails with EIO.
 .SH SEE ALSO
 .BR cpuid (1)
 .P
--=20
2.39.2

--dg4iljwphedkvrjr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmWXMbkACgkQvP0LAY0m
WPHuQBAAqbOOWD3n+1A/LZ8PFQnujf3kwyKzFUaxc2AMPdYhzzuo++F4D7RAN1TQ
+i3tYhJRnu5yWIbolg45DS+4HjVQGPRwBL6hbi/2YTeaKUuuOponp3CvgVonpbkI
JiWpR8V5fiDHS1KmSD1g5AFwEks7+WZZHgJO4wmsBnM+ErnNnM7MNO5FxuRd57om
cUi/GoVccCzTuhiT8JUlWDu2bZxZOXlXjT8yYsmNnwIwq0evVJeQlrDHg33Hn8rh
t3wzd0Q97BS17s2ehogYhWwy/D1axTp+Q7taQhNmunimX5H788rVeQdtTE4NI6Mr
gROWPEG2FipFPAk1gUvqsfvkM+l3jf7FZVWWUuoKx9pZH57h9sreGXVZ6VF9n8r7
dk5ccgl3+Lgilig1c78HzNwsMmLZ7dS4t6FF77rKNy++eBm3gl9jNosj89xJtSsJ
CHB1Ejg2r5i++kRg7UzQJHJp9X1YhhpYxqdke9zaIzobNA4a+ES6M4S6Gx+fpDO0
Pcost8HyzSVR//yXLNXNTZ48isXi4L1Og3cfobbBHUuRhtV0nzH8CGEtq3vPEPFe
GdmNlx+BO7OUU3i0b7OtRpeYwH8hchUS9HvruHpLWd/UY6B/kdWfSbuLGmxJ6bbD
dTmhMF7sbalKo7zai5dAsDzVMEStcw1cWp4zXTOYEfjLlIEv0io=
=r7XR
-----END PGP SIGNATURE-----

--dg4iljwphedkvrjr--

