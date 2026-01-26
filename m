Return-Path: <linux-man+bounces-4941-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +JBOBQ5ed2n8eQEAu9opvQ
	(envelope-from <linux-man+bounces-4941-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:29:02 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D9971883AD
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:29:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 42A3F3005A9C
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 12:29:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6345332EB8;
	Mon, 26 Jan 2026 12:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="XgYpdwZO"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-24418.protonmail.ch (mail-24418.protonmail.ch [109.224.244.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E732219319
	for <linux-man@vger.kernel.org>; Mon, 26 Jan 2026 12:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769430538; cv=none; b=R/e6I76/tdQrD1g58S3ivrv7D/JX/1vBqbyKTPZHzh9W/EcUZ7IZc/mtwWaPXffhNs/2eq2jgyRonbjaCnNVlUXfMwFPAiinsQ3dAIkt8oPswhnKzMk6zyEfKSAJ7wGEZFzkcrEYN64uhNTt7KhazrSXnMlacZb94Fn0sKE7fpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769430538; c=relaxed/simple;
	bh=orVljhzZ79XSphRST3S/AFiGft2+WDDehsSRYKCdFMo=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=MGVMkcU6QsRm3fuRT0Q6qovEhAGA9S9jOa54c8SNNzWBWwuD9NH6/BXaRc6eIunbUC1mK3RtuY+EsP3Vr6nJ37BtwjHAtIr8yIyLjdq0QIYco46Zk+Rt4/DbM6e3n2ESZNGAfKAHySJ58p3Ab0sgRq74R2JS4VkOXWR8emAbU/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=XgYpdwZO; arc=none smtp.client-ip=109.224.244.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769430534; x=1769689734;
	bh=orVljhzZ79XSphRST3S/AFiGft2+WDDehsSRYKCdFMo=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=XgYpdwZOPuDIW4B4/W/3Nh+Z+6SNUJ5pqeDJGzQKMUkbiu3UO7t9a9g3jKiLA4AkR
	 fuWdoiTW4CzI1U2HHoiJr0t7CuNFOpU5SGa69afLo0TuNMlx8BX7E8nYELnNT+lCDz
	 qQ4mL2a9Gd4JyM99/FIZMHapeXpenvjk6cYH/KceayMqmEEqKz2aLnE7bd2dQQb1t8
	 whMIBdAR746VSKl265C9ZUxGo9XmyE/mz24etMCkiXsczbsn6eimUg20tLjxmteddI
	 3APHT+cLKsEwy3ol2zvF0hstNarSqXM1Pmm/O+Hefd6reu0m7/WQ7pYvMPOspNeZAD
	 aqNaafNaRnDpg==
Date: Mon, 26 Jan 2026 12:28:50 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 05/21] man/man2/listen.2: HISTORY: Change order
Message-ID: <2024c82a058d671b57508887833af98d56d56da5.1769429341.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 8f0e884c978ce106724ae8728c5e0288dd6b1e49
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------8c61f9e33685f870a266f227c9538d8f6434f487d3bbe11effa12a969758f6ca"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4941-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[pm.me:email,pm.me:dkim,pm.me:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D9971883AD
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------8c61f9e33685f870a266f227c9538d8f6434f487d3bbe11effa12a969758f6ca
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 05/21] man/man2/listen.2: HISTORY: Change order
Date: Mon, 26 Jan 2026 22:27:46 +1000
Message-ID: <2024c82a058d671b57508887833af98d56d56da5.1769429341.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
MIME-Version: 1.0

4.2BSD released way before POSIX.1-2001, so chronologically list BSD
before POSIX.

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/listen.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man/man2/listen.2 b/man/man2/listen.2
index 0af616689ce1..65ad45de7645 100644
--- a/man/man2/listen.2
+++ b/man/man2/listen.2
@@ -81,8 +81,8 @@ .SH ERRORS
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001, 4.4BSD
-(first appeared in 4.2BSD).
+4.2BSD,
+POSIX.1-2001.
 .SH NOTES
 To accept connections, the following steps are performed:
 .RS 4
--=20
2.47.3


--------8c61f9e33685f870a266f227c9538d8f6434f487d3bbe11effa12a969758f6ca
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0Fgml3XgEJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmen1Y/U3NPlQcSaowM5EorAFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAGhuAP0REPAC+NJF3c5hzAbZw5MfIg65WKNUgxLZZ4fS
4tlTpQEA7+SfxAd5LgcKRTKKkrHTMyMKjsZiIdw31usKtzo73ww=
=mzey
-----END PGP SIGNATURE-----


--------8c61f9e33685f870a266f227c9538d8f6434f487d3bbe11effa12a969758f6ca--


