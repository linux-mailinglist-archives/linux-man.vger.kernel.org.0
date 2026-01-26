Return-Path: <linux-man+bounces-4943-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uMHnDP1ed2n8eQEAu9opvQ
	(envelope-from <linux-man+bounces-4943-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:33:01 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D76188489
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:33:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 406D230173A8
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 12:29:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7381332EB8;
	Mon, 26 Jan 2026 12:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="TGKIJDnZ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-43100.protonmail.ch (mail-43100.protonmail.ch [185.70.43.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 591F52D060B
	for <linux-man@vger.kernel.org>; Mon, 26 Jan 2026 12:29:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.100
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769430561; cv=none; b=nrqBsLhQ3hC7/1LTOXTO5OMF45VCzJUpbWMITxgE+SWlQXtp7o39UBD0C/JHmTcayNF28zYFxNifg1PDPwbqcvr/uXs8vPbNs3ofouHLoGVnQI7oPMFVKL7A+JtUlcqN1l0aW76Hs/RrMGJ3KXTWgLNsKhESlAJASzRJ6PDc5hU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769430561; c=relaxed/simple;
	bh=zAWxe/YMHjyp+HwZHo7wJ+VLcTxZT3fTY1isdCW0SPs=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=EZUc4C/T2ErcW5YShh4m8T6AFTHkd9nDJxEp4X1Il9z82XcKYda/5scF82rBVRV8n9n3enlMTTxKfiMaRO4SzeLySa9wxdNcY7XpFbPO6ZrTIHJLiCIZwiDNu+Z8Aak7szM9SAGzGMMMueIAnsEViETqQmYH+/UoIi6c3XnvVao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=TGKIJDnZ; arc=none smtp.client-ip=185.70.43.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769430553; x=1769689753;
	bh=zAWxe/YMHjyp+HwZHo7wJ+VLcTxZT3fTY1isdCW0SPs=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=TGKIJDnZ4tt78qfD7feKo1wTM/vI3F4VeEkhm8guW7V9fqeCNuzhtRXPrGsVk+lQ+
	 hF8mL/aNv+D+hAuBUqQNTFWCQ3BAvB8pxBoO79xl0Ngwuv8Bd0VmwXF0Ld+prt6m3M
	 hO+BWOqrGc6mFm1w5N9s7R3Xrcd9crF7Ax54HG5mAXxrdFHkZZ1JhV/5eHgsjVXsu6
	 6fFYmTMy5laXGo+a11fF50p+lrmMB8/LSUI1BVJ8VG9upOoDl+9A3KFExjeJTGXIq8
	 cCWASuRgHGZYWFbl7Mz/TVtpMlnvpPfsVcXyAhtRbjyk3RnEn3fA+atRj1c7AJxy40
	 s7yFpyoZMvf/g==
Date: Mon, 26 Jan 2026 12:29:08 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 07/21] man/man2/lseek.2: HISTORY: Update POSIX appearances of lseek(2)
Message-ID: <2dd12d136bf0aa0637ec1bc5255ee37f502fbc5b.1769429341.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: e2eade973aab293867c4686b1a8c7417f7a2ab57
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------3cc37d08ecc1c3cd50ecd23bd1fa8a2cef6236245fff3e3b6b7a05224bebd669"; charset=utf-8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4943-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,pm.me:email,pm.me:dkim,pm.me:mid]
X-Rspamd-Queue-Id: 9D76188489
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------3cc37d08ecc1c3cd50ecd23bd1fa8a2cef6236245fff3e3b6b7a05224bebd669
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 07/21] man/man2/lseek.2: HISTORY: Update POSIX appearances of lseek(2)
Date: Mon, 26 Jan 2026 22:27:48 +1000
Message-ID: <2dd12d136bf0aa0637ec1bc5255ee37f502fbc5b.1769429341.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
MIME-Version: 1.0

lseek(2) appeared in POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Section 6.5.3 "Reposition Read/Write File
Offset".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/lseek.2 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man2/lseek.2 b/man/man2/lseek.2
index d42e39e887db..3d48088d0aaf 100644
--- a/man/man2/lseek.2
+++ b/man/man2/lseek.2
@@ -205,7 +205,9 @@ .SH VERSIONS
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001, SVr4, 4.3BSD.
+4.3BSD,
+SVr4,
+POSIX.1-1988.
 .TP
 .B SEEK_DATA
 .TQ
--=20
2.47.3


--------3cc37d08ecc1c3cd50ecd23bd1fa8a2cef6236245fff3e3b6b7a05224bebd669
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0Fgml3XhMJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmcslcdqtIwbNMBaEcIDCneBFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAL4BAQDYOuEx2nb7klmDiihlwPAs9+atjhfe0eEM2I26
dQA4kgEA24zDuSPuPJ+AcTUHa4brFHKmOTd0UNcnLD1RP2fqlgw=
=26JC
-----END PGP SIGNATURE-----


--------3cc37d08ecc1c3cd50ecd23bd1fa8a2cef6236245fff3e3b6b7a05224bebd669--


