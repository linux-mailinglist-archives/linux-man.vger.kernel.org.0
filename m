Return-Path: <linux-man+bounces-4913-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SNqYA6aLcWkLJAAAu9opvQ
	(envelope-from <linux-man+bounces-4913-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:29:58 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A843A60ED4
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:29:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9FD704651EF
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 02:25:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F0AE366562;
	Thu, 22 Jan 2026 02:25:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="ZZVGCnDJ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-106118.protonmail.ch (mail-106118.protonmail.ch [79.135.106.118])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521B734E771
	for <linux-man@vger.kernel.org>; Thu, 22 Jan 2026 02:25:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.118
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769048729; cv=none; b=eorErPuS33RBIhfPPhlTNcdE6HCOBFIvQLr59ZjYs4yKpGj25DX9u7SnnX2joZeSZ5oBojeGVKgys8aIx9qSHBGgj6rXYN7x4pwqbyT6prB7Fct6ZcXdcfI6VBEghhqXE8sKshp11VD9Iokd50mWdeUwc83V/f4Uh+7VqHqYffk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769048729; c=relaxed/simple;
	bh=R1tqVNdVmQwU0WSc6WMhglOu1WagJ415d0mENa9/lUg=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=KjxbvIN1f6207hCyocqmKcUrWjbBzFPoiMMMIu2o48p849KuceZdgQWjflKUPAe875tHvRjyF/KRutt7WzKvTSEpI6bYTDEsu9slmMdGXzC8RobiZU29chi/dxhKyGLQkUnsTZ7dUYqcJul9997OjMRO8ev13K9GhpFFWlylW2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=ZZVGCnDJ; arc=none smtp.client-ip=79.135.106.118
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769048725; x=1769307925;
	bh=R1tqVNdVmQwU0WSc6WMhglOu1WagJ415d0mENa9/lUg=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=ZZVGCnDJxUdenRF+fy97V4KfZnc3sp003A+fFjE9jrQPlDUd99A03sYjiNnJEqUum
	 J98MGdcN/F2W4Jmpd7Mrl7zqSC38gzJVeJbgfzRKri4cZVlGjssrQYlpvEhWaoc8PD
	 PxyjCFXaBkhiGBh66boK8i5/RTfijLrs39NEcpNEu4KgdKiSlGoFTvFeDwV7KrHcou
	 HwVyhBL7BJeUllH+RxZ6OtPyTySEAXD7Kurd8XvpjEwIV4MoXMZLMTvQZZSH8pWhsU
	 KEK+zYamng3lrmkCpnIHYJBqFVwx5PbzqjzKai9uJCqIaSu9ecAAqah3PHZqyjizou
	 dMD9QoS7FXQ9g==
Date: Thu, 22 Jan 2026 02:25:21 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 13/23] man/man2/getgroups.2: HISTORY: Update first POSIX appearance of getgroups(2)
Message-ID: <4ad7acf2ef8cd66a53d27a59a1d7b9933a84741f.1769047228.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me> <cover.1769047228.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 879a1c2c9aedebe202285ae85a36b91ae48d037d
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------fe7e5341bb78aba9d851bbeb53c9f3e0212e87a06af99902ac7f959b86bbc2ba"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4913-lists,linux-man=lfdr.de];
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
X-Rspamd-Queue-Id: A843A60ED4
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------fe7e5341bb78aba9d851bbeb53c9f3e0212e87a06af99902ac7f959b86bbc2ba
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 13/23] man/man2/getgroups.2: HISTORY: Update first POSIX appearance of getgroups(2)
Date: Thu, 22 Jan 2026 12:24:05 +1000
Message-ID: <4ad7acf2ef8cd66a53d27a59a1d7b9933a84741f.1769047228.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1769047228.git.sethmcmail@pm.me>
MIME-Version: 1.0

getgroups(2) first appeared in POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Section 4.2.3 "Get Supplementary Group IDs".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/getgroups.2 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man2/getgroups.2 b/man/man2/getgroups.2
index 78142e3bbd04..260107d24af0 100644
--- a/man/man2/getgroups.2
+++ b/man/man2/getgroups.2
@@ -157,7 +157,9 @@ .SH STANDARDS
 .SH HISTORY
 .TP
 .BR getgroups ()
-SVr4, 4.3BSD, POSIX.1-2001.
+4.3BSD,
+SVr4,
+POSIX.1-1988.
 .TP
 .BR setgroups ()
 SVr4, 4.3BSD.
--=20
2.47.3


--------fe7e5341bb78aba9d851bbeb53c9f3e0212e87a06af99902ac7f959b86bbc2ba
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlxipAJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmfDUh5IAXDqUNLHv917mtJwFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAACitAP9N5hb3Ru1E22Kp481puVAob+I9ET0yRRRk0Vrd
WC75zwEAvbxR8Dz2Xl1S/J6LT7MU/JfPG1/WIWtITEfqHWnI2wc=
=+J7A
-----END PGP SIGNATURE-----


--------fe7e5341bb78aba9d851bbeb53c9f3e0212e87a06af99902ac7f959b86bbc2ba--


