Return-Path: <linux-man+bounces-4886-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KPADIGnCcGnzZgAAu9opvQ
	(envelope-from <linux-man+bounces-4886-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 13:11:21 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF03568F8
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 13:11:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E58ED468619
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 12:08:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D4323EF0DD;
	Wed, 21 Jan 2026 12:08:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="Zgz0M8QH"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-43103.protonmail.ch (mail-43103.protonmail.ch [185.70.43.103])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB5933DA7F3
	for <linux-man@vger.kernel.org>; Wed, 21 Jan 2026 12:08:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.103
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768997311; cv=none; b=fcrcZqJj7tauLaV7pSbMU8Vx4vBuY0/MDtfowvqChSSAVxHenKQHiuw58W0sPQBh8nlRbGjRqbW2ywudXrTdPCB+ou9LnxNTFEoGvqLHA9Mxq7ocAwPHpaTUnfwEa7WJLpgyppflDpnpJIxc1U2fhRxTtD/Vd61skeRdowynT0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768997311; c=relaxed/simple;
	bh=FQpLA2v9deovxSK01tiSzBxXynZuVhheQz5PGpWl/Kg=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Vh3X369FOYF6erc2Mt3wfam/ahuWdTDNhImhqxgMCu00H5pZ8KpLtgd40x8aj7WGFf6ct63n8E78VFlqFHku6FYOb/HXTOXJDduugsahdkIBUxRlkAhiUsOUXa7wom0G1lXpjq4h+XTdgzWQaAW7WWxBM4BXWeVsD4bdHkRfqDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=Zgz0M8QH; arc=none smtp.client-ip=185.70.43.103
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768997307; x=1769256507;
	bh=FQpLA2v9deovxSK01tiSzBxXynZuVhheQz5PGpWl/Kg=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=Zgz0M8QH9wuP83gZX+LhCOlQMJIiwlNcbUE5Ro22UAE89zWK6oV+ip9Zqw32k5HrB
	 yncCBykWvYunBfmz2mWjppKXAx2uSI+RFibT+79npahrf8nq2mSWRhqNiOSfgkiooA
	 XjD5z6nZ850fuIp1GCCcandwjAQT1fxfgFHEXCamBJGW3fnebDiBZHPE3wHMnvWr1b
	 QU/xAfjv2W/VEDh2EwojYb3Ebb2CCHB0op45/tveYuW2YK2QG/cITx4X/VnA/G29dR
	 iZuNUuEZMOsOaT70zSM9yM2xkdUeHFI5/w7ihfDC1HNdIw8iX3u5v5oi/J8o0NxY22
	 VUAqDMhrtjH5A==
Date: Wed, 21 Jan 2026 12:08:24 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 19/23] man/man2/getresuid.2: HISTORY: Update first POSIX appearance of getres[gu]id(2)
Message-ID: <b5a7de01af52fe01951c2b63d364b5636185a479.1768995315.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768995315.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: e063c442656c67e4fbe3fb8297973ef7f339b8ca
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------d24292f4955ac8cf3c4c648d46eb19b95920ba9042ef92766ac890b005f8bd89"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4886-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[opengroup.org:url,pm.me:email,pm.me:dkim,pm.me:mid,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 8DF03568F8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------d24292f4955ac8cf3c4c648d46eb19b95920ba9042ef92766ac890b005f8bd89
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 19/23] man/man2/getresuid.2: HISTORY: Update first POSIX appearance of getres[gu]id(2)
Date: Wed, 21 Jan 2026 22:05:54 +1000
Message-ID: <b5a7de01af52fe01951c2b63d364b5636185a479.1768995315.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768995315.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me>
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


--------d24292f4955ac8cf3c4c648d46eb19b95920ba9042ef92766ac890b005f8bd89
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlwwbcJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmf4YnOAtwjURsCo31AEDChmFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAPlNAQCQ+K2Uz8jXQBK0hZI/MjbMeRhxhXIcZ1juWt80
fkwTYwD/VGN3RDGB4+gn0oo5IdI+38UbEoN0jCISL4yUHL1zaAE=
=3Zld
-----END PGP SIGNATURE-----


--------d24292f4955ac8cf3c4c648d46eb19b95920ba9042ef92766ac890b005f8bd89--


