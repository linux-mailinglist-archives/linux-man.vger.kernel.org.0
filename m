Return-Path: <linux-man+bounces-4903-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EEgbBVOLcWkLJAAAu9opvQ
	(envelope-from <linux-man+bounces-4903-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:28:35 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C461260E50
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:28:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id AA865883350
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 02:25:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CA54500949;
	Thu, 22 Jan 2026 02:24:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="ZDpJ1tdY"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-4322.protonmail.ch (mail-4322.protonmail.ch [185.70.43.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367833624DD
	for <linux-man@vger.kernel.org>; Thu, 22 Jan 2026 02:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769048687; cv=none; b=uDABcU8d3EV8tTqiHD4rg/6H+qCdBi/63mTJ0iFGSX19w7Q4FibBHeaZywcoHZ9lAApRA+LF9Wm9a6HIFSmQ4rT2m1L/FLt3MF3+Q5G3g8dpS3NkBndcGwsy2nUG3/uxf93BTQh7I28G5qwBbyhu8NBxYDieQiwLxv9XC4x8hd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769048687; c=relaxed/simple;
	bh=zHk9OO/+Hl58VTbDJRScRveVGetfNC77jNUTwqSGMHw=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Lyy+gOVq+WwG528ryovUJwLuQ6CZH2J22ADUv/9vVplSYhiVtXbRnME1FPFfgoZtfO6ewz89seH3HXyjFOmrQzrNWUH3g6pbtUX0JjBrc3ipglmSYqsx77NSPeTHH8c2vrFm7+/k7Kkau479QHOBAWZa7qGSYGV+uZAM83g0AQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=ZDpJ1tdY; arc=none smtp.client-ip=185.70.43.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769048683; x=1769307883;
	bh=zHk9OO/+Hl58VTbDJRScRveVGetfNC77jNUTwqSGMHw=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=ZDpJ1tdYW8qBDtxyVpM9/9Clrelnt3BPiapOis+L8nlmmb/9JkchusINvsy2yyQB3
	 CIUTh9Hnl7K7H2rSOnyQga5QqXbfyRlE/zFMlFDJ5j3D/8tdysfB7AGMpg6fEV+534
	 mGDt38oCuhe0MAMtK4EBPbsQ2r18WahqtLF2NE24eBy3WGtstCYr+t/cEwIJQ8fYqg
	 oHHIffMBsLMg11PAYtZ/0vG+gXN76eGO0ybAhNnC69lYUb+rqHxpB8ItXrsN66hiP9
	 kNMNC27nhNye3rIl+cSdiyFHr6rFcBPxAZJ1AaX0waovKf+g/HMejwEWEV680eof/W
	 sPByEBMx5D8ag==
Date: Thu, 22 Jan 2026 02:24:41 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 04/23] man/man2/execve.2: HISTORY: Update first POSIX appearance of execve(2)
Message-ID: <5d691ee5e6a33e81446f7113d671f813ec7d2108.1769047228.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me> <cover.1769047228.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 769257d091c9b4468fe4d424ef80c54fe4215ca2
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------2865a5c8d4b1e981de1ba42cfd2977dbbcae90c7f8e66cc3d7e753fe8962cd8c"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4903-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns]
X-Rspamd-Queue-Id: C461260E50
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------2865a5c8d4b1e981de1ba42cfd2977dbbcae90c7f8e66cc3d7e753fe8962cd8c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 04/23] man/man2/execve.2: HISTORY: Update first POSIX appearance of execve(2)
Date: Thu, 22 Jan 2026 12:23:56 +1000
Message-ID: <5d691ee5e6a33e81446f7113d671f813ec7d2108.1769047228.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1769047228.git.sethmcmail@pm.me>
MIME-Version: 1.0

execve(2) first appeared in POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Section 3.1.2 "Execute a File".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/execve.2 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man2/execve.2 b/man/man2/execve.2
index 82b6cb2381ee..d71a356d5698 100644
--- a/man/man2/execve.2
+++ b/man/man2/execve.2
@@ -616,7 +616,9 @@ .SS Interpreter scripts
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001, SVr4, 4.3BSD.
+4.3BSD,
+SVr4,
+POSIX.1-1988.
 .\" SVr4 documents additional error
 .\" conditions EAGAIN, EINTR, ELIBACC, ENOLINK, EMULTIHOP; POSIX does not
 .\" document ETXTBSY, EPERM, EFAULT, ELOOP, EIO, ENFILE, EMFILE, EINVAL,
--=20
2.47.3


--------2865a5c8d4b1e981de1ba42cfd2977dbbcae90c7f8e66cc3d7e753fe8962cd8c
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlximgJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmfdHx3u15By04OMw5zBJnYRFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAACZMAPsEZBd3JBpDIA/4wR9E+eXInAw6ih0cwci1PSNW
UGbZKwD6ApnGwzct0OeCRrJTCJvZfquEekoIJL5Hea+qBW7EXAQ=
=yUnc
-----END PGP SIGNATURE-----


--------2865a5c8d4b1e981de1ba42cfd2977dbbcae90c7f8e66cc3d7e753fe8962cd8c--


