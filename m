Return-Path: <linux-man+bounces-4921-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0EN4FLaLcWkLJAAAu9opvQ
	(envelope-from <linux-man+bounces-4921-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:30:14 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 3053B60F10
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:30:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5DAF7447717
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 02:26:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9EF12F0C6A;
	Thu, 22 Jan 2026 02:26:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="MzNSZDJn"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-106120.protonmail.ch (mail-106120.protonmail.ch [79.135.106.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4204822A7E4
	for <linux-man@vger.kernel.org>; Thu, 22 Jan 2026 02:26:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.120
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769048765; cv=none; b=YIhX4KMzqUwICI0d6NpIqZOBHyhwth6fU6masq/IXH891qAM+0khGyaeABgNN8R9JkRvQxFf0YD/kBU/RDq0HPf0HX+26yU3CMyzp2+WgHXhye4MZWsLenDDhKEIkJiJiq4xlZBlDQKdRz/o8juZLP5ZbMJ9d0ImR9oqCGABISo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769048765; c=relaxed/simple;
	bh=+41Ydnpl7COh1psiKNNsPp56N6PGXG6iMGW9Q4cyae4=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Q0XKQzH3jgoU+3yvhwWHy4AfR57vIZK60zrC1SR94frwLtT5unXsqKnQL7gRz0PEGLClHYt/lzYxK/fH6w6x+Na46y1/IVeCCbFbuIxsYxb8ckzfvhqJBdge5RUbK56Y454nHmb54DrduEroTC0WyCH29iyjkPQ6vPQsVwo+kgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=MzNSZDJn; arc=none smtp.client-ip=79.135.106.120
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769048761; x=1769307961;
	bh=euE1ooKCDj3xIuLaui0uU7q5eroUxNVYSRV9QOASEZs=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=MzNSZDJnFodn1ABmg0wuTgL1T3GsodEiH0AphSI4huvGSqn5SJEqPHaZJ4x12B0Ym
	 dcpuTI5mo5TEHKBElLPm9j/zvlJk6oPvGb1aez7jdzml4Z4sN8GXrY/9eEB9r2g3LH
	 d9ZXG0MQIPKN4PIG9/cQnz07zKYJ91ABkQO8zkzl6B3wFnCh6Hcyjsldqhj//h/bEn
	 dHoGrQyIPzLvj5RJhji4YHHA/e6l4mdwiUQORb15ahDwAZmcRWcQPjCXb2O4eUdZMe
	 EkHg/Ro0zBO1f74igMuBIGY+I7mqkKhQWHxqVpjLjWpxgWC5sB6XALmEa9A6yP4kvD
	 TPEv006TrhRUw==
Date: Thu, 22 Jan 2026 02:25:57 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 21/23] man/man2/getsid.2: HISTORY: Update first POSIX appearance of getsid(2)
Message-ID: <8ec811d4690abb5aa56eb3014900dd82b27dda6d.1769047228.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me> <cover.1769047228.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 5d1291e3fbe120bda2c2af90687700d932fc67d2
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------64a8deaf3b24af325db46599da6666f0b67decb23353a129ccaf68246ca6b8e4"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4921-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns,opengroup.org:url,pm.me:email,pm.me:dkim,pm.me:mid]
X-Rspamd-Queue-Id: 3053B60F10
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------64a8deaf3b24af325db46599da6666f0b67decb23353a129ccaf68246ca6b8e4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 21/23] man/man2/getsid.2: HISTORY: Update first POSIX appearance of getsid(2)
Date: Thu, 22 Jan 2026 12:24:13 +1000
Message-ID: <8ec811d4690abb5aa56eb3014900dd82b27dda6d.1769047228.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1769047228.git.sethmcmail@pm.me>
MIME-Version: 1.0

getsid(2) first appeared in SUSv1.[1]  The function was added to
POSIX.1-2001 when POSIX and SUS merged, but as an XSI extension (still
SUS-only).[2]  Then POSIX.1-2008 added it to the base specification.[3]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 3 "System Interfaces", p. 273.
[2] IEEE Std 1003.1-2001, Volume 2, Chapter 3 "System Interfaces", p.
558.
<https://pubs.opengroup.org/onlinepubs/009604499/functions/getsid.html>
[3] IEEE Std 1003.1-2008, Volume 2, Chapter 3 "System Interfaces", p.
1073.
<https://pubs.opengroup.org/onlinepubs/9699919799.2008edition/functions/get=
sid.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/getsid.2 | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/man/man2/getsid.2 b/man/man2/getsid.2
index 7688dd27c14a..944f50456e9a 100644
--- a/man/man2/getsid.2
+++ b/man/man2/getsid.2
@@ -60,8 +60,11 @@ .SH VERSIONS
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001, SVr4.
-Linux 2.0.
+SVr4,
+SUSv1,
+Linux 2.0,
+POSIX.1-2001 XSI,
+POSIX.1-2008.
 .\" Linux has this system call since Linux 1.3.44.
 .\" There is libc support since libc 5.2.19.
 .SH NOTES
--=20
2.47.3


--------64a8deaf3b24af325db46599da6666f0b67decb23353a129ccaf68246ca6b8e4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlxirQJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmeydiJyQ3EWWlub766p03uEFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAESPAP4qZHjnwNc5xVO1lvMD5pgNURwypFYEzRX3Ez5H
lmGiDwEAyKj5snBMOWzecQFsBoJSQaawH/aKm+A+KnUREHzt7QE=
=OKK4
-----END PGP SIGNATURE-----


--------64a8deaf3b24af325db46599da6666f0b67decb23353a129ccaf68246ca6b8e4--


