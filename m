Return-Path: <linux-man+bounces-4882-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CHzmF2LCcGnzZgAAu9opvQ
	(envelope-from <linux-man+bounces-4882-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 13:11:14 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A19568F1
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 13:11:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C5245561C65
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 12:08:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC1D741B341;
	Wed, 21 Jan 2026 12:08:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="rbkFOyvL"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-106121.protonmail.ch (mail-106121.protonmail.ch [79.135.106.121])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D869840FD9F
	for <linux-man@vger.kernel.org>; Wed, 21 Jan 2026 12:08:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.121
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768997292; cv=none; b=qioIJd6mzWsdpG4fyVFiIqDo9h4z7i9yLa0QGf07nPi0G/27g/Z9a3jyNlhIlkaHr2GQ1nXG3f25i5XzQpvEU/I3y0YUWoS7l7PTuo0tzv71zTWrELnWAHumKO8AZRlmJ2Xw6cw0HGxNRvP31oUNtrWfr9THMUOQ02jC+3LpNas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768997292; c=relaxed/simple;
	bh=eUI5e4N0EkBzhgaaUEZo+60OTbzdV5PC20KvfAAHdCA=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=EaAy8LWLe0VZYM+eEq+WsfRbBdAx0FWbrlmrzRmU8pL35RVeqk2/G6qhZ0MQjmcceg0ArMEqIdxug7YHV0Xn9L6d2GOt+JHMBZ8XdSTYjEpbhU5MGHzpdklLWkv/G1zLYyC45Z63XGd3a4ztq1VJHVOe/BT1o6NjiebpXdljTDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=rbkFOyvL; arc=none smtp.client-ip=79.135.106.121
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768997288; x=1769256488;
	bh=eUI5e4N0EkBzhgaaUEZo+60OTbzdV5PC20KvfAAHdCA=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=rbkFOyvLcQJEJ3YeMxsv2MkT6gFZYqt11R9cAsZV7jEjmbDIC38Uc7t+7HKLF4SAk
	 k7KmJSWqsn1doTinDD9Z/gkmd6f3tZjDNcDbEF6ZjNVOzigRhEEmxdq2z7N95R+ZgM
	 WqwY/eUmSkUk8Vp9Jp7d6wYXqFNNuEXzoRozNhTblQkc2R607GOF/URmRTghMqOqga
	 tSe/cXReHhFqhVPWHlQp31fkWtNHaGrgf+dRG8vSecZLOxdD/2hhG4xZcDAWrl7Cs+
	 m+xM40sIvfPfWr14e1YoJkyQikptg7f5qTD+ddvpaUzoldoyvEFj7Guv5AUKPw/o5U
	 KLKD9REeGP9Gw==
Date: Wed, 21 Jan 2026 12:08:04 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 15/23] man/man2/getitimer.2: HISTORY: Update first SUS appearance of [gs]etitimer(2)
Message-ID: <824605c82a14aeb934e5ac807e92d559729761d4.1768995315.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768995315.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 1707ce62e2c589da7260d3d09f5e3f45f289f397
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------ce26f090f6cb060088cd6f40b7342f05d20f797ab18a6067d2b1cff7998d4c67"; charset=utf-8
X-Spamd-Result: default: False [-3.06 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TAGGED_FROM(0.00)[bounces-4882-lists,linux-man=lfdr.de];
	DMARC_POLICY_ALLOW(0.00)[pm.me,quarantine];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_ATTACHMENT(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sethmcmail@pm.me,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[pm.me:+];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pm.me:email,pm.me:dkim,pm.me:mid,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 09A19568F1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------ce26f090f6cb060088cd6f40b7342f05d20f797ab18a6067d2b1cff7998d4c67
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 15/23] man/man2/getitimer.2: HISTORY: Update first SUS appearance of [gs]etitimer(2)
Date: Wed, 21 Jan 2026 22:05:50 +1000
Message-ID: <824605c82a14aeb934e5ac807e92d559729761d4.1768995315.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768995315.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me>
MIME-Version: 1.0

getitimer(2) and setitimer(2) first appeared in SUSv1.[1]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 3 "System Interfaces", pp. 244-245.

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/getitimer.2 | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/man/man2/getitimer.2 b/man/man2/getitimer.2
index 6f35fa130492..72ba82bac9d9 100644
--- a/man/man2/getitimer.2
+++ b/man/man2/getitimer.2
@@ -181,7 +181,10 @@ .SH VERSIONS
 .SH STANDARDS
 None.
 .SH HISTORY
-POSIX.1-2001, SVr4, 4.4BSD (this call first appeared in 4.2BSD).
+SVr4,
+4.4BSD (first appeared in 4.2BSD),
+SUSv1,
+POSIX.1-2001.
 POSIX.1-2008 marked
 .BR getitimer ()
 and
--=20
2.47.3


--------ce26f090f6cb060088cd6f40b7342f05d20f797ab18a6067d2b1cff7998d4c67
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlwwaMJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmcjYiTHpv4+hRv0LdvBnQepFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAHWwAP486xFgsoTy+SzKqM8NgQ2CvmWoH9KoGoQh0Pib
+vpbdAEAl7WwqNF366W+xs79qJitY5rJEaP5bMbQxGgIxDbqMgk=
=1ffb
-----END PGP SIGNATURE-----


--------ce26f090f6cb060088cd6f40b7342f05d20f797ab18a6067d2b1cff7998d4c67--


