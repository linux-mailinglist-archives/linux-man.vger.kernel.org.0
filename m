Return-Path: <linux-man+bounces-4950-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kOFVH09ed2n8eQEAu9opvQ
	(envelope-from <linux-man+bounces-4950-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:30:07 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A141B883F0
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:30:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 24E423005333
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 12:30:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BFA5334695;
	Mon, 26 Jan 2026 12:30:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="W15mC0c0"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-24417.protonmail.ch (mail-24417.protonmail.ch [109.224.244.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A52DD2EA481
	for <linux-man@vger.kernel.org>; Mon, 26 Jan 2026 12:29:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769430600; cv=none; b=NuOIQfJabOOUPDOkK/dbYuGtVxQHPQYP1AHaW0Ncne2Nd2EvOqxk3CclC/AiFLLZra/R8XLmAb37biwwhrRosFAUHHHYSTVd6p8ldu37XaPN+dle2Q9KsWK1ij4lwr+emf9Elj4h7RoEsqJaF6RQPzz6QpNtTXnC0UC3ykPEkfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769430600; c=relaxed/simple;
	bh=uXk1T0zdnVmlCQqkROe4eug6HkaPj/DtVNabM7YVB9Q=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=PQzCXszKF13Fa8cNq2B/a2lFdeftctx8MSvHdWxzj6Z4GyuMc5glLPRgIYFBHoe3YCdgkfYcFlslAmvQx7KTHMTcAMQNABz/8eHw79PfGuA5GxJmO4S1m1xRJNdwzacnW6LcQCzIwDYentuUQkWZS+uEjNVq070ByQ4fpQJD8sA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=W15mC0c0; arc=none smtp.client-ip=109.224.244.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769430590; x=1769689790;
	bh=uXk1T0zdnVmlCQqkROe4eug6HkaPj/DtVNabM7YVB9Q=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=W15mC0c0H+l/69gQJu710t2y8n67HAnngFcQFA49e8cr9Kxhj+exo18iCDdppbKoM
	 AJ4HF7sys7LXiP+DJfiNcHF5VVGxVnX2+WIUMGZVuHwjicVHhNclwMYV2dqgOFJsk4
	 UhUh6xVT8wVsTKuhFBXGse7D0ZYrdLnSjek1ZHuObBQQXvi9DX3Adm5aFX8fHyg9Wa
	 TQJNDI1Oxs5zx92oRlhyitkAm1Jyuj1z12fjAVQXFUiWP0Tw2C9z4cCko6aUrBYmoW
	 9u60pBJ/7fHLRGrY/waTWmL7g7ItOle8xyqlgIEW7Xs6jRv8yanz7x+XmyiV7jLZjg
	 b+4QXA0hB87Ag==
Date: Mon, 26 Jan 2026 12:29:46 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 13/21] man/man2/mknod.2: STANDARDS: Update
Message-ID: <32bd25fd363096217afa576fd79412f0de74e0ae.1769429341.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: d5d7a407c958461d23225b8b632cc3a9c771ba91
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------e9b56942d614e113a64dc99e1f0c3083342e7ccfd608c77b3646a110811a9000"; charset=utf-8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4950-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pm.me:email,pm.me:dkim,pm.me:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,opengroup.org:url]
X-Rspamd-Queue-Id: A141B883F0
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------e9b56942d614e113a64dc99e1f0c3083342e7ccfd608c77b3646a110811a9000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 13/21] man/man2/mknod.2: STANDARDS: Update
Date: Mon, 26 Jan 2026 22:27:54 +1000
Message-ID: <32bd25fd363096217afa576fd79412f0de74e0ae.1769429341.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
MIME-Version: 1.0

mknod(2) and mknodat(2) are specified in POSIX.1-2024 as an XSI
extension.[1]

[1] IEEE Std 1003.1-2024, Volume 2, Chapter 3 "System Interfaces", pp.
1421-1424.
<https://pubs.opengroup.org/onlinepubs/9799919799/functions/mknod.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/mknod.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/mknod.2 b/man/man2/mknod.2
index f628ee5afe8d..b506db246d01 100644
--- a/man/man2/mknod.2
+++ b/man/man2/mknod.2
@@ -262,7 +262,7 @@ .SH VERSIONS
 .BR mkdir (2).
 .\" and one should make UNIX domain sockets with socket(2) and bind(2).
 .SH STANDARDS
-POSIX.1-2024.
+POSIX.1-2024 XSI.
 .SH HISTORY
 .TP
 .BR mknod ()
--=20
2.47.3


--------e9b56942d614e113a64dc99e1f0c3083342e7ccfd608c77b3646a110811a9000
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0Fgml3XjkJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmfMJmPhO28li77B4U8CBXqCFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAIgFAQCRmLPd6hNENDXitA261AFWHFL7eyOMYesTzUP4
/NPPLgD/UeaBWDr7b+24b8a4VvmbbXVepFtqirLvFb6t7tfTTA8=
=c0xB
-----END PGP SIGNATURE-----


--------e9b56942d614e113a64dc99e1f0c3083342e7ccfd608c77b3646a110811a9000--


