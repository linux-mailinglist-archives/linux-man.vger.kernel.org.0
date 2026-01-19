Return-Path: <linux-man+bounces-4841-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B84D3A79A
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 12:59:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3164730C717D
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 11:56:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D494331A7ED;
	Mon, 19 Jan 2026 11:56:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="bJCzwlL7"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-10629.protonmail.ch (mail-10629.protonmail.ch [79.135.106.29])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BEB631AF2C
	for <linux-man@vger.kernel.org>; Mon, 19 Jan 2026 11:56:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.29
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768823778; cv=none; b=Kg+C41Z2UfyODXFwwgGzgK1oGuNXEzp+WdkEfkxr39TtA0JJE68s+iMI4V2gUOOWNGqg95o04+SP8PtJjqmwh+EbfhwX8gu7ows2Dkv4L2LLqLiJcZjJYkAC92lsLmVeRt/nr8kzAPKCw/b3lYQf3D9dmFD2wGa7B0p3MbUHuvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768823778; c=relaxed/simple;
	bh=wEvWTnmMdI1tzOnCylFfiwyfE2ikfMnCdtcvnz7MiNY=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=YrjVK4OzGFSBJ/CRowqE1+cpfvxHsLXozRcqipwKYtzoQuymjGOBZJsoam/Pg6cg4dlnKj1/HiDq/1MNMvtw3u7NQbAjOgJzuPuyUJjCLqlInOVnFsW65TzIvfbZXBokxbw1iIHA554dZtv7IPmKvs7zS8dfAbpRKJYe92yhah0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=bJCzwlL7; arc=none smtp.client-ip=79.135.106.29
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768823770; x=1769082970;
	bh=BXjjzVXRXqH3Ckz7MWX0VEoe4Fg5veUlNkltNxzwJFg=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=bJCzwlL73E9vlP3pfj0Nk/6rjkT5h/BYfWhL9ov7dGiWHibLesHTQdnelEqT0mmLr
	 2dWAzliAFS1IZKuvquHqErNSSS5pcsfyPi/s+sSTKhglgVmncB537ZjrpJ0S0jMO8d
	 ieNqK2137S+jliI1Ux4rVsIPqkX5hpWrrSdML6R+aj/exKhRvwjGHlG+IRVP9s/BgO
	 X3QTWEX1JpHZxNqfwp/RBm1h2qkW06G3/lOxTO48SGrmNQUrw/MNyWKz3tR9RHOR7E
	 s/TpRsuC6jD6kaKYLZPDiXidbMcJ4DLgBR6byYIIjJbOiLT/xafDUJTzsT8gUl5Op9
	 7783kPiHJregA==
Date: Mon, 19 Jan 2026 11:56:07 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: [PATCH v1 07/19] man/man2/chdir.2: HISTORY: Specify different chdir(2) prototypes
Message-ID: <b367400491b29120539b0adaa3b2b46cb56ae8d3.1768822707.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: a65d914ea1d59e089134b029980823ef32e58283
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------7d55604422e898d92e3c2cc5f50b4798762758660ade62cf7cf28aed6df60134"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------7d55604422e898d92e3c2cc5f50b4798762758660ade62cf7cf28aed6df60134
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 07/19] man/man2/chdir.2: HISTORY: Specify different chdir(2) prototypes
Date: Mon, 19 Jan 2026 21:51:51 +1000
Message-ID: <b367400491b29120539b0adaa3b2b46cb56ae8d3.1768822707.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
MIME-Version: 1.0

chdir(2) was specified in POSIX.1-1988 with the prototype
int chdir(char *path); [1]

POSIX.1-1990 then changed the prototype to
int chdir(const char *path); [2]

[1] IEEE Std 1003.1-1988, Section 5.2.1 "Change Current Working
Directory".
[2] IEEE Std 1003.1-1990, Section 5.2.1 "Change Current Working
Directory".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/chdir.2 | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/man/man2/chdir.2 b/man/man2/chdir.2
index be53f87454e4..a313071d2e1e 100644
--- a/man/man2/chdir.2
+++ b/man/man2/chdir.2
@@ -113,6 +113,13 @@ .SH HISTORY
 SVr4,
 4.4BSD,
 POSIX.1-2001.
+.P
+POSIX.1-1988 initially specified the function signature of
+.BR chdir ()
+with a non-const-qualified
+.I path
+parameter.
+This was remedied in POSIX.1-1990.
 .SH NOTES
 The current working directory is the starting point for interpreting
 relative pathnames (those not starting with \[aq]/\[aq]).
--=20
2.47.3


--------7d55604422e898d92e3c2cc5f50b4798762758660ade62cf7cf28aed6df60134
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmluG9cJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmejcRsWraKKjbkSFcqG1GEMFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAEP8AP9WH+QQkUt2paPfGn48sTBYXeaCT8cRLTvzGhGH
18CbxgEAgCD3GmyCpsWFuLePflwvAwFogYRd+0FZ+1c/okVRQQ4=
=5zye
-----END PGP SIGNATURE-----


--------7d55604422e898d92e3c2cc5f50b4798762758660ade62cf7cf28aed6df60134--


