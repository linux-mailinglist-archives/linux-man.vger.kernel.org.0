Return-Path: <linux-man+bounces-4957-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMP/OWZfd2n8eQEAu9opvQ
	(envelope-from <linux-man+bounces-4957-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:34:46 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 973D388558
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:34:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 06EF130541D8
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 12:30:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 379783016FC;
	Mon, 26 Jan 2026 12:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="qk8NHhc8"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-43100.protonmail.ch (mail-43100.protonmail.ch [185.70.43.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3F4A46B5
	for <linux-man@vger.kernel.org>; Mon, 26 Jan 2026 12:30:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.100
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769430631; cv=none; b=PWCu+I3MCVoBMbVGoPFFTT53hzYIodGWQJ6JXo56Lb2Jgibz2P3SAWBCkneJgpELKVZj9yORsXAjz7ewNulvHDAukB4sC8JNxAYjmtct0S/aCAoicx7tDVEGezCYP+Eg08TdcrGNXzUZj7kDw5hNva2JrPJG8Mdkc3wyglLPPhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769430631; c=relaxed/simple;
	bh=rtmXVPxpCzRw+x18qaOlrwl+/3Sq58GX203G4qFroBo=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hszhqGiYN8ZlvzjIN7CtrnnRLtxBeM+cRVYKNkVXcYHkA3PU9DuyO8OURZ7pnNKz2zoKoKZloCMmy9HBwR3omJv/9+EeKwczRF/smW9gC8GHJwjjUl4m6MMNn7Dx6O7igKcSnTSYUfORnxhtcwXPddURcPrhDNvILm5fueZWL+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=qk8NHhc8; arc=none smtp.client-ip=185.70.43.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769430629; x=1769689829;
	bh=CVa2M5RdMe+cTNgBHU7oCWyPcgdkIb+yF450x+kP6hY=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=qk8NHhc8yELBjes1DgZ0oFRYyBVdi8UFcO0SBRdk30Nrb9r62I1nMnjaM9r04BJTm
	 I+fTtINsW73rxrRVBV8ynFLnPUKxij00OerNrYdaWudQ3xpSaR2l9anOxqygmfA+v9
	 g2XE9FogfVoamVI9UTBhPJgWS+xOGK67xOTTCTI8CB9Dx514mMis8OQUTHzIa9f8F6
	 lxz/xEWueTvFbrgGqC6q7SLoCoGKr8d8O6OKUaUlbUTzRVrAjXh3MXDVOpLPZeEf6Y
	 MxTOsU9YWhT4zl10jaShNkbdUbghKWzN5llhYh2+PSSzBM1Zp7ie09sgKnvAO/DYig
	 EDD87Ffx0rQoA==
Date: Mon, 26 Jan 2026 12:30:25 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 21/21] man/man2/msync.2: HISTORY: Update POSIX appearances of msync(2)
Message-ID: <d106bca86ec14c722b31febfaae0bdea6afbd8b2.1769429341.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 58db84f1751a70f22ca3de3b1946419a40768942
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------8aa243506a83a4efdf6290c2b82b125a7a1becd6bf2b63df27a78258f9f57b0d"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4957-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,pm.me:email,pm.me:dkim,pm.me:mid]
X-Rspamd-Queue-Id: 973D388558
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------8aa243506a83a4efdf6290c2b82b125a7a1becd6bf2b63df27a78258f9f57b0d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 21/21] man/man2/msync.2: HISTORY: Update POSIX appearances of msync(2)
Date: Mon, 26 Jan 2026 22:28:02 +1000
Message-ID: <d106bca86ec14c722b31febfaae0bdea6afbd8b2.1769429341.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
MIME-Version: 1.0

msync(2) appeared in SUSv1.[1]  The function was then added to
POSIX.1-1996.[2]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 3 "System Interfaces", pp. 412-413.
[2] ISO/IEC 9945-1:1996, Section 12.2.4 "Memory Object Synchronization".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/msync.2 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man/man2/msync.2 b/man/man2/msync.2
index 09b8ecb127ef..94b458041703 100644
--- a/man/man2/msync.2
+++ b/man/man2/msync.2
@@ -113,7 +113,8 @@ .SH VERSIONS
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001.
+SUSv1,
+POSIX.1-1996.
 .P
 This call was introduced in Linux 1.3.21, and then used
 .B EFAULT
--=20
2.47.3


--------8aa243506a83a4efdf6290c2b82b125a7a1becd6bf2b63df27a78258f9f57b0d
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0Fgml3XmEJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmdQSwKWsu74Zdbkq+sq3u2fFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAANVmAQDG++9KQv2Xa/tCw4PFHwfyrgY+A8PnvmysjF3X
sMKtZgEArcxRrXUTjOpH7J8FYFKIxrMBH65fq737LGPjR6V+nAo=
=PLTo
-----END PGP SIGNATURE-----


--------8aa243506a83a4efdf6290c2b82b125a7a1becd6bf2b63df27a78258f9f57b0d--


