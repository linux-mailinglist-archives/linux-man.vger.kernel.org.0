Return-Path: <linux-man+bounces-4845-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id EAFDFD3A781
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 12:57:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 628703002D03
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 11:57:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FC2031B825;
	Mon, 19 Jan 2026 11:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="k2JeAyaX"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-4316.protonmail.ch (mail-4316.protonmail.ch [185.70.43.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085E731B81C
	for <linux-man@vger.kernel.org>; Mon, 19 Jan 2026 11:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768823829; cv=none; b=eEsh7tQkaioAjncdoGom7vJiFUNJFjD+Yog7x+jyEU4/FB44rxgobVkDKr+dSdxM5hNTY2VctMGLEPLxvR1Yc7qoPda69J5NUOaLSq2hXPBZqhuhh329kkR9wAjpwRtSQYd6avFQ9RR6XtOmKadU0cJ2Aw98NI4q9mGZVzKesDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768823829; c=relaxed/simple;
	bh=nWPKbqzQIVJ06vteM46Svjhc3+O+pi3qyEAsMIZ9fBc=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DNwmLf87HnMKTQfxDd4EOMGC3kpDXGmhEWQrHqMieoiHQdNAPSZOHCBhvp3aAOEgnAuS0Q/SBbFC7TMHiVNijMZRG4JXP5+n0HJhH3RJ40W5TCfMNj6mB/gD2juR8W/kf11Pusn9FafaaWuaJjXNXbKMyFQGwoGKwXRpf+VRB0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=k2JeAyaX; arc=none smtp.client-ip=185.70.43.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768823826; x=1769083026;
	bh=9ZOANsla29+QGtjQC8bYguaQ/3mJhPDGP7V9tqQ5a8I=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=k2JeAyaXirF5fvTJBo5vgwNWTn22vqMKFnFi1APdg5Fk5ql9DyGsAMqwv0PwY52eI
	 4t2KIKOLMnrAR834Bp0wA3L5FeLcTgxjulUOOm2jjE0sxvZFaTERra/EzgnoAAM7Sy
	 ZwZg5IXBcSopNxn5SYMYkzZ27CY2axnFxVeKj1a5FY8hwdOp/KYIc4iLSvauUXqlsl
	 8PIrqrEDl+saKNagi22/otx15t8kcWzNQHPNd10waApAil5uS4aCWBxR8fQAzuaEu3
	 0Ht18l8R1OGYTyx9degfemEC5S/JCq3IWONQg4dL9Yw30Wosp+bph8UfGWv/PQmSC7
	 sPeK60d2VLGLg==
Date: Mon, 19 Jan 2026 11:57:01 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: [PATCH v1 11/19] man/man2/chmod.2: HISTORY: Specify different chmod(2) prototypes
Message-ID: <02eef8835d607e135ad5f3ca6d28276c99a6feda.1768822707.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 21b98b12c5a6f31045d290e251cd58ab54fdc8dd
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------b01df9da6270e2be8eec3583cd051622e34bf4e644de74acd7baf43212d1385c"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------b01df9da6270e2be8eec3583cd051622e34bf4e644de74acd7baf43212d1385c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 11/19] man/man2/chmod.2: HISTORY: Specify different chmod(2) prototypes
Date: Mon, 19 Jan 2026 21:51:55 +1000
Message-ID: <02eef8835d607e135ad5f3ca6d28276c99a6feda.1768822707.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
MIME-Version: 1.0

chmod(2) was specified in POSIX.1-1988 with the prototype
int chmod(char *path, mode_t mode); [1]

POSIX.1-1990 then changed the prototype to
int chmod(const char *path, mode_t mode); [2]

[1] IEEE Std 1003.1-1988, Section 5.6.4 "Change File Modes".
[2] IEEE Std 1003.1-1990, Section 5.6.4 "Change File Modes".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/chmod.2 | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/man/man2/chmod.2 b/man/man2/chmod.2
index d9e316747f98..78bd4d05139f 100644
--- a/man/man2/chmod.2
+++ b/man/man2/chmod.2
@@ -361,6 +361,13 @@ .SH HISTORY
 .B AT_SYMLINK_NOFOLLOW
 glibc 2.32,
 Linux 6.5.
+.P
+POSIX.1-1988 initially specified the function signature of
+.BR chmod ()
+with a non-const-qualified
+.I path
+parameter.
+This was remedied in POSIX.1-1990.
 .SH SEE ALSO
 .BR chmod (1),
 .BR chown (2),
--=20
2.47.3


--------b01df9da6270e2be8eec3583cd051622e34bf4e644de74acd7baf43212d1385c
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmluHAsJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmf6R0mG+SfAKXs8U7B7+w/LFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAPKQAP0dMnMGw9VEMy6BZ5ChKH38+uu00MCAMfucA7Q6
l6JAIgEAkvAGIWNZiRxcnQkiuuy4CYbalk6khCucR1W2D6cqxAA=
=n4Pg
-----END PGP SIGNATURE-----


--------b01df9da6270e2be8eec3583cd051622e34bf4e644de74acd7baf43212d1385c--


