Return-Path: <linux-man+bounces-4923-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eHrhHJmLcWkLJAAAu9opvQ
	(envelope-from <linux-man+bounces-4923-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:29:45 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D7660ECD
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:29:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 41AB88484B7
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 02:26:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0822E2C08B0;
	Thu, 22 Jan 2026 02:26:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="Gu0sNBz9"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-24418.protonmail.ch (mail-24418.protonmail.ch [109.224.244.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5950A22301
	for <linux-man@vger.kernel.org>; Thu, 22 Jan 2026 02:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769048772; cv=none; b=NvJhdSAq+VpqiOUtqfxynaFuHtu1HhpenSbmH3ndvW3HRhHkWVWSRkpwzpzW7BzC5enfURXQ+b/XI3ahtA3tuSGbiABBlhVEsje2QWrtb5DnGWC/iGCRti6agbaYLdYjqWKUOcZ5Rg5zllmlpqY/sBZfyS0YVXCzN0fB/tdUYfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769048772; c=relaxed/simple;
	bh=VDyEaxWZHvArI+i2KzknfkD+v6IqBPq3ftnrdgMdBtw=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=WWOBw+YIvmFLZYQ0cWDKeLP0bDR6RWAwiBg2lSWpGLBzmFQa3UuGmJ9eX1nBwQ+9T4FBUpZjILlA7c38H7imnCtLDEP4QT8dUY863lqDFiCINlEqgd9+9XJjthDiFQTXfWWHB6CNDtlGFgQxZ7vWtMQfIEWCqDIlf7bBNsCp+10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=Gu0sNBz9; arc=none smtp.client-ip=109.224.244.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769048769; x=1769307969;
	bh=571eQFyXFpHHqkZtEPKcR0ZbD2mcnTdblbuQ3Js6V8Y=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=Gu0sNBz9NZnHjjgbSTILAZHIvDZfU0wJ+nxzrY4bZnHMBKuo2D7yfSZW0f/s9rd6/
	 Orqt+diMNVdnDz+ZxYdql7U/8tu0zZnLkPb1kz5+JoEPHOsA7qVdMb9QcrL2tJ0iPP
	 afxbtVWEXCayaRCHejg45lN258z47xTCKnaDmk3AU6dk/2UBAPAWdr+pl/m05o1Zg+
	 dieNNtl72GZpFCGEwVfqSIo8xw9TAmSJE1+cjRYDGryI28AmYzLpsP2hAIkNJmi5YX
	 TBVJYwHlMiYaNoaYBcJ0q5Q3qcqPX4MiW0a/vTLvN89jRF9mDDzpqjc5o22UenuoYd
	 daXj3XtpcM54Q==
Date: Thu, 22 Jan 2026 02:26:05 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 23/23] man/man2/gettimeofday.2: HISTORY: Update first POSIX appearance of gettimeofday(2)
Message-ID: <37278a0497bdc28cbeaef156d36d66530381bd6c.1769047228.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me> <cover.1769047228.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 636b753a5201231e46c55dcb403c2fa489c2887b
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------042bf90fde239a508479fa8f2687a73be68deb4bdad29fc435fbcd46dcb75c1a"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4923-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[opengroup.org:url,pm.me:email,pm.me:dkim,pm.me:mid,dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns]
X-Rspamd-Queue-Id: E3D7660ECD
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------042bf90fde239a508479fa8f2687a73be68deb4bdad29fc435fbcd46dcb75c1a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 23/23] man/man2/gettimeofday.2: HISTORY: Update first POSIX appearance of gettimeofday(2)
Date: Thu, 22 Jan 2026 12:24:15 +1000
Message-ID: <37278a0497bdc28cbeaef156d36d66530381bd6c.1769047228.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1769047228.git.sethmcmail@pm.me>
MIME-Version: 1.0

gettimeofday(2) first appeared in SUSv1.[1]  The function was added to
POSIX.1-2001 when POSIX and SUS merged, but as an XSI extension (still
SUS-only).[2]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 3 "System Interfaces", p. 275.
[2] IEEE Std 1003.1-2001, Volume 2, Chapter 3 "System Interfaces", p.
567.
<https://pubs.opengroup.org/onlinepubs/009604499/functions/gettimeofday.htm=
l>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/gettimeofday.2 | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/man/man2/gettimeofday.2 b/man/man2/gettimeofday.2
index 8310f9c784bf..7dbd25a2666f 100644
--- a/man/man2/gettimeofday.2
+++ b/man/man2/gettimeofday.2
@@ -177,12 +177,13 @@ .SS C library/kernel differences
 .SH STANDARDS
 None.
 .SH HISTORY
-SVr4, 4.3BSD.
-POSIX.1-2001 described
+4.3BSD,
+SVr4.
+SUSv1 and POSIX.1-2001 XSI described
 .BR gettimeofday ()
 but not
 .BR settimeofday ().
-POSIX.1-2008 marked
+POSIX.1-2008 XSI marked
 .BR gettimeofday ()
 as obsolete, recommending the use of
 .BR clock_gettime (2)
--=20
2.47.3


--------042bf90fde239a508479fa8f2687a73be68deb4bdad29fc435fbcd46dcb75c1a
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlxirwJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmeb52Rhv5Wj7o22uzDnhX6HFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAOdcAQDvYQaKZdvwb+k3O723pjSy/fDS7LHUbnhdSeIu
goTFiwD+PGULaLH82RyIkxc+k5EMzD4NjQIpkBKmMaWx50h97Qo=
=UmKE
-----END PGP SIGNATURE-----


--------042bf90fde239a508479fa8f2687a73be68deb4bdad29fc435fbcd46dcb75c1a--


