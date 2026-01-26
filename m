Return-Path: <linux-man+bounces-4946-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yCYdOjVed2n8eQEAu9opvQ
	(envelope-from <linux-man+bounces-4946-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:29:41 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B23C6883D2
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:29:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 25E5F30067BD
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 12:29:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76F45335067;
	Mon, 26 Jan 2026 12:29:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="d62IN9BO"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-244121.protonmail.ch (mail-244121.protonmail.ch [109.224.244.121])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC38722E3F0
	for <linux-man@vger.kernel.org>; Mon, 26 Jan 2026 12:29:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.121
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769430578; cv=none; b=N0qG/S43HECNkRJetz30B/sdN/VkxNLWJC6BeMAJ5UPcqBsZQCN5rjWTeaLNGg4dQ/b4qC69s6yHrvrfrGe0GzgvFPpXCZtoLEkOoea2nWlZK0HBxFhhEqdt29KDzcD+kuoYmOi2wmhcAqXpR6ZCeYUCnQPSYw5BiCkVpxxmVk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769430578; c=relaxed/simple;
	bh=6vBQTsYn2bNsThCZ3OyOQhXehhEbcHlRL9AX/U36j/8=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FMxVUJUv339C7C5vY7+ei0GC8VP0/GuYvibewIUsfvqS5LZ87FaYS6dgUT+2Hvijx29E9DHulFT8GiULGyQYxIRc33bYEDnM+V2G4v56U0u0VdiWMk9K6n9RYiUIqf3U15IIMOU0vaA+dke/9JVdu2KBejJDvGVPrYXt76ndMso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=d62IN9BO; arc=none smtp.client-ip=109.224.244.121
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769430575; x=1769689775;
	bh=5NC8jL1FUZxABIgKouoz+9NMt3EDz4ZkQPPxnrcxctk=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=d62IN9BOVkEc96+0tmwxn8HzoyFQONj22Bu1do+IU8d3Jw9zZ/jZfy5Y4fqellimw
	 H5fjDBQdTtY1pEwvFKueR5XsejWrxL5iFiZEj+Ph7tDpd70+Wx+V37z8Xi1oOvBfuS
	 AQEZjySXeVMo0XFcpelAfaUytAQR4ybG95hfURE5K89hu9FqIeDOGngX+1fGm5YZfD
	 y9p5360xwMEotcny1+lCzWdnXVyBsYPDTVAQUfNswkH0olmKzaLTDoCvRxcFNjUFmf
	 aOtxZDgfcwq202WnbMWLGbiY/Hs8PVzG89kTGOZdfGltMReRHtm+eohNCwQuYZJGA+
	 BOcwxHgnCRcxw==
Date: Mon, 26 Jan 2026 12:29:31 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 10/21] man/man2/mkdir.2: HISTORY: Update BSD and POSIX appearances of mkdir(2)
Message-ID: <347e36c11666dc28a3c00227ae5c513bd427e680.1769429341.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 8061747868d86f726fc2ee1c6f2e1299ce464c54
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------b97b3392bc512f4366ae04230f81c172e4bbc9e6cdcc8cded23d8f661c578885"; charset=utf-8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4946-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,pm.me:email,pm.me:dkim,pm.me:mid]
X-Rspamd-Queue-Id: B23C6883D2
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------b97b3392bc512f4366ae04230f81c172e4bbc9e6cdcc8cded23d8f661c578885
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 10/21] man/man2/mkdir.2: HISTORY: Update BSD and POSIX appearances of mkdir(2)
Date: Mon, 26 Jan 2026 22:27:51 +1000
Message-ID: <347e36c11666dc28a3c00227ae5c513bd427e680.1769429341.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
MIME-Version: 1.0

mkdir(2) seems to have appeared in 4.2BSD with the system call number
136, as seen in the system's /usr/src/sys/sys/syscalls.c file.[1]  The
function also appeared in POSIX.1-1988.[2]

[1] Spinellis, Diomidis (5 Jan 2026).  Unix History Repository (Git
repository).  Tag "BSD-4_2".
<https://github.com/dspinellis/unix-history-repo/tree/BSD-4_2>
[2] IEEE Std 1003.1-1988, Section 5.4.1 "Make a Directory".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/mkdir.2 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man2/mkdir.2 b/man/man2/mkdir.2
index 263dee5c0556..c6d1b0a887e3 100644
--- a/man/man2/mkdir.2
+++ b/man/man2/mkdir.2
@@ -230,7 +230,9 @@ .SH STANDARDS
 .SH HISTORY
 .TP
 .BR mkdir ()
-SVr4, BSD, POSIX.1-2001.
+4.2BSD,
+SVr4,
+POSIX.1-1988.
 .\" SVr4 documents additional EIO, EMULTIHOP
 .TP
 .BR mkdirat ()
--=20
2.47.3


--------b97b3392bc512f4366ae04230f81c172e4bbc9e6cdcc8cded23d8f661c578885
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0Fgml3XisJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmc8K6/6yQDhTiyClQD6YC1FFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAAq0AQCNy1ZJefCgU445CWoolE/Ojnh1NmaG7BLet8oC
CVd8hgD/VwTf1VG0kiNhPzoTMT05X7lAZZ48mMupVp/+XFZkaQ4=
=f0AT
-----END PGP SIGNATURE-----


--------b97b3392bc512f4366ae04230f81c172e4bbc9e6cdcc8cded23d8f661c578885--


