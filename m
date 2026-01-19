Return-Path: <linux-man+bounces-4835-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BCCCD3A792
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 12:59:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7698830A9179
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 11:55:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1654D3191D4;
	Mon, 19 Jan 2026 11:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="WvnRPI7H"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-43102.protonmail.ch (mail-43102.protonmail.ch [185.70.43.102])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5426A313277
	for <linux-man@vger.kernel.org>; Mon, 19 Jan 2026 11:55:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.102
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768823707; cv=none; b=JYX0AHeHoM6WiiEIP4WO/Ca/biMrhdbPgJkNhwH+lK1NNCj4U4wO6VFKWnZYCLYFRjY3x6G7B+o/E3KrQzCKovG5Zi2rEHLLu1JaDrMAOWiew6cfqAOuo0YiZxALn2Qzl1a1BDzFfZ3FN4KQbHmFzA3RyX0K0Zo6aTkTDbRw2uQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768823707; c=relaxed/simple;
	bh=OoSJOVBQEq2oOXS4Pxf4czjpbThPzqV/g1qVA/DGCsQ=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GgSt5ej6IN3oiBTcmfp4L44La/TyoUit9E0Gwb5EITfLul9ZnPWahzVT23dvlgfbUOmD73ozc6YaqizOBvnqvcIC3CA6ON1Ab88dMaPwETtfEiEZhHS//8vd5X5c0J+QgrPGZIHC50L5rqj/nO58RBbs8KJlNZEAOLLaxHHYan8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=WvnRPI7H; arc=none smtp.client-ip=185.70.43.102
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768823698; x=1769082898;
	bh=pLXdcx7nVUR1dRvlKu41TY/0XCHJdPuXVKeZ1XWkzOA=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=WvnRPI7HWT5kaGzHibC5oTSH0nXrhsSQa6VQMmf7RIsL+iGyfjdxRG/74IqttdxbY
	 V86ixSReY9UAIaWgMdOYnQpmgXfNFkysWHACFie+qK5Erdy48ARLho1kIOsIDrPhoz
	 NOVgRBk1byr4anz8zQyoJTNX5KqI61gHPxzDSjw6s8dEN9Vzf7x85Hxuau8UC0NxpC
	 nkSSwYRTfhQpnFWxbsamxL2oboptV1EUND9KofU47kHUr0pmvIPbSjQ2X7v34A2Icz
	 rKR8xb4hSkm7JJT7eLbMgRMbFNvRcdk+G9dCVRTwMeuT67QPMb/M1LJUUpaVe8d5p0
	 bfbGspx7wyEuQ==
Date: Mon, 19 Jan 2026 11:54:54 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: [PATCH v1 01/19] man/man2/access.2: HISTORY: Update first POSIX appearance of access(2)
Message-ID: <58a0a70c630826583aadaa7979041c8d0d72fc12.1768822707.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 26d37579680f05cc4e04ac68b323f71c413a03b5
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------d7916a89fcd23f34d9a92d22252f53ab658ee84890c55dbaa3a815118eef570d"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------d7916a89fcd23f34d9a92d22252f53ab658ee84890c55dbaa3a815118eef570d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 01/19] man/man2/access.2: HISTORY: Update first POSIX appearance of access(2)
Date: Mon, 19 Jan 2026 21:51:45 +1000
Message-ID: <58a0a70c630826583aadaa7979041c8d0d72fc12.1768822707.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
MIME-Version: 1.0

access(2) first appeared in POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Section 5.6.3 "File Accessibility".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/access.2 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man2/access.2 b/man/man2/access.2
index 2148a896d561..1ef65a982f04 100644
--- a/man/man2/access.2
+++ b/man/man2/access.2
@@ -332,7 +332,9 @@ .SH STANDARDS
 .SH HISTORY
 .TP
 .BR access ()
-SVr4, 4.3BSD, POSIX.1-2001.
+4.3BSD,
+SVr4,
+POSIX.1-1988.
 .TP
 .BR faccessat ()
 Linux 2.6.16,
--=20
2.47.3


--------d7916a89fcd23f34d9a92d22252f53ab658ee84890c55dbaa3a815118eef570d
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmluG4wJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmdb02tpLNyDhDvKBvo1E4+XFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAADg2AQCNdhQGXi3UXd54x0afTLSmGACJXeMoMcOidKIW
3JDVdAEA3y2s7bESFjUF7qNF7oE8rZ6WWpz7TtRXAenKpqu7xQk=
=Wm5B
-----END PGP SIGNATURE-----


--------d7916a89fcd23f34d9a92d22252f53ab658ee84890c55dbaa3a815118eef570d--


