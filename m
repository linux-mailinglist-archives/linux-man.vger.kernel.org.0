Return-Path: <linux-man+bounces-4911-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oEzOF5iLcWkLJAAAu9opvQ
	(envelope-from <linux-man+bounces-4911-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:29:44 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BFF60EC6
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:29:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2A9BF44979A
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 02:25:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2ECB6378D75;
	Thu, 22 Jan 2026 02:25:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="HAYnkWdr"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-10630.protonmail.ch (mail-10630.protonmail.ch [79.135.106.30])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ECFA34F47C
	for <linux-man@vger.kernel.org>; Thu, 22 Jan 2026 02:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.30
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769048724; cv=none; b=u+4VhPHtPalrMLmP+AFhH5AJ2jIlfiSAHSDsp8c4oWI83+ujwLSNFJesxS3ZrfcneBwyhgeO8H0JhBA5bVMYdSLzp/lMqcn38YMHkEUDL1xfzZbA5KN0PGE9x9MbdHdyveGru/u8zjs7mt2BrRV4NDs7kfoSq2haoG8KJtchQ/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769048724; c=relaxed/simple;
	bh=14LcaYXj9aNBEIckuMkODBRbMxiFu7fp6PhlFm6Xep4=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=PfYHxWKEhdDfc3kF4ZF5D2EDCI8JrjaElIVZn78R6FItxVLP1GhszfSQxCO6x4rGwS8rZOFkYgyXwnP7tLQPUkNnGd/78XlIIMU3xLvz5x+atFk+HhHGXBrBsW/jamYmk2vaLFbkns9rcc60MtqIdKx4FKQBaU/H+lH/44cHa8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=HAYnkWdr; arc=none smtp.client-ip=79.135.106.30
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769048715; x=1769307915;
	bh=14LcaYXj9aNBEIckuMkODBRbMxiFu7fp6PhlFm6Xep4=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=HAYnkWdrVEjAJiypI+OfYaMMJUgk2tzDFuVaAFwbFIz7l9ApDVMELQ9J/qnVuEmgC
	 Bysv8kRieZfdJzfeJiAm0EA5wXQRRIuT/z0I4oOJT5nKL/Tz1AzklEARL3d56lt0IV
	 Crm5NWFz3/fkmW+KIjGIwCTtYMB/0l46bDPEr5MNGgZHmiLt2NKMcgdiOEcEQpq/py
	 uQqIRVsqKK8MZAOQOyS4oAnK+6hoLXMmJuRHMUNzvxSQKM9uk0RUBFZQQKZ4e9MmcC
	 c02XGr2nS9s3tRI/1CD98jgNroxwo0d6bAflPLXc/UhSRBksh7Xq2TCCCIj2DVYlf2
	 Gpph2RYSYamiw==
Date: Thu, 22 Jan 2026 02:25:12 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 11/23] man/man2/fsync.2: HISTORY: Update first POSIX appearance of fdatasync(2)
Message-ID: <0d67e7c63fd30e88854df7fe8bdffe5607e8b777.1769047228.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me> <cover.1769047228.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: caa34eb913a0855101b033410a717e46e5f04741
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------04983ebd4c1699e66188ad5c0c8acae4c51f3076beb8c34c82faf57340b91831"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4911-lists,linux-man=lfdr.de];
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
X-Rspamd-Queue-Id: 07BFF60EC6
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------04983ebd4c1699e66188ad5c0c8acae4c51f3076beb8c34c82faf57340b91831
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 11/23] man/man2/fsync.2: HISTORY: Update first POSIX appearance of fdatasync(2)
Date: Thu, 22 Jan 2026 12:24:03 +1000
Message-ID: <0d67e7c63fd30e88854df7fe8bdffe5607e8b777.1769047228.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1769047228.git.sethmcmail@pm.me>
MIME-Version: 1.0

fdatasync(2) first appeared in POSIX.1-1996.[1]

[1] ISO/IEC 9945-1:1996, Section 6.6.2 "Synchronize the Data of a File".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/fsync.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/fsync.2 b/man/man2/fsync.2
index d67f3bd0e2ae..5ba280f42edc 100644
--- a/man/man2/fsync.2
+++ b/man/man2/fsync.2
@@ -158,7 +158,7 @@ .SH HISTORY
 POSIX.1-1996.
 .TP
 .BR fdatasync ()
-POSIX.1-2001.
+POSIX.1-1996.
 .P
 In Linux 2.2 and earlier,
 .BR fdatasync ()
--=20
2.47.3


--------04983ebd4c1699e66188ad5c0c8acae4c51f3076beb8c34c82faf57340b91831
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlxiogJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmeC6CyM8NdluQhP0zVGK6OYFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAHqqAQDj960Zi7Vp6QW3DdbmPjHs45OFqYuAYi3h+zXy
vUcVUAEAvae3gx4xc1lfXlfdyEQVPN4Jw4cpaHnoXoKPWeuTvQQ=
=LncM
-----END PGP SIGNATURE-----


--------04983ebd4c1699e66188ad5c0c8acae4c51f3076beb8c34c82faf57340b91831--


