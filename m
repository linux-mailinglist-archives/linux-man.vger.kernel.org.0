Return-Path: <linux-man+bounces-4842-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A43D3A77F
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 12:56:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7981830024D8
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 11:56:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AA82319871;
	Mon, 19 Jan 2026 11:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="GgnvWC7J"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-10631.protonmail.ch (mail-10631.protonmail.ch [79.135.106.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7CE3191D4
	for <linux-man@vger.kernel.org>; Mon, 19 Jan 2026 11:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.31
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768823795; cv=none; b=f8XNHpjOXqHLMZ24EzLfbGTjwpo+FkC+BccFQObHtEUnfqzdhvKPLQHpA2cojD9t4sgZlpTnXikTa8zl26rfg3M5N8dNTjqm9zxi9sYFOix+QZD4k2Ifg4Qf7j6bBGkPqW1K9b4Le1THTXeGngJ4rBC8nrSMSTdYKA+vtmaLVnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768823795; c=relaxed/simple;
	bh=8NV7oBZ2fbl+FcpXoG2cTrolpNzhoqws7tZu2XRW7I4=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=RKjCkoxDb1XIlV9nRPH4gF/01loCPBu1T8DYdO7OqxHc3WnpHlqZAcE+AiCXaiiRdtZ9NJ7lyc8SX37uQY+Nc7JBe+A96YLXBSrrSZUy6oSGRDDpyEcFAMJq268x/BSsfXw2GLbQ4Jeu/H+qWyQf5wdop2sHqgGfmJATdAhtgzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=GgnvWC7J; arc=none smtp.client-ip=79.135.106.31
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768823785; x=1769082985;
	bh=Slr8Z9Y35oLIh039XkQBZ6gRzZMKEEmjwFI6UaH28XU=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=GgnvWC7JtsXaxpBxlLWPsP2zaDNcNPdzwQS4N038p6YzQDKCHwVPOC3tGKPGb6aNF
	 cPOSY1b+h9MDov/GigKCAdWH8CgObiASuPm3rvcpfO1ZVp3LYknmnz6pAjhovJVZa9
	 8jHJHYeXlBPymI+1OEoIdo+yi/XnYw/1dTbVlSNuJXnpJqRDMNaIIo95Dp5kmpo9Us
	 8wo3uQBzf3eYY4LCNkIs/QA7QWQq0gka05weDnIirM3ihXV/DJsWCHaQstKW8tQh7L
	 JVpDCoRICCujwifBPIyfxanpcuN7RtK6JZF8Mm5TYvXihid0FEW3XIAjkhhUD3dEik
	 rJX790vb8I68A==
Date: Mon, 19 Jan 2026 11:56:20 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: [PATCH v1 08/19] man/man2/chdir.2: HISTORY: Update first POSIX appearance of fchdir(2)
Message-ID: <d6316545d2530706140cf45037e5f3ae48f1d8a8.1768822707.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 29bec8d0c782afbeba16e307a9a568587a8cb551
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------10d62ddb4f24ed058ba7ce68acce9c850b2345d758b318d9b1b82b0f9a3dc7a3"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------10d62ddb4f24ed058ba7ce68acce9c850b2345d758b318d9b1b82b0f9a3dc7a3
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 08/19] man/man2/chdir.2: HISTORY: Update first POSIX appearance of fchdir(2)
Date: Mon, 19 Jan 2026 21:51:52 +1000
Message-ID: <d6316545d2530706140cf45037e5f3ae48f1d8a8.1768822707.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
MIME-Version: 1.0

fchdir(2) first appeared in SUSv1.[1]  The function was added to
POSIX.1-2001 when POSIX and SUS merged, but as an XSI extension (still
SUS-only).[2]  Then POSIX.1-2008 added it to the base specification.[3]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 3 "System Interfaces", p. 143.
[2] IEEE Std 1003.1-2001, Volume 2, Chapter 3 "System Interfaces", p.
320.
<https://pubs.opengroup.org/onlinepubs/009604499/functions/fchdir.html>
[3] IEEE Std 1003.1-2008, Volume 2, Chapter 3 "System Interfaces", p.
798.
<https://pubs.opengroup.org/onlinepubs/9699919799.2008edition/functions/fch=
dir.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/chdir.2 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man2/chdir.2 b/man/man2/chdir.2
index a313071d2e1e..24f4d44d90f4 100644
--- a/man/man2/chdir.2
+++ b/man/man2/chdir.2
@@ -112,7 +112,9 @@ .SH HISTORY
 .BR fchdir ()
 SVr4,
 4.4BSD,
-POSIX.1-2001.
+SUSv1,
+POSIX.1-2001 XSI,
+POSIX.1-2008.
 .P
 POSIX.1-1988 initially specified the function signature of
 .BR chdir ()
--=20
2.47.3


--------10d62ddb4f24ed058ba7ce68acce9c850b2345d758b318d9b1b82b0f9a3dc7a3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmluG+MJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmcxb5zpImJiZasQY1ho8PFPFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAANVAAP0WHXCIXNuDM4m1cB8rwP2k7crUvZQ8Xez86z0d
R1XpwwD+L+sLb7NHG8Ffuhf4penjbLwgFiBUODT6TsSbHMuTxA4=
=AyEn
-----END PGP SIGNATURE-----


--------10d62ddb4f24ed058ba7ce68acce9c850b2345d758b318d9b1b82b0f9a3dc7a3--


