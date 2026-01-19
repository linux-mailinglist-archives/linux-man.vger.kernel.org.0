Return-Path: <linux-man+bounces-4833-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 921D4D39F1E
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 07:57:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 900CF3012771
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 06:57:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0345A289367;
	Mon, 19 Jan 2026 06:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="RG4O5JvU"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-24417.protonmail.ch (mail-24417.protonmail.ch [109.224.244.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7B225C804
	for <linux-man@vger.kernel.org>; Mon, 19 Jan 2026 06:57:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768805842; cv=none; b=rb8vUFMy2VehbNQXFh36W2kb8pybtZBCRHjojaLdoILP4NKv9cAIzH/kKkJJTzz7f35AnMzA+DP3/vioMvZZqqaMlev/beYyryMA/nWF0Y6bbcjosxY7WX0jRhM62Xs5A7zKljhgv7LS744zQb3APMGsZANA0yvxjWYHa7w4XxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768805842; c=relaxed/simple;
	bh=PFj0TI4zDFmPUnBaJGovmy7jdYpwwTZCZHZhE9MJplI=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=cPtGMEjjzXyWT+FHnvXSt39zlyZ1xz7eMqXJ9ojsSxhNIugak73uEAszqD58vJNxGnJLRIAr7xKZZclCu9cwiiLYY61oNSFd1CoKkbbZxck7Au8hDso/oZYaL8b230qtY5sXmMwMdPVKgTc7jJ5H+zsoCZ9DpCOVPHUzivu51yY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=RG4O5JvU; arc=none smtp.client-ip=109.224.244.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768805832; x=1769065032;
	bh=E6UFMFkP8A4gjZ3Ttfy9hdGS9BZnejL6oDjSAFNcu4Y=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=RG4O5JvUVawM9lm55sYMUmj7YcirI2f8SxIlomIonW/XSP9fJNRlWQt9MhkaZ6zgJ
	 7QS9iQMZZphZ19xQtOeZKKPxlTSNwiGAtoRnRL2Zxcsbsd4cfxqPfAsWMu2z4yJHky
	 RD4e9OKDQSSw6fzKKwYLZgRPMTiuCAuIpP2TVFigOi8VpJlLBqqHkVO93lgRHT3sJ6
	 WNGZeXTcR0RaPfk3sYAB2mF4ZmfvPLDcFYnXwUV50SaYKOFPeu0b9nvF0GG0nTRR1M
	 xqnHavjlb08SHxwd1O0TmxNHaelA6sHRVseAurJ116uMVapAP3GxSzyD32H4vdkKbo
	 KmndXept/nxgA==
Date: Mon, 19 Jan 2026 06:57:08 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: [PATCH v1] man/man3type/time_t.3type: HISTORY: wfix
Message-ID: <0e6949ff808556cd8632520603fb2c030b7a5215.1768804942.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 66632a010a7cff8e687d3a68337f05371f99a724
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------ae2648395fdc5708c2ab74fda5e4f6b0a6b110f016371bf324228798d68ea1df"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------ae2648395fdc5708c2ab74fda5e4f6b0a6b110f016371bf324228798d68ea1df
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1] man/man3type/time_t.3type: HISTORY: wfix
Date: Mon, 19 Jan 2026 16:56:20 +1000
Message-ID: <0e6949ff808556cd8632520603fb2c030b7a5215.1768804942.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0

There are two more lines which were part of the paragraph that the
listed commit removed.  On their own, they do not form a complete
sentence.  So remove the missed two lines.

Fixes: b32b8934dd19 (2026-01-18; "man/man3type/time_t.3type: HISTORY: Remov=
e superfluous theoretical history")
Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/time_t.3type | 2 --
 1 file changed, 2 deletions(-)

diff --git a/man/man3type/time_t.3type b/man/man3type/time_t.3type
index 18e8f7be0e4d..08eb4198501c 100644
--- a/man/man3type/time_t.3type
+++ b/man/man3type/time_t.3type
@@ -71,8 +71,6 @@ .SS Header files
 .I time_t
 since POSIX.1-2008.
 .SS time_t
-In POSIX.1-2001,
-.I time_t
 POSIX.1-2024 requires that the width of
 .I time_t
 is at least 64 bits;

Range-diff against v0:
-:  ------------ > 1:  0e6949ff8085 man/man3type/time_t.3type: HISTORY: wfi=
x

base-commit: 91fa6d909b1171bc2361b5b2192c11c8be06a7d1
--=20
2.47.3


--------ae2648395fdc5708c2ab74fda5e4f6b0a6b110f016371bf324228798d68ea1df
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0Fgmlt1cIJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmf0ApDw3wnmk7FVSEpjzQYNFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAALuYAP94ycR8+zCpWydZrxGwLrLvkZT28owk1M6Vg7/u
vV8LvQD/Ttp0oPoRwSLakPHG/MFpVLxDXvjCYpZam6F3DTWUDQc=
=uhGt
-----END PGP SIGNATURE-----


--------ae2648395fdc5708c2ab74fda5e4f6b0a6b110f016371bf324228798d68ea1df--


