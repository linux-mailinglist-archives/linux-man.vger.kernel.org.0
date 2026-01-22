Return-Path: <linux-man+bounces-4907-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ML5JGISLcWkLJAAAu9opvQ
	(envelope-from <linux-man+bounces-4907-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:29:24 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F0E60EA8
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:29:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5CB8644938A
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 02:25:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2910730F542;
	Thu, 22 Jan 2026 02:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="kRfY1sCy"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-43103.protonmail.ch (mail-43103.protonmail.ch [185.70.43.103])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 774E422A7E4
	for <linux-man@vger.kernel.org>; Thu, 22 Jan 2026 02:25:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.103
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769048709; cv=none; b=gakW1fA45qIrx6O2vGVJzLkz0CFILbeJmpCPG7qdk97W0LcH+esju90+T9tjoehlQs/luJ9S+wA9yHEjSrdaAgETyH5pm4n/HR+AJ6wLXjGFo7XHFhqto2ACedjqJuUQfgWeq2EMFaf2dY35nqPF2tphGVCaPGuVs3yblBhfwX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769048709; c=relaxed/simple;
	bh=TA/w+wjEQUhFa67e/ZFjfdgWyUV1MRWQAgl0pQV06n4=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=CdBOhxc/+qDB7xStP5ECzn5BSaqIhUrskBD020WfAeace2hGOCnn0k6zrESF2rUBXDsMTwWQKwckWsvL2ymJtJ6FeOAYqNboXKGW9ziCerpScx5OT/QKJx+1UOZa51iqIURv0NC5hCRigfQYpEgHhEgC04yENEdh9vZmqnlH4us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=kRfY1sCy; arc=none smtp.client-ip=185.70.43.103
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769048698; x=1769307898;
	bh=TA/w+wjEQUhFa67e/ZFjfdgWyUV1MRWQAgl0pQV06n4=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=kRfY1sCyyeOyq46Fd3uOmIgDZbB6Cx0pR6/gxN8118BmzQTbsMU59ULa/aGqOKLcW
	 qx/lnRJSncZ4Xe9sbenXhREOHLk0bob5/FrLXGxJeMLWTJPCkJ6yW1zNajrw7n5YLl
	 ZgJLTKqSsayXlDiZaa8erX5Jaj+gY04p5BlSVNA4fsiD4NHqiREQj2EVfxvfiv6Nm9
	 52x5yTg0CuAeLtfhA1zWFqcXQOBfZFjbonVGQYAqMM697wSEde2uvIO9VdPOAndUbd
	 MLfXn7+WsWL3d8sin9/xCfBi2cn4QGzoIPt31InEDzNxkhGYk8aqJlAw6/RG7Am2Nr
	 ysay2lT6oNW9g==
Date: Thu, 22 Jan 2026 02:24:54 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 07/23] man/man2/fcntl_locking.2: HISTORY: Update first POSIX appearance of locking constants
Message-ID: <a44c4965006373942afeb2f091c752b2dfbfbfd5.1769047228.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me> <cover.1769047228.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 5209df85ee86a3fc725b450d47cc35f426872492
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------bbb7033044cd1bcd319b2c5f0febdcb5f085aa0a47fc97ed6a7734c723e8bacc"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4907-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns,pm.me:email,pm.me:dkim,pm.me:mid]
X-Rspamd-Queue-Id: 46F0E60EA8
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------bbb7033044cd1bcd319b2c5f0febdcb5f085aa0a47fc97ed6a7734c723e8bacc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 07/23] man/man2/fcntl_locking.2: HISTORY: Update first POSIX appearance of locking constants
Date: Thu, 22 Jan 2026 12:23:59 +1000
Message-ID: <a44c4965006373942afeb2f091c752b2dfbfbfd5.1769047228.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1769047228.git.sethmcmail@pm.me>
MIME-Version: 1.0

The F_GETLK, F_SETLK, and F_SETLKW symbolic constants first appeared in
POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Table 6-1 "cmd Values for fcntl()".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/fcntl_locking.2 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man2/fcntl_locking.2 b/man/man2/fcntl_locking.2
index dc98735571fe..698386e1c5d6 100644
--- a/man/man2/fcntl_locking.2
+++ b/man/man2/fcntl_locking.2
@@ -571,7 +571,9 @@ .SH HISTORY
 .B F_SETLK
 .TQ
 .B F_SETLKW
-SVr4, 4.3BSD, POSIX.1-2001.
+4.3BSD,
+SVr4,
+POSIX.1-1988.
 .TP
 .B F_OFD_SETLK
 .TQ
--=20
2.47.3


--------bbb7033044cd1bcd319b2c5f0febdcb5f085aa0a47fc97ed6a7734c723e8bacc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlxinYJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmfZL0GauaM4idjYCR2c/2s1FiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAOheAP46ukdu9VXfDFKTTdZqfzMSR/OdZz1Pdp+oacco
JgBQGQD/fw6ZH3X9xIZac/1DredeCQ8NOfCoa87DIXPdzAfVOAI=
=qtre
-----END PGP SIGNATURE-----


--------bbb7033044cd1bcd319b2c5f0febdcb5f085aa0a47fc97ed6a7734c723e8bacc--


