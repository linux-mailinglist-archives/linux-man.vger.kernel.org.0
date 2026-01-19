Return-Path: <linux-man+bounces-4836-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB87D3A793
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 12:59:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0F40730AB3C5
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 11:55:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A289319871;
	Mon, 19 Jan 2026 11:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="V/zTlelM"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-43102.protonmail.ch (mail-43102.protonmail.ch [185.70.43.102])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2757B314D2F
	for <linux-man@vger.kernel.org>; Mon, 19 Jan 2026 11:55:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.102
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768823714; cv=none; b=b/RJxwbyBFQ+vB9ULasmtGygv/4WlgXKOY12/53DmxhwdwUj3Gi7azR+515LTnIb8rtPjCueU/905pDFVovaIEJ2HICGZC9vPfFTPKa7AIwczExxxsztR7IeBqKCFTsTP5vtd0ZL3r7wCtrI5bH+7U6q9i39bvCFzrgFAwuwRJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768823714; c=relaxed/simple;
	bh=Yuww3hjyyeiJMoPiX73QBr03g3lNesem2eXRPBgk2GE=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=YX15jcBWYoU+Y1uf0ZY4IRTVNTyLU1Q4m+C6SZpvXCtxTOO8mVHLyBV4bmBaD23OVaLaJU7Jk/3NGts6Atsj6jJZqy0jVLjcf8cOfYk97uNun2cMZxaDnemfXjFh7y9sw+lB8iTup3v23ubahJxql1sqbRttqbw3QT8vdkOQUiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=V/zTlelM; arc=none smtp.client-ip=185.70.43.102
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768823711; x=1769082911;
	bh=CcZyYfuqo9G+f1uOW2tJVsKSomgudBf86sr1CYFzYTM=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=V/zTlelMoT9F7skYHYcSW9no25ocB4RJYbagT7Azl91LnUsB+gBVk6sQHe7hQ1EON
	 +JpiBVf4MkVVsI/EjXKf93jWmrDZTjVvG7/9MJHiKRpDkEm9po0V36eSzYrqga1Hqj
	 qi4t3PVEAIJ5420hAt5pJrlR5KI94f2t77JCl+nnj4/tt3ORdOW8ohtDhWqc55RHeG
	 a/S+nyHInDjLdFkfwxS6IUBba8qa4UWWRnEoJ9q8C3cLlBHtL9eQs/H1H8KQn5Pfk9
	 08TjpaElYR8S5Sy3VmfPm6XspSd3SYAeu/epDxYEnEuHjFj3jLo82ZcjhssLwJ03w3
	 bWpaoHqadZYWw==
Date: Mon, 19 Jan 2026 11:55:06 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: [PATCH v1 02/19] man/man2/access.2: HISTORY: Specify different access(2) prototypes
Message-ID: <d87c7800e0f556efefaf5972294fb6a149bf02d1.1768822707.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 9de39240c64bb13e08bfdd8ce7e026218caf1b10
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------f7d66b71239e103e5097167ba6a6263bad50d147e1bb7e398147082216d19f3b"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------f7d66b71239e103e5097167ba6a6263bad50d147e1bb7e398147082216d19f3b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 02/19] man/man2/access.2: HISTORY: Specify different access(2) prototypes
Date: Mon, 19 Jan 2026 21:51:46 +1000
Message-ID: <d87c7800e0f556efefaf5972294fb6a149bf02d1.1768822707.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
MIME-Version: 1.0

access(2) was specified in POSIX.1-1988 with the prototype
int access(char *path, int amode); [1]

POSIX.1-1990 then changed the prototype to
int access(const char *path, int amode); [2]

[1] IEEE Std 1003.1-1988, Section 5.6.3 "File Accessibility".
[2] IEEE Std 1003.1-1990, Section 5.6.3 "Check File Accessibility".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/access.2 | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/man/man2/access.2 b/man/man2/access.2
index 1ef65a982f04..c0bcf016ae5c 100644
--- a/man/man2/access.2
+++ b/man/man2/access.2
@@ -342,6 +342,13 @@ .SH HISTORY
 .TP
 .BR faccessat2 ()
 Linux 5.8.
+.P
+POSIX.1-1988 initially specified the function signature of
+.BR access ()
+with a non-const-qualified
+.I path
+parameter.
+This was remedied in POSIX.1-1990.
 .SH NOTES
 .BR Warning :
 Using these calls to check if a user is authorized to, for example,
--=20
2.47.3


--------f7d66b71239e103e5097167ba6a6263bad50d147e1bb7e398147082216d19f3b
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmluG5kJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmeGecOEh+tW30GhCwNumGVdFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAPsqAQDYMtJbzVJUVUyKziANQBR5DyM48XDIgMCfFb4u
x8oCbgEAhDRXzHrmYvt+zZJwSlwq10JjO7JgXOr2r5/Q8DZzggY=
=I4Y0
-----END PGP SIGNATURE-----


--------f7d66b71239e103e5097167ba6a6263bad50d147e1bb7e398147082216d19f3b--


