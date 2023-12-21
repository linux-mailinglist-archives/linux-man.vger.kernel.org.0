Return-Path: <linux-man+bounces-268-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD4E81AC4F
	for <lists+linux-man@lfdr.de>; Thu, 21 Dec 2023 02:47:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 75CCA1C22AD4
	for <lists+linux-man@lfdr.de>; Thu, 21 Dec 2023 01:47:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B656415B7;
	Thu, 21 Dec 2023 01:47:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="OUsBYBnw"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7D9A15AE
	for <linux-man@vger.kernel.org>; Thu, 21 Dec 2023 01:47:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202305; t=1703122296;
	bh=YhHLt8B8cdpn2mW90TuElhHWkvm8tbYwba94I1xofDQ=;
	h=Date:From:To:Cc:Subject:From;
	b=OUsBYBnwgVOOZVIb4Qo9vPkPGUrBjjllCvg3un8YldiEj/ooVtOfx54Y/clQPiABI
	 AkVnvVzjN0iAkW4DqxBP862U8W/ML8kdM54PiQTiCgETYofS+e85CLvnhoGWUivVD6
	 Slrl4kFXcAEH7FTbglYV2+dDLE//Hx04IW4DzugABGdUo2iAOURBJJg2Hl3tSdX/JO
	 BM2haVL2EauWb1l+SN94zrKUPd6mFkOUQHevHaVuPYuHQm+djUgdWbrg5gejJluQU5
	 rfqFornOtrm5sJEdzKZe4ghO7T0CTi3Fe24J+zaCJKu/O4Squ4xlN1rOlAUYEMof79
	 8CsQ6fUbLXySg==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 0914313A6A;
	Thu, 21 Dec 2023 02:31:36 +0100 (CET)
Date: Thu, 21 Dec 2023 02:31:35 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] sendfile.2: pull in_fd type requirements up to 6.7
Message-ID: <tovce255glwqzbrwuwk3ijzzrww3si4q3jdoh4sdw5zgah7ki7@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wfd7udqbeyhs23iv"
Content-Disposition: inline
User-Agent: NeoMutt/20231103-116-3b855e-dirty


--wfd7udqbeyhs23iv
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

But this does mean that since 5.12 supports
(5.12 has ISREG|ISBLK, this actually matches 6.0 semantics):
  any      -> pipe  via splice
  seekable -> any

Also, there are many seekable files which aren't regular,
and the offset is updated regardless.
This is obvious, but the wording is clumsy.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/sendfile.2 | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/man2/sendfile.2 b/man2/sendfile.2
index 24de71072..a385949c1 100644
--- a/man2/sendfile.2
+++ b/man2/sendfile.2
@@ -91,12 +91,21 @@ .SH DESCRIPTION
 .BR mmap (2)-like
 operations
 (i.e., it cannot be a socket).
+Except since Linux 5.12
+.\" commit b964bf53e540262f2d12672b3cca10842c0172e7
+and if
+.I out_fd
+is a pipe, in which case
+.BR sendfile ()
+desugars to a
+.BR splice (2)
+and its restrictions apply.
 .P
 Before Linux 2.6.33,
 .I out_fd
 must refer to a socket.
 Since Linux 2.6.33 it can be any file.
-If it is a regular file, then
+If it's seekable, then
 .BR sendfile ()
 changes the file offset appropriately.
 .SH RETURN VALUE
--=20
2.39.2

--wfd7udqbeyhs23iv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmWDlXcACgkQvP0LAY0m
WPGRkhAAhnognBZjtsm0N/O4i7I6MrIqvqIWgPSrrBi0Q2q3ZK06Qewy3gi+ZrcY
iLEsrTs1eYgX2AbTL+pCXmesFHHt06eOZQNSgvUuFDYwPMgz6F7LouZLDvGzOaVe
cTZYYtih77xBaxzeRf8PiDUV1rRrPk99dJW0xQhNO6maIdRxHoWg/4iPgK9LwDDa
cZyXtYb5O/fXJ7EjDwbHkEMKYQwVHi+VXr4Op8zTbyGRpu+sPPLbzEfOp+yyNv9x
uiPaT1DgzAO3DSOgaTtXR4Srw2L00T1uCvn0/eMZLGKfLF0SQhEJkunTpbV+gzpg
KSC5rJGjBdQFOOe3MZlRh2qIJLVhqNfS0OZv/O5WPTtN+U0f5yWuxlEJNWDGrWwC
oFnAxlWUAH9xl1EHYFlYR0kpFK+jtGgLrwRKKIB8kqBTMhwGdcOSXnEnxTfCaqFl
fPTpR6FcY9Q79XasIWbIUSL5cQQkHZUpYBIgVkXH7SeKZrCVeuP1krO+XLNJE7HW
hCN1TqSXeUO8stLC5P5nQfZkMMHmyY0ay4j+zAkeM3gBzbAlScUUI0Ue6Fvx0OlE
R3ZeqI269JM5hjjYy9wOJ3uakYlee7FhVWvLEatI4CEPtNLqfY2kO1e6JcgbiKoV
BtyxUCMKFe7ZbB1BnXhMLjKjk7zSpo3YVm6H4DOe8qh5yhcB6sM=
=Y9bJ
-----END PGP SIGNATURE-----

--wfd7udqbeyhs23iv--

