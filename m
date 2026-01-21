Return-Path: <linux-man+bounces-4881-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4DN3LkXCcGnzZgAAu9opvQ
	(envelope-from <linux-man+bounces-4881-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 13:10:45 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7061B568D3
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 13:10:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3AFF1586CBD
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 12:08:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01E283B8BA2;
	Wed, 21 Jan 2026 12:08:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="J8zjZ2iE"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-244122.protonmail.ch (mail-244122.protonmail.ch [109.224.244.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BA532E698
	for <linux-man@vger.kernel.org>; Wed, 21 Jan 2026 12:08:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768997288; cv=none; b=brF7BU61RMVt6tlpBYnMJ1yY2IElY8fiqX2FHGUDK6pARIPvx9dref0wBcLo0njjISKq+0+jrYGoKW+fUFbKAK8/UV/qVWHVI1vrZbTClHc1e6GL4bm5HaZXIddEOUHgk4KYAEfErj+26zEOd4RbPXucArpFddm4H/vdXZ8i0zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768997288; c=relaxed/simple;
	bh=1Z9HdACWsRfOp5/ahjm/OvXDEQOKuLk+L+r3KJsGH6o=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Edmp2TlLKt2dkfD4zVqD5vlEWMYM/O4XaaFjj6LRIE+RdwvQe36Ckc8tdYcCMkhs4VqTNSfqddGa9PiJtAruB0ZSIV6uRtzDtG9SOnTOO8f8gI9qLa10wOIjCud5UD7TzfnJF9OeDKSUvZc6s8BnL02vFrQDTJCCGtHY7YN+o2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=J8zjZ2iE; arc=none smtp.client-ip=109.224.244.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768997282; x=1769256482;
	bh=1Z9HdACWsRfOp5/ahjm/OvXDEQOKuLk+L+r3KJsGH6o=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=J8zjZ2iEeBx0KE0peq8g+4rWM8TRtiTdDquI+jg8OOJ1s68SFQ4jDDozV/vG9ksaO
	 J3D18a4nmFHecE9ektpAJs9mTYxL8/DnR3M0urWS69GvV/UPo8drN+EBuYtxzggqP1
	 JLDT8Lv5Yuk1NhfIdMwEcdfyLXYh0/b8cXEWJ4OSUvtw3GfZP/pvpWm3WZbcHC8W1V
	 mBfoZy62hnhH4s0umWfvlxDz9PrtnLUJaIdcaHZRQTVWUSVHH9Tpfa2CRyB0DYHVUi
	 1CN4k5yH6Pm5KSuSl9CfU+1WFCLV73xGcUc9yiJqTuThn+NpDwrUYG+e6vRk+SkyGE
	 wp4b8SqM3eHhQ==
Date: Wed, 21 Jan 2026 12:07:58 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 14/23] man/man2/gethostname.2: HISTORY: Split gethostname(2) and sethostname(2)
Message-ID: <0097b249c950a98a781457368af8c3b933a8262e.1768995315.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768995315.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 6a939dcde4a12851d11052ed11d6ac5601947b31
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------235f84c7f3ea00de51ca1caeb423cb28ff29e53f92890dfc23f5eb2c59e07e07"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4881-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[pm.me:email,pm.me:dkim,pm.me:mid,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,opengroup.org:url]
X-Rspamd-Queue-Id: 7061B568D3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------235f84c7f3ea00de51ca1caeb423cb28ff29e53f92890dfc23f5eb2c59e07e07
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 14/23] man/man2/gethostname.2: HISTORY: Split gethostname(2) and sethostname(2)
Date: Wed, 21 Jan 2026 22:05:49 +1000
Message-ID: <0097b249c950a98a781457368af8c3b933a8262e.1768995315.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768995315.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me>
MIME-Version: 1.0

gethostname(2) first appeared in POSIX.1-2001.[1]

[1] IEEE Std 1003.1-2001, Volume 2, Chapter 3 "System Interfaces", p.
516.
<https://pubs.opengroup.org/onlinepubs/009604499/functions/gethostname.html=
>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/gethostname.2 | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/man/man2/gethostname.2 b/man/man2/gethostname.2
index d657bfd7fc0d..1a91d45b0e9e 100644
--- a/man/man2/gethostname.2
+++ b/man/man2/gethostname.2
@@ -145,11 +145,15 @@ .SH STANDARDS
 .BR sethostname ()
 None.
 .SH HISTORY
-SVr4, 4.4BSD (these interfaces first appeared in 4.2BSD).
-POSIX.1 specifies
+.TP
 .BR gethostname ()
-but not
-.BR sethostname ().
+SVr4,
+4.4BSD (first appeared in 4.2BSD),
+POSIX.1-2001.
+.TP
+.BR sethostname ()
+SVr4,
+4.4BSD (first appeared in 4.2BSD).
 .P
 Versions of glibc before glibc 2.2
 .\" At least glibc 2.0 and glibc 2.1, older versions not checked
--=20
2.47.3


--------235f84c7f3ea00de51ca1caeb423cb28ff29e53f92890dfc23f5eb2c59e07e07
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlwwZ4JkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmep9KKZJn7DmlHRuy4/H9E5FiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAACsjAQDUqE5N8rDDDRZ/CPqcD6lLNMuqqD5gSSgzwNn+
ocid6AEAs8h3+3zeeMiQmg62q710jCHEFtjOnZHZCYrPfJZnQAo=
=7U8j
-----END PGP SIGNATURE-----


--------235f84c7f3ea00de51ca1caeb423cb28ff29e53f92890dfc23f5eb2c59e07e07--


