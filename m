Return-Path: <linux-man+bounces-4912-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4CxwHneLcWkLJAAAu9opvQ
	(envelope-from <linux-man+bounces-4912-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:29:11 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE1C60E84
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:29:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 832F2884BD7
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 02:25:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99F2F37A48A;
	Thu, 22 Jan 2026 02:25:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="ffDZbmtw"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-4322.protonmail.ch (mail-4322.protonmail.ch [185.70.43.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC92D35580E
	for <linux-man@vger.kernel.org>; Thu, 22 Jan 2026 02:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769048725; cv=none; b=GgHwui+GcHZIgTWci4iR9/Au3BIvEd5N+cge987lBiekVuQ238inolwaXw2bn461oZ34nyKxjmGYtRV1fBGJH+dTwzZWCQjThVhL+db8r+PwzQJ9scOoiw9J7Rm+f2wH+iW6lLc2QbImCxzzq75JBcetKihqo2VD6MrWWjukO08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769048725; c=relaxed/simple;
	bh=BwvlgzfstgFKd+XiX5c7yudPAOxP9sLhLuUzG3FeONk=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Dqmd4u0EHoIij0s4EdwE2ScgphKThh3i8gqUK3PNSApdGDA1Z6Jqvk1jrf29vvn4kHIVM9sJbq0gAEOykB5MZkBbCnUgwWBAUMNRoCfJgMzJemVngIYyCKCrZ3Ydhbf3p/5u5e4WEQfybSELtH/zNiqAakvi/ZrX28+itG9uGRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=ffDZbmtw; arc=none smtp.client-ip=185.70.43.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769048720; x=1769307920;
	bh=BwvlgzfstgFKd+XiX5c7yudPAOxP9sLhLuUzG3FeONk=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=ffDZbmtwTDF1nv3iWa8oRXtKSocc4di+w2TbkiE1Z6kFnIJwX7l14aVPYZI3dik7Z
	 tcsg+h9SjGGGCqoq8hgnMDJhwSfzD7KO60LymFNAGlcLY+dHP1Rq1AiEdkaU2zqX1N
	 LD50Uvu86UA3I0Ociw8j5rzmrQKNE2YFAAhAK0pqACnKWbZ4DmajYGN1/ESrmLZ/eV
	 82NoF/9rbk0kF+KDW+xrQSJvPK2lMSbvpeRNYFubFU1faJ3mHi9EVxzC/mG2qnf0G7
	 mAn8jFRtKvLvhYlGYENNer7sV5v82mEtFObirGkqJjrBwJt5PjMBG3M8Sw3yKhF2Im
	 w7miifD3dHtRw==
Date: Thu, 22 Jan 2026 02:25:17 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 12/23] man/man2/get[gu]id.2: HISTORY: Update first POSIX appearance of get[e][gu]id(2)
Message-ID: <6b987649c5ccd426ddffb770a5ba82cb88d91af9.1769047228.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me> <cover.1769047228.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 2e5fee3d4d594caa6049cc4d4c916ad0fe7a2bc7
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------890c0b9765c3c4576deebc5e678079b59726ac800af1c9f0b7ec5a4171323221"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4912-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns,pm.me:email,pm.me:dkim,pm.me:mid]
X-Rspamd-Queue-Id: 2EE1C60E84
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------890c0b9765c3c4576deebc5e678079b59726ac800af1c9f0b7ec5a4171323221
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 12/23] man/man2/get[gu]id.2: HISTORY: Update first POSIX appearance of get[e][gu]id(2)
Date: Thu, 22 Jan 2026 12:24:04 +1000
Message-ID: <6b987649c5ccd426ddffb770a5ba82cb88d91af9.1769047228.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1769047228.git.sethmcmail@pm.me>
MIME-Version: 1.0

getgid(2), getegid(2), getuid(2), and geteuid(2) first appeared in
POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Section 4.2.1 "Get Real User, Effective User,
Real Group, and Effective Group IDs".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/getgid.2 | 3 ++-
 man/man2/getuid.2 | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/man/man2/getgid.2 b/man/man2/getgid.2
index e56523ada75b..5929903da2be 100644
--- a/man/man2/getgid.2
+++ b/man/man2/getgid.2
@@ -46,7 +46,8 @@ .SH VERSIONS
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001, 4.3BSD.
+4.3BSD,
+POSIX.1-1988.
 .P
 The original Linux
 .BR getgid ()
diff --git a/man/man2/getuid.2 b/man/man2/getuid.2
index a1dd320fcff5..bb8ac4894d6f 100644
--- a/man/man2/getuid.2
+++ b/man/man2/getuid.2
@@ -30,7 +30,8 @@ .SH ERRORS
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001, 4.3BSD.
+4.3BSD,
+POSIX.1-1988.
 .P
 In UNIX\ V6 the
 .BR getuid ()
--=20
2.47.3


--------890c0b9765c3c4576deebc5e678079b59726ac800af1c9f0b7ec5a4171323221
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlxiowJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmfjxF6iNck0INydt2e7sAF5FiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAOWnAP4zDJ9PwM4Kh5oYVKjgNJGVkXCri3SXuuThKx19
Fmdt1gEAiLTcyvrD+qH0iW5/RW7xWmob0hG3IkeZr2sTHU0uvQs=
=Wo8t
-----END PGP SIGNATURE-----


--------890c0b9765c3c4576deebc5e678079b59726ac800af1c9f0b7ec5a4171323221--


