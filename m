Return-Path: <linux-man+bounces-4906-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QOdaI3yLcWkLJAAAu9opvQ
	(envelope-from <linux-man+bounces-4906-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:29:16 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 657AF60E8C
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:29:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7F1B24491D0
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 02:25:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 630AC324B2A;
	Thu, 22 Jan 2026 02:24:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="HMmX7CUV"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-43101.protonmail.ch (mail-43101.protonmail.ch [185.70.43.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B88353793AB
	for <linux-man@vger.kernel.org>; Thu, 22 Jan 2026 02:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769048698; cv=none; b=Gn/HshYVT0m8Ig2sqs/F2LhZ/3f8X90yDg6XOeMAXNZjC/14orfhm4gQ1Us2pAb5LFkxr6t6wq3NdGq2qd5/Tlil8INWH7eH7WY41GpXZznhIvYRcqIlDPOqarItGP/ypGBTiPGypfB3R9osmTMyqU4DCFImDxrMrmQsyDOpYlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769048698; c=relaxed/simple;
	bh=/KbhRcMLNbZkofJymTOMQrSZe4SMOdackw0s7KIvlwA=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=N8BjS8tfnZ5BnmV3PXn1ObJavQoDkqcJaQlAcyFKhyDZGSwBJa5M2sM9g9WTHAqSEb6YDD9B93ux5SApH17JlJYcodwvTo8F8/mMu3kcB79W67lyub0u+t6v4FTgZyGsxb6jAf3HTNElEQv151EPiHi1AcEXKLEtnWmsk4RX3r0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=HMmX7CUV; arc=none smtp.client-ip=185.70.43.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769048694; x=1769307894;
	bh=/KbhRcMLNbZkofJymTOMQrSZe4SMOdackw0s7KIvlwA=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=HMmX7CUVHOKJIUMuK9MrjdmhomMac4oaLX2+lDj/jsQ0LQwMJLpJk/7MJVrd1xpnx
	 nLmwp5Zvth9SwS/8FVQ4e4w3GPMMGAHXY6nDde68NkOlYcZF1viZBG/MiD6bpbPG9R
	 L4vPWXpv+oSQe8qSa/ULi8yYx5nYfUyTS22/oXfunMS5oHTDa5vSSQ0IQCQHEW4SxG
	 nXLnbg2k5w51Be8DCArKNoNm9wnEpQPmgF/RG3JuKjPlgkar6bGoKVFY714Vw3+0RF
	 OD4owkf9qt23rvulO8NzUvcPhzfnuNkyfCEUFVGbHb8TTlECZzeaOkXWPRpECImQRY
	 lGMdy0B0zI/zQ==
Date: Thu, 22 Jan 2026 02:24:50 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 06/23] man/man2/fcntl.2: HISTORY: Update first POSIX appearance of fcntl(2)
Message-ID: <1f924f4f5c3c3764469b48cd79a748b78137ec17.1769047228.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me> <cover.1769047228.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 46f9eea0028846ab24526ebe3a4a2fcdc3b771b9
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------eed634fc934e1e148c764d6a06466b4e5c5f173f947b0d99accbc2c4d9bea9ac"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4906-lists,linux-man=lfdr.de];
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
X-Rspamd-Queue-Id: 657AF60E8C
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------eed634fc934e1e148c764d6a06466b4e5c5f173f947b0d99accbc2c4d9bea9ac
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 06/23] man/man2/fcntl.2: HISTORY: Update first POSIX appearance of fcntl(2)
Date: Thu, 22 Jan 2026 12:23:58 +1000
Message-ID: <1f924f4f5c3c3764469b48cd79a748b78137ec17.1769047228.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1769047228.git.sethmcmail@pm.me>
MIME-Version: 1.0

fcntl(2) first appeared in POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Section 6.5.2 "File Control".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/fcntl.2 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man2/fcntl.2 b/man/man2/fcntl.2
index 7f34e332ef90..bd18da6448e6 100644
--- a/man/man2/fcntl.2
+++ b/man/man2/fcntl.2
@@ -134,7 +134,9 @@ .SH STANDARDS
 .\" .P
 .\" SVr4 documents additional EIO, ENOLINK and EOVERFLOW error conditions.
 .SH HISTORY
-SVr4, 4.3BSD, POSIX.1-2001.
+4.3BSD,
+SVr4,
+POSIX.1-1988.
 .SH SEE ALSO
 .BR dup2 (2),
 .BR flock (2),
--=20
2.47.3


--------eed634fc934e1e148c764d6a06466b4e5c5f173f947b0d99accbc2c4d9bea9ac
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlxinEJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmeXXAMNqD7kIC2yvtCo/Gs2FiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAEYgAP97JBCAt8N1p+UY5OraxGirbUUVA+gYFSx9Lohy
9RYu5QEA76673syHsVTr71lCQS0aZ5sEkRe5eZEbJb55gU0/ZwY=
=zGdB
-----END PGP SIGNATURE-----


--------eed634fc934e1e148c764d6a06466b4e5c5f173f947b0d99accbc2c4d9bea9ac--


