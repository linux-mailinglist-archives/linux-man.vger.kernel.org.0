Return-Path: <linux-man+bounces-4872-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wIEoIqPDcGkNZwAAu9opvQ
	(envelope-from <linux-man+bounces-4872-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 13:16:35 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2FD569B6
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 13:16:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1A6F39A91AB
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 12:07:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C87B43EFD2F;
	Wed, 21 Jan 2026 12:07:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="IexkmHmk"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-4322.protonmail.ch (mail-4322.protonmail.ch [185.70.43.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0A8E342C8B
	for <linux-man@vger.kernel.org>; Wed, 21 Jan 2026 12:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768997246; cv=none; b=C2zJB28AvlPFXd3oWfb5UrVKG//gN2UT+sq5drueqcU15mIH/w2EHxcaO+4yevwLDhRBdOwZtLVuGQRtewtkAhxXtwOZTN9dq9Mc+fv/Po2g0cui5Xmwxn6OVVq5swABuohGTfkvmXnacnPiRGlpzhXSnY2X3B+/RuOjqm8ND9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768997246; c=relaxed/simple;
	bh=GQyj70Icra4X0MJYaYrQf2kze3M2+QYLSDHt/S3ikxM=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=AkqwAWgOROXBj0hERLlZy3nd0UOcd82RmjsUnvdKGCvqKggiyx8jcXSELnJxowWGbal3LE3usb3P9LjHLDSy51nPkKeYDme0LZFt0hlCCuOvs36skyZmcUZ1w+sbzKbD9uIqUCrrvap9pYWIMPxCHlGC3EREQBR3BbAWaZbYfLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=IexkmHmk; arc=none smtp.client-ip=185.70.43.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768997236; x=1769256436;
	bh=GQyj70Icra4X0MJYaYrQf2kze3M2+QYLSDHt/S3ikxM=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=IexkmHmkj8xCHw/+EfrfhgGg+p/JnkUNWQwBDXJjq7fjsJ4kroeF2/QyV4GruCXA8
	 NkdqoxG9h0ynhtC4ml5UcBPSpYCgTvsFEJhGD900D54dqbk/sLZ4um4D6gSmz6w55w
	 otLOJzYKd7kCJPP3c3dadmlz9HWWvyyKtDFjGvdhXec/N1HVzd+f1FdK0Jo0gJO9F9
	 7Gk3zltco78C0JODF4lRHcsWPd9/1wrGK0qAPNgY5PEta+8g8UvtN+JS+VRgXg/lAX
	 iS/ENzoTCfqBPWrVbSOQwNlWb1z7gFDwhk1DO2PAOUI+a989kBr/K4ClbiFA5tq+q1
	 GDCDR/X3pOlFQ==
Date: Wed, 21 Jan 2026 12:07:12 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 04/23] man/man2/execve.2: HISTORY: Update first POSIX appearance of execve(2)
Message-ID: <5d691ee5e6a33e81446f7113d671f813ec7d2108.1768995315.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768995315.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 7f25321bf264269215def63198bbcb91b2a5c4b8
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------464f17e7d71d66671b579c2105544104e509fe5f945adda251580e3f6836ee8d"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4872-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,pm.me:email,pm.me:dkim,pm.me:mid]
X-Rspamd-Queue-Id: 3D2FD569B6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------464f17e7d71d66671b579c2105544104e509fe5f945adda251580e3f6836ee8d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 04/23] man/man2/execve.2: HISTORY: Update first POSIX appearance of execve(2)
Date: Wed, 21 Jan 2026 22:05:39 +1000
Message-ID: <5d691ee5e6a33e81446f7113d671f813ec7d2108.1768995315.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768995315.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me>
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


--------464f17e7d71d66671b579c2105544104e509fe5f945adda251580e3f6836ee8d
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlwwXAJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmfTLQkp5cGNyVF4ovgmS3P/FiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAANL5AQCPjHECkHL27KlUyi/z8k1M1GuDFt8mDMT9L2Tt
O5yPfQEA2/oxzBG6u/Hmkf5UnkI4NIYnkjGrssciHjjjv0cFQQk=
=wQr3
-----END PGP SIGNATURE-----


--------464f17e7d71d66671b579c2105544104e509fe5f945adda251580e3f6836ee8d--


