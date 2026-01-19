Return-Path: <linux-man+bounces-4849-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E94CD3A7AD
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 13:01:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9395430F7300
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 11:58:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7433F31B80B;
	Mon, 19 Jan 2026 11:58:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="EtRvO2nt"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-4322.protonmail.ch (mail-4322.protonmail.ch [185.70.43.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E72319871
	for <linux-man@vger.kernel.org>; Mon, 19 Jan 2026 11:58:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768823882; cv=none; b=J+0y1cOXCrsvLoX202v6W8hTk/TWjoPNzGibcNWE8jwQv13xF/jvem6ohHRvRotWCrJekRza+fM3N5ghlG5m1P/5SiiP5/4quRykcLZfZ60EUUYFhiwd/+m1koaTUNb6RKKiyd+tc0lkO4MMKfdH3K7riW299vPBXjlIOgiuc3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768823882; c=relaxed/simple;
	bh=AKmIay/vVoPrBc2YUexrQADiuoungg/3HBN5cZvBKzc=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=N/gxSEvMH6Q0sXMVr9xp7ZrspWmGW6A69MgzfraJteA3AN1ZUZQvQ3/7Sqfln0Nwwc6hwatDrp6oD5dMiQLbUm9E2V+JtBcLyuOo6kvdVk7kmVKJlwUiT/XUK7Fl3p9IrABwXPIbP28cAjni8cOeXqMghlS+U/10EFIbiYVjUq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=EtRvO2nt; arc=none smtp.client-ip=185.70.43.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768823873; x=1769083073;
	bh=yOS7ew6MaxxN+JF96g/h3ZZX4XBxNkkvr5FlwUdlV+E=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=EtRvO2ntnltOTgWRVpAG+5MjgvroVWKcMkzcnsWDn9eRTOp8DD4tB59QoYoEPBpoo
	 jIVKQlcnB2Jz/Cvs+luctKm6xmBhd4aELeObhN08JxhtAz4fR5s5Zlsfa21RghP33M
	 Gmcqx41L6eFMZ7F87xKJ9Z2bzNYK9g2XptWLgb2JvdcKsj8j4q9r2vQiUzR+LNXU0m
	 V7FwDr2S/ACmxOxnAMtuxLzufHcVdgMLlnKBmPFr04NKTFUFZ6BObBF3wrfP39oy3A
	 2N0LNNBsAVvDAGKqnw7ZvgiUUmrsEkFxYe25KVnFD9Tjph8vWxJEECX+ZDTA+Y48OG
	 +C/sY3WL15XCQ==
Date: Mon, 19 Jan 2026 11:57:49 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: [PATCH v1 15/19] man/man2/chown.2: HISTORY: Update first POSIX appearance of chown(2)
Message-ID: <fccd134bc9d7acf1676a26bf6202d652f20fe7a6.1768822707.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: af7c68e2f97310d12db3f1b7e3c0e46e41c3c07a
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------afe71e6806f76d68eb52d56ff0058a332a4399b2c0ebbac707b83bdcf95881b4"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------afe71e6806f76d68eb52d56ff0058a332a4399b2c0ebbac707b83bdcf95881b4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 15/19] man/man2/chown.2: HISTORY: Update first POSIX appearance of chown(2)
Date: Mon, 19 Jan 2026 21:51:59 +1000
Message-ID: <fccd134bc9d7acf1676a26bf6202d652f20fe7a6.1768822707.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
MIME-Version: 1.0

chown(2) first appeared in POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Section 5.6.5 "Change Owner and Group of a
File".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/chown.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man/man2/chown.2 b/man/man2/chown.2
index 325f6a21a728..f6577aa9489f 100644
--- a/man/man2/chown.2
+++ b/man/man2/chown.2
@@ -280,8 +280,8 @@ .SH HISTORY
 .TP
 .BR chown ()
 SVr4,
-4.4BSD,
-POSIX.1-2001.
+POSIX.1-1988,
+4.4BSD.
 .TP
 .BR fchown ()
 SVr4,
--=20
2.47.3


--------afe71e6806f76d68eb52d56ff0058a332a4399b2c0ebbac707b83bdcf95881b4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmluHDsJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmdqbopU9SZzrqOSuaGZ3A3HFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAOqtAP9yFtuQOpY6DenTt8UHswpn4LojNagclWwJgrw3
NGIxXQD/WGimIcCq9toAGApoWw3AZpQk51U0QOURnegY2mg9wwE=
=ZaEe
-----END PGP SIGNATURE-----


--------afe71e6806f76d68eb52d56ff0058a332a4399b2c0ebbac707b83bdcf95881b4--


