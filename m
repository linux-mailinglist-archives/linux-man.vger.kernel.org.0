Return-Path: <linux-man+bounces-4837-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 66CB8D3A798
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 12:59:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ABAB431247DE
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 11:55:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FED2314D03;
	Mon, 19 Jan 2026 11:55:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="VRxa2bI1"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-4316.protonmail.ch (mail-4316.protonmail.ch [185.70.43.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91F3631A7ED
	for <linux-man@vger.kernel.org>; Mon, 19 Jan 2026 11:55:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768823732; cv=none; b=mHnsMvW/8ZGLMzb1ZAEVQ+egP7T0+fVHpSesC0D39lV11EFgE9iwILmWida5Y8Bhs+OkSjeIt4wrUWk/Ld2AMyHhav1DqGlDkRPI+h0JskITn8XaZGknfCE1iDioURzb3aF9udCjdPD9IiyReZ1ddRBSTGUusU40JLaohiu+KWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768823732; c=relaxed/simple;
	bh=4AQL4sg/rvQG2uLOt+csRA+pcSVd2kyB4SC0suAz7Tk=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=eVvD7oRgihZhmoTWGCUbIpsGDp3Mhh/ODtJw6CFfb50fzj61zoCmh7kLfKB4FYAAz74sZWMwI1jeyF40UiAea8DaJ4bQYr37rDlPhhxYWoOIwPxftjdVsyB+18BOUF5f0kCm+fw7qtUA0+7YgEZn5LHoXbhA6TpNtmj+CLWmu3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=VRxa2bI1; arc=none smtp.client-ip=185.70.43.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768823722; x=1769082922;
	bh=14rMZJRXobgK1H2Jd/5+k4dnX/1TiDlj+YpyTrrJK+A=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=VRxa2bI1R7COWHcFhsuOSLJARWhrrc809+bTuxOsH0Lszf9LRU+WUy1PixCcHx9eb
	 FGTJ9SyFWXp5b1YcdWMiqheF+OGkZW/2si/B6fmxSdCcNGixmJ63ClBSJiBMtdrWYW
	 YZivdbo7oFlf4If/LzVpaliQb2ZHaTRB2WamgSYnxNksWF5mKj2IzwlZnMu7hCnfz/
	 QwnIsPle7uNrWIAn+7+pp8gkO6cQhvKXG3RhtOwvv3ptl9rzVkYHzbp5cmGDKDSj4o
	 Bxzh/smBfkmUw5a9tuVUwGPqtamgh7FUXe9GkYmj+0aUPTeZZOmb7xDfkXI5mVnti0
	 R4fO+hcCp97Lw==
Date: Mon, 19 Jan 2026 11:55:18 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: [PATCH v1 03/19] man/man2/access.2: HISTORY: Update first POSIX appearance of faccessat(2)
Message-ID: <7e6b054be57e885bd938143b260180d54004d55a.1768822707.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: d5290c69e581d12b90e793b1b75dfb0662f2a94a
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------7e1dd70d8988b40859eca8d68002931c4410e2852abfe63655c27d280b954822"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------7e1dd70d8988b40859eca8d68002931c4410e2852abfe63655c27d280b954822
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 03/19] man/man2/access.2: HISTORY: Update first POSIX appearance of faccessat(2)
Date: Mon, 19 Jan 2026 21:51:47 +1000
Message-ID: <7e6b054be57e885bd938143b260180d54004d55a.1768822707.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
MIME-Version: 1.0

faccessat(2) first appeared in POSIX.1-2008.[1]

[1] IEEE Std 1003.1-2008, Volume 2, Chapter 3 "System Interfaces", pp.
561-563.
<https://pubs.opengroup.org/onlinepubs/9699919799.2008edition/functions/acc=
ess.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/access.2 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man/man2/access.2 b/man/man2/access.2
index c0bcf016ae5c..ff198b25824a 100644
--- a/man/man2/access.2
+++ b/man/man2/access.2
@@ -338,7 +338,8 @@ .SH HISTORY
 .TP
 .BR faccessat ()
 Linux 2.6.16,
-glibc 2.4.
+glibc 2.4,
+POSIX.1-2008.
 .TP
 .BR faccessat2 ()
 Linux 5.8.
--=20
2.47.3


--------7e1dd70d8988b40859eca8d68002931c4410e2852abfe63655c27d280b954822
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmluG6UJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmcm4gO7ftgGogEWLN9qc+CyFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAGBsAP4mjczm9fKjs4dFln/RcdmH/GtMlapQtLPyoijX
pQ5D6QEAhHclWFmJYIiymxFQoroAv+ckYM99e3nHluS3b6K1SQg=
=tgo+
-----END PGP SIGNATURE-----


--------7e1dd70d8988b40859eca8d68002931c4410e2852abfe63655c27d280b954822--


