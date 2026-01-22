Return-Path: <linux-man+bounces-4916-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IKnzEK6LcWkLJAAAu9opvQ
	(envelope-from <linux-man+bounces-4916-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:30:06 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 287F860EE3
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:30:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1B45135FC68
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 02:25:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43D022F0C6A;
	Thu, 22 Jan 2026 02:25:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="MnXzb5gZ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-43103.protonmail.ch (mail-43103.protonmail.ch [185.70.43.103])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62DAE43ABC
	for <linux-man@vger.kernel.org>; Thu, 22 Jan 2026 02:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.103
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769048747; cv=none; b=plGXJeC4kwftzU7UeZsEtmDDDFLANqNtPPiKtRRU4GA6dt0Fkj8i88gF2DUPwAVARNGyVlTFsON/ZK+Uf3qFTlF/3ZdIsPp/b0NXDVGdth8z+hvSk17pZFVwkihrzsP2UyOKsHQ8iGBCxaBdiCPUeNC49Dm+hPaJLejBXh4u0cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769048747; c=relaxed/simple;
	bh=ID5RG9I7axwkv26bDqhbnbb6pKCpranRn1hZba4LwUM=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ZCBly4vb2yNrM3tFgJjHnfocZ5Aa1xlYFj/yCQNfGOy5CQfaT3zxa6vBH7WnhirY1C8yOaEpuavf2y1hRmCNCL3ScKSgGuZa6ftuwEoJ9IHJ3R9lZ6PlMpRsP5V7nJK8pXBqZnc6T6byxPo49gReo7tMoL/1wonZHdpocVhCf0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=MnXzb5gZ; arc=none smtp.client-ip=185.70.43.103
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769048743; x=1769307943;
	bh=ID5RG9I7axwkv26bDqhbnbb6pKCpranRn1hZba4LwUM=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=MnXzb5gZ2PdcHhtELmWUGMKXak7GmZp7lHXxD7tps/pkA6YHbGD6D5mmqkZB2kOWu
	 NMgJ7TCKdrDVh5NdJGvEjPG8yxab3RS56yKzkl5/cEZNu8i81Vfcxdwwl/pd6kWay4
	 T/mBMKwfgRVKHMAfST4x/CmjYVhmKGJ4UosajsC8ApKbeAr67TXHk3QKLUCn01h5zw
	 joHXzDxQGwPOf76txdQyek6ixNj7dF6fvvjP5157PvoK8oRpUJoQOV/nD+/YjKG0Hx
	 T1SwgPaLwA71V961+hT9r/SjS3i4t7O9EsIKrrbMIuLIUNDqgasMy1Jfk6pb127xBL
	 ToSTFJof6GDSg==
Date: Thu, 22 Jan 2026 02:25:39 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 17/23] man/man2/getpid.2: HISTORY: Update first POSIX appearance of get[p]pid(2)
Message-ID: <db04851687858925bab6717857321aaf910c000f.1769047228.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me> <cover.1769047228.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: c1b7d2be8aff5c2f9368e1c2cf68c4bf1a567187
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------1353d4b38ce68d220340653cfb0dcef5aabc315476ae3f37b2077d0719f71152"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4916-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns,pm.me:email,pm.me:dkim,pm.me:mid]
X-Rspamd-Queue-Id: 287F860EE3
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------1353d4b38ce68d220340653cfb0dcef5aabc315476ae3f37b2077d0719f71152
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 17/23] man/man2/getpid.2: HISTORY: Update first POSIX appearance of get[p]pid(2)
Date: Thu, 22 Jan 2026 12:24:09 +1000
Message-ID: <db04851687858925bab6717857321aaf910c000f.1769047228.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1769047228.git.sethmcmail@pm.me>
MIME-Version: 1.0

getpid(2) and getppid(2) first appeared in POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Section 4.1.1 "Get Process and Parent Process
IDs".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/getpid.2 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man2/getpid.2 b/man/man2/getpid.2
index 2ae00557c346..e775ff67e9b7 100644
--- a/man/man2/getpid.2
+++ b/man/man2/getpid.2
@@ -53,7 +53,9 @@ .SH VERSIONS
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001, 4.3BSD, SVr4.
+4.3BSD,
+SVr4,
+POSIX.1-1988.
 .SS C library/kernel differences
 From glibc 2.3.4 up to and including glibc 2.24,
 the glibc wrapper function for
--=20
2.47.3


--------1353d4b38ce68d220340653cfb0dcef5aabc315476ae3f37b2077d0719f71152
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlxiqIJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmeKdRVLhxx2hYDNFuLWEIBAFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAANqMAQDopzSh0WPuPzTm+ESq7zqeYs1MeVtRZs6L/KuA
+5LWnQD+IH0qju42dVakPlUgGwk2+vm+c6KIphi186vSmMr39gQ=
=X3v6
-----END PGP SIGNATURE-----


--------1353d4b38ce68d220340653cfb0dcef5aabc315476ae3f37b2077d0719f71152--


