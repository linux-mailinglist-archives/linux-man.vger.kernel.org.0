Return-Path: <linux-man+bounces-4847-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D4464D3A7A8
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 13:00:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 77D043087306
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 11:57:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1E8E31BC84;
	Mon, 19 Jan 2026 11:57:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="lO++od0G"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-244122.protonmail.ch (mail-244122.protonmail.ch [109.224.244.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62B7931B80B
	for <linux-man@vger.kernel.org>; Mon, 19 Jan 2026 11:57:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768823860; cv=none; b=QSv53JRPilh8RLBLOpvDHx+VCrM6B3GcHdfv0ErAozkAVRi4+hLc+MfvwL+52v9Sbav3av2907yMwNHvswt/Um85pNCFWy/UFpYxCPBaAVDDEn+ud5n3A11HfKU4ljCtxVuhOfmTrpfX/uZrbvAL783oKm8rGW7vHyEbA07StWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768823860; c=relaxed/simple;
	bh=7dAaK0WM6tXhCxJIr5SKyY0M6vJr3Lp+SO/l0V9owRU=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=U+R1DChpT5FCqig/g49376g9mI190LEmYtv4sm2ziKNJS3bZHlkIiGymvJPEWT2HwfMgcNiiBMuK2CKghgoyMsoNl3oMV0H0KFr9vBDHWsC6sGeOCVoiwc6f3ZHm/2SebT3XYvesHv56caG4ygt7gtknUfpQgfkDY+LcWSZ/j2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=lO++od0G; arc=none smtp.client-ip=109.224.244.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768823851; x=1769083051;
	bh=DxEhb58vSqVCfoQQ1WdioC+NdmMRjrSsXHUjabNsF54=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=lO++od0GcZEBqikpNKfnIWemADVskksHqd0+peuE5lrpjq5M8wSwpssRTooxaHta5
	 ALqyBX3WKUyH7n2p1eJOXOsPXROaNYu5KYNL+32xUNfzl4MC0eI50XLAggNtV7gmO4
	 sM+LYkgQvJNls9+MLA78OvW3asahzt3CScuS0WCZc37yloCT1Bp6uPe28AKjS+W64B
	 eoexBIM1tLznE7if45rN6+GXh6hAxa5xH6f8gqgDvLOP2bKybEczhD5a3r01Pdqr11
	 y9Nn7fcwRLDnzPJjsn5wEGcEZIkQ9LW97PIrMOzG41GUjUjQ2+7+vMx6YXz3Ws1HNU
	 kS054WrgyiJZA==
Date: Mon, 19 Jan 2026 11:57:26 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: [PATCH v1 13/19] man/man2/chmod.2: HISTORY: Update first POSIX appearance of AT_SYMLINK_NOFOLLOW
Message-ID: <bc1d06a06e9ea35144347a32d3253c531ba24428.1768822707.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 3e36955faea1401e6ea6c41596829d8cf56f6f72
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------b51d45da7e26f7f30d4dc34e767f69a9c24c8ed5856e43a981e8b8ef23589ea9"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------b51d45da7e26f7f30d4dc34e767f69a9c24c8ed5856e43a981e8b8ef23589ea9
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 13/19] man/man2/chmod.2: HISTORY: Update first POSIX appearance of AT_SYMLINK_NOFOLLOW
Date: Mon, 19 Jan 2026 21:51:57 +1000
Message-ID: <bc1d06a06e9ea35144347a32d3253c531ba24428.1768822707.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
MIME-Version: 1.0

The AT_SYMLINK_NOFOLLOW symbolic constant first appeared in
POSIX.1-2008.[1]

[1] IEEE Std 1003.1-2008, Volume 1, Chapter 13 "Headers", p. 239.
<https://pubs.opengroup.org/onlinepubs/9699919799.2008edition/basedefs/fcnt=
l.h.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/chmod.2 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man/man2/chmod.2 b/man/man2/chmod.2
index d47360909bb4..20f640bf39a9 100644
--- a/man/man2/chmod.2
+++ b/man/man2/chmod.2
@@ -360,6 +360,7 @@ .SH HISTORY
 glibc 2.4.
 .TP
 .B AT_SYMLINK_NOFOLLOW
+POSIX.1-2008,
 glibc 2.32,
 Linux 6.5.
 .P
--=20
2.47.3


--------b51d45da7e26f7f30d4dc34e767f69a9c24c8ed5856e43a981e8b8ef23589ea9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmluHCUJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmciH33um0RUwRm2gauYySlYFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAEIAAQCmVk0gngg6WEo6C+LgtZtpBwGcQ2QqJFqjItu7
s5VFGAEAkGm++zBTGopWdQ166C9LZfw5iwuj95hz0Yu5WR2AKQI=
=LFYM
-----END PGP SIGNATURE-----


--------b51d45da7e26f7f30d4dc34e767f69a9c24c8ed5856e43a981e8b8ef23589ea9--


