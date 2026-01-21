Return-Path: <linux-man+bounces-4889-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QEIJAXPCcGnzZgAAu9opvQ
	(envelope-from <linux-man+bounces-4889-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 13:11:31 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A7E56908
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 13:11:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4F415525BE4
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 12:08:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D07FA3A9DA4;
	Wed, 21 Jan 2026 12:08:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="sLb4huf/"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-24417.protonmail.ch (mail-24417.protonmail.ch [109.224.244.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BAC33CE92
	for <linux-man@vger.kernel.org>; Wed, 21 Jan 2026 12:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768997329; cv=none; b=puK0GcH45bkZJee0g5PlK/+xb9kfsO4br8v4rHX9/7TEUJbJAwONzXdyGRmr6ycpeBpFVcw3VdDfB6/gX04kYpTQ+AeLO671JBXYyW3VH/jxQv/Jzvtn1+QcXxe9xc9f1cJa8WlUnicdzabidtzwvEeDbFBHcKERZiyQysi3csk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768997329; c=relaxed/simple;
	bh=PtLF/agf33v40XmNeHbaBXbinYdgb103BYYAusK7wVY=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=dd+K8Dp+VxU883osXXNHvRw0nWxEb5wUcd53ijBkRBzJaJ8ob3JHaEu3cqgsWLZjcgE5lqE0te2YnMdyqooygORI0pzKC1lezf2sj1YGn9tQkzf7JsJyFyKmKGCNMxCv0SIa35VoeEH9ewK3/n/41yEht2Bznv6QZ4rj+vehRYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=sLb4huf/; arc=none smtp.client-ip=109.224.244.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768997326; x=1769256526;
	bh=4bcCW+qB3iCBXhsB3z1OPfsgdHrSodxz3gschYAGQF0=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=sLb4huf/AEiIbSH7mi+mCWRwhZ4tMDJyvXdav3FB37pKteOOhH3qlAz/R4YAcnRH1
	 585Y8lZ5EdqeYS2WcO6xeWZkCkNfK3NJMiYhWErgGN2t/P2zN/8LH8BipF3NDIT1ep
	 xps8RQvAVFAopu2AM2I3h7S8V1Re3iuWsIJ8kdpLdrYmYx2fJ+m9DvdwqRLNoogteU
	 lFBnxVRIJmsVsr9bccM+ie37RBJBioFOeh3wxJ6Dv1cPkZuRWtGOCjdduXbkJeuW0W
	 ia987hCMsESaSa6uzvtvNp9DuQHWvTk3IrlGhMsb3UAqqybOULiNOlmLNozfktJ55x
	 +/uuapYOINlpQ==
Date: Wed, 21 Jan 2026 12:08:42 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 22/23] man/man2/getrusage.2: HISTORY: Update first POSIX appearance of getrusage(2)
Message-ID: <b93c17918b36a5909f2db95459c406970378df24.1768995315.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768995315.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: ab4b6be46c646d1a3b85cc54a523790d1fc8710b
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------6151eaceabe2f1017a6683f04a1d1d54c1fca122a67ab1f533c19b76af131166"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4889-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[pm.me:email,pm.me:dkim,pm.me:mid,opengroup.org:url,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: D9A7E56908
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------6151eaceabe2f1017a6683f04a1d1d54c1fca122a67ab1f533c19b76af131166
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 22/23] man/man2/getrusage.2: HISTORY: Update first POSIX appearance of getrusage(2)
Date: Wed, 21 Jan 2026 22:05:57 +1000
Message-ID: <b93c17918b36a5909f2db95459c406970378df24.1768995315.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768995315.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me>
MIME-Version: 1.0

getrusage(2) first appeared in SUSv1.[1]  The function was added to
POSIX.1-2001 when POSIX and SUS merged, but as an XSI extension (still
SUS-only).[2]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 3 "System Interfaces", p. 271.
[2] IEEE Std 1003.1-2001, Volume 2, Chapter 3 "System Interfaces", pp.
554-555.
<https://pubs.opengroup.org/onlinepubs/009604499/functions/getrusage.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/getrusage.2 | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/man/man2/getrusage.2 b/man/man2/getrusage.2
index 44ec2fb469e9..a2a0a1d57707 100644
--- a/man/man2/getrusage.2
+++ b/man/man2/getrusage.2
@@ -195,7 +195,10 @@ .SH STANDARDS
 .B RUSAGE_THREAD
 is Linux-specific.
 .SH HISTORY
-POSIX.1-2001, SVr4, 4.3BSD.
+4.3BSD,
+SVr4,
+SUSv1,
+POSIX.1-2001 XSI.
 .P
 Before Linux 2.6.9, if the disposition of
 .B SIGCHLD
--=20
2.47.3


--------6151eaceabe2f1017a6683f04a1d1d54c1fca122a67ab1f533c19b76af131166
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlwwcoJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmdOebgSGDe496UVjhDouBF/FiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAF2AAP9MgQ6OxQk3Cni5NfHgk8AW5FEjsBBlcWB1bZkg
iwUOkgEAh8I59F+HcWtUbs7y0eTb5q7hNHVlo5pzJvfGMBLE7wA=
=Ybkt
-----END PGP SIGNATURE-----


--------6151eaceabe2f1017a6683f04a1d1d54c1fca122a67ab1f533c19b76af131166--


