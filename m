Return-Path: <linux-man+bounces-4880-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mGndBw3EcGkNZwAAu9opvQ
	(envelope-from <linux-man+bounces-4880-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 13:18:21 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F2856A19
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 13:18:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 614389A9AE9
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 12:08:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B878E3EFD2F;
	Wed, 21 Jan 2026 12:08:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="qvkiXJjV"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-244123.protonmail.ch (mail-244123.protonmail.ch [109.224.244.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F01AF3D668A
	for <linux-man@vger.kernel.org>; Wed, 21 Jan 2026 12:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768997283; cv=none; b=Ua109jgbLgFsPgrCCfNezYdOZjaxl0uwRHmgzhVaZIMuuiv0fAoZXzzPzAf2Fqm9oDv8l5h8NtD9dt3qgEaciyNMPcy8gRBgHwV3aJ4sUfLxjnStofuEmBCVfqG9bKF+rLloZKeosRMw5ec2FgkUVBpoufUrsPH7oPcJd1fj2nI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768997283; c=relaxed/simple;
	bh=mPLlnLK1CHU5AJ9GVuLPouSeFi+2Eyia3p2EWz53qko=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jwRCi0o+1BxMKiPGSRzOc8diurj6/JgUh0qfJjGJietwnXBGXOvOKZJirtmZwWcdEtVWXT/67Qar4dMRncO2DCt9jvLDx+UgETZBji8sPOuGkTvVVFTepCw2tmSIG737y/dXZrUl7I4/aQbyF5e9mMHF96WrqoBLHHDnT7miVC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=qvkiXJjV; arc=none smtp.client-ip=109.224.244.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768997278; x=1769256478;
	bh=mPLlnLK1CHU5AJ9GVuLPouSeFi+2Eyia3p2EWz53qko=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=qvkiXJjVb2+sz6DBwqxGMnCZLXzg7Rj15pf0n9Yr3VVMFEx9Jq/yQg0DolV7OyvS8
	 Opd1WnXQlHoDTOoHUblJxasEIt86IUoJYiZjHpTxZ5Lnhr4w6E9GN+YW736Ef/MS4V
	 bzlhh/WFQjW/+DI/ZGjpbWtyW9JbkVlQv9FBJBfa3tKbl3UEuEFbh7UEev4zUGCyQC
	 QbwDEWdUDPcTcNbg7mE4nDPRpbv+AUmEsWDQKqgeEcK1tQX8TrcITybq2i/TVnl3cL
	 XIWpCn1/iD3YALJ+tlFlcvAn8K1if8kpd1r/zNFvz5BNo/TPkuK+yblq+H9J5wtn48
	 gsPZR5HZzOAbw==
Date: Wed, 21 Jan 2026 12:07:53 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 13/23] man/man2/getgroups.2: HISTORY: Update first POSIX appearance of getgroups(2)
Message-ID: <a54a94c8b118575f91c97e94cf8f3814a0ba6720.1768995315.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768995315.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 15df3f245db7fda5d13ac37ab7b69f774221963e
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------d50f1faee39c4d3a667c6bfd4224396c6b355f62a664e422e1153e9cd065af7c"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4880-lists,linux-man=lfdr.de];
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
X-Rspamd-Queue-Id: 84F2856A19
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------d50f1faee39c4d3a667c6bfd4224396c6b355f62a664e422e1153e9cd065af7c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 13/23] man/man2/getgroups.2: HISTORY: Update first POSIX appearance of getgroups(2)
Date: Wed, 21 Jan 2026 22:05:48 +1000
Message-ID: <a54a94c8b118575f91c97e94cf8f3814a0ba6720.1768995315.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768995315.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me>
MIME-Version: 1.0

getgroups(2) first appeared in POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Section 4.2.3 "Get Supplementary Group IDs".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/getgroups.2 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man2/getgroups.2 b/man/man2/getgroups.2
index 78142e3bbd04..260107d24af0 100644
--- a/man/man2/getgroups.2
+++ b/man/man2/getgroups.2
@@ -157,7 +157,9 @@ .SH STANDARDS
 .SH HISTORY
 .TP
 .BR getgroups ()
-SVr4, 4.3BSD, POSIX.1-2001.
+4.3BSD,
+SVr4,
+POSIX.1-1988.
 .TP
 .BR setgroups ()
 SVr4, 4.3BSD.
--=20
2.47.3


--------d50f1faee39c4d3a667c6bfd4224396c6b355f62a664e422e1153e9cd065af7c
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlwwZkJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmeuxv6b4iPKQzbhN2nrv5FZFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAMW5AQDvU06Oo5JPJM0+8aOIKFx/9B0AkOzx0CWClqif
GUaaqgEAk9/zjGPiVFyG8r9WbFcEUseQ783ZELW4Xr3xJ0bL6QA=
=T+GQ
-----END PGP SIGNATURE-----


--------d50f1faee39c4d3a667c6bfd4224396c6b355f62a664e422e1153e9cd065af7c--


