Return-Path: <linux-man+bounces-4870-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YBl3LefBcGnzZgAAu9opvQ
	(envelope-from <linux-man+bounces-4870-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 13:09:11 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id A7CFA56879
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 13:09:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 18929460010
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 12:07:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C12BA3F23DB;
	Wed, 21 Jan 2026 12:07:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="BvfkgN45"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-43100.protonmail.ch (mail-43100.protonmail.ch [185.70.43.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 919FD3D6491
	for <linux-man@vger.kernel.org>; Wed, 21 Jan 2026 12:07:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.100
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768997236; cv=none; b=JZ+GV1gSMgCxh6O47ishynztUuDQ8fch7VKAF3Hr2OjVwIKoBRx9SYWyvonJCs/9+Jp0jRMCfZBkc0kbnqtzjf/SCfpFjqACvDOMtvbdvTPppl/LvAwEBPqcsQmz4+qUePLKoybkHtcp2L6xwReyey3O698+yXWBcMz938UsG8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768997236; c=relaxed/simple;
	bh=ZuFNCE/9mrDoag3t1glMRlsKSq0BABy8Is8v6/L6K94=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=P1VRH30LGNWI2ysXPVQlTR03OAZyqpXq24Ygxn38Am/2GSusQL1hVEIOhdY/wv1GMIQClDyNvheAOtd0Qi12XSkmajzSIqu0+zRCiai5Jaq42AdxCQ3mItzVT9IEPi09WUWbZVh+38iQSnyw5pGhSL74Wac2yMS5siPn6A2TXq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=BvfkgN45; arc=none smtp.client-ip=185.70.43.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768997232; x=1769256432;
	bh=5DRPRbR06mCIvMeFkjYdMk0Iwj4GVMM3CzwY6rlK7vI=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=BvfkgN455g9p7rLrgC+fER5CMY1Oq6JFZ7zZJ86ZEwQ8xd452eiOmG3eo2v9A1STa
	 L1v5R1yL/G0skxYxfjr97zJWZwOqrRGGRlTaI3lFyJULB192CkhjJh6oS78Xxa7CaD
	 sxsqtjHTk09SyQHLscthO9fz+dQvPc0vHlNSKNN52pwkS3BcH2GS8BFQP4kI77gt8w
	 T/KFiz5U5kl4Oyscjv2WnzEtt+isudsSRjTpw5J0nxSKrwOxrqFtIEwLEIJUY4ITiA
	 AIuNEuPKFRj3A2zT8IzBEwkeoopLn3U7KBwIvlSb+xOmkk1DFR2JMVqufm31CBOdVB
	 LI6YTQYtAraIA==
Date: Wed, 21 Jan 2026 12:07:08 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 03/23] man/man2/dup.2: HISTORY: Update first POSIX appearance of dup[2](2)
Message-ID: <11e4b9d2ac052c8d240ceec95ac927ec6025c397.1768995315.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768995315.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 1c98887392c379c8865d34c9b5a4c32a736f7ff4
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------4831476b1d158b557bd52efdfbf1051b2caf293b289b0ae99eccef6360f5edbe"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4870-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[pm.me:email,pm.me:dkim,pm.me:mid,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: A7CFA56879
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------4831476b1d158b557bd52efdfbf1051b2caf293b289b0ae99eccef6360f5edbe
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 03/23] man/man2/dup.2: HISTORY: Update first POSIX appearance of dup[2](2)
Date: Wed, 21 Jan 2026 22:05:38 +1000
Message-ID: <11e4b9d2ac052c8d240ceec95ac927ec6025c397.1768995315.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768995315.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me>
MIME-Version: 1.0

dup(2) and dup2(2) first appeared in POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Section 6.2.1 "Duplicate an Open File
Descriptor".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/dup.2 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man2/dup.2 b/man/man2/dup.2
index 941483319f5c..c13c4be9135e 100644
--- a/man/man2/dup.2
+++ b/man/man2/dup.2
@@ -196,7 +196,9 @@ .SH HISTORY
 .BR dup ()
 .TQ
 .BR dup2 ()
-POSIX.1-2001, SVr4, 4.3BSD.
+4.3BSD,
+SVr4,
+POSIX.1-1988.
 .\" SVr4 documents additional
 .\" EINTR and ENOLINK error conditions.  POSIX.1 adds EINTR.
 .\" The EBUSY return is Linux-specific.
--=20
2.47.3


--------4831476b1d158b557bd52efdfbf1051b2caf293b289b0ae99eccef6360f5edbe
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlwwWwJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmendgU2BA9vwzdtF7fMdiWkFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAGxAAQDF2/nPQfGgarpWBB2Sg7L8/vsVHMPvH21Qai6Y
Ekh+igEAgZEb3TKqwWM1/5KAXBQETdsuEqqRml+B2CNntYOmggg=
=FT8p
-----END PGP SIGNATURE-----


--------4831476b1d158b557bd52efdfbf1051b2caf293b289b0ae99eccef6360f5edbe--


