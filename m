Return-Path: <linux-man+bounces-4904-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SCh/GmaLcWkLJAAAu9opvQ
	(envelope-from <linux-man+bounces-4904-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:28:54 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DE160E69
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:28:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A0CFC461BDF
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 02:25:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F3BC3128BD;
	Thu, 22 Jan 2026 02:24:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="B6hNAo87"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-43101.protonmail.ch (mail-43101.protonmail.ch [185.70.43.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FC89350D63
	for <linux-man@vger.kernel.org>; Thu, 22 Jan 2026 02:24:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769048689; cv=none; b=byUScALs8Vk//XgnwVrVV+sYwO3ErHzTLU500LCkIJTGvwt7urmZTGMJQ/rEGwOVBRB4me7ct1rY8R0UBe1adgnSupdcrnhrOD1k2IGGK39RNYZAPkPDwOoTgXyTqgeFVBLPmGkUTFT4vrm8k/TYk6BvZqNCE9UNKW89hHYdhZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769048689; c=relaxed/simple;
	bh=L60F+L1i1+0mmsCXffTEQmrZncTFgzJT6d/U/91EiF4=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=UC+j3il4DXkyYrePhOQ7eo93ybrKbpAJztywfbgIiSnMY8Z1my4BXH/AYSDu9t1+OFX2iFUfepE2zy+L8dV7jXigzACxuL+RW5p3BB2Y5Ky0ZUy1IXvL5MAynyFnnnFSy+9Yt7NxlPd4wED/0vV4j+XBalDs/VyL/PG+4VkVHug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=B6hNAo87; arc=none smtp.client-ip=185.70.43.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769048680; x=1769307880;
	bh=AD8x7lCKnYGD/z/98gUnqZq0hlIW2AUN+oxkqjJdTMY=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=B6hNAo87xQwLcw3Iyb5A62am5y8Ae2CFTCUsfye50IK8KzT3C21G2gF5JdeoeGZjj
	 Fds4c2jthii0TPtvQpGJt11GqEVnPeWfErG3aVWT6S91RirQpEPQZ4utOWaz/PASfU
	 7NFB8KSSsj1Hfk4iuBCGDT9ydq1Ann1qWkJ6VsqLCTLARXNCvMrAdngJHwUTWVWJ62
	 HYmsyalHZjRLu5YfNWVULeYrB/ykLicwdPnzo/GxMi0urf3j2CaWdYVpXglTKH6bGG
	 TNczoVLNlB/Faq10+8vYsQbzMSObd9yrDE6l1DZXD+H1ldM90hT/qYhIa7D6ssKbGg
	 zQ7kXfnogcfJQ==
Date: Thu, 22 Jan 2026 02:24:36 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 03/23] man/man2/dup.2: HISTORY: Update first POSIX appearance of dup[2](2)
Message-ID: <11e4b9d2ac052c8d240ceec95ac927ec6025c397.1769047228.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me> <cover.1769047228.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 065073ee6421dcb039651b1cbc8ed342ca2d87d9
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------b1a631ffb8998168ca2e97907dd7a912b36cab870a7f95a32e0b183d7b44e5a1"; charset=utf-8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.06 / 15.00];
	SIGNED_PGP(-2.00)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4904-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[pm.me,quarantine];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_ATTACHMENT(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sethmcmail@pm.me,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[pm.me:+];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pm.me:email,pm.me:dkim,pm.me:mid,ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns]
X-Rspamd-Queue-Id: 21DE160E69
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------b1a631ffb8998168ca2e97907dd7a912b36cab870a7f95a32e0b183d7b44e5a1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 03/23] man/man2/dup.2: HISTORY: Update first POSIX appearance of dup[2](2)
Date: Thu, 22 Jan 2026 12:23:55 +1000
Message-ID: <11e4b9d2ac052c8d240ceec95ac927ec6025c397.1769047228.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1769047228.git.sethmcmail@pm.me>
MIME-Version: 1.0

dup(2) and dup2(2) first appeared in POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Section 6.2.1 "Duplicate an Open File
Descriptor".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/dup.2 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man2/dup.2 b/man/man2/dup.2
index 941483319f5c..c13c4be9135e 100644
--- a/man/man2/dup.2
+++ b/man/man2/dup.2
@@ -196,7 +196,9 @@ .SH HISTORY
 .BR dup ()
 .TQ
 .BR dup2 ()
-POSIX.1-2001, SVr4, 4.3BSD.
+4.3BSD,
+SVr4,
+POSIX.1-1988.
 .\" SVr4 documents additional
 .\" EINTR and ENOLINK error conditions.  POSIX.1 adds EINTR.
 .\" The EBUSY return is Linux-specific.
--=20
2.47.3


--------b1a631ffb8998168ca2e97907dd7a912b36cab870a7f95a32e0b183d7b44e5a1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlximQJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmegwT8KOcnMbBElidLx/erEFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAJzkAQD9UQ0/PYNU6dDGG7oik9JovgU8ochPNgCvr8iK
IMmkxwEA7ZlYbgplhyOvgx2XY09jA+29N6f4P5Hal62fV5g+Xww=
=445G
-----END PGP SIGNATURE-----


--------b1a631ffb8998168ca2e97907dd7a912b36cab870a7f95a32e0b183d7b44e5a1--


