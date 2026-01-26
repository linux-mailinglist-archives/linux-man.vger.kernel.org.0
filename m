Return-Path: <linux-man+bounces-4948-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mCMRJA5fd2n8eQEAu9opvQ
	(envelope-from <linux-man+bounces-4948-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:33:18 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4F7884A6
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:33:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2A90C301BA4C
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 12:29:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A21862F691A;
	Mon, 26 Jan 2026 12:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="KkQf894Y"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-4322.protonmail.ch (mail-4322.protonmail.ch [185.70.43.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3122EA481
	for <linux-man@vger.kernel.org>; Mon, 26 Jan 2026 12:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769430596; cv=none; b=JDFCR18W8fK6LOwp5iZt5SX8AyBprghtja38DOioyum1QkfNr3At/JsUpysoDa2xQgrxWJ5BPMolAI5LlztiCMobt5CuDp3vZvVHtvp5/hAyT3WaOPtqFUSY0DLhDCtEzAmdCgBKouIkNCFix1iwTobubondYFzrz+3rWAx+0+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769430596; c=relaxed/simple;
	bh=aLQcEPmotJuebeF0X1aFhrknwfWpXQ1UvHJakvks3qs=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=dDZQ3+71Z58llk7pgmy+3gHOIZUOtCNd+WqChBwtSymKIHxpcovWndaQKTS0OQwEozCBXR5mzQT5SFWFYbgD3mYeJq4vtdrTmI5U9wwZ4MsVXTu/s6EOnDJtxypoYD6ZStE/cFoe60suZpj7M5neec81VSqJYHBUdvC0oXRPZuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=KkQf894Y; arc=none smtp.client-ip=185.70.43.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769430585; x=1769689785;
	bh=/UXDstWuL3EAGlFprl9kaG0JIAkFfQGy6s4/2eK2zcE=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=KkQf894YTIXE8uno8IkdqZsC4VdD5wiMpb5Bp7AUQDZoD4oE9TaW6LiqGnJtI6Fim
	 Oi7H349Z2PcLbxIg7OAsEQYe0aT7UEvCASTKSkUdUnAM04b8yRqh1JsxGlHB1dr9LS
	 T9ev+xWO9mZVL8a3zGYefttduOyEBrDkYZSstFc1iF4L+/TQ0th+/u0ZMk1MnGhw2c
	 vtnJqOGOfiJp4xqJ6ii6s6n4kh6IfsZx9xbPywwzWYi6t/wfMbbinh9RF1OmYKAmSf
	 QxZOXMX5iyrf76lckEO8IZqgTucm/d2QenJXcp6gzNIQdTCY9u7DUfpwIussGpK/l9
	 KDirSEA2Cd1pg==
Date: Mon, 26 Jan 2026 12:29:41 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 12/21] man/man2/mknod.2: HISTORY: Update POSIX appearances of mknod(2)
Message-ID: <b0feda20f21d633090a9fa7554b6d4ccb46d4295.1769429341.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: d75f5593d1aeca0bcb2e9a5e8e5357db258d983d
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------d99ec9e710544d02cc6906aaa60db85f9045f3099580fc1446143daa339f16ef"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4948-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[opengroup.org:url,pm.me:email,pm.me:dkim,pm.me:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0E4F7884A6
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------d99ec9e710544d02cc6906aaa60db85f9045f3099580fc1446143daa339f16ef
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 12/21] man/man2/mknod.2: HISTORY: Update POSIX appearances of mknod(2)
Date: Mon, 26 Jan 2026 22:27:53 +1000
Message-ID: <b0feda20f21d633090a9fa7554b6d4ccb46d4295.1769429341.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
MIME-Version: 1.0

mknod(2) appeared in SUSv1.[1]  The function was added to POSIX.1-2001
when POSIX and SUS merged, but as an XSI extension (still SUS-only).[2]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 3 "System Interfaces", pp. 392-393.
[2] IEEE Std 1003.1-2001, Volume 2, Chapter 3 "System Interfaces", pp.
758-760.
<https://pubs.opengroup.org/onlinepubs/009604499/functions/mknod.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/mknod.2 | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/man/man2/mknod.2 b/man/man2/mknod.2
index 4a9aa9f6128a..f628ee5afe8d 100644
--- a/man/man2/mknod.2
+++ b/man/man2/mknod.2
@@ -266,7 +266,10 @@ .SH STANDARDS
 .SH HISTORY
 .TP
 .BR mknod ()
-SVr4, 4.4BSD, POSIX.1-2001 (but see VERSIONS).
+SVr4,
+4.4BSD,
+SUSv1,
+POSIX.1-2001 XSI (but see VERSIONS).
 .\" The Linux version differs from the SVr4 version in that it
 .\" does not require root permission to create pipes, also in that no
 .\" EMULTIHOP, ENOLINK, or EINTR error is documented.
--=20
2.47.3


--------d99ec9e710544d02cc6906aaa60db85f9045f3099580fc1446143daa339f16ef
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0Fgml3XjQJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmc+C7RtsjSdzlgpSsES6nFkFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAADnbAQDnYAsF77tOBpOOQ1982oC6JuBa9Ohl46ZnwBpX
VZ1FvwEAmsbqqlqptjC88kQcBSmqg6hr7CmP1wCjfJFkFtPpcAk=
=+Qzl
-----END PGP SIGNATURE-----


--------d99ec9e710544d02cc6906aaa60db85f9045f3099580fc1446143daa339f16ef--


