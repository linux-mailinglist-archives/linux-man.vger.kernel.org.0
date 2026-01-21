Return-Path: <linux-man+bounces-4873-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6FO8FjHCcGnzZgAAu9opvQ
	(envelope-from <linux-man+bounces-4873-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 13:10:25 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 028E6568A8
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 13:10:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6A3B45831A7
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 12:08:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D07B342188D;
	Wed, 21 Jan 2026 12:07:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="Z3f6X1qc"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-4316.protonmail.ch (mail-4316.protonmail.ch [185.70.43.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352F63D668A
	for <linux-man@vger.kernel.org>; Wed, 21 Jan 2026 12:07:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768997249; cv=none; b=GTKSEp6StdXU/fvVOAy602e/RgkWRzeLj+HwuZO9UWtIbwreJ5gRGMLLNQd15FuNox+iICgTfzVjrO/33jrQKf5DEKVNBl72j24his9+I8DV/VJmGGHsNg05+YH/KRFo5NBbi783aFq62ma1YbAlQXMZE8a+J9RKv8eV2tUM8bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768997249; c=relaxed/simple;
	bh=EpeIESySUy82m63JZAsxyECCP6e3x94Poqv+Zt05wx8=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Jh/lN6mRUmw+ecZz0/CjBF65yrPcIpSil0hcXKT0OLDGmLGeLgVzaDgdo2IqCpo4p3BRQAd8dYuoDeBoGP5tHQLRLwNE/DQVhvev0jjMO2zyUytJYqn7PlDYlizU2dyvCHeeOPkXuAvyVJFMElmZW47F7p+eWWmEsGZimRrFXZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=Z3f6X1qc; arc=none smtp.client-ip=185.70.43.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768997246; x=1769256446;
	bh=EpeIESySUy82m63JZAsxyECCP6e3x94Poqv+Zt05wx8=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=Z3f6X1qcNrWoWcGw9eh/ApvymzAG9UybllZHwYiLjCmQhrNGbBLZUzPUr0usLkDyY
	 dH+02c8cNczRyzxwdT9atuaz43wSPX+XnF9JlFPfvxMfjrsjk4JNhzd0TtFdIbyTVH
	 xHmyS2qdd1By97SvtOxc5VFBhhH4ESL0Zic/5bVjoMD1hQuDSBuPj1VmcKGhwS4z35
	 bNVR1IDrQbHdOQ8OCiUDxeXz9KhuUo3QogZT5EfnwdoPW9dJK6qXrI2jOI3yUUMzh7
	 PfLgfZz5JFlwkdw+pXDfd+2IavdvR2S+ywivsqIRkaonbKLqL1vWgIr89uv5TJoAoP
	 jYzU32v13OyYw==
Date: Wed, 21 Jan 2026 12:07:21 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 06/23] man/man2/fcntl.2: HISTORY: Update first POSIX appearance of fcntl(2)
Message-ID: <1f924f4f5c3c3764469b48cd79a748b78137ec17.1768995315.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768995315.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 0e605debd6f770e95a9191518c739e60f8e72a69
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------30ab07098ba36e4f9b8f377e58c5dce8327dceaa94bc34d73df32e78bec79d84"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4873-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pm.me:email,pm.me:dkim,pm.me:mid,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 028E6568A8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------30ab07098ba36e4f9b8f377e58c5dce8327dceaa94bc34d73df32e78bec79d84
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 06/23] man/man2/fcntl.2: HISTORY: Update first POSIX appearance of fcntl(2)
Date: Wed, 21 Jan 2026 22:05:41 +1000
Message-ID: <1f924f4f5c3c3764469b48cd79a748b78137ec17.1768995315.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768995315.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me>
MIME-Version: 1.0

fcntl(2) first appeared in POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Section 6.5.2 "File Control".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/fcntl.2 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man2/fcntl.2 b/man/man2/fcntl.2
index 7f34e332ef90..bd18da6448e6 100644
--- a/man/man2/fcntl.2
+++ b/man/man2/fcntl.2
@@ -134,7 +134,9 @@ .SH STANDARDS
 .\" .P
 .\" SVr4 documents additional EIO, ENOLINK and EOVERFLOW error conditions.
 .SH HISTORY
-SVr4, 4.3BSD, POSIX.1-2001.
+4.3BSD,
+SVr4,
+POSIX.1-1988.
 .SH SEE ALSO
 .BR dup2 (2),
 .BR flock (2),
--=20
2.47.3


--------30ab07098ba36e4f9b8f377e58c5dce8327dceaa94bc34d73df32e78bec79d84
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlwwXgJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmcS5q0f5aO/V+SXSCRIjH5yFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAABCzAP9QVAI88ejibhyxjamMDHH/aW3POck+Z8YOmYtI
NMfGIAD+LALGgl78OE1raXWL58iN6afiZGs7KVaPCMADrBUikAc=
=55eu
-----END PGP SIGNATURE-----


--------30ab07098ba36e4f9b8f377e58c5dce8327dceaa94bc34d73df32e78bec79d84--


