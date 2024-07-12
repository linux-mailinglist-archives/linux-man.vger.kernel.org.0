Return-Path: <linux-man+bounces-1441-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F6C92FA16
	for <lists+linux-man@lfdr.de>; Fri, 12 Jul 2024 14:21:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5514B1F22902
	for <lists+linux-man@lfdr.de>; Fri, 12 Jul 2024 12:21:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40BB816D4F5;
	Fri, 12 Jul 2024 12:21:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="UZPUvmQ0"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6989D15A4B3
	for <linux-man@vger.kernel.org>; Fri, 12 Jul 2024 12:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720786910; cv=none; b=i7D4MebOBkU3Lzx/H2y4c6pPtsENfnxBkH01v9B9HUufVNmLrkT3hyv0PXKFkEzxU/kzOioUm+t9FobkI/7j6Ym4fmje1HI4I+zCzw0C1j9KTYHsrDVNRnLOfe9z4s4IdqwEYOsmso3feFkqmw1QNYZX0ISxCXr20tllMCmrW7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720786910; c=relaxed/simple;
	bh=hahIO5BndeMkooqOJ5wdMu4b+aIsllnhsgH7FahLWWw=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Ql9VwN7k2jqE+CDxqX+VE8/3rs3pDcC+PP1fI5o2qz4nBY3ewfhaUClGH6meFnWK2OrB5DmXuqZWBVLgVfgDVzLE4MYChHAOt2OXa9ZY9eA4OGi6jDN46OWRgGo4IWYYMX7BYt5HRUvCM2CRdkZAjGdUYUueM/qLrr4mcICQSQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=UZPUvmQ0; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1720786896;
	bh=hahIO5BndeMkooqOJ5wdMu4b+aIsllnhsgH7FahLWWw=;
	h=Date:From:To:Cc:Subject:From;
	b=UZPUvmQ0dkC9jz2doZfvohOb0LbH/gxInWh6okcTz0XFk6MxQkhMuZ6V5i4xGQLKC
	 vE4ZUagEIgsZ8ipL8jc9SPqEpicuLUgT3/LA4CznVppzQe3t/jhrF+M6YLgfHA2fyy
	 fQiu7CqMPAdj5vG+WRa30/NwTkzFN24ERW6Uc1P6qY4ahwEp3LgxCvctgM39kQiNWA
	 6LvSzql1lbmIokvl/ixvzFWUFj8KQ4ll3GxaowJdj7EWnzkgxOeKU1l+AnYifFJ22P
	 NZqrUxE4tNoTnN4iu8xUHF0tlbJOG7k7LHOsw+z/Yd7jAyeUnmT1LkPreU3YFd/hZu
	 JH/8BgybtY8cw==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 117F4910C;
	Fri, 12 Jul 2024 14:21:36 +0200 (CEST)
Date: Fri, 12 Jul 2024 14:21:35 +0200
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] fnmatch.3: update FNM_CASEFOLD availability, FNM_IGNORECASE
 alias
Message-ID: <2i6wslh3ahpjbspxhx5tuiwpthzvksy7iuval2fkjoy63uoxdh@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gwc5j77rnfczucwx"
Content-Disposition: inline
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--gwc5j77rnfczucwx
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Every system I looked at already had FNM_CASEFOLD,
so calling it "GNU" is misleading at best;
Solaris (and the illumos gate) call it FNM_IGNORECASE
but also provide FNM_CASEFOLD as an alias.

POSIX defines them as being the same,
I think the F_C =3D=3D F_I syntax does this perfect justice
without being really wordy for no good reason.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man/man3/fnmatch.3 | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/man/man3/fnmatch.3 b/man/man3/fnmatch.3
index 978163a..0501914 100644
--- a/man/man3/fnmatch.3
+++ b/man/man3/fnmatch.3
@@ -68,8 +68,8 @@ .SH DESCRIPTION
 This flag is mainly for the internal
 use of glibc and is implemented only in certain cases.
 .TP
-.B FNM_CASEFOLD
-If this flag (a GNU extension) is set, the pattern is matched
+.BR FNM_CASEFOLD " =3D=3D " FNM_IGNORECASE
+If this flag is set, the pattern is matched
 case-insensitively.
 .TP
 .B FNM_EXTMATCH
@@ -123,11 +123,15 @@ .SH STANDARDS
 .BR fnmatch ()
 POSIX.1-2008.
 .TP
+.BR FNM_CASEFOLD ", " FNM_IGNORECASE
+POSIX.1-2024.
+Many systems have shipped
+.B FNM_CASEFOLD
+prior.
+.TP
 .B FNM_FILE_NAME
 .TQ
 .B FNM_LEADING_DIR
-.TQ
-.B FNM_CASEFOLD
 GNU.
 .SH HISTORY
 .TP
--=20
2.39.2

--gwc5j77rnfczucwx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmaRH88ACgkQvP0LAY0m
WPFP+Q/9HSvAHCiD2omhqxiLlY5VZrL7aoyGRuVXHZ0iQztc78ynX4cAL16J1aSf
GksUfjUEUJPU+J9XWk6zfT3fYELqIZ5mQHt7Pq1nydqn95TqF70f4xeEA0bpU/Ma
P1pSHpbR0gatcKLmh7Fr+6awwiDuERuqxhCwMT7J88eszGMVgcD8TZ7F5dTsQF0X
OdMK4S9ALg6FV5vueWNAUTxDRr+XEoUWSckCG2qC9Q+4/Fx4SuuQ0lhCu7pTZDDU
vHzPq/p/e8taHBFM1OzpXI7jz+MrLYYaynPIwhygwG/0d+xbJocWJqG+bFsy3Xdu
xW1j3PHhTIBo/qM3iqhZGGzoT+1jQE2njLytQ4kL6DusL37AABm4Vgauqow91OZX
mk1GBdy6cHq8PCIuR963veTJUd2rZ8fAWaFX4JUXI0MGsR4OTC3qTFcLrQgCuZsp
qZVnGYsVZB6NZj2lSmY9Lu2tiBP92ON8BpVkKRYKTvGQEA+wh24R1YaRaIR4qKGS
SOvCxutRZwwtxwWjui+KNMwJxSacZY/Cc7+QfnFSNj/MU3u1bzBMjxz3YZn/UCr2
qTXIdoP78K8BJpqgjQBLFkIPQlvK2HZjZQKbYFukQWb3xKHefA1qWV+Bl1MXTD5h
PnGfN8SDThfn/E50lqJVgf2nM8yR6wcBgXsi3j8VOEALbQGc++8=
=Rd0A
-----END PGP SIGNATURE-----

--gwc5j77rnfczucwx--

