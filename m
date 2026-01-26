Return-Path: <linux-man+bounces-4949-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QExrIRBfd2n8eQEAu9opvQ
	(envelope-from <linux-man+bounces-4949-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:33:20 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 46AFF884AD
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:33:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C364C301BEF3
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 12:29:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3A32335067;
	Mon, 26 Jan 2026 12:29:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="S0aGgAiO"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-43103.protonmail.ch (mail-43103.protonmail.ch [185.70.43.103])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FD1B334695
	for <linux-man@vger.kernel.org>; Mon, 26 Jan 2026 12:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.103
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769430597; cv=none; b=AJqF7aH6nWdaebF+F1pvd32hQijhpZ5ZDkB5uoLEk8FiFuG6yBczUEj9UBghOxBQfrt9BfbSTNdgDrckGt1P+yku5zflKd8VgkjdpLgQTDRiX3+7pRYNuqejVxq7XPjPIU0uWdxoL34VEn0DzMd23txETt3tzaijIfH5KsRKpOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769430597; c=relaxed/simple;
	bh=hshGzajpIs33hOtzubjxmZ+USsG0xRSv5Bwzyr+YIJM=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=dDBJiVfCVZKoEFsHG3k376pwrHGIgDV478EYpw/QxXWIs2EnR3DVjK0+rloX4Qxo3HIMcmGdgCrgMxi3nWW+I1yUEjoGixqRC2FpxFrP4F2CvD5HdWQXvNDI7f1cqkgfrlzPrC11+NKis+VPJbced9Pwz4o8EbLzVUaeR6qAYxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=S0aGgAiO; arc=none smtp.client-ip=185.70.43.103
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769430594; x=1769689794;
	bh=hshGzajpIs33hOtzubjxmZ+USsG0xRSv5Bwzyr+YIJM=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=S0aGgAiOPAFDnsKwZ/rW7SAURdKS3apGCODdApszzVV/9DTPx/1jyKEohPr+QYCHb
	 /o0V67jw7w5gxM+GWmlK7BywcfcZJVM8IbKASbKZnA8BLpZxR8DRC7x685BFJq+lev
	 ecaqUMhaZX123U+HH9d2O7Ro4eQRRdRpjmFywKKqVpz1irZDfPqwXxsi3DooLNe2fB
	 iCcJ1acXdbscvB5V6g2XJfjuzLuRw4YXQ/gYgo5a8xTohcvUkB6/25N645sEWPot83
	 TDMgw5ZhTuZ9UFwTZokeZjBoz+rVDR7yl7irVH2gQ8Ff6HXDWJZRfUDEWMGo++KNxd
	 SCxzliyiRd7Fg==
Date: Mon, 26 Jan 2026 12:29:51 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 14/21] man/man2/mlock.2: HISTORY: Update POSIX appearances of m(un)lock(all)(2)
Message-ID: <67bf0c1aa1338117e930e19dd32ebfe6bdaf8432.1769429341.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 9d60c2acf85699441d939d794ed40c2bc1f9878a
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------798730f550b4cf1c05b11ec44aa80d9483c89d39bfd326d8002e0d360666a3d1"; charset=utf-8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4949-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pm.me:email,pm.me:dkim,pm.me:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 46AFF884AD
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------798730f550b4cf1c05b11ec44aa80d9483c89d39bfd326d8002e0d360666a3d1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 14/21] man/man2/mlock.2: HISTORY: Update POSIX appearances of m(un)lock(all)(2)
Date: Mon, 26 Jan 2026 22:27:55 +1000
Message-ID: <67bf0c1aa1338117e930e19dd32ebfe6bdaf8432.1769429341.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
MIME-Version: 1.0

mlock(2), munlock(2), mlockall(2), and munlockall(2) appeared in
POSIX.1-1996.[1][2]

[1] ISO/IEC 9945-1:1996, Section 12.1.1 "Lock/Unlock the Address Space
of a Process".
[2] ISO/IEC 9945-1:1996, Section 12.1.2 "Lock/Unlock a Range of Process
Address Space".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/mlock.2 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man/man2/mlock.2 b/man/man2/mlock.2
index 063dde4d4ed2..0222e63a1239 100644
--- a/man/man2/mlock.2
+++ b/man/man2/mlock.2
@@ -343,7 +343,8 @@ .SH HISTORY
 .BR mlockall ()
 .TQ
 .BR munlockall ()
-POSIX.1-2001, POSIX.1-2008, SVr4.
+SVr4,
+POSIX.1-1996.
 .TP
 .BR mlock2 ()
 Linux 4.4,
--=20
2.47.3


--------798730f550b4cf1c05b11ec44aa80d9483c89d39bfd326d8002e0d360666a3d1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0Fgml3Xj8JkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmeuRcwNPjni3DAVmegli0juFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAAbOAP4g+h60TINodupcBDCkyETbfP78XScVaJV7rPPI
RTX0EwD9H6HPj0l5lybvVRBeLcQJmSt2ciIOrDUDn4rGn/fLcgU=
=DLRH
-----END PGP SIGNATURE-----


--------798730f550b4cf1c05b11ec44aa80d9483c89d39bfd326d8002e0d360666a3d1--


