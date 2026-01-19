Return-Path: <linux-man+bounces-4848-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 279D0D3A7A9
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 13:00:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ED10830E791A
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 11:57:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7693631B80B;
	Mon, 19 Jan 2026 11:57:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="Zexazs6V"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-24417.protonmail.ch (mail-24417.protonmail.ch [109.224.244.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01F8231BCB6
	for <linux-man@vger.kernel.org>; Mon, 19 Jan 2026 11:57:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768823865; cv=none; b=G7O7aZOu67um1CoESw+rGfrZBpGzhM9XkWGKPFlUb4xFtgLkm6OwQLxHGPjLQrHY64O9QDKhcD5pWqFHorz00QXNoqyRbK1pbcKrNVtC8IMHO5o+1tNrcDvHlLc+Z0NYDuC+XqC6bLP4Z9uH/QXUELidRt+fEymGuvdwCHZC3zQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768823865; c=relaxed/simple;
	bh=FA4riGhF+UwevEuDyjV54u5lo+MsLrxfsnQpBzga/Qo=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=UlgEOTFuADuWoLR0MLZxHOGMkDv71p/HfHxhFOBhHADpH5yo7EOx27sk4ThpYPcQjSSkM5+KOD0N6Ir+sxAvzlVcCsJvIp76WKhXPxZkGXum77CfA3j4Js8NToJl661RSwYxj9op5NjjaeDTkizOx/7N5t6G1aKrdvAunJvRMcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=Zexazs6V; arc=none smtp.client-ip=109.224.244.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768823862; x=1769083062;
	bh=1tDBAdOSvBmC0tRg3PhUw2jFIslxWAyvrbtGF8WuGMo=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=Zexazs6VTzlmfk8vtplBl7W68ACjRV04W2Gv0i4TmVYvvey/QukU/Ek+s5nxjkbf6
	 q4dhKYttrEfOAZheRIwL6JrLEUJMrxwrE2lPGytaPTziGPYeV5imD67B6OoWwmyI+a
	 EJf6HucUmhjzFaKOMqGKbEOtZI4Q2rJ4rpjYjieGVPr+MKyQbQfDxaXb2py9G8CVK3
	 6OoTcHuGx9P00EdefUV9+twOEFRW9q105Ac6q5PCiGdIit4C0UqWX82pXpnO5HK3zs
	 80fdpaegytbkgl+cyC1RqNYdsmCVtv8tzoEwhK2fJJhnUJhCTsCIDKD5tuub43d3g7
	 gELnDPn/zYjgg==
Date: Mon, 19 Jan 2026 11:57:37 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: [PATCH v1 14/19] man/man2/chown.2: HISTORY: Split chown(2), fchown(2), and lchown(2)
Message-ID: <2981d5702b65f8f109d50c7b52d6c6e29e38057a.1768822707.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 4e317a3877d4f26e9f2e961c9e0529d8a1f65192
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------b12ebf61ed54e1d1c8d602a5d1d23a754a82d35a38ac4d02dff3df979edc725d"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------b12ebf61ed54e1d1c8d602a5d1d23a754a82d35a38ac4d02dff3df979edc725d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 14/19] man/man2/chown.2: HISTORY: Split chown(2), fchown(2), and lchown(2)
Date: Mon, 19 Jan 2026 21:51:58 +1000
Message-ID: <2981d5702b65f8f109d50c7b52d6c6e29e38057a.1768822707.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
MIME-Version: 1.0

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/chown.2 | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/man/man2/chown.2 b/man/man2/chown.2
index 4f741d251940..325f6a21a728 100644
--- a/man/man2/chown.2
+++ b/man/man2/chown.2
@@ -279,11 +279,19 @@ .SH STANDARDS
 .SH HISTORY
 .TP
 .BR chown ()
-.TQ
+SVr4,
+4.4BSD,
+POSIX.1-2001.
+.TP
 .BR fchown ()
-.TQ
+SVr4,
+4.4BSD,
+POSIX.1-2001.
+.TP
 .BR lchown ()
-4.4BSD, SVr4, POSIX.1-2001.
+SVr4,
+4.4BSD,
+POSIX.1-2001.
 .TP
 .BR fchownat ()
 POSIX.1-2008.
--=20
2.47.3


--------b12ebf61ed54e1d1c8d602a5d1d23a754a82d35a38ac4d02dff3df979edc725d
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmluHC8JkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmczQDJ3geDMl5xWhXJRT6aaFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAACWgAQDlnTuChnm8mi9SQ9MTYg96pfbFSsZsJQ8Dwc4J
UGeJDwEAgZqnQo4RyihXv+jLhqR1XsZj20bpAisbsGHcJ2sxZgM=
=tG8l
-----END PGP SIGNATURE-----


--------b12ebf61ed54e1d1c8d602a5d1d23a754a82d35a38ac4d02dff3df979edc725d--


