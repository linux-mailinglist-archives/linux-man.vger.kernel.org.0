Return-Path: <linux-man+bounces-4917-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KJfTJoOLcWkLJAAAu9opvQ
	(envelope-from <linux-man+bounces-4917-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:29:23 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1507B60E9B
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:29:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 25523885B41
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 02:25:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FF622C21C4;
	Thu, 22 Jan 2026 02:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="HUKBdZp4"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-24418.protonmail.ch (mail-24418.protonmail.ch [109.224.244.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7561243ABC
	for <linux-man@vger.kernel.org>; Thu, 22 Jan 2026 02:25:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769048748; cv=none; b=MI2iuE4CMfv0LaGiINN9nuwz0knT3epL1uwUl9HxK++fs/zMc3hrYpYEGdSUFP0NmU0a8kf4oRs9CCQ6Qr3vetaj0868pbluJiHrQvrxj4Ujn92x8qaJPJ9fp+2CzYh9DifgaRsi0nMnr6z3dpcZfLRrO+R4VWgtsTkZsH+vEUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769048748; c=relaxed/simple;
	bh=95wOMwfo0wFzDE28xr2iwbHV8bxVuwznb8ziTtYUXyg=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Sm2RzJEnOZDAVlhLb2JjkgFIk/AlVzVNLZRaI5VRaok3iYc9XytS7UTrNXJSSe0qAGPo9B/62JslGF0cSK9kjukQsxaqqzcI03FBMIME11gRdq8tY8iFA39/u0jtiu0LpgO/kWwZl0W6ogSxgmM/p1xKaA8AkQotFPBYMcFmSj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=HUKBdZp4; arc=none smtp.client-ip=109.224.244.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769048739; x=1769307939;
	bh=95wOMwfo0wFzDE28xr2iwbHV8bxVuwznb8ziTtYUXyg=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=HUKBdZp45rtnXztEp7W0vwe4ZsIW8ZqCWe/ZINu3U8xRaMhELitAOFL0Nie5othPX
	 7SRFeRzSYYTxhqRAYfKo0a9ecYjwurRSOnOQXsDzvCOQerhdFANMge33w3wpRhpMg3
	 WGDQvYFbVKnWU4QZwxRBct7jGfHMwic+YsereoO9vy/uiSRJo+c3QVWiKQ6WBXwWvs
	 Vhtn0Y43xeEhApEYlqS/raFyVS7uKoCrus6epLNuihGiZLT6inZecZpAXtZuLnOyUA
	 OkMbyiffnXJhfMtcGinq3mZhCGpsA+p1JjIlBln2jiYpYdqd/QEXciGlpTrsyzs5+o
	 JYNhdNUuB3yGg==
Date: Thu, 22 Jan 2026 02:25:33 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 16/23] man/man2/getpagesize.2: HISTORY: Update first SUS appearance of getpagesize(2)
Message-ID: <825144f9529837adcba4a53ccd0395221b26b8e7.1769047228.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me> <cover.1769047228.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 3a58cf67b8f55bd600c73a6e62f91041361e9a91
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------3a74bcfb784268d73c14297139b21dd156dddd6d7f1d8596349d9cb87926a435"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4917-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns,pm.me:email,pm.me:dkim,pm.me:mid]
X-Rspamd-Queue-Id: 1507B60E9B
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------3a74bcfb784268d73c14297139b21dd156dddd6d7f1d8596349d9cb87926a435
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 16/23] man/man2/getpagesize.2: HISTORY: Update first SUS appearance of getpagesize(2)
Date: Thu, 22 Jan 2026 12:24:08 +1000
Message-ID: <825144f9529837adcba4a53ccd0395221b26b8e7.1769047228.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1769047228.git.sethmcmail@pm.me>
MIME-Version: 1.0

getpagesize(2) first appeared in SUSv1.[1]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 3 "System Interfaces", p. 254.

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/getpagesize.2 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man/man2/getpagesize.2 b/man/man2/getpagesize.2
index 3504f1c7b813..8e21b6eaf702 100644
--- a/man/man2/getpagesize.2
+++ b/man/man2/getpagesize.2
@@ -53,8 +53,9 @@ .SH VERSIONS
 .SH STANDARDS
 None.
 .SH HISTORY
-This call first appeared in 4.2BSD.
-SVr4, 4.4BSD, SUSv2.
+4.2BSD,
+SVr4,
+SUSv1.
 In SUSv2 the
 .BR getpagesize ()
 call was labeled LEGACY,
--=20
2.47.3


--------3a74bcfb784268d73c14297139b21dd156dddd6d7f1d8596349d9cb87926a435
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0Fgmlxip0JkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmeX+gbBjx6uH7fpsXpbd0h1FiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAG8IAPwP778CV8UvgSZuD1NZ/sBDKaEH74oQRi8dEcOa
E/M6vQD+MgKNAOLrg2C+zZZYkXQ5y4j9hU0C3j5F8VsW+hF4aQM=
=4J70
-----END PGP SIGNATURE-----


--------3a74bcfb784268d73c14297139b21dd156dddd6d7f1d8596349d9cb87926a435--


