Return-Path: <linux-man+bounces-4940-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2CALHwped2n8eQEAu9opvQ
	(envelope-from <linux-man+bounces-4940-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:28:58 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2453B883A5
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:28:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 81C1630066AE
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 12:28:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 593132F83A2;
	Mon, 26 Jan 2026 12:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="Dh6fAp/p"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-244116.protonmail.ch (mail-244116.protonmail.ch [109.224.244.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D02D334695
	for <linux-man@vger.kernel.org>; Mon, 26 Jan 2026 12:28:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769430534; cv=none; b=iVJIVdd8EH82ecr9qPh9XgqNoabJebM2+lHppe5Mcep6okXIEA1eBrz1M2aC9UKLExLcBimyNvPUc36N6t7XRDPFotkj5Zu3wm9XgMEM7D9qflHZURg29HI5A/XD2XJhPW1Uk7pV9m39HCvbVFpiK9ErmE0fIU4oQygNcJ479GA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769430534; c=relaxed/simple;
	bh=eBzDBAXCCCwu1NNRXHD6rgGcCUrwqDRhUgPOvI8GC+0=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=TAQysbICvTYTiA6+ybk1Bxvy353YmDzLYZ/0u4LfuZmOpDlG8VpWntBnWNTTimhBFvjWyH+5f1jaDdazi55Iyfk1urJ3OL+3HJtSe3lANngXOufg29peG0oHLjA05TYRt1YeuWzY7A9yg9l+T6ygA0yBTQjg8pcMhJTHtwUtIs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=Dh6fAp/p; arc=none smtp.client-ip=109.224.244.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769430525; x=1769689725;
	bh=eBzDBAXCCCwu1NNRXHD6rgGcCUrwqDRhUgPOvI8GC+0=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=Dh6fAp/p9qfMHIM+5NURqQUxNsi33w9HZTuWKRfWmfdJpl3WR5Il8aZgQN8tsOB4k
	 5VOUiN5EmkeXuFG3+/aGDNxTtpJSnM3tJHA1WUExWAK7/XX5OdvhKEMF8RSOKyFKiO
	 Pb5dsTbtwE9HYjDLR8TfJ5dRphGFrlHhw5ihU0+szeGd5VVOlwnCqk+TJXy2VJqm3x
	 kP2YviJKKPh82BTos4coUd799mUOejC1GhOXpJMyDxgr3D5ecja1dNvgmH8p42F/zi
	 4SiOP14WLoYQqyfwV5CXDWO8/9LZgH/mZdpE0J634ES6mv39vjXyQo9L/e8A2NdJYu
	 KGSALrO36IXQA==
Date: Mon, 26 Jan 2026 12:28:41 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 04/21] man/man2/link.2: HISTORY: Update POSIX appearances of link(2)
Message-ID: <bec317b8ee8861467e234ae884db6d18c72d0fe6.1769429341.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 3cc028ec9397c3077ffe030d9f8893428232c216
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------02b10f92c2ee5e4d5281bca9a0f9fe5aa9abd0a0b506ebf64b4f330409ffb589"; charset=utf-8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4940-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,pm.me:email,pm.me:dkim,pm.me:mid]
X-Rspamd-Queue-Id: 2453B883A5
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------02b10f92c2ee5e4d5281bca9a0f9fe5aa9abd0a0b506ebf64b4f330409ffb589
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 04/21] man/man2/link.2: HISTORY: Update POSIX appearances of link(2)
Date: Mon, 26 Jan 2026 22:27:45 +1000
Message-ID: <bec317b8ee8861467e234ae884db6d18c72d0fe6.1769429341.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
MIME-Version: 1.0

link(2) appeared in POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Section 5.3.4 "Link to a File".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/link.2 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man2/link.2 b/man/man2/link.2
index dd8bc1bc2826..603c6f9011d1 100644
--- a/man/man2/link.2
+++ b/man/man2/link.2
@@ -386,7 +386,9 @@ .SH STANDARDS
 .SH HISTORY
 .TP
 .BR link ()
-SVr4, 4.3BSD, POSIX.1-2001 (but see VERSIONS).
+4.3BSD,
+SVr4,
+POSIX.1-1988 (but see VERSIONS).
 .\" SVr4 documents additional ENOLINK and
 .\" EMULTIHOP error conditions; POSIX.1 does not document ELOOP.
 .\" X/OPEN does not document EFAULT, ENOMEM or EIO.
--=20
2.47.3


--------02b10f92c2ee5e4d5281bca9a0f9fe5aa9abd0a0b506ebf64b4f330409ffb589
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0Fgml3XfgJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmcfw8TvgpkmNzTsJ4L7T7IOFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAHibAP9eaHber+fOJZNZLYhTv6UYqdNaWIqhZY+kGUXt
Zy4mMgD+P5pd2GFc1KIrc15PBUWtWPmqvZ/0sTPvV8cyeRy2tgs=
=oFOK
-----END PGP SIGNATURE-----


--------02b10f92c2ee5e4d5281bca9a0f9fe5aa9abd0a0b506ebf64b4f330409ffb589--


