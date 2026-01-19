Return-Path: <linux-man+bounces-4850-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CE5D3A78A
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 12:58:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1D21630024FE
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 11:58:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7255531CA7B;
	Mon, 19 Jan 2026 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="BQcne3zn"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-43101.protonmail.ch (mail-43101.protonmail.ch [185.70.43.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8882931C57B
	for <linux-man@vger.kernel.org>; Mon, 19 Jan 2026 11:58:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768823896; cv=none; b=YBldpc00R/IJS8lGirE7y3W5YfHyoaj+cb64DViZU3QD6AkKVHTCYkpSrtzJRTy+0GznRvgZbfbjI9B1S/9HiKPCyzs1MWuOtO8i71WKm79O6m5nlyREalCYOT0FlJYfHXgRahOiKScRj0453KvAgEkrKfRH3vdYdOYEjg/bMJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768823896; c=relaxed/simple;
	bh=WBgbO4IBE2xed4rSwvUlFN8iz6t0XqwNkHbdrdBP+Jc=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DDsGIu0NDum24v7uTylYFBh9SZFuDOXZQqxd3KTG85KTTAbjeqlO9TLr3vg7tIv03zYSQhk0x6jpTkusLFMsZAGOH1PNW2zvJskT9ZM+Rmnmvm+84zwcLxsybCZFWCv0sjBLnoGkLoiOEKx/dft8WOR74V4QZhPjDTsWjkstfWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=BQcne3zn; arc=none smtp.client-ip=185.70.43.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768823886; x=1769083086;
	bh=5+wSxbY3nGv+sq1T1hSRKXSDqC31RTHq0YM24ejaBJ4=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=BQcne3zn1+dcGtwkIshH4/ZlZGn5GopPvGwAqUnA0lcX0k0YebllkclcNPBiniLw8
	 HfZb3xjZp94kVpOG+TV7uKb04eY09xp1gGaqR2+7wc0klSkMaXVM4B+1S46CZTrgOK
	 CSEiF/CqMzVEnf4o63JzJW17jfU4GngvALa7s6XszN1FHwKi3hmK+XdgH63B5Dqs9s
	 SNKLl4cjqZU8AUGImx2JsfNwXR7UuFBujR0RkCexm9B4trA8u8PAOMXXP0Lm3m0tLY
	 YVQNJLwFaH4fA94wv1qycmqjpV+qIwbWX46FyvgjMp7R7T9pppCBv9PYvm4xX4l94k
	 AT0KgtVM/naHw==
Date: Mon, 19 Jan 2026 11:58:01 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: [PATCH v1 16/19] man/man2/chown.2: HISTORY: Specify different chown(2) prototypes
Message-ID: <ece23c04dc89add760507dedee3dd658538df727.1768822707.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 366a615e704782f02e7811bb52b403ee53bdd018
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------61deeeaae87f16f59a4a79af4240706264702b3aba81a4710ac38f69930e280d"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------61deeeaae87f16f59a4a79af4240706264702b3aba81a4710ac38f69930e280d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 16/19] man/man2/chown.2: HISTORY: Specify different chown(2) prototypes
Date: Mon, 19 Jan 2026 21:52:00 +1000
Message-ID: <ece23c04dc89add760507dedee3dd658538df727.1768822707.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
MIME-Version: 1.0

chown(2) was specified in POSIX.1-1988 with the prototype
int chown(char *path, uid_t owner, gid_t group); [1]

POSIX.1-1990 then changed the prototype to
int chown(const char *path, uid_t owner, gid_t group); [2]

[1] IEEE Std 1003.1-1988, Section 5.6.5 "Change Owner and Group of a
File".
[2] IEEE Std 1003.1-1990, Section 5.6.5 "Change Owner and Group of a
File".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/chown.2 | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/man/man2/chown.2 b/man/man2/chown.2
index f6577aa9489f..ec1cfe33d234 100644
--- a/man/man2/chown.2
+++ b/man/man2/chown.2
@@ -297,6 +297,13 @@ .SH HISTORY
 POSIX.1-2008.
 Linux 2.6.16,
 glibc 2.4.
+.P
+POSIX.1-1988 initially specified the function signature of
+.BR chown ()
+with a non-const-qualified
+.I path
+parameter.
+This was remedied in POSIX.1-1990.
 .SH NOTES
 .SS Ownership of new files
 When a new file is created (by, for example,
--=20
2.47.3


--------61deeeaae87f16f59a4a79af4240706264702b3aba81a4710ac38f69930e280d
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmluHEcJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmfUSBbcTBaAbzq5rtI5et4QFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAPa0AQDxnhQEcfs9xw0ai7pcswu/8ZPDJHvvkoRCW/TI
brG9kQD/eIcSvcq5TOpT3EQ18RAe4+LpgjJa5fW/4t8j3rR9RAY=
=P8xW
-----END PGP SIGNATURE-----


--------61deeeaae87f16f59a4a79af4240706264702b3aba81a4710ac38f69930e280d--


