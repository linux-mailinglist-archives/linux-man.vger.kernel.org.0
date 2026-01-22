Return-Path: <linux-man+bounces-4919-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QPNXOLCLcWkLJAAAu9opvQ
	(envelope-from <linux-man+bounces-4919-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:30:08 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA4960F01
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:30:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3F5B7446F73
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 02:26:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91705324B2A;
	Thu, 22 Jan 2026 02:26:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="GcuMNB3H"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-4316.protonmail.ch (mail-4316.protonmail.ch [185.70.43.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C216A22A7E4
	for <linux-man@vger.kernel.org>; Thu, 22 Jan 2026 02:25:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769048760; cv=none; b=mgsrZ46XY9ma8fyyebZBbQcZWPnHixortpz8oYwd5zQS/BGrlG9yh0/ciEx6zgsPoGki1P/2N5ORcLHCmWd6kmYK33m8sh+D4Uen1GGdvSNQXrq9svmRvMRLpeBuZZ/Lkq5EBjTdspm4hvuhHI0rw6LflnbiC5vr+dnxBUi9Q68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769048760; c=relaxed/simple;
	bh=VTkyIpgWyEq3zK/oqUxrEdFoRY0mKLxQAimHR1ug+xA=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=MuDGGiU8JaR1Sho5ZnSquMiodHHJKFGxpi+Web5Pp3NxnTY95sCtbL9+g9jufYlJQ9N9iroe2Knt9bxLNbRQ48oWjm4CXhmkobq3fcoS/Z8IBHdyC5WNwa2M1B6FV82iFWdLoQxZx/kGVJ7M8ggO6xQ/4Xya0ErP+yWtSprYk7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=GcuMNB3H; arc=none smtp.client-ip=185.70.43.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769048756; x=1769307956;
	bh=BC1DuYNSQyKTyzBEJ8hE/9pzr5jwN60lB3eyz3qdhCg=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=GcuMNB3H0MDzIQ2fdaP0791BHgEtz2oxiYo9ZUO9wy7bawdrK0BCpGo5Xi+Mc/1xb
	 bht+w4st3I5w7HgK/jGQtr6vCLyz3RUVL9dwapBNdJmivrsB4iifLHOKm9Tu9IyZYj
	 D5ANeFt6KzQgmOG27E2mYBkSzvUYlueX1yGWiXGqgIGI0/vUKbJ4cMLLPsLu1d7eL3
	 hXd1kjvYlXrr8sAtxNaHObgl4SVWrmdRM3cYUVYY5edDdyVGS+okvTcwF85Yu5NGel
	 FuckgLKobMtdIJjv5Pg4B45tw/CohB/tbwQrTohdhj2GjEE+Z5Nrdb/fL4GISIYlzu
	 sgxucQzUlUUYg==
Date: Thu, 22 Jan 2026 02:25:52 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 20/23] man/man2/getrlimit.2: HISTORY: Update first POSIX appearance of [gs]etrlimit(2)
Message-ID: <ffb23d5856179db3b8fd8a6514203418b28eb7be.1769047228.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me> <cover.1769047228.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: d5b889f61cbd5ec4cf937777013c9f2819329cec
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------27589f229075e84454ff679e957fa9f54bf7f0f4c454cf8f6ad553b1baeeba0b"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4919-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns,opengroup.org:url,pm.me:email,pm.me:dkim,pm.me:mid]
X-Rspamd-Queue-Id: CAA4960F01
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------27589f229075e84454ff679e957fa9f54bf7f0f4c454cf8f6ad553b1baeeba0b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 20/23] man/man2/getrlimit.2: HISTORY: Update first POSIX appearance of [gs]etrlimit(2)
Date: Thu, 22 Jan 2026 12:24:12 +1000
Message-ID: <ffb23d5856179db3b8fd8a6514203418b28eb7be.1769047228.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1769047228.git.sethmcmail@pm.me>
MIME-Version: 1.0

getrlimit(2) and setrlimit(2) first appeared in SUSv1.[1]  The functions
were added to POSIX.1-2001 when POSIX and SUS merged, but as an XSI
extension (still SUS-only).[2]  Then POSIX.1-2024 added them to the base
specification.[3]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 3 "System Interfaces", pp. 269-270.
[2] IEEE Std 1003.1-2001, Volume 2, Chapter 3 "System Interfaces", pp.
551-553.
<https://pubs.opengroup.org/onlinepubs/009604499/functions/getrlimit.html>
[3] IEEE Std 1003.1-2024, Volume 2, Chapter 3 "System Interfaces", pp.
1176-1179.
<https://pubs.opengroup.org/onlinepubs/9799919799/functions/getrlimit.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/getrlimit.2 | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/man/man2/getrlimit.2 b/man/man2/getrlimit.2
index f53add91c4d7..39d0f6ab44e2 100644
--- a/man/man2/getrlimit.2
+++ b/man/man2/getrlimit.2
@@ -554,7 +554,11 @@ .SH HISTORY
 .BR getrlimit ()
 .TQ
 .BR setrlimit ()
-POSIX.1-2001, SVr4, 4.3BSD.
+4.3BSD,
+SVr4,
+SUSv1,
+POSIX.1-2001 XSI,
+POSIX.1-2024.
 .TP
 .BR prlimit ()
 Linux 2.6.36,
--=20
2.47.3


--------27589f229075e84454ff679e957fa9f54bf7f0f4c454cf8f6ad553b1baeeba0b
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlxirAJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmfdBNWm5cZe88hf4vVNek/AFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAMkPAP46HFO0KJbzmqJbBfxPTIvuQv8w5VFsVqu7WZ5D
O52YagEA7wJrdlE6VCS9j+EmkH/2tcvyPCdP6+vT1+z26g9d3gs=
=XnCP
-----END PGP SIGNATURE-----


--------27589f229075e84454ff679e957fa9f54bf7f0f4c454cf8f6ad553b1baeeba0b--


