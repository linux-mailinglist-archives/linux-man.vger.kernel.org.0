Return-Path: <linux-man+bounces-4840-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2250DD3A77E
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 12:56:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7760530210C5
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 11:56:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32B94319871;
	Mon, 19 Jan 2026 11:56:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="PuR71CTW"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-106120.protonmail.ch (mail-106120.protonmail.ch [79.135.106.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB3342882A9
	for <linux-man@vger.kernel.org>; Mon, 19 Jan 2026 11:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.120
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768823770; cv=none; b=YV+LtBEwdE1hme/SEyd+sfRKlMuRyjBH9IB43+I3sSQTZGJWMwij9KqiYAG6BVo0hB6oNCA6HtDE4yJ6woXBY3noZxCkkXJko3OgC20aCvQt5OuuMifXYia0gMXpOyjrpmY+qSCXmGw2VGc7FuC2V8aVuA1WsgJNnOgMLS0GD1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768823770; c=relaxed/simple;
	bh=AHUvcbsIfZBMgINpLD5doYffzs582sv0YpD3b+JqR1I=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pkTeVaY1aFcVCUcrQs+L6mBpfmsG4tZ6+m8qva+BkpggUTb9IJSRUSFvNlsDTIEy4zukLqfuzwFiAQfSurd9vNmL1Xmn1XR03n7w4LPlO0cEOStutSttv78YYx4xztPaWBb0W0FYzQzzawGMYt+45Y4h5vGoU9YDTZVnOR7Bmrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=PuR71CTW; arc=none smtp.client-ip=79.135.106.120
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768823760; x=1769082960;
	bh=Ini7kiI9Lo5x8eC4d3WuXHG9PSVMoHp72Nu/SOX+tuk=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=PuR71CTWkY3Wa+IrQBYhURXjCD+WZ4TlnSuuU76KKJYI//LlC2F0E66aa51BuipPm
	 UFuLYE7cpj1yN8hPa1MeR0vFnYdb3tMyyXAhXmCsA/NA6tCTnmcC7ISwOnaXsF/URc
	 8XUgc8q49PexECeC4zS3DsmvbGJZPj0OQFffb3QNDuC14eLNm9dWSus82dBpSyBUxV
	 YLzBd2xtc6gfENPIJiiVinAIdIeViWOrENpR46ByBqINfHPjMj/eSK1nLlOJ07UQo+
	 1ua2J6KjVsSzSDtqnEAfp8joUBqmUSXhMmKbLdbttngaVhbJhkshmjLe4cR8tciBlb
	 RQXGEv80wm9Pw==
Date: Mon, 19 Jan 2026 11:55:56 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: [PATCH v1 06/19] man/man2/chdir.2: HISTORY: Update first POSIX appearance of chdir(2)
Message-ID: <61d257dc50320b3b12aa610f918e42c877a88764.1768822707.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: b79eb935875485d378fb276f129163ca5e6d8586
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------c15f343885ab085e586512fcbbfbe5b06189563ab28121e0d6aac1d1f156ccf9"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------c15f343885ab085e586512fcbbfbe5b06189563ab28121e0d6aac1d1f156ccf9
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 06/19] man/man2/chdir.2: HISTORY: Update first POSIX appearance of chdir(2)
Date: Mon, 19 Jan 2026 21:51:50 +1000
Message-ID: <61d257dc50320b3b12aa610f918e42c877a88764.1768822707.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
MIME-Version: 1.0

chdir(2) first appeared in POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Section 5.2.1 "Change Current Working
Directory".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/chdir.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man/man2/chdir.2 b/man/man2/chdir.2
index d8d274d7114b..be53f87454e4 100644
--- a/man/man2/chdir.2
+++ b/man/man2/chdir.2
@@ -106,8 +106,8 @@ .SH HISTORY
 .TP
 .BR chdir ()
 SVr4,
-4.4BSD,
-POSIX.1-2001.
+POSIX.1-1988,
+4.4BSD.
 .TP
 .BR fchdir ()
 SVr4,
--=20
2.47.3


--------c15f343885ab085e586512fcbbfbe5b06189563ab28121e0d6aac1d1f156ccf9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmluG8oJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmeAgMy5HEJQjVAWyotla6nfFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAOkWAQDTynwB+AtGipnw8mC7tTdIwBfXza5hyO5Z2Gsm
49mRWAEAvkl/xk7gehe7wLibh1BZi+wv205/C3EgfpBopPIgEgc=
=FUpm
-----END PGP SIGNATURE-----


--------c15f343885ab085e586512fcbbfbe5b06189563ab28121e0d6aac1d1f156ccf9--


