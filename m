Return-Path: <linux-man+bounces-4887-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CH4VHtzDcGkNZwAAu9opvQ
	(envelope-from <linux-man+bounces-4887-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 13:17:32 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B5A569F9
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 13:17:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B838A9AA79D
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 12:08:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C3E63A8FF3;
	Wed, 21 Jan 2026 12:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="LqucxUvl"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-106119.protonmail.ch (mail-106119.protonmail.ch [79.135.106.119])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C7332D7DF6
	for <linux-man@vger.kernel.org>; Wed, 21 Jan 2026 12:08:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.119
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768997326; cv=none; b=akJgkd6Gf2NlL4nc03ATpnFJoZjs9cLT5Im0WWsCjHa8VjajvotpIdPNPoT6Fv5irYWG/TZyQjrt4m7nx7lGF7Vs1kDj96RG3oDUmb2TX6DKxeJGGLuZmqzlSoA1ypFfnawecPWsQYEmcnX6y+uJXAdO/Hjtjb34uhGpFGnISk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768997326; c=relaxed/simple;
	bh=TK/FTAExHLuJxX2r4opPDb4hdlUDZIQgqQP9yHtb6oY=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Sr2beSnOWUEzhvCeoIoICM4oUB9Y0753Uhldg7uOqxKSc4323B9bRxnlpyKjmNcCe0lbygIHXKSAGWs77imtaMi/xBoec1GxFKKfZMnceVMQ7pvAapUZ5RrPoOah1yFLFDGdsLndAXNlL729gfQGb3RCKBGiaYhU+UIExT8iLCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=LqucxUvl; arc=none smtp.client-ip=79.135.106.119
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768997321; x=1769256521;
	bh=rj3063a+ZnVRZpzE7D2OsZFtLGQjhm39QSfm5vWr9i0=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=LqucxUvls8deNJgB3SrL0Y4rTftExAE8SerATzlaIhdsM9oABDciKTR5axmjU3UZF
	 J92YzDtWQqLtAj2EGtP/mu9y4Ob6JjJSrxvDxrg2/US8IfvTggOptm7VI+8MHCxlLy
	 8mN8VEKM2WjRdje99LJTRD+KN2e9kiPZZE/o0wb+fg0FP/9+1ii3zfkEb7g9dVp6L9
	 H13MW+RFx0jhnWKmIpA09vEGgdYG/fA1TB0V2gLs3RMNgMzdQKGYDHtMUlGl6bik76
	 6MXe08OAXdYfDwBdpUuXXXTyJnQ72g88GNZJyvYxbdlXiicoAe6uQAmYFZQEsa/CEB
	 +EgOMb3UarE7w==
Date: Wed, 21 Jan 2026 12:08:38 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 21/23] man/man2/getsid.2: HISTORY: Update first POSIX appearance of getsid(2)
Message-ID: <1bc25963021ca772b6e7967ec51fcbefd07f2d52.1768995315.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768995315.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 49bc0f1068cc2c0fa2f3dff66ef051030a89c13f
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------49b830bd438f76cb4372fa483b1090ccbe3ef29a19b7ccc9b565ed93ce0173d2"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4887-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[pm.me:email,pm.me:dkim,pm.me:mid,dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,opengroup.org:url]
X-Rspamd-Queue-Id: D8B5A569F9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------49b830bd438f76cb4372fa483b1090ccbe3ef29a19b7ccc9b565ed93ce0173d2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 21/23] man/man2/getsid.2: HISTORY: Update first POSIX appearance of getsid(2)
Date: Wed, 21 Jan 2026 22:05:56 +1000
Message-ID: <1bc25963021ca772b6e7967ec51fcbefd07f2d52.1768995315.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768995315.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me>
MIME-Version: 1.0

getsid(2) first appeared in SUSv1.[1]  The function was added to
POSIX.1-2001 when POSIX and SUS merged, but as an XSI extension (still
SUS-only).[2]  Then POSIX.1-2008 added it to the base specification.[3]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 3 "System Interfaces", p. 273.
[2] IEEE Std 1003.1-2001, Volume 2, Chapter 3 "System Interfaces", p.
558.
<https://pubs.opengroup.org/onlinepubs/009604499/functions/getsid.html>
[3] IEEE Std 1003.1-2008, Volume 2, Chapter 3 "System Interfaces", p.
1073.
<https://pubs.opengroup.org/onlinepubs/9699919799.2008edition/functions/get=
sid.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/getsid.2 | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/man/man2/getsid.2 b/man/man2/getsid.2
index 7688dd27c14a..944f50456e9a 100644
--- a/man/man2/getsid.2
+++ b/man/man2/getsid.2
@@ -60,8 +60,11 @@ .SH VERSIONS
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001, SVr4.
-Linux 2.0.
+SVr4,
+SUSv1,
+Linux 2.0,
+POSIX.1-2001 XSI,
+POSIX.1-2008.
 .\" Linux has this system call since Linux 1.3.44.
 .\" There is libc support since libc 5.2.19.
 .SH NOTES
--=20
2.47.3


--------49b830bd438f76cb4372fa483b1090ccbe3ef29a19b7ccc9b565ed93ce0173d2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlwwcUJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmfMqiEAvtp4XhCVoQLZN1J1FiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAOnDAP46J9RA1QSdfALhLVeghmNbdr1AcDT8/nzQx5Bz
VTKXrAEAgL8mNjDw1T3oLxw5zV+Zw/q/kGmzj4DkeamvBT/auQI=
=0d0B
-----END PGP SIGNATURE-----


--------49b830bd438f76cb4372fa483b1090ccbe3ef29a19b7ccc9b565ed93ce0173d2--


