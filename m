Return-Path: <linux-man+bounces-4955-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBu3N2Rfd2n8eQEAu9opvQ
	(envelope-from <linux-man+bounces-4955-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:34:44 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C518854A
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:34:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C6C9D3053A9F
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 12:30:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36483330669;
	Mon, 26 Jan 2026 12:30:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="ISt1s8Tn"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-4316.protonmail.ch (mail-4316.protonmail.ch [185.70.43.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C5C228D84F
	for <linux-man@vger.kernel.org>; Mon, 26 Jan 2026 12:30:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769430627; cv=none; b=eqgdreWlXeCs3q7vnw0kIslH879WuGvC24D9YfAPHA9j85fojM56oySTSXyS3lsubv3W+V2BjCOUClMeCXMgeAok3BFisN7P0L0lgwDa9OiBWmX3BgGoVa7BzubXyZBsMg9qOJohv+fCRoFn8jXsfIiyE+p39rHKjKmRkt/Gt9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769430627; c=relaxed/simple;
	bh=qZs9ZwOswy6S4zogEDMINu0aEqrL6cNCOuy0l0Nzv0g=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=TdiYni7QujX+C68TisYpst12YYJLlroAh97VKRDWYQmRxT1BLJubNv/K22Xyx/Pt2KxV0K+9r5EHLey9hVHQ9P1Z3p4kQyYOIm6NdtclvCIKhFhUGC6QlObWPoqqTm/PQNrVhV/efTwcSDmobNLdnflfwXBIvSpHS6AdiNy6l9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=ISt1s8Tn; arc=none smtp.client-ip=185.70.43.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769430623; x=1769689823;
	bh=IX92vLx7Dyq0U6X9q6gZahKkISRECkZ10L8Rej9TAqY=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=ISt1s8Tns50Z5tXTUNC3IBCdOzCWw8eAVAX1PrfJqxWp792NCrRqN3AKzslPTWmNR
	 gC8dpT/K/8i5gzgB+/AFp+FL9+WWh4nI+rDfl1dcJLPCGq4R+V9VQJaoENshJx04Ex
	 fQNGIkz4I/S7JJSJVD6T916yDXjP+80p3WfNwcrU56kjYtKqqaA/GO06b74dRSEzF2
	 bvK/J01WoKP5grz4lHEudr4UEiCgZhp3GZyMvFtUeskiC3T3vmqQXcmb+bZ/e5a6wU
	 O90WqzpjnHFEbK+aM5rmJV8o6Hh35exZrcHYwWTjGIGmMqZvYqEeAWw+CuqGD8EFFU
	 XvDTYE0rZM6Ig==
Date: Mon, 26 Jan 2026 12:30:21 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 20/21] man/man2/msgop.2: STANDARDS, HISTORY: Update POSIX appearances of msg{rcv,snd}(2)
Message-ID: <86e7c24b14286fe05108c623d61d93106f9c9209.1769429341.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: e5fbc0f9bfc4bdaa95d020b8099d98f6bae0d3a2
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------150b3e52c63cf69f50f3b6a828fd0f6e3054a1873eccac0a53309d6c45e2ed10"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4955-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[opengroup.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,pm.me:email,pm.me:dkim,pm.me:mid]
X-Rspamd-Queue-Id: 83C518854A
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------150b3e52c63cf69f50f3b6a828fd0f6e3054a1873eccac0a53309d6c45e2ed10
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 20/21] man/man2/msgop.2: STANDARDS, HISTORY: Update POSIX appearances of msg{rcv,snd}(2)
Date: Mon, 26 Jan 2026 22:28:01 +1000
Message-ID: <86e7c24b14286fe05108c623d61d93106f9c9209.1769429341.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
MIME-Version: 1.0

msgrcv(2) and msgsnd(2) appeared in SUSv1.[1]  The functions were added
to POSIX.1-2001 when POSIX and SUS merged, but as an XSI extension
(still SUS-only).[2][3]  And they remain as an XSI extension in
POSIX.1-2024.[4][5]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 3 "System Interfaces", pp. 408-411.
[2] IEEE Std 1003.1-2001, Volume 2, Chapter 3 "System Interfaces", pp.
806-808.
<https://pubs.opengroup.org/onlinepubs/009604499/functions/msgrcv.html>
[3] IEEE Std 1003.1-2001, Volume 2, Chapter 3 "System Interfaces", pp.
809-811.
<https://pubs.opengroup.org/onlinepubs/009604499/functions/msgsnd.html>
[4] IEEE Std 1003.1-2024, Volume 2, Chapter 3 "System Interfaces", pp.
1475-1477.
<https://pubs.opengroup.org/onlinepubs/9799919799/functions/msgrcv.html>
[5] IEEE Std 1003.1-2024, Volume 2, Chapter 3 "System Interfaces", pp.
1478-1480.
<https://pubs.opengroup.org/onlinepubs/9799919799/functions/msgsnd.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/msgop.2 | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/man/man2/msgop.2 b/man/man2/msgop.2
index 4a5070f05a57..80d557024a77 100644
--- a/man/man2/msgop.2
+++ b/man/man2/msgop.2
@@ -440,7 +440,7 @@ .SH ERRORS
 and this kernel was configured without
 .BR CONFIG_CHECKPOINT_RESTORE .
 .SH STANDARDS
-POSIX.1-2024.
+POSIX.1-2024 XSI.
 .P
 The
 .B MSG_EXCEPT
@@ -452,7 +452,9 @@ .SH STANDARDS
 .\" MSG_COPY since glibc 2.18
 feature test macro.
 .SH HISTORY
-POSIX.1-2001, SVr4.
+SVr4,
+SUSv1,
+POSIX.1-2001 XSI.
 .P
 The
 .I msgp
--=20
2.47.3


--------150b3e52c63cf69f50f3b6a828fd0f6e3054a1873eccac0a53309d6c45e2ed10
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0Fgml3XlwJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmcBl0d1kXgr5M9G7APV8FIUFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAE+pAP9kUHNkU3dMagvY1W5xi35Lk09nEZYAzJ8slq+y
m0ER4AEAqWVM+bIiJsDnonjGyHdwdG5O7JatPsBtYMVVM5J1Aw4=
=Bbmq
-----END PGP SIGNATURE-----


--------150b3e52c63cf69f50f3b6a828fd0f6e3054a1873eccac0a53309d6c45e2ed10--


