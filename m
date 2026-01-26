Return-Path: <linux-man+bounces-4951-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJs2GBRfd2n8eQEAu9opvQ
	(envelope-from <linux-man+bounces-4951-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:33:24 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 18643884BD
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:33:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 271D5301C939
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 12:30:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E9DA336EC0;
	Mon, 26 Jan 2026 12:30:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="a3LA62E8"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-43103.protonmail.ch (mail-43103.protonmail.ch [185.70.43.103])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9A3522E3F0
	for <linux-man@vger.kernel.org>; Mon, 26 Jan 2026 12:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.103
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769430602; cv=none; b=hAd3jD5rmC6WriB3ZtwKPFa8PWq76Em7xajlUkFcLb49R+wh9a8GWucVClaNHhLAgTiTCn+gfFLKfi9KZR/UfP2Mhzvsm5ZOLVGc/JhDjdEIhC6CHlGvc/ZBxjmOc1xddonfXhT351ouF2OdjK00u4eux+pPmpMdqjmSVy9m5zA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769430602; c=relaxed/simple;
	bh=p0YUACVThW9nDnQT+656hsSaLVBfHbM9bcrb5O8HHII=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bq/uNSWI3UNWIOhAfOXFE2mJXObZBzTcN+c6+3QtG1vQFyTCfcqAjaGXG0x3ySBrlm2Zh6togQu7VMLyG5zplpKb3fe0Zv+z0TgdXD4l7wBghtVzo/e9gCQ7Jv/sAarSHVgxkBE93c478+Yjlf98S28kItk/uh0sU2XJYgCQEIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=a3LA62E8; arc=none smtp.client-ip=185.70.43.103
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769430599; x=1769689799;
	bh=IMz3Qpj4fn6xM9I9iFAO/yhGY3pPcR6A2Lujif+C4f4=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=a3LA62E8fDkB5UcwAslMYdY+hht4as5fhmrZWCgDuHfTGM+q+EqrS978D3VoYvkMZ
	 Kh82h7Uw+zBUB/oU9BfTtMaDh9z/GbCr/Gm9gxb0i4Ym+KCTGSclEx0pQTJAa5o3TN
	 n1fQoNqZJDpJtSbXUYrZfWAyleaEeUumZUZU01nhEq/Ye4wuk5Ez5/CJfyzVIEBouu
	 OKG+K8M0iD0LapfeIfJkDYvmjZFWNYX0N/McvAG/VkiE60gVRL9PKxT2opGGpmL2n5
	 DW+F7UxcE7DFKr0FsryLRpd5NWsIc3+ivI5LQ5ei+uAKReV3yzp8b7w2hPLZ5EEi7a
	 vb90iYWckXSbw==
Date: Mon, 26 Jan 2026 12:29:56 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 15/21] man/man2/mmap.2: HISTORY: Update POSIX appearances of m(un)map(2)
Message-ID: <57292b4f60c41b05274f5906ed0b8196cb053515.1769429341.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: f539ffa86e7788dadd3095e186b8363fc352881c
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------3ee403332fcc2480b2215f38f50958d2c0e4378485a577581016de1c0c5902c3"; charset=utf-8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4951-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,pm.me:email,pm.me:dkim,pm.me:mid]
X-Rspamd-Queue-Id: 18643884BD
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------3ee403332fcc2480b2215f38f50958d2c0e4378485a577581016de1c0c5902c3
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 15/21] man/man2/mmap.2: HISTORY: Update POSIX appearances of m(un)map(2)
Date: Mon, 26 Jan 2026 22:27:56 +1000
Message-ID: <57292b4f60c41b05274f5906ed0b8196cb053515.1769429341.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
MIME-Version: 1.0

mmap(2) and munmap(2) appeared in SUSv1.[1]  The functions were then
added to POSIX.1-1996.[2][3]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 3 "System Interfaces", pp. 398-400, 414.
[2] ISO/IEC 9945-1:1996, Section 12.2.1 "Map Process Addresses to a
Memory Object".
[3] ISO/IEC 9945-1:1996, Section 12.2.2 "Unmap Previously Mapped
Addresses".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/mmap.2 | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/man/man2/mmap.2 b/man/man2/mmap.2
index 093b0caf19c7..4e893501a947 100644
--- a/man/man2/mmap.2
+++ b/man/man2/mmap.2
@@ -737,7 +737,10 @@ .SS C library/kernel differences
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001, SVr4, 4.4BSD.
+SVr4,
+4.4BSD,
+SUSv1,
+POSIX.1-1996.
 .\" SVr4 documents additional error codes ENXIO and ENODEV.
 .\" SUSv2 documents additional error codes EMFILE and EOVERFLOW.
 .P
--=20
2.47.3


--------3ee403332fcc2480b2215f38f50958d2c0e4378485a577581016de1c0c5902c3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0Fgml3XkMJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmfDAUztPBok72Htgg+9xso1FiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAEXmAP4x8hTigBqkUE738M+p7AONSC8/Pi8QwM7un0k8
nE0NUAD8CWzkPq7pJTnXuWQLmCqesFp/r3AlkBKXO1XD+OTrngM=
=fo3Z
-----END PGP SIGNATURE-----


--------3ee403332fcc2480b2215f38f50958d2c0e4378485a577581016de1c0c5902c3--


