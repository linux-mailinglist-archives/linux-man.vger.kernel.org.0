Return-Path: <linux-man+bounces-4838-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7F2D3A799
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 12:59:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C89BE30C54B7
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 11:55:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EA2730F94D;
	Mon, 19 Jan 2026 11:55:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="YNcBVIB7"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-10630.protonmail.ch (mail-10630.protonmail.ch [79.135.106.30])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC54A31A7F1
	for <linux-man@vger.kernel.org>; Mon, 19 Jan 2026 11:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.30
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768823738; cv=none; b=qcNpjai64WloapGfTwiVMz5zygGWND2viqYkTT1bIRW/6MPkke/hUEx4pD9wO5B5UYZq2OthgI4B+spAyoxkqAPFVnJDDpSH/rAh1AWifbwP7rC181YVqon+nkhSbP2cit48Ud3N/15gshB5JMhOLZPDmF2kXMevRzhsqcxLDZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768823738; c=relaxed/simple;
	bh=NcDxSJXOLCe/GC/RGRULMQEQhQTq2I/ZKJUHc+AZ67w=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=izWYJopRRJvP0n92x2H9na7K7gu4pFFGVBfT/TdIBnFRu0y1RY+7kwYh6Cfu6zOBx8WlBAa8rPBSjhHvFxw4tuu+1Vcoo5FTIJ0ujHnPxC+qSvZa0wTcBBxkH0bxtxqG/93bnwpVZNspB3SxsUHBpJDaY6Zk7FL9Y85OkdmIMNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=YNcBVIB7; arc=none smtp.client-ip=79.135.106.30
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768823735; x=1769082935;
	bh=RH8xi2ezdtgEYv611l8II26kKEeGqPqXuUWPyGRgGE8=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=YNcBVIB7U97UjE7TXW2lSYMfX3Dts5s5R1Gw9WJKrTDVW7XoE2AkodavEODsG7Y8t
	 nhdyfBKCgpE0cuEu/TaSij06J5AXpEwGStqrAXtfP2V1aNwjEwk3DM0M04k1rUYb6u
	 i33FQubzXctzD7s4lcoO8fYBL67PFdBXLAARXlFxTDh2HHXK0Y83pEaJbGXIuRJ6/8
	 X5pIicoH3F+yDT2PiIhFfcc2/0o0NTZJXHzXg9FZfTHwccqKdMwsbpLpRUpUEOh8/V
	 0fShnGMZqubrUZZ1HXYNTblKJvOFaeKXD83gg9D0eCnN4jEXGzGOhTNMochtTumsyz
	 GnSMMCvZS9McQ==
Date: Mon, 19 Jan 2026 11:55:30 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: [PATCH v1 04/19] man/man2/alarm.2: HISTORY: Update first POSIX appearance of alarm(2)
Message-ID: <51224c3d2e6c6249ee36405e7a8399ce1b491ce1.1768822707.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 8fc7d04dec68d2812fcecefa2f501462e6413bb7
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------8ac1dc62850185a308031c0e52ff6ecc89633fefc312bc35583dc36be402b36f"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------8ac1dc62850185a308031c0e52ff6ecc89633fefc312bc35583dc36be402b36f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 04/19] man/man2/alarm.2: HISTORY: Update first POSIX appearance of alarm(2)
Date: Mon, 19 Jan 2026 21:51:48 +1000
Message-ID: <51224c3d2e6c6249ee36405e7a8399ce1b491ce1.1768822707.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
MIME-Version: 1.0

alarm(2) first appeared in POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Section 3.4.1 "Schedule Alarm".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/alarm.2 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man2/alarm.2 b/man/man2/alarm.2
index 9edde18cdb48..6716b4d61c99 100644
--- a/man/man2/alarm.2
+++ b/man/man2/alarm.2
@@ -37,7 +37,9 @@ .SH RETURN VALUE
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001, SVr4, 4.3BSD.
+4.3BSD,
+SVr4,
+POSIX.1-1988.
 .SH NOTES
 .BR alarm ()
 and
--=20
2.47.3


--------8ac1dc62850185a308031c0e52ff6ecc89633fefc312bc35583dc36be402b36f
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmluG7EJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmet/08dMJaWPvz1qqGRh8JoFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAGOgAQD2z6e1XtPL74RQ561skPPUXW8oWlUtQ/89jyWF
vOd2lAD9En6ZauagKt7/bbBLtHNAiNV1vBjeo0R+rhrgPZcyNQQ=
=kZ6X
-----END PGP SIGNATURE-----


--------8ac1dc62850185a308031c0e52ff6ecc89633fefc312bc35583dc36be402b36f--


