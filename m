Return-Path: <linux-man+bounces-4922-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gF6gHLeLcWkLJAAAu9opvQ
	(envelope-from <linux-man+bounces-4922-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:30:15 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 522D160F1A
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:30:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 216DA448E7E
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 02:26:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4047B3128BD;
	Thu, 22 Jan 2026 02:26:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="p69jZlns"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-24418.protonmail.ch (mail-24418.protonmail.ch [109.224.244.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F5E72BE639
	for <linux-man@vger.kernel.org>; Thu, 22 Jan 2026 02:26:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769048769; cv=none; b=bJ2zkKWjY6GXQBX8v/+Sd22VkPj38YNP19EWgTlu2GcjFt8h9FpwFQTYpP+z/nAZ5WtNvznSAmISKZnizR05skX/FSwb0Z4Kzt1PaD2YwXwnSWex1K3Y+24a2WX2GrjkIUwKl3B14Mtp2wd6etrqzKMRFdMH2/V4OZ4UKCYyNk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769048769; c=relaxed/simple;
	bh=AwPxhOyyMLww1zklQOF3JUxM3rd46bVvNFKzYogTmYA=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=lDkkp7u3AJ0w9YvPpUU+fUac7s4mJevpaThKTJfTVLlg+r0LGTO9D/4J8r3D3MVZm+U26TANvNJqTUb+3V2QkzF3bEvGgb+XljSFyTTSixED6Bp4BcG2P+csobfEGkgryhG66Qpy9G+ig1/47EtQz/csTNSWEjvqF4abkbermGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=p69jZlns; arc=none smtp.client-ip=109.224.244.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769048763; x=1769307963;
	bh=lVzkqZ5KVG21Jv4ynCCJ1+lzWJY4lP7s1ORnaCEB6cs=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=p69jZlnsvH52VbU8SGx3ek3Xyl+MQzqA1yeFG0vFP7+RV3QjsyLNR818QeIR1/KEk
	 HWnMDdjF8LJ8/wOKcbtJtXHUf06qqJXt7m3tUv87pfipVwEOQKjmsRhKV0rbiy0jjy
	 jKN24SI1Pg4u4hxs3GACAXAXlolP8HS3d9HSMakTv7NFnUEXfJ7NfsIoYDDwfxRG+R
	 JIq3ShEoxeAJaQANwlYIl6cnVZ9LwoUVG3GZVV+qj/cBDYMrb2DmpcMnKOpw4jgLWp
	 V1S+W4Dz91wF7fH/JYDPeJ++6b5PjzogCkwYLz47vJW7c0xVkql8IFn4zV7LjMBGg1
	 2Hu404vAHyeaA==
Date: Thu, 22 Jan 2026 02:26:01 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 22/23] man/man2/getrusage.2: HISTORY: Update first POSIX appearance of getrusage(2)
Message-ID: <3efc2800fc16289dfabb65c2715e66efb094e367.1769047228.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me> <cover.1769047228.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 45c6e31e29ab84eda6418271904147c8f8240e3f
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------9b0d470926b47e7e3053ef7fe9ddf1b1fa96ed78cc63989dc4382ee08f6f1547"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4922-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[pm.me:email,pm.me:dkim,pm.me:mid,opengroup.org:url,ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns]
X-Rspamd-Queue-Id: 522D160F1A
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------9b0d470926b47e7e3053ef7fe9ddf1b1fa96ed78cc63989dc4382ee08f6f1547
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 22/23] man/man2/getrusage.2: HISTORY: Update first POSIX appearance of getrusage(2)
Date: Thu, 22 Jan 2026 12:24:14 +1000
Message-ID: <3efc2800fc16289dfabb65c2715e66efb094e367.1769047228.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1769047228.git.sethmcmail@pm.me>
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


--------9b0d470926b47e7e3053ef7fe9ddf1b1fa96ed78cc63989dc4382ee08f6f1547
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlxirgJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmfVvlx6bWYHggOhwkCdJ9zjFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAANFZAQCvJuw6Gj9U6nN7UMkEbkeTbKcjXYXdegnxJ+38
iC1tSwEA4LT55dA2LTgcd+MR4JPuCWNv+4Xdsv9OGZtu1L/BKws=
=n20L
-----END PGP SIGNATURE-----


--------9b0d470926b47e7e3053ef7fe9ddf1b1fa96ed78cc63989dc4382ee08f6f1547--


