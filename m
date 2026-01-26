Return-Path: <linux-man+bounces-4954-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uAPKJGNfd2n8eQEAu9opvQ
	(envelope-from <linux-man+bounces-4954-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:34:43 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 179F88853D
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:34:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A252E3019932
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 12:30:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8930630EF63;
	Mon, 26 Jan 2026 12:30:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="Oa1Yvtie"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-4316.protonmail.ch (mail-4316.protonmail.ch [185.70.43.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F23D315530C
	for <linux-man@vger.kernel.org>; Mon, 26 Jan 2026 12:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769430626; cv=none; b=LQzD47LgjHdYmL2ugfcHiPNnZUyo4C1b4HibHuLpra2igppRJuEN0Kq8/MFFyCZO7H5/R+/ZkXAsXbH+sR1g0ro7hjmzOrzV5eZlnUe1dS7QNJhBDLLoK65fHklViwKGn2JUaEOIqEA8OHd/IyqAMzjr/hFBoIIZsXyIxm7rKP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769430626; c=relaxed/simple;
	bh=bFT0PePtAnBLVs37p4PVzJFnx4+fZw7tMcUpBrxxMq0=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=K5vMfTWyN1H5WdixoeZzGVaGgaSro+peoMmtxDeigcgso7hoZnRHluqWjg1XVGADyF22JvCvh3OuT1Qc5qLclGhTybuvQdxd3UtFEWKtUdZOVNatie9wjJDUC+U7fKcGrBBLw80qVAy6wZ+dzDilAWAUxI1NVEMHnhvChjv4lvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=Oa1Yvtie; arc=none smtp.client-ip=185.70.43.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769430616; x=1769689816;
	bh=mrx4J0A1uMVH0I+0Jtcm2QNmYnLadYzbjg4xfEcVTHk=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=Oa1YvtieunUMAmYFT+E3K+Ad6r9lLQO1Uoqd0MtgyG7d0AvPJeiN901tmxkcLkRO6
	 OvgH2HTmlu0UjzKx2DBOSoz0wFyIcWNluoRzNvOeiy+kE052D42JPf5dm0HEcPL7WG
	 FxT6Y0Pb7+EcXamhbdzqxvjynnQcHyooxe5YeHi3c2P+YRhxE/cBw0NhX2vA8K3Qn/
	 XwZMnuWKhszoP7HR3jo4giMfyUFdGw/CCn9ON7ozziBErw7Xq50YwYJdUXP28T/IlE
	 djAMucwm9IpnBefEBsl/N1ezWHx34b900oJXC9jy96/e7ghJwGJM5bIZorz9RfgB6u
	 angbz9wCH0TZA==
Date: Mon, 26 Jan 2026 12:30:11 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 18/21] man/man2/msgctl.2: STANDARDS, HISTORY: Update POSIX appearances of msgctl(2)
Message-ID: <024ce32c9da51aa6da991b55ffcc3d72a9aaaa55.1769429341.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 77b25788532f12aba8de4bf74b3d3272b54daf06
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------2f74135f7ffa8e30f52b823aaa60722f77b1c14b9eaa91fe039474d3222c979c"; charset=utf-8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4954-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[opengroup.org:url,pm.me:email,pm.me:dkim,pm.me:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 179F88853D
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------2f74135f7ffa8e30f52b823aaa60722f77b1c14b9eaa91fe039474d3222c979c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 18/21] man/man2/msgctl.2: STANDARDS, HISTORY: Update POSIX appearances of msgctl(2)
Date: Mon, 26 Jan 2026 22:27:59 +1000
Message-ID: <024ce32c9da51aa6da991b55ffcc3d72a9aaaa55.1769429341.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
MIME-Version: 1.0

msgctl(2) appeared in SUSv1.[1]  The function was added to POSIX.1-2001
when POSIX and SUS merged, but as an XSI extension (still SUS-only).[2]
And it remains an XSI extension in POSIX.1-2024.[3]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 3 "System Interfaces", pp. 404-405.
[2] IEEE Std 1003.1-2001, Volume 2, Chapter 3 "System Interfaces", pp.
802-803.
<https://pubs.opengroup.org/onlinepubs/009604499/functions/msgctl.html>
[3] IEEE Std 1003.1-2024, Volume 2, Chapter 3 "System Interfaces", pp.
1471-1472.
<https://pubs.opengroup.org/onlinepubs/9799919799/functions/msgctl.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/msgctl.2 | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/man/man2/msgctl.2 b/man/man2/msgctl.2
index cff83924ab25..b63ed2cc2e93 100644
--- a/man/man2/msgctl.2
+++ b/man/man2/msgctl.2
@@ -378,9 +378,11 @@ .SH ERRORS
 .B CAP_SYS_RESOURCE
 capability).
 .SH STANDARDS
-POSIX.1-2024.
+POSIX.1-2024 XSI.
 .SH HISTORY
-POSIX.1-2001, SVr4.
+SVr4,
+SUSv1,
+POSIX.1-2001 XSI.
 .\" SVID does not document the EIDRM error condition.
 .P
 Various fields in the
--=20
2.47.3


--------2f74135f7ffa8e30f52b823aaa60722f77b1c14b9eaa91fe039474d3222c979c
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0Fgml3XlIJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmeo3JHlLnUIZ0QTT6BgxhkvFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAA3TAP41Dh2gRdmL7zfhKZZfZvb0jUxrzK/RyQfQl3l6
79WXPQEAsJlHl+C7F4gEEIq346foL4cFuuOP6GOtQaMJU/YYFgU=
=g8MO
-----END PGP SIGNATURE-----


--------2f74135f7ffa8e30f52b823aaa60722f77b1c14b9eaa91fe039474d3222c979c--


