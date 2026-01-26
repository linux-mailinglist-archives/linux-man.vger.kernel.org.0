Return-Path: <linux-man+bounces-4947-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GBS/Hjxed2n8eQEAu9opvQ
	(envelope-from <linux-man+bounces-4947-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:29:48 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB6A883D9
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:29:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 829A730066A6
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 12:29:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC4EB2F691A;
	Mon, 26 Jan 2026 12:29:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="VrdVo/l7"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-43100.protonmail.ch (mail-43100.protonmail.ch [185.70.43.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3451522E3F0
	for <linux-man@vger.kernel.org>; Mon, 26 Jan 2026 12:29:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.100
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769430584; cv=none; b=cekqnF4WEEjTvOYiNU8bHkgJgr0qqJOdpoYhWJdgrwZfxaaA0Edy1B579ZFogqBNuPZx4sWy/4mOTV/2YBrthV4nsNObehocQmh6xM2jo7IfEFs7dBDhDczoU/kIl/yLFTOX7C5u2RhLQEQeu/T2BnnJ8QvVc4CENCw4NnemjDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769430584; c=relaxed/simple;
	bh=E1HV7lwpO3zB8tVAdEwAlYBwbHzPm3j2eXcThvlDjQs=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gfRv+aCrBpBkJUJma/MiN+4bDAnpfuy5SOVoLKUutYY1QnbjT0Tp6T3/lvM4LHIXyOxQdi/NAY+RrFL7o271L5RFbI8lT6VyyNYzrPhsTLXLEulqwdP81TQZIqbsRq+s+C1l1WoTd1hz8JWQkTe+shViXiZeC2HsaSBTKnRm6aU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=VrdVo/l7; arc=none smtp.client-ip=185.70.43.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769430581; x=1769689781;
	bh=ugbDjfRJNTgCqRlNK81Ua8bD3JwMtRX0eStZOahPzuA=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=VrdVo/l7auOp2e5FF7QPRXykVQ6JY0zfmeVwra2lO0oJQo5DaBdxAL4pHwm+Lwr9k
	 D9+BGHt0TfEQ/ZfmY4KNuGIa/n0EDL+A5WOdzu0KvDQeLxY2WGfgmg10ee4patoTKG
	 xoqNEsy4zcOddTpdDVBMP4KcqqNZOKUPGmNUmmWVgpyHgpE0O5VyX14MDzfMTNwZL/
	 61x/zmbQDKF8dekbS6Y0vpvdtA4vYy/NEiSSgvBk+VzL4avUXnFzbqj2eWrX7BJoDU
	 V657gIbAd5Zjx5HSqWMAY7nSkZhhge8HO47qZM1C9jsyUO7T2qJwJstOK4UBvoFZJM
	 eU4o/OfyqCkjA==
Date: Mon, 26 Jan 2026 12:29:36 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 11/21] man/man2/mknod.2: HISTORY: Change order of mknodat(2)
Message-ID: <d3da8260e1bcd6e80b24729c805aa4f4b1497a48.1769429341.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 463215d9f4e090a0283e92fa31ea687628971e01
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------f5d4da32ee5bb0d53ee5e3c76f813eeb64254a127cebc2c99f676dee505e0681"; charset=utf-8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4947-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,pm.me:email,pm.me:dkim,pm.me:mid,gnu.org:url,opengroup.org:url]
X-Rspamd-Queue-Id: 1CB6A883D9
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------f5d4da32ee5bb0d53ee5e3c76f813eeb64254a127cebc2c99f676dee505e0681
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 11/21] man/man2/mknod.2: HISTORY: Change order of mknodat(2)
Date: Mon, 26 Jan 2026 22:27:52 +1000
Message-ID: <d3da8260e1bcd6e80b24729c805aa4f4b1497a48.1769429341.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
MIME-Version: 1.0

glibc 2.4 released on 2006-03-06.[1]  Linux 2.6.16 released on
2006-03-20.[2]  So chronologically list glibc before Linux.

POSIX.1-2008 released in 2008, adding mkdirat(2) as an XSI extension.[3]
glibc added mknodat(2) on 2005-12-03.[4]  So chronologically list glibc
(and Linux) before POSIX.

[1] McGrath, Roland (6 Mar 2006).  "GNU C Library version 2.4 release".
info-gnu (Mailing list).
<https://lists.gnu.org/archive/html/info-gnu/2006-03/msg00000.html>
[2] Linux Kernel Distribution System (20 Mar 2006).  "Linux kernel
2.6.16 released".  linux-kernel-announce (Mailing list).
<https://lore.kernel.org/linux-kernel-announce/200603200635.k2K6ZOsn003502@=
hera.kernel.org>
[3] IEEE Std 1003.1-2008, Volume 2, Chapter 3 "System Interfaces", pp.
1298-1301.
<https://pubs.opengroup.org/onlinepubs/9699919799.2008edition/functions/mkn=
od.html>
[4] Drepper, Ulrich (3 Dec 2005).  "* io/Makefile (routines): Add
mknodat, xmknodat, mkdirat, mkfifoat."  GNU C Library master sources
(Git repository).
<https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommit;h=3De186c703dc073b8be=
95d0bf893bb8ebb127fe02b>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/mknod.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man/man2/mknod.2 b/man/man2/mknod.2
index 1faa936800ad..4a9aa9f6128a 100644
--- a/man/man2/mknod.2
+++ b/man/man2/mknod.2
@@ -272,9 +272,9 @@ .SH HISTORY
 .\" EMULTIHOP, ENOLINK, or EINTR error is documented.
 .TP
 .BR mknodat ()
+glibc 2.4,
 Linux 2.6.16,
-glibc 2.4.
-POSIX.1-2008.
+POSIX.1-2008 XSI.
 .SH NOTES
 There are many infelicities in the protocol underlying NFS.
 Some of these affect
--=20
2.47.3


--------f5d4da32ee5bb0d53ee5e3c76f813eeb64254a127cebc2c99f676dee505e0681
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0Fgml3Xi8JkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmcN1KHM0D/WMDQV0nSTLiG8FiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAMXdAP9hf86SHqUyxAOzarQ4BLM97XLIpzwQ5O5lVh8u
STdZQwD+Lq45sYSuyDd7ePKqMsAofIULl/jb54uVV5+VlAwJjAk=
=Gcsj
-----END PGP SIGNATURE-----


--------f5d4da32ee5bb0d53ee5e3c76f813eeb64254a127cebc2c99f676dee505e0681--


