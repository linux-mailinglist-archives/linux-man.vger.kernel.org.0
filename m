Return-Path: <linux-man+bounces-4956-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qLn3BWZfd2n8eQEAu9opvQ
	(envelope-from <linux-man+bounces-4956-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:34:46 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B7188551
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:34:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 924D43053DC3
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 12:30:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD5433016FC;
	Mon, 26 Jan 2026 12:30:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="EgLDfyso"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-43101.protonmail.ch (mail-43101.protonmail.ch [185.70.43.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4677428D84F
	for <linux-man@vger.kernel.org>; Mon, 26 Jan 2026 12:30:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769430629; cv=none; b=lQut2MvenBETSUSh5A7LP5W2BnlNFKqenVFMlvka6xrVjz+w7wjP9Y4uQmppuFMYkcydUJfO2CPPhupBOkGdh3vE7KJMtS1kCKOJqBTIlAeJWuBX/3pa8J4O0c1yRzQ2YmrE7LrWj+GOhGGWhvv3Kgipq4JSRUEx9Kf5MQKnDdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769430629; c=relaxed/simple;
	bh=O+5Kmz9j7VvWHGpb9ou/S3JZVyE9FoPhm+4mqDjxJew=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=YPefYGXWvjF1EFljIvF9AMhWzjxBb4owDf0oFG5uCJ2M2AIY/wL4I5bcaArYrGzMitL62M0Bm6bAsnqQ5+DaRshifz439rP3WKhZbVLOw1mgzNEAidAaBgnEn0bSBld3UtZjaNjMnAE/aVYWSK5sE5GedqFktXec1szz2YLJjDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=EgLDfyso; arc=none smtp.client-ip=185.70.43.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769430621; x=1769689821;
	bh=9Uzh0gghRoNUMoTtENjnklDM33/Wqy7G4FYp/2rgxsI=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=EgLDfysoL37D4GVnypas2QALn1sldaZGfokmFaO9VFEsIVJ9y8DNvLMFfI0hbp8iw
	 P64TgoHbGPgq590iTBjUxGKvW5PUEjScUIEj/0OPykhpYQK/E2rLSt254SZ+EQev4A
	 gkwlwQFLLzV2Jf7bV6Zscyext/ydDRz8QlThppCxuC0ZrZr/i8EHpwkR2HigwSfoT6
	 6Go/Yr2BOBnztNK3ZQ+3VtKD2h42khCOTXYSrnEGafl/gTWyZaM4WeIv3N9dT8a79N
	 T+TIcUaEwOSLlpqZi9aLQcxlYkN/dYGr0cd6fAOB/Tgty4WhZ2Yj4u1bu4RZ32kJEJ
	 RfT+yRe3h1hnQ==
Date: Mon, 26 Jan 2026 12:30:16 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 19/21] man/man2/msgget.2: STANDARDS, HISTORY: Update POSIX appearances of msgget(2)
Message-ID: <975e61bea29f1b03d0d95fa9ea707938ee32c4f0.1769429341.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 4838d23aa1e0c3b244f1c4fe614d7c7d50b9aedc
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------270797b8337f0b4504c29a10516ecee49eef2ee389e65f675b210da851cce3a4"; charset=utf-8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4956-lists,linux-man=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_ATTACHMENT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sethmcmail@pm.me,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[pm.me:+];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[opengroup.org:url,pm.me:email,pm.me:dkim,pm.me:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A5B7188551
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------270797b8337f0b4504c29a10516ecee49eef2ee389e65f675b210da851cce3a4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 19/21] man/man2/msgget.2: STANDARDS, HISTORY: Update POSIX appearances of msgget(2)
Date: Mon, 26 Jan 2026 22:28:00 +1000
Message-ID: <975e61bea29f1b03d0d95fa9ea707938ee32c4f0.1769429341.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
MIME-Version: 1.0

msgget(2) appeared in SUSv1.[1]  The function was added to POSIX.1-2001
when POSIX and SUS merged, but as an XSI extension (still SUS-only).[2]
And it remains an XSI extension in POSIX.1-2024.[3]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 3 "System Interfaces", pp. 406-407.
[2] IEEE Std 1003.1-2001, Volume 2, Chapter 3 "System Interfaces", pp.
804-805.
<https://pubs.opengroup.org/onlinepubs/009604499/functions/msgget.html>
[3] IEEE Std 1003.1-2024, Volume 2, Chapter 3 "System Interfaces", pp.
1473-1474.
<https://pubs.opengroup.org/onlinepubs/9799919799/functions/msgget.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/msgget.2 | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/man/man2/msgget.2 b/man/man2/msgget.2
index 8600d66810ea..7bb389790d49 100644
--- a/man/man2/msgget.2
+++ b/man/man2/msgget.2
@@ -158,9 +158,11 @@ .SH ERRORS
 .RB ( MSGMNI )
 would be exceeded.
 .SH STANDARDS
-POSIX.1-2024.
+POSIX.1-2024 XSI.
 .SH HISTORY
-POSIX.1-2001, SVr4.
+SVr4,
+SUSv1,
+POSIX.1-2001 XSI.
 .SS Linux
 Until Linux 2.3.20, Linux would return
 .B EIDRM
--=20
2.47.3


--------270797b8337f0b4504c29a10516ecee49eef2ee389e65f675b210da851cce3a4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0Fgml3XlcJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmeaLMzRZN152SNLlHFr2FBIFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAJIvAP959FDAXjkGRL/NKV0w7+rZiSgGRW9XqxOl3+cR
Y1fWagEAhtNKMLvrat5HyKUJXarem3r/E+uoAWokg6nD/ZT4Bww=
=TqDn
-----END PGP SIGNATURE-----


--------270797b8337f0b4504c29a10516ecee49eef2ee389e65f675b210da851cce3a4--


