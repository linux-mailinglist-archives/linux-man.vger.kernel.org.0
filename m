Return-Path: <linux-man+bounces-4910-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MFbjHX6LcWkLJAAAu9opvQ
	(envelope-from <linux-man+bounces-4910-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:29:18 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 66AA060E93
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:29:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B3D9C463573
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 02:25:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69CA03382C9;
	Thu, 22 Jan 2026 02:25:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="RjqvZuH3"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-106119.protonmail.ch (mail-106119.protonmail.ch [79.135.106.119])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B70C34F47C
	for <linux-man@vger.kernel.org>; Thu, 22 Jan 2026 02:25:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.119
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769048717; cv=none; b=Q464KX7L2PP8J1mTG/NmLrBa38sS7vZRoyZRJQfHIlZpfUqDC9c7w2mkgLenCmWkqeS05SRLzi3JZerHoz7Ku47/LOO5JEsfvwDYP2mFl92VRCqxf2g+yon/9v4Sn2Sfg/3XbVwj0HprEJuK/toZpkZ+Kw1W3z8rCCauQJHQvpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769048717; c=relaxed/simple;
	bh=G44NnHQET0lIlEwVYUz9wvoFjOhKvFAgGeHPwPGlneo=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=OHEvTYCGuAnKwDl+oVbaaGBoBXjwuONlcll/IizRV0Ee2Po3kFEOCseinFLRAoeJwi9dVolHwCorjdCe++9SCKubbl/iNTMV9qKYPoi5LkBGyi275M1TTi59EMEVY0oKQlQaziqoqQcDuwgI4XWUCVOtW05e+cyh9VkCogMEXaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=RjqvZuH3; arc=none smtp.client-ip=79.135.106.119
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769048712; x=1769307912;
	bh=UXTHAgjWeoKaguGmswZGY+zenoT/g5O2ap4FS0T9IWA=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=RjqvZuH3r8lAsA9JkZ413Q/JdOZVl4oBormYZC9QB0YdhMfJhUxzZxfDPob4KTQ47
	 KjSJJZYjON2ZSxOeVuflxHpXcNQ7Zc5ZM6pY56rBqGkcMD+0SJzbkntpmUE3SMm6fJ
	 U19jEds3o6RuupWkuQLYLYoYC9M4MzanrFRHgE0QEKmgv+NtBiydCznE3kkw84Xf6E
	 wTYGZHKN0AICqZ9S6gT78e9NorM5JhPHf4SNUW27JTdPa35yRKZzTnM8UtGnIEZdmB
	 QyNdz4bnJrOFSU7MnLY7JZBJm3zxWdw0OADxQX/m2nxvH5FK4bXTNcEPMYpCi/fVVX
	 uI39+mXRLvI2g==
Date: Thu, 22 Jan 2026 02:25:08 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 10/23] man/man2/fsync.2: HISTORY: Update first POSIX appearance of fsync(2)
Message-ID: <ab31e843c470a424885b91d6f94f2a89b291135c.1769047228.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me> <cover.1769047228.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: c6e8dbdac915a92d2c8064708d5d85df28e8d44b
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------ba3c1f8f6416c12e41a1be2acbbf535e6553f5522b319edb5d546303eaf18db5"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4910-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns,pm.me:email,pm.me:dkim,pm.me:mid]
X-Rspamd-Queue-Id: 66AA060E93
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------ba3c1f8f6416c12e41a1be2acbbf535e6553f5522b319edb5d546303eaf18db5
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 10/23] man/man2/fsync.2: HISTORY: Update first POSIX appearance of fsync(2)
Date: Thu, 22 Jan 2026 12:24:02 +1000
Message-ID: <ab31e843c470a424885b91d6f94f2a89b291135c.1769047228.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1769047228.git.sethmcmail@pm.me>
MIME-Version: 1.0

fsync(2) first appeared in SUSv1.[1]  The function was then added to
POSIX.1-1996.[2]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 3 "System Interfaces", p. 214.
[2] ISO/IEC 9945-1:1996, Section 6.6.1 "Synchronize the State of a
File".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/fsync.2 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man/man2/fsync.2 b/man/man2/fsync.2
index 53c485135d96..d67f3bd0e2ae 100644
--- a/man/man2/fsync.2
+++ b/man/man2/fsync.2
@@ -154,7 +154,8 @@ .SH HISTORY
 .TP
 .BR fsync ()
 4.2BSD,
-POSIX.1-2001.
+SUSv1,
+POSIX.1-1996.
 .TP
 .BR fdatasync ()
 POSIX.1-2001.
--=20
2.47.3


--------ba3c1f8f6416c12e41a1be2acbbf535e6553f5522b319edb5d546303eaf18db5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlxioMJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmft3FQQMfHA55zQcu76U8MFFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAOZTAPwKyvKWwStslPr2CCqnjLTNL9zBu+u8vUJpGiyx
oki9aQEA4H1ZmdLtkanYIQ1iYeOCtXYaVnEvq11Nx2klXSfeogI=
=3Qu7
-----END PGP SIGNATURE-----


--------ba3c1f8f6416c12e41a1be2acbbf535e6553f5522b319edb5d546303eaf18db5--


