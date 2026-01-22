Return-Path: <linux-man+bounces-4920-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0HOqNLSLcWkLJAAAu9opvQ
	(envelope-from <linux-man+bounces-4920-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:30:12 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D1060F09
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:30:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7512D3E5EB2
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 02:26:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73DA92253B0;
	Thu, 22 Jan 2026 02:26:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="klllowGF"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-244122.protonmail.ch (mail-244122.protonmail.ch [109.224.244.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B1C331A7E1
	for <linux-man@vger.kernel.org>; Thu, 22 Jan 2026 02:26:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769048765; cv=none; b=YwTd7Uin5+SrnMA705mfjnnRDe4muuB24hmzToLOg6fr939mzvnQM/V3dF8zk6JUyep3Aw3ZMlBgUeyY92Kz8uV4MdMnWPsxTjzwKcoH6/fbgvBf3AqEOxLnt8H6G0RFoZzLaNYDVxRu6QDsioEJ/5z6Hsr5MoBaUrX4HJNqoqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769048765; c=relaxed/simple;
	bh=/GfBfaMKK4Ewk+UHpwovxtr1x//TXgJtRCkvjLvHEX8=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XEV5vS/hPv6SFt4+WL3fhvDYUU/1qIWPt3eqh7057bzbpyUgTMPDL8wALfMuQeQQ7+Ybra68QhGpIw7+s6RyN7Dgovu5MU3Zj8+j3dTD5YgoZKGjbEcDcaKqogV8HAG7c38W69xoROkosLtrV/BMS/MyTM4o3DdqoBsF5lVGeJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=klllowGF; arc=none smtp.client-ip=109.224.244.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769048752; x=1769307952;
	bh=/GfBfaMKK4Ewk+UHpwovxtr1x//TXgJtRCkvjLvHEX8=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=klllowGFlxuYWXDx6YA5oIziRSUmkf8T3/w8TSAU7Ar5chwvz+uzRwMNMuWpMMSoO
	 nTeTzvSCPACtCS9YlwjYdNOpL5JbUd96JVEMnOr0UN38Po8W57oGt/9MVIbeaHJ4Fn
	 OrdSENZq60KQxSg1q8DXnjWQCMV3CJ0uPoIXsXoWGv4BYbz9V27NlwpQtUqv8EBMYd
	 QSLPJXnFgrzslu/KUVQcSUEiYP1Gw+JSZOHzZDkexBNuhJXIljjdVpJmnoMfzRpL5Y
	 uGmuZOvprtnB3LxJOJaGgyjeL326CcCYnZcwMcF/PzAHIFn+nuTS9nG6a7k5aTC5V4
	 2enyIiEXoiiow==
Date: Thu, 22 Jan 2026 02:25:48 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 19/23] man/man2/getresuid.2: HISTORY: Update first POSIX appearance of getres[gu]id(2)
Message-ID: <0afcc4b4083b450adfaf63958f85e99926d7fa6c.1769047228.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me> <cover.1769047228.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: bd5242644f51e7018231c6a30b6862802431bfb1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------e6435998c203fbda59e7605cf696e4fe90ba60feb2ea7e477d17dc96a2f28a7a"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4920-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[pm.me:email,pm.me:dkim,pm.me:mid,opengroup.org:url,ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns]
X-Rspamd-Queue-Id: B7D1060F09
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------e6435998c203fbda59e7605cf696e4fe90ba60feb2ea7e477d17dc96a2f28a7a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 19/23] man/man2/getresuid.2: HISTORY: Update first POSIX appearance of getres[gu]id(2)
Date: Thu, 22 Jan 2026 12:24:11 +1000
Message-ID: <0afcc4b4083b450adfaf63958f85e99926d7fa6c.1769047228.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1769047228.git.sethmcmail@pm.me>
MIME-Version: 1.0

getresgid(2) and getresuid(2) first appeared in POSIX.1-2024 as an XSI
extension.[1][2]

[1] IEEE Std 1003.1-2024, Volume 2, Chapter 3 "System Interfaces", p.
1174.
<https://pubs.opengroup.org/onlinepubs/9799919799/functions/getresgid.html>
[2] IEEE Std 1003.1-2024, Volume 2, Chapter 3 "System Interfaces", p.
1175.
<https://pubs.opengroup.org/onlinepubs/9799919799/functions/getresuid.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/getresuid.2 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man/man2/getresuid.2 b/man/man2/getresuid.2
index 8286f36fb402..10a21dbcb5a2 100644
--- a/man/man2/getresuid.2
+++ b/man/man2/getresuid.2
@@ -42,7 +42,8 @@ .SH STANDARDS
 These calls also appear on HP-UX and some of the BSDs.
 .SH HISTORY
 Linux 2.1.44,
-glibc 2.3.2.
+glibc 2.3.2,
+POSIX.1-2024 XSI.
 .P
 The original Linux
 .BR getresuid ()
--=20
2.47.3


--------e6435998c203fbda59e7605cf696e4fe90ba60feb2ea7e477d17dc96a2f28a7a
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlxiqsJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmfH1t/fiVrcM9zCkmaYO2XPFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAMDGAQD4p/ieHwgHJXE87XlFGi4ejPcIxAI8R6Vymkl7
uz6zXgD/V3knNqhX/W1uS+smKlXUhWLttSD69XLo0lJqcg16JAU=
=07OU
-----END PGP SIGNATURE-----


--------e6435998c203fbda59e7605cf696e4fe90ba60feb2ea7e477d17dc96a2f28a7a--


