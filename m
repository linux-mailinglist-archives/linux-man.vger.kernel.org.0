Return-Path: <linux-man+bounces-4905-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wPj5KXaLcWkLJAAAu9opvQ
	(envelope-from <linux-man+bounces-4905-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:29:10 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D12460E7C
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:29:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 822CA46311C
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 02:25:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3842F37BE79;
	Thu, 22 Jan 2026 02:24:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="bDpXoY+/"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-244123.protonmail.ch (mail-244123.protonmail.ch [109.224.244.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EF38324B2A
	for <linux-man@vger.kernel.org>; Thu, 22 Jan 2026 02:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769048698; cv=none; b=DAuGQZ7Qv4adpBBeStmtEwGXt2Kzn96OEg5auhbWCMH36SXrPWi8GpsTAh8zJDSkayfFdtyZsjbnX2tbkfiwh5GjRvNKJCOLLPE4sqntInqXi0wgd9g5WYkamYl4mtFibH6W3HAxQvSIrQUvZJPSB9A6Hu7dyeOlogbBfzX5QQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769048698; c=relaxed/simple;
	bh=UJT+Ua676HT+K7qmu6CpGGhthpe8XWCikBHBdgt+4uQ=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=l2q/blxd6isliv2qvPVWcc8OUaWDcgPBv4bFzFS/OoRUTJ4NZX8KjVNnRg+wYujNoGU5YIcMIrKtOuWo0VOUUaovEI8IGVpNyzjJT/z9TObWMpTDbgtcljhlbUE1gVV5LcAfR8wymOeyCXeEsdxUgY9PND2VyZZg9HVFN7yi18o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=bDpXoY+/; arc=none smtp.client-ip=109.224.244.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769048689; x=1769307889;
	bh=UJT+Ua676HT+K7qmu6CpGGhthpe8XWCikBHBdgt+4uQ=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=bDpXoY+/1Qkj3WStUEqzLqDpujTqPwUCjQlocWaumkXVdTH10qROkEFo8z4G3tOhw
	 Zoc5cXSReoCf6TVmG50JDHF1pn1zjWhVAOAoEdbkyOYEKBHd2Uyhyg3pE86OGT8tFa
	 pzXbJuwJiP3F+xrql7cDfqLp16dTgu4AaUMMCx1vT5wO35I8maeMfbSKH+SHDsv9q2
	 vZoGCHZJoLXBGPh314vPfIsAHXndUI92BuNt1RIb+JTxO8SEbQaS7r3lWYWNCk/QzO
	 hNPcYrYWv8k6rxA4WAAa7Eqhxt+EJrwZT2j+pCK8koy99HAtOQ3SoggHr8vgj/7eSU
	 gRY2xCF/j9SqQ==
Date: Thu, 22 Jan 2026 02:24:45 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 05/23] man/man2/_exit.2: HISTORY: Update first POSIX appearance of _exit(2)
Message-ID: <eb5b310ab4dd16207afcdc5e8b9f8d80cd356b8d.1769047228.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me> <cover.1769047228.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: ce9c5fead29159807ec469f0e4be190929dca1dc
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------96ce9cfadd267d60bcab3dae99735ed513b112c97d3f89fe96afd042c6d83a6d"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4905-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns,pm.me:email,pm.me:dkim,pm.me:mid]
X-Rspamd-Queue-Id: 5D12460E7C
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------96ce9cfadd267d60bcab3dae99735ed513b112c97d3f89fe96afd042c6d83a6d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 05/23] man/man2/_exit.2: HISTORY: Update first POSIX appearance of _exit(2)
Date: Thu, 22 Jan 2026 12:23:57 +1000
Message-ID: <eb5b310ab4dd16207afcdc5e8b9f8d80cd356b8d.1769047228.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1769047228.git.sethmcmail@pm.me>
MIME-Version: 1.0

_exit(2) first appeared in POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Section 3.2.2 "Terminate a Process".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/_exit.2 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man2/_exit.2 b/man/man2/_exit.2
index e1f264c95df2..940b1d408fa7 100644
--- a/man/man2/_exit.2
+++ b/man/man2/_exit.2
@@ -65,7 +65,9 @@ .SH STANDARDS
 .SH HISTORY
 .TP
 .BR _exit ()
-POSIX.1-2001, SVr4, 4.3BSD.
+4.3BSD,
+SVr4,
+POSIX.1-1988.
 .TP
 .BR _Exit ()
 C99, POSIX.1-2001.
--=20
2.47.3


--------96ce9cfadd267d60bcab3dae99735ed513b112c97d3f89fe96afd042c6d83a6d
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0Fgmlxim0JkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmdJ0JufABgO1jhkRLvQ8JsmFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAGvKAP4imBt5RxKyWMxEo+T2P7Oilx+SAp45h46606OE
NJaQJQEAg0ckZ6sFIfyFJYT3DfAfeytUS0J3FMMhky2k/tvI1w4=
=90Zo
-----END PGP SIGNATURE-----


--------96ce9cfadd267d60bcab3dae99735ed513b112c97d3f89fe96afd042c6d83a6d--


