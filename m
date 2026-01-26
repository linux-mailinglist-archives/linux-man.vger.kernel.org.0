Return-Path: <linux-man+bounces-4937-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0OK5JPVdd2kcegEAu9opvQ
	(envelope-from <linux-man+bounces-4937-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:28:37 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC9488381
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:28:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7E371300516E
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 12:28:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04A32335060;
	Mon, 26 Jan 2026 12:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="oJyC9GnH"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-244122.protonmail.ch (mail-244122.protonmail.ch [109.224.244.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6E24334695
	for <linux-man@vger.kernel.org>; Mon, 26 Jan 2026 12:28:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769430512; cv=none; b=Khn04sqpDhpsB8h5s6lpYC7n15JzXgRRW/gwZsLsfAVJ3jvGOuSW62PA2iMQeZ1Oxmlg+r8pParqzZLeN6dmiNfyyuMHcvBDpFVx0hysawrrbLjGEQdcnHK0BNd4MDKG9gmWAE3IVGx0Jt29/x30Eua40MYAxe+PCUoLy8dsvA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769430512; c=relaxed/simple;
	bh=lIn0ei/QPPA8MJ8XIPOSCv4ZRFfEQqYLaMaFipGrIxo=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=AOBk6gfhUpnmmccJScbQcxeR5smLEXX0BJ97WoY5nBNy5oVS6Kpw8q5iitICxZ7C61Yn8jV4mSgXm67sjE+T0P44q+5obYbi/K3ivDe287WYqREjMkX1ig+VGg3HCEtyzLZETjyb5F6EmQYSmixGMU0xE6eE73nbaaRIkvUNCJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=oJyC9GnH; arc=none smtp.client-ip=109.224.244.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769430503; x=1769689703;
	bh=lIn0ei/QPPA8MJ8XIPOSCv4ZRFfEQqYLaMaFipGrIxo=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=oJyC9GnHeXi/nS6SqUxPD/9W03jLkd3C23Mw+hHbtc99P10ioWLKmu3LZudqmN4H1
	 1N+p0EyW8XLbHPWmrYKZZnMv43WHKLCN5LM0u1ODsSnhUg4kySyVaAdlchtIy+CODL
	 lcqGucXclpbMEq5qNSVIVnOpXz6EdVp/C2c3FG5hfR5bGUIUyS6X5nrHcmZz7Fw7HW
	 vo/eJ02MDI+oHJ/Lz4Yf5+IwWwWApEav+4lEJhCFW9svqF3P8RsI2Jf3v/RK37MBTv
	 eiGR0F/ZcNGeyk4YuaOGThtp+uvbEypgD2AqAcuGnCf3+SQfxsPu8D9OgieOuVAvBB
	 PQceq/UQhslpg==
Date: Mon, 26 Jan 2026 12:28:18 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 01/21] man/man2/ioctl_eventpoll.2: HISTORY: ffix
Message-ID: <d109f3dc06e2c432faca396ebb3b1e7b28c52024.1769429341.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 6392ad39ec7865fdfa47cbaa9bd59de3bbd80a84
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------574141c66d226456f71d94b71886f66a27ec73275a60b33a021faf10c367ca07"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4937-lists,linux-man=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[pm.me:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sethmcmail@pm.me,linux-man@vger.kernel.org];
	HAS_ATTACHMENT(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,pm.me:email,pm.me:dkim,pm.me:mid]
X-Rspamd-Queue-Id: BFC9488381
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------574141c66d226456f71d94b71886f66a27ec73275a60b33a021faf10c367ca07
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 01/21] man/man2/ioctl_eventpoll.2: HISTORY: ffix
Date: Mon, 26 Jan 2026 22:27:42 +1000
Message-ID: <d109f3dc06e2c432faca396ebb3b1e7b28c52024.1769429341.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
MIME-Version: 1.0

Commas are more consistent with other man pages.

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/ioctl_eventpoll.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/ioctl_eventpoll.2 b/man/man2/ioctl_eventpoll.2
index 2b36458e5358..9e7748f4e9ba 100644
--- a/man/man2/ioctl_eventpoll.2
+++ b/man/man2/ioctl_eventpoll.2
@@ -124,7 +124,7 @@ .SH STANDARDS
 .SH HISTORY
 .\" linux.git commit 18e2bf0edf4dd88d9656ec92395aa47392e85b61
 .\" glibc.git commit 92c270d32caf3f8d5a02b8e46c7ec5d9d0315158
-Linux 6.9.
+Linux 6.9,
 glibc 2.40.
 .SH EXAMPLES
 .EX
--=20
2.47.3


--------574141c66d226456f71d94b71886f66a27ec73275a60b33a021faf10c367ca07
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0Fgml3XeEJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmfD4nHm0UP3prfmHxXuaQONFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAEuZAQCGOCXmA6LzpRrhGjUz95nroQ/41o5Y1QkHePQr
vE5WUAEA6xtM11X77PjjLOYpTXSN8/B65USmCSUStchDKXkMYAU=
=K8Vv
-----END PGP SIGNATURE-----


--------574141c66d226456f71d94b71886f66a27ec73275a60b33a021faf10c367ca07--


