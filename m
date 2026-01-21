Return-Path: <linux-man+bounces-4876-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oK4pFDzCcGnzZgAAu9opvQ
	(envelope-from <linux-man+bounces-4876-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 13:10:36 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 04EB4568CC
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 13:10:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C440252582A
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 12:08:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AB67363C4F;
	Wed, 21 Jan 2026 12:07:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="S/09qjq5"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-24417.protonmail.ch (mail-24417.protonmail.ch [109.224.244.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72197342C8B
	for <linux-man@vger.kernel.org>; Wed, 21 Jan 2026 12:07:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768997263; cv=none; b=qQ2r4mAZybDFYqWN8TR5Gm1xN3PyZq+wpzW5RCraF6fFN42+1tFEqKQ/O25/qhtgG8ZuuT8+JPoamN2ebZ2g9ElfmAw5fULaYYyBGarAVcjUueLK4NBsn4LhVOxzmCdghqEVODI1j6jtlwSGE3WC2R5e8LZBBPLfuUJOGQmrzoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768997263; c=relaxed/simple;
	bh=Oz/wnwQpBidt591m5mabv+1bfQ5HojPvpLkx4pQMgy4=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=BB3oDLmADv43fWWgy7m+0KDfbclRZQX8aCsybCT0IjMwJmcxczj+y7X4WQRpYbyOaQ2c48eGCTZtOOK57S69cMBbG2c3aFGZrNfOr5n8Bq6Amf31aDVXDaCjkCH/Z2XHMjb40wFv3tcOIFbRf/VeNqq4IQssWFcbmpuhiqAo8SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=S/09qjq5; arc=none smtp.client-ip=109.224.244.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768997260; x=1769256460;
	bh=Oz/wnwQpBidt591m5mabv+1bfQ5HojPvpLkx4pQMgy4=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=S/09qjq59hAel36XNv1vsk7iFLiaH9Hz7Jcfbkp8SlcKSScCVBZKBn5yMODE89nj8
	 jtC8rTseKVxWzEMFwxSVPRAdCzi0G3u/LjKlQiaBsOW26lgLoRw+FY1EeN0hU/QJeR
	 uHVSI22wiIgxi6E5b0QFSLRscIAGx8RzRb+S6epJDA3PXEVj3hQne1bJacPPD/6qzc
	 1mtycxW1kvaVqwf0xP8o5ioKItqjzkf0Mu43YBraUQ8oi1Mj/7QBdoGVjSFEGfkwJK
	 bS0TfRPj4/UB+FDm2HU0jJLWcPpFxqku1irBwiPuYfd72wPXajsUkjvqFvA0scVbtT
	 vEIsSq5xkJsnw==
Date: Wed, 21 Jan 2026 12:07:35 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 09/23] man/man2/fsync.2: HISTORY: Split fsync(2) and fdatasync(2)
Message-ID: <163be42a70eada3b63225fe5989911ff4ac9e4c3.1768995315.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768995315.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: e600377d217d64dfd2bc136c1d9c9298af274a7a
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------9a59e51f95d2115cd3466dd4414d1210f5f03b03d7d3ba7692455ed3d111a9e5"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4876-lists,linux-man=lfdr.de];
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
X-Rspamd-Queue-Id: 04EB4568CC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------9a59e51f95d2115cd3466dd4414d1210f5f03b03d7d3ba7692455ed3d111a9e5
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 09/23] man/man2/fsync.2: HISTORY: Split fsync(2) and fdatasync(2)
Date: Wed, 21 Jan 2026 22:05:44 +1000
Message-ID: <163be42a70eada3b63225fe5989911ff4ac9e4c3.1768995315.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768995315.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me>
MIME-Version: 1.0

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/fsync.2 | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/man/man2/fsync.2 b/man/man2/fsync.2
index d59e346ef165..e4f8b9b9456d 100644
--- a/man/man2/fsync.2
+++ b/man/man2/fsync.2
@@ -151,7 +151,14 @@ .SH VERSIONS
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001, 4.2BSD.
+.TP
+.BR fsync ()
+4.2BSD,
+POSIX.1-2001.
+.TP
+.BR fdatasync ()
+4.2BSD,
+POSIX.1-2001.
 .P
 In Linux 2.2 and earlier,
 .BR fdatasync ()
--=20
2.47.3


--------9a59e51f95d2115cd3466dd4414d1210f5f03b03d7d3ba7692455ed3d111a9e5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqoEARYIAF0FgmlwwYYJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmdw7FCGbJGhVOPVNY3B3Vn5FiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAHKiAPdib10f0Rvf06L6IV8NeGUwzYXUpuryKeitaox7
cB5FAP4uNNTo5BVW4qSIe5/v8uOnXkd4Z5gUi778m6T31o6kDg==
=qdgW
-----END PGP SIGNATURE-----


--------9a59e51f95d2115cd3466dd4414d1210f5f03b03d7d3ba7692455ed3d111a9e5--


