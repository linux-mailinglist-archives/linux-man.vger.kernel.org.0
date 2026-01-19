Return-Path: <linux-man+bounces-4851-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 142CCD3A78E
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 12:58:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 948EE302CDEB
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 11:58:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9528733067F;
	Mon, 19 Jan 2026 11:58:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="C8BtfPo1"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-106118.protonmail.ch (mail-106118.protonmail.ch [79.135.106.118])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241E431E0F2
	for <linux-man@vger.kernel.org>; Mon, 19 Jan 2026 11:58:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.118
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768823907; cv=none; b=aCoHtXogzupq/+3ZWTIQ2KSdqaqwk9sE94XHoUz7gO/nc0RYI9ijgn3M7DUJKhA4ki5x90qRZG6kptzGAg3guLU1Oer50ZqoBHrLFPBPX2RtAT/NLe8CQl2zYwzcBM/l6X7Nv0B/tQOgILqhDXnLNmwjr3tqOPtvQypJv+E8wKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768823907; c=relaxed/simple;
	bh=KsPgnUvlltcqPj+X3A5HhBURjb2cNSb8M2RtDugSPi0=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=UvJThrSXlXjUqjxbziyfTn4Kz7Uu0KJotQoQY2Vp4z1PFwXXpsOHITzUeo13pIcX//8/jfLiLv63fbBwqbJ2WW+0NDW8tKyvJC1G1w17qBp3ndUkBqcSUPKYnWpWEk+lWuiiKhvSuu2qzw5TJdrUQaoMl4b3qT9N4xUtQL9p800=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=C8BtfPo1; arc=none smtp.client-ip=79.135.106.118
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768823898; x=1769083098;
	bh=CgJkswIWVMu7RVUhxZll0uTle5QKUPGARSu7Nbi0ALU=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=C8BtfPo1BQFmUS8Y/zwzxprT6mOA2hDT8EXZrgqC6qFXd20qxu1nBbUgw4UOu3u5j
	 di3I+zu4xW2jqHNLkseWSJF/MrwhKnMWOW14/66vNKAplnuJGQuj0e/C+rB86eexIX
	 gjHqNmQVnhR9bcgSooSi7lHOGrcqT8dLYORJH2E/0WOyoVs7+zZrr320m4i/Lnpivb
	 pHAJIUUhwhZFFc1jz6poin+Q3W/jXP8MtA79vkwJ3B9hSgWhbA/1qrCAqRu1zw5BIn
	 8iOVEHvseB2Y85Y+A5sKghnCkXaLdw5IkOT4ZXa+dR+EY0kdzb/i6KyUXVNDXOxlkp
	 L/+i+TcS9GoaA==
Date: Mon, 19 Jan 2026 11:58:13 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: [PATCH v1 17/19] man/man2/chown.2: HISTORY: Update first SUS appearance of fchown(2)
Message-ID: <bf9099a04c4fda445342d53736068ce343beda13.1768822707.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 20b3dad9cb9910ea447e9380d12197ade1f45c1f
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------a3622a48809f0a3dbbf64da1736668f10e3aa50a3aa71220f22b5002f140bba3"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------a3622a48809f0a3dbbf64da1736668f10e3aa50a3aa71220f22b5002f140bba3
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 17/19] man/man2/chown.2: HISTORY: Update first SUS appearance of fchown(2)
Date: Mon, 19 Jan 2026 21:52:01 +1000
Message-ID: <bf9099a04c4fda445342d53736068ce343beda13.1768822707.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
MIME-Version: 1.0

fchown(2) first appeared in SUSv1.[1]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 3 "System Interfaces", p. 145.

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/chown.2 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man/man2/chown.2 b/man/man2/chown.2
index ec1cfe33d234..0e0c6f170fb7 100644
--- a/man/man2/chown.2
+++ b/man/man2/chown.2
@@ -286,6 +286,7 @@ .SH HISTORY
 .BR fchown ()
 SVr4,
 4.4BSD,
+SUSv1,
 POSIX.1-2001.
 .TP
 .BR lchown ()
--=20
2.47.3


--------a3622a48809f0a3dbbf64da1736668f10e3aa50a3aa71220f22b5002f140bba3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmluHFQJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmfbEEItjtj68KxpJT98CGu3FiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAATNAQCwrkISITkwarjsG7ERvcID3Zjkh6Z11fFugvnL
eJXqkgEA72WQSdIPsrhM4TC79t9cT6aGBmMCYD495v0vGKyNdQQ=
=UHz1
-----END PGP SIGNATURE-----


--------a3622a48809f0a3dbbf64da1736668f10e3aa50a3aa71220f22b5002f140bba3--


