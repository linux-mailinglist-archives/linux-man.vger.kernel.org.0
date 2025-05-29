Return-Path: <linux-man+bounces-3051-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C71C8AC821E
	for <lists+linux-man@lfdr.de>; Thu, 29 May 2025 20:23:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 444501BC7103
	for <lists+linux-man@lfdr.de>; Thu, 29 May 2025 18:23:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC802231827;
	Thu, 29 May 2025 18:23:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="hpZlvUMV"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D76E218EBA
	for <linux-man@vger.kernel.org>; Thu, 29 May 2025 18:23:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748542999; cv=none; b=Lf9Z88mSqKHYm86Owk3WOVfaLBmeecQTjBA0gPaAtBKzFPWRDQAhuIh0ang4fTESx/mEmBDuqwVp8UsTEXm7+wa85tl+VgCZmgQwTIz3+xUcgDtH9jGHLU/88DlJwpE/wLhyiLiC4rCe+EsYF4qaHEvjTbsVdUJw7f5X95t0k8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748542999; c=relaxed/simple;
	bh=LTIZDfl4ThkrBzuXrEXz/LvOzYXxgNd3dbq85m0FK/k=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=ey1g3h7pmWZCyvaT0ROQWkh09wVvDyiIYQUv4MfdUP60YfMFTrPKw82xCQAFmJjB5zno/WJqMTybhHDoDzg9lnLLZLa8VLHR0frPy5QNiV3CttNeME/2miEGHIZSKjhDOJzwHf/svt/RYeKx0irLQB2WcbSiZ0epUK2e7B8Wqb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=hpZlvUMV; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202505; t=1748542383;
	bh=LTIZDfl4ThkrBzuXrEXz/LvOzYXxgNd3dbq85m0FK/k=;
	h=Date:From:To:Cc:Subject:From;
	b=hpZlvUMVwM2/8ppW8sAFAGfidlSVB0M1CFTCNjJPrpgUvY5e1kZiF4vm5AbNDj5hf
	 v5qbwjs2rlkoTIZUfLjZdPGL3GY3Ff5NLvxuPuqItI2lKXXrFJNfxbGPFb9F8yZFlW
	 lfU64jIJ+9f92ebuC79p3Zb/f9foQ03TRbvRz6KNvy6FsvY1SHYesH+jafY/o0C7S0
	 SEtHDJgu0h7EodQkRYoMQd3FnR0PKT5nc5BaTLKf5N5jru/En03pHnRqMGQtoM/fV9
	 3rFUD8HpeoJfF0BD/W3sPnmagRbIyStXxmvtMarVZgkvp+RfXbow3Z0K3kCuKErnY7
	 7k8QAkwgrLzoA==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 94DC72196;
	Thu, 29 May 2025 20:13:03 +0200 (CEST)
Date: Thu, 29 May 2025 20:13:03 +0200
From: 
	Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] sched_setaffinity.2: use 0 instead of getpid() in example
Message-ID: <v5p4zfqrepnrorszmuie47aiulivcykicxuhtxfkqhrq5t3cis@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fhuzwvgcg22q2ane"
Content-Disposition: inline
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--fhuzwvgcg22q2ane
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

getpid() is superfluous here.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man/man2/sched_setaffinity.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man/man2/sched_setaffinity.2 b/man/man2/sched_setaffinity.2
index 1bdfa4e63..fa49c716d 100644
--- a/man/man2/sched_setaffinity.2
+++ b/man/man2/sched_setaffinity.2
@@ -370,7 +370,7 @@ .SS Program source
     case 0:             /* Child */
         CPU_SET(childCPU, &set);
 \&
-        if (sched_setaffinity(getpid(), sizeof(set), &set) =3D=3D \-1)
+        if (sched_setaffinity(0, sizeof(set), &set) =3D=3D \-1)
             err(EXIT_FAILURE, "sched_setaffinity");
 \&
         for (unsigned int j =3D 0; j < nloops; j++)
@@ -381,7 +381,7 @@ .SS Program source
     default:            /* Parent */
         CPU_SET(parentCPU, &set);
 \&
-        if (sched_setaffinity(getpid(), sizeof(set), &set) =3D=3D \-1)
+        if (sched_setaffinity(0, sizeof(set), &set) =3D=3D \-1)
             err(EXIT_FAILURE, "sched_setaffinity");
 \&
         for (unsigned int j =3D 0; j < nloops; j++)
--=20
2.39.5

--fhuzwvgcg22q2ane
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmg4o68ACgkQvP0LAY0m
WPEYDw/8DXo6lyIxTrUPtrFw9tC73xQR4xsveAJMHT1qilnYDs7dM9exEeMr/6Xt
mgS0hrRo143l7p1liprzYpLIOSaFjfjt4za7C6AdB16DRt/IiDkf1HqLseIceYbX
6cc1n9bsuvq/75hnBJOahVrVhO1l7hresetnKHnlT7+tzcrQdKvksj/pVF+TuA9a
aG4jUm6+1dfsYBqK8teTKKA9PnHoUTWwlg8rBMf/oON3IiCo/IxIEPLRgFHhdZnl
ODqEDKlsAuj084sQG27sLxrKYDSxHcagFpuQB+eAA0PxaX5wRYyIqvN4RKOB9jyC
wwvvNPLMQRtyjqVX/NYbvD5YuNFCv+QC9ye6PbZ+hK3Z4Z47uCNwyjiU2nMlgcu0
fQZtFwY+5F3R6dw+6MLve/lWcC28XtNfhR9ZMnMj5Cm3VBmfyV1Or1b7UWa2BmmA
p7avzx0HRCC3/kramG8A3OCjXmRZ9l9yyggWcR/w9tn/4B/wxHuENgod8epYr61N
ImuWeG2C8tBtYJ2CuVIXdRk4AzWpN/JUmDLzvkgZyouN8g7ZtXkK7ZLushsWCCrL
fobj3BErPylJ03Onnl6UnQUfIiA9NHFlRXa2m263pGKB3elcZ6vclAzx1Y0PM+jw
ez1zk+LpBCIQfAbfPde5hi/deFAFF0b+6b/T74pSy5bTbZj2IH0=
=HFnm
-----END PGP SIGNATURE-----

--fhuzwvgcg22q2ane--

