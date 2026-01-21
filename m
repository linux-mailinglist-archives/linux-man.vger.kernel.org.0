Return-Path: <linux-man+bounces-4888-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aFPWCXLCcGkNZwAAu9opvQ
	(envelope-from <linux-man+bounces-4888-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 13:11:30 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id E17F156901
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 13:11:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9AA754E2648
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 12:08:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54CDC3ACA6B;
	Wed, 21 Jan 2026 12:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="hmiVYU5i"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-10629.protonmail.ch (mail-10629.protonmail.ch [79.135.106.29])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFB4A2D7DF6
	for <linux-man@vger.kernel.org>; Wed, 21 Jan 2026 12:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.29
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768997328; cv=none; b=YI86SEy+nzADfEGI5L5vI6xoUVB07dRoXwsRhJaCDXp7E6qiRvtHeTvA5XInYJvKe2qy3mgkDSKJWmWbCiKx0JVli6YDXCNk/B2DqHO1R3Ex136GKSDDKy0Mf82YS0sZy7chylcQa24hMUzDJB2a7JzfnosLnXRYPmjpNdm9Pkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768997328; c=relaxed/simple;
	bh=M6dJF866P0UQ/2QvgKvi6ZOEZjP6izEK7DkBVTQKO9k=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pHbe539MMFsXTa3l5syoz/eU+GeYxPQt+keycnwxstWbrgKUkIPCCjTQ+1wnQZK/glIaSONHL9vKiZEcdiXndyWZOoW7Vwsarvn6fEnKpNB3Zi2B31B1sLD8w+pjhUOVwX2Yz7oVEq/DDJ3ns4IyRb4HJ3TlmbBawfcuHX5Ym4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=hmiVYU5i; arc=none smtp.client-ip=79.135.106.29
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768997318; x=1769256518;
	bh=iZgebvurkFdTLd7byEXyKROj/IZGuuu74IHdtd4srao=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=hmiVYU5i08K6Uvg29/WSKXQinix/uGQYEDzLnJEvrrv3Sa1c4MCVZ5EfBytYjpKUn
	 swukGoxqY3ddS52FIb+3euvcjWw3DQRWvMr6mxBXOBcbZ5UytwcAfr4BEPZkrXJggF
	 3rrglXYvD46qksYInJshqhJUCDrKG/LFec/wgbgbfSa5SwINIEvMKt5wjEU/IvHtTM
	 W2NcUR9GN50kQui+JgggFgjciEXD3g3pcDzO7MBdv8mOe2JBAIW86x6fMTHXRLyy6d
	 aKHBgvLjJ3k0Z+bTlryrWHNXeBU+OTiPIgBEhYP6xFbLKw59mOZ4cocW15iKdfbvnU
	 Aw6MO5DTwdoiA==
Date: Wed, 21 Jan 2026 12:08:31 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 20/23] man/man2/getrlimit.2: HISTORY: Update first POSIX appearance of [gs]etrlimit(2)
Message-ID: <5e54217b8cecd530cb0d3a8f802ebca79b99bccc.1768995315.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768995315.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 1e07d0a5964b36a487b318dcc3e2cf03d8cb9781
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------03745375e51fbd4359f793a1d1f1b9ed2ff2fd56aa134d8a475a56ecf0fba40e"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4888-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[pm.me:email,pm.me:dkim,pm.me:mid,opengroup.org:url,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: E17F156901
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------03745375e51fbd4359f793a1d1f1b9ed2ff2fd56aa134d8a475a56ecf0fba40e
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 20/23] man/man2/getrlimit.2: HISTORY: Update first POSIX appearance of [gs]etrlimit(2)
Date: Wed, 21 Jan 2026 22:05:55 +1000
Message-ID: <5e54217b8cecd530cb0d3a8f802ebca79b99bccc.1768995315.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768995315.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me>
MIME-Version: 1.0

getrlimit(2) and setrlimit(2) first appeared in SUSv1.[1]  The functions
were added to POSIX.1-2001 when POSIX and SUS merged, but as an XSI
extension (still SUS-only).[2]  Then POSIX.1-2024 added them to the base
specification.[3]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 3 "System Interfaces", pp. 269-270.
[2] IEEE Std 1003.1-2001, Volume 2, Chapter 3 "System Interfaces", pp.
551-553.
<https://pubs.opengroup.org/onlinepubs/009604499/functions/getrlimit.html>
[3] IEEE Std 1003.1-2024, Volume 2, Chapter 3 "System Interfaces", pp.
1176-1179.
<https://pubs.opengroup.org/onlinepubs/9799919799/functions/getrlimit.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/getrlimit.2 | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/man/man2/getrlimit.2 b/man/man2/getrlimit.2
index f53add91c4d7..39d0f6ab44e2 100644
--- a/man/man2/getrlimit.2
+++ b/man/man2/getrlimit.2
@@ -554,7 +554,11 @@ .SH HISTORY
 .BR getrlimit ()
 .TQ
 .BR setrlimit ()
-POSIX.1-2001, SVr4, 4.3BSD.
+4.3BSD,
+SVr4,
+SUSv1,
+POSIX.1-2001 XSI,
+POSIX.1-2024.
 .TP
 .BR prlimit ()
 Linux 2.6.36,
--=20
2.47.3


--------03745375e51fbd4359f793a1d1f1b9ed2ff2fd56aa134d8a475a56ecf0fba40e
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0Fgmlwwb4JkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmdFEKM51+ZGpz5E9oeXv86uFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAACRbAQDTg7HKs8b3WZDQMgtA/4mw55fUNY+W/uSJg7BI
J8a8jAEAs1kuo9oDdf3KPjCKd1jQ7F9zviovTtYSHZER8epFxAs=
=HgeO
-----END PGP SIGNATURE-----


--------03745375e51fbd4359f793a1d1f1b9ed2ff2fd56aa134d8a475a56ecf0fba40e--


