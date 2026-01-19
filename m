Return-Path: <linux-man+bounces-4843-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 719DCD3A79B
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 12:59:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 524E730C8274
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 11:56:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 723183191D4;
	Mon, 19 Jan 2026 11:56:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="I5DW/u1B"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-10630.protonmail.ch (mail-10630.protonmail.ch [79.135.106.30])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6F5B31AABA
	for <linux-man@vger.kernel.org>; Mon, 19 Jan 2026 11:56:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.30
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768823799; cv=none; b=IXjAkwe0+cbFAfYpIouAmDu1AfUn3XPeVoHyPv01EF6zsQqenvwaaj4BO1CMA7RXt8t0IhXsOjXNm2dcAS8K1MtF/kmQzI239bU8Lx5lIdI2BBia9Ud8B+37cKOA655+eERtBSgBN7qTylrxE6EC8W2Pz9h3EvBBcBabh3z4IwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768823799; c=relaxed/simple;
	bh=7qLy37CxN/qeUM18aRSGx+O36jJZYFO7y+Q2eULefy8=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=in72Yj2mSBsYYAlWwgQo/xOALPDfGVvtqE8xIgTYSLNAP4r+gp8YR0PlGHAuNhhIbmlWo+m+9M9/40ar5aY4IgbUxaYoHWk3sVDR+IGMBfj7F2SZk+h4V12DC4hDHfSn+6MzK4W6b0RgM4rfIPeX7tV+ojimwrsRrdqaG1rUTgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=I5DW/u1B; arc=none smtp.client-ip=79.135.106.30
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768823796; x=1769082996;
	bh=aqva9evahHtTYKpCBxbsFKIs8hX8Wm9Ie8/VGZUkJto=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=I5DW/u1BcQ8hsoUGIxgxflESk5gZf5IoWf33weVJW84faW599xBOxm0Bi9U5sOiKt
	 Jo1B8Qu5+boORYEDpGY4eDLXqwmkQYtWqD2UjE21F+wnMH94qcHPFZBkPhWsGOTolj
	 vhj//UZjAaMJose7dKOYbKQm1p6YpyBuuBwIPlKUi3LjWTJhQhAKMMwLdnkn4APgQc
	 M5f/Y7K7YmIKVGCp00WhUkgLI8pnaGx48WBAz7ph1RO+Bu1C6yWZl2IafFBH6GAOnl
	 2LEPr8eqkfTWaC49Xpek2emv+3lGotYAXpUfP7ZNAHDl0cSFFhs+TkHcXcpNyjkQzJ
	 Xx9xKOi/62Q2g==
Date: Mon, 19 Jan 2026 11:56:32 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: [PATCH v1 09/19] man/man2/chmod.2: HISTORY: Split chmod(2) and fchmod(2)
Message-ID: <ce5b927c669594bafd4a41b9d07180a1e621ecca.1768822707.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 5ee63b1fd8c580948d50f83235905a2869a8e979
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------af486d2b71623fc1e98b0234b48111588e7d16e010619f33f99096ea4727fa6e"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------af486d2b71623fc1e98b0234b48111588e7d16e010619f33f99096ea4727fa6e
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 09/19] man/man2/chmod.2: HISTORY: Split chmod(2) and fchmod(2)
Date: Mon, 19 Jan 2026 21:51:53 +1000
Message-ID: <ce5b927c669594bafd4a41b9d07180a1e621ecca.1768822707.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
MIME-Version: 1.0

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/chmod.2 | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/man/man2/chmod.2 b/man/man2/chmod.2
index 20cf8649d4cc..998869dc8097 100644
--- a/man/man2/chmod.2
+++ b/man/man2/chmod.2
@@ -344,9 +344,14 @@ .SH STANDARDS
 .SH HISTORY
 .TP
 .BR chmod ()
-.TQ
+SVr4,
+4.4BSD,
+POSIX.1-2001.
+.TP
 .BR fchmod ()
-4.4BSD, SVr4, POSIX.1-2001.
+SVr4,
+4.4BSD,
+POSIX.1-2001.
 .TP
 .BR fchmodat ()
 POSIX.1-2008.
--=20
2.47.3


--------af486d2b71623fc1e98b0234b48111588e7d16e010619f33f99096ea4727fa6e
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmluG+4JkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmdUO2IEmuVmc+0kLoEnJpJ8FiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAADnGAP4oHBLQhYUcyPR4Ccx3OlEJ+aNUdpP8Uggz0kn1
+BTiXQD9EfOiFIL0pw1Ig/mZSclpvNRYeMJvZLV2iKKN1AmLoQ0=
=W7Rc
-----END PGP SIGNATURE-----


--------af486d2b71623fc1e98b0234b48111588e7d16e010619f33f99096ea4727fa6e--


