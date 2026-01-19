Return-Path: <linux-man+bounces-4846-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5F6D3A7A0
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 13:00:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 13282308109A
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 11:57:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1F6931CA46;
	Mon, 19 Jan 2026 11:57:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="ZhfoYSTb"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-10630.protonmail.ch (mail-10630.protonmail.ch [79.135.106.30])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E0731B131
	for <linux-man@vger.kernel.org>; Mon, 19 Jan 2026 11:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.30
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768823844; cv=none; b=amqDuQ619EDBXX9GtAorHrci8Jr1VMqzdqrl1wNzDpTWNTxMCfget1A9hthVL5c6pQzP2WwkfFdeDXW9QEewfsPWuItzqMrz0arRtmXVIxrMf6WsHaL3s0GnAlI2lzr8LLN58MTrF2LzgwSESX47Fp+GQAzfH4/iUGgvxhht2O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768823844; c=relaxed/simple;
	bh=Ate7bAqIeMoGc/ZmFb6gPCAKYead75RSSdaDNVp7tGo=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=eEeUcFEKH4JQ3hxg4qRCRw3ic3KP39ruWGiJ/bkZ67S65AH1CzCp0HLw0f+MyMw7aKp10hf9jwqGDy676O2rwj8hNQC/S1QBVZSMHfXEs6sgoREz+TRETwZOkzJIw3oGe9iIPp9ADFeSWNQHOj9pAegzs3P/aMaHLsZFwPwdVNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=ZhfoYSTb; arc=none smtp.client-ip=79.135.106.30
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768823841; x=1769083041;
	bh=S1hydiHDYuel0d7UZL8og6Gczaf+P9tnU0ufl9eKdkM=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=ZhfoYSTbM0ApI+eS20BvMRNEVd8D33p9Qrg6U6VZdeEh92VXof7l3Jht6bldSy+3l
	 BKidUczdbg9onv9LDYfSwfqVwCCeQIke5Vw4G4G1TGgs8V+p5sPl76Vydswcv28QR0
	 10o23x6VGWNYEJ6sokomEjts2pfGVAI5zMb79TQxk8baBAa5j87F2NIRdCbJyvJ0op
	 P9fCQXbx0TV/MtJwXgNE5CWMZZEG9+hEO499Ganhzc6jLugNU03lxYSc7AJyMakvOv
	 9ISFalBUdUlzFHmyWQHl0ZWsaUp1oR4D/62QsP3FyLQ5scg9T1gCWfsXck5dIY6BRF
	 anXMmOfbWQmDQ==
Date: Mon, 19 Jan 2026 11:57:17 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: [PATCH v1 12/19] man/man2/chmod.2: HISTORY: Update first POSIX appearance of fchmod(2)
Message-ID: <691b1ee7109938a4aa5b4389eb42622099b4d2b0.1768822707.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: b40d482f64c241b16e2a13d22c306725a9e461dc
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------7246d567f641e6bcca57b98614c29ff48abeb75edcf0c6319fa6981d2f8ea10e"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------7246d567f641e6bcca57b98614c29ff48abeb75edcf0c6319fa6981d2f8ea10e
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 12/19] man/man2/chmod.2: HISTORY: Update first POSIX appearance of fchmod(2)
Date: Mon, 19 Jan 2026 21:51:56 +1000
Message-ID: <691b1ee7109938a4aa5b4389eb42622099b4d2b0.1768822707.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
MIME-Version: 1.0

fchmod(2) first appeared in SUSv1.[1]  The function was then added to
POSIX.1-1996.[2]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 3 "System Interfaces", p. 144.
[2] ISO/IEC 9945-1:1996, Section 5.6.4 "Change File Modes".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/chmod.2 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man/man2/chmod.2 b/man/man2/chmod.2
index 78bd4d05139f..d47360909bb4 100644
--- a/man/man2/chmod.2
+++ b/man/man2/chmod.2
@@ -351,7 +351,8 @@ .SH HISTORY
 .BR fchmod ()
 SVr4,
 4.4BSD,
-POSIX.1-2001.
+SUSv1,
+POSIX.1-1996.
 .TP
 .BR fchmodat ()
 POSIX.1-2008.
--=20
2.47.3


--------7246d567f641e6bcca57b98614c29ff48abeb75edcf0c6319fa6981d2f8ea10e
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmluHBoJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmda9to3ts/5b1KL3aAngAUwFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAADZSAP0XZVKKXiWXR5VFPodiz7YlFdq1qNQnwOnkQ552
US/7GgEA4QfSX4f3UvjKqIhDzU/p3cIuVN4AlYVmSQ7wZLKxBgQ=
=hjDq
-----END PGP SIGNATURE-----


--------7246d567f641e6bcca57b98614c29ff48abeb75edcf0c6319fa6981d2f8ea10e--


