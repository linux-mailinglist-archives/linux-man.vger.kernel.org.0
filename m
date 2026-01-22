Return-Path: <linux-man+bounces-4918-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0OWTC7CLcWkLJAAAu9opvQ
	(envelope-from <linux-man+bounces-4918-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:30:08 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id ED16C60EF7
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:30:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 35A5E443E52
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 02:26:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90A703128BD;
	Thu, 22 Jan 2026 02:25:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="UM2Ku1TJ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-244116.protonmail.ch (mail-244116.protonmail.ch [109.224.244.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC8CA195811
	for <linux-man@vger.kernel.org>; Thu, 22 Jan 2026 02:25:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769048757; cv=none; b=Vx8swOVEWpCFhkdnKJunl3yNDuANqelHXzI8eo55XWXZEOWmEyBYMKpoO6jHrZPTg2N/2qYql7mmDrGdGb5pF3AEmIJKvs6/s9mXtVuPxyq0HVQ35kGE6UCNeFNbjSFgBaehdXqYFahT7zrL4/WOaQMAkpPr1cil++ZIl3w+cUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769048757; c=relaxed/simple;
	bh=8L7Ppx2WC0MCF3tiOdkCJKQFo8YCYGCzGqUdL/UzUoA=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=sK9uD4vwLt7z8HSMQW6B9SFhqj5iAumbV/o9HqgMYnpGtiGNqDpVOZlO3rE87Gt3vW/rckbP8JL1iJTik6BxGff4Ppqxx+icPsfezYLPXvL5oXmHnjNiPGswWwh/aSY1UYhbiMMapMiEQZGGt1jaYGWLLiE7Fx4K6tlbtDlLllU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=UM2Ku1TJ; arc=none smtp.client-ip=109.224.244.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769048747; x=1769307947;
	bh=g1T6wifUMn+jf2xKC1MovvNt2+gR1Q4+SwCCy2t7rOc=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=UM2Ku1TJaKRT1SN66zhHMkGmFvQafHDYfymRHQJRa/8CCXTLhgZ019tFfNs3JPCNw
	 Ed5NLjoWlDbbUXr05p1MMTHntzakn1yjOX9Uq1m0sFUi+lXxEygYoyF3MxoEmTkcLe
	 s6fJKFHNbh4eL5XRTlLxHtD3/EsrbuTJWLyqKdVzDUl7aThCEf+cea0b3/nBuCj4Ac
	 CVoLzallWB7Z8KlWSoBVr1vdF+j8nJXZzqcQt4v9OFMJ5EJLm0wKIo+UHZly44H8xN
	 KlIFz//Fib25aakpo9GutZUhzS/8CoVvTX6+3/u2xoNs6GLQAxKfQRvLWrarrogdOX
	 JTpR8jhdG57DA==
Date: Thu, 22 Jan 2026 02:25:44 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 18/23] man/man2/getpriority.2: HISTORY: Update first POSIX appearance of [gs]etpriority(2)
Message-ID: <6bcf34a705e3f58af4e47f0b55e383787ddaa959.1769047228.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me> <cover.1769047228.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 0b17274a3c282e9b5f9bf1afced56b16c9395f21
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------5476ac56b16715b9048d2bcf133b36b5993eb97776cc228399161a7842278748"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4918-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[opengroup.org:url,pm.me:email,pm.me:dkim,pm.me:mid,ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns]
X-Rspamd-Queue-Id: ED16C60EF7
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------5476ac56b16715b9048d2bcf133b36b5993eb97776cc228399161a7842278748
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 18/23] man/man2/getpriority.2: HISTORY: Update first POSIX appearance of [gs]etpriority(2)
Date: Thu, 22 Jan 2026 12:24:10 +1000
Message-ID: <6bcf34a705e3f58af4e47f0b55e383787ddaa959.1769047228.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1769047228.git.sethmcmail@pm.me>
MIME-Version: 1.0

getpriority(2) and setpriority(2) first appeared in SUSv1.[1]  The
functions were added to POSIX.1-2001 when POSIX and SUS merged, but as
an XSI extension (still SUS-only).[2]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 3 "System Interfaces", pp. 262-263.
[2] IEEE Std 1003.1-2001, Volume 2, Chapter 3 "System Interfaces", pp.
540-542.
<https://pubs.opengroup.org/onlinepubs/009604499/functions/getpriority.html=
>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/getpriority.2 | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/man/man2/getpriority.2 b/man/man2/getpriority.2
index 63509ee35216..b5ce79ebb654 100644
--- a/man/man2/getpriority.2
+++ b/man/man2/getpriority.2
@@ -139,8 +139,10 @@ .SH ERRORS
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001,
-SVr4, 4.4BSD (these interfaces first appeared in 4.2BSD).
+4.2BSD,
+SVr4,
+SUSv1,
+POSIX.1-2001 XSI.
 .P
 The details on the condition for
 .B EPERM
--=20
2.47.3


--------5476ac56b16715b9048d2bcf133b36b5993eb97776cc228399161a7842278748
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlxiqcJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmfgdRUvW8ca0wl+76RyMKCGFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAANVUAQDEsXDhUqyTZAo7xhUM7h9KJKTfumB41UAE3TDN
3aIyKQEA7A66rR5uDDUvObqHrwmfjrmUkzxRrOqyycU2lue5Ngc=
=hrLK
-----END PGP SIGNATURE-----


--------5476ac56b16715b9048d2bcf133b36b5993eb97776cc228399161a7842278748--


