Return-Path: <linux-man+bounces-4875-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EMh3ANPDcGkNZwAAu9opvQ
	(envelope-from <linux-man+bounces-4875-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 13:17:23 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 78CCC569EB
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 13:17:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id AF024986F78
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 12:08:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F3BEE54B;
	Wed, 21 Jan 2026 12:07:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="CItd41dC"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-43100.protonmail.ch (mail-43100.protonmail.ch [185.70.43.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5C5E23EA8A
	for <linux-man@vger.kernel.org>; Wed, 21 Jan 2026 12:07:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.100
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768997258; cv=none; b=YXHLzW93tGMIzE8N7jc2XxlDj3MgH+3qZU6cT+euhVxme+tpyThlDzXcWnikjQfms2R5VwSP19k9YocHbjYPqtYRE+P/Gkiadn9c5vkAZGAemkxMT26D/IdOkVV6uea8g7Ol/QXa/KDbLuo/M4VTTSyqfcRlom5UeBgUAgsx24k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768997258; c=relaxed/simple;
	bh=QPEKHTQqPUjdg2CrkvQitgg/CtyAYDVps5sdrNfWqCI=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Ex+ImqW1KCQb45skVgpfdKWlJ0FbweFpJkOI1TUL4N08bYftnVM85Vjl9Ptr3DB4z42cr/crdfTxJTBhm6SmKywhGQZfW8xNqKr0F7Uy3xLG7+Ky2FufeSFYOhQeqJe1pAKHyO5s5Jvbef02FdWBMUmgCULdBd21AyXxbQq7+dQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=CItd41dC; arc=none smtp.client-ip=185.70.43.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768997255; x=1769256455;
	bh=QPEKHTQqPUjdg2CrkvQitgg/CtyAYDVps5sdrNfWqCI=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=CItd41dC7U/GBWG5w1bStpY2rhUVXPNEipGDHLhQKd2pOxxamBCbbSzU5G9bv+9V3
	 ISgva4LUtLWE2EASqbUUUGnjJeVPDB3m0TNcyuoF9RUlQ3qrw2LmYix5QNvWmHeamg
	 RIfpt/mdVkqQ6tjvzIMwYO4A+MF9H6xvWg2gEuGWKm/u3jw36BhjL0nqp55MqZajAP
	 +XyamRkv+tzYUe1AiX1alP8ezEMKq+F5hXWxNwmgAQX7PJkPzUi6bvM639EwVtmws7
	 CSje7MdL2fFhAi0M0as0BPNS4nqVn7UvNRdzvKN7Yl4+Fb9FDxDjZdKOOVu9qMWIGX
	 772pQ/eRbGdAA==
Date: Wed, 21 Jan 2026 12:07:30 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 08/23] man/man2/fork.2: HISTORY: Update first POSIX appearance of fork(2)
Message-ID: <7404e99ec6900a598552b310b152c325000163ff.1768995315.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768995315.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: df85105b1c25597da383fa7d02865dee7bf59e01
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------5d0a54f9e96a517db035e700b7ef9c7281aa27f6d7b32c80cf83d18cbbf43741"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4875-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,pm.me:email,pm.me:dkim,pm.me:mid]
X-Rspamd-Queue-Id: 78CCC569EB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------5d0a54f9e96a517db035e700b7ef9c7281aa27f6d7b32c80cf83d18cbbf43741
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 08/23] man/man2/fork.2: HISTORY: Update first POSIX appearance of fork(2)
Date: Wed, 21 Jan 2026 22:05:43 +1000
Message-ID: <7404e99ec6900a598552b310b152c325000163ff.1768995315.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768995315.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me>
MIME-Version: 1.0

fork(2) first appeared in POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Section 3.1.1 "Process Creation".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/fork.2 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man2/fork.2 b/man/man2/fork.2
index 995b7dd22639..9a8ea99e5b21 100644
--- a/man/man2/fork.2
+++ b/man/man2/fork.2
@@ -278,7 +278,9 @@ .SS Async-signal safety
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001, SVr4, 4.3BSD.
+4.3BSD,
+SVr4,
+POSIX.1-1988.
 .SH NOTES
 Under Linux,
 .BR fork ()
--=20
2.47.3


--------5d0a54f9e96a517db035e700b7ef9c7281aa27f6d7b32c80cf83d18cbbf43741
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlwwYEJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmfapNTIlhXKtfRXlpifNdTAFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAOehAP94eIq4cuTyA5OVEBa4kv3DexarbeYWk0rX8Aut
6vy4OQEAoh8nr2oFKtyPVoMq+jWSkk3lp44odVbHcvuOp2gEaQo=
=StUc
-----END PGP SIGNATURE-----


--------5d0a54f9e96a517db035e700b7ef9c7281aa27f6d7b32c80cf83d18cbbf43741--


