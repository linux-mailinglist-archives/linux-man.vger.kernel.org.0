Return-Path: <linux-man+bounces-693-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F25A88A7F3
	for <lists+linux-man@lfdr.de>; Mon, 25 Mar 2024 16:59:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 141BC1FA0F78
	for <lists+linux-man@lfdr.de>; Mon, 25 Mar 2024 15:59:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE0C7129A96;
	Mon, 25 Mar 2024 13:36:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KSRnGfrv"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ED0454756
	for <linux-man@vger.kernel.org>; Mon, 25 Mar 2024 13:36:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711373778; cv=none; b=jmG/0bZpHtFCbWrAZhBes3m86cx6ZvPhYf8Dixr9vLxnM/ULgd90NEMi8dXixRD+a+Xi3eKN0XgYKHMjNHHIO40CadFG0TU1zxjwl7BnOqCQ74D+qc0UwD5Vy5FiojvtGmCFCDIEyeBoO8Ffr5jlc3KL3yYLBf7G9Jm1+AKmdXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711373778; c=relaxed/simple;
	bh=f/nXmKzZ1mBSoCG8NWjPGND711WVNmKa5oeDKJhsqQk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bElX7JYLLBfESNRCxQ3tvXrXOKPpUu1a6E4S/CFhU/uej88uh8RBGIw6h7uYdPgzmSWcCVnldGTZ9nn/9Yk6RHBNMXILNRHvD/dYA+1vG/bXa8moFqthtQ+/fdQ50NuTo4HQ/O8/l8XsuIKahYcS1BLrc0Kdjir4pnanunTsGyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KSRnGfrv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E701AC433F1;
	Mon, 25 Mar 2024 13:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711373778;
	bh=f/nXmKzZ1mBSoCG8NWjPGND711WVNmKa5oeDKJhsqQk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KSRnGfrvyt2fdQ4ykIifg1fif/XVuq/sLocbV+tb9hyaWprXrsWZBApwJ1i179a1l
	 8PGUdDgZqd1j1vI/C+h4ZzZe4NrJr332sUj4xvlxYVmkVwD8H0wJSmRwpB+bTKB6nn
	 HHFx9jmO6fH3wuif+iQpSmvBmxhqSlnetr51cNiTncDUo8Cyhx54H926pHlkMjXQo8
	 jkWco1eKNlXoPFRB3suURgSQaWGX9SCvQqRWdXEmuFYT8DkJXDxKkHHnMMELurxpb0
	 FlQydPk15u7QjBk/z6q+6nvX2zVebpcgpTKPve1t65EASAjoaEuqmbDAxJu/bOF6iO
	 vs3EA2jJOLBqw==
Date: Mon, 25 Mar 2024 14:36:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: branden@debian.org, Deri James <deri@chuzzlewit.myzen.co.uk>, 
	Alejandro Colomar <alx@kernel.org>
Subject: [PATCH 2/2] share/mk/: Reorganize files for generating the PDF book
Message-ID: <20240325133031.56302-4-alx@kernel.org>
X-Mailer: git-send-email 2.43.0
References: <20240325133031.56302-2-alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nhvyi2ytjbjqqc5s"
Content-Disposition: inline
In-Reply-To: <20240325133031.56302-2-alx@kernel.org>


--nhvyi2ytjbjqqc5s
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH 2/2] share/mk/: Reorganize files for generating the PDF book
MIME-Version: 1.0

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 share/mk/build/pdf/{book.mk =3D> book/_.mk}             | 11 ++++++-----
 .../LinuxManBook =3D> share/mk/build/pdf/book}/an.tmac  |  0
 .../mk/build/pdf/book/front.roff                      |  0
 .../mk/build/pdf/book}/prepare.pl                     |  0
 share/mk/install/pdf/{pdf.mk =3D> book.mk}              |  2 +-
 5 files changed, 7 insertions(+), 6 deletions(-)
 rename share/mk/build/pdf/{book.mk =3D> book/_.mk} (83%)
 rename {scripts/LinuxManBook =3D> share/mk/build/pdf/book}/an.tmac (100%)
 rename scripts/LinuxManBook/LMBfront.roff =3D> share/mk/build/pdf/book/fro=
nt.roff (100%)
 rename {scripts/LinuxManBook =3D> share/mk/build/pdf/book}/prepare.pl (100=
%)
 rename share/mk/install/pdf/{pdf.mk =3D> book.mk} (94%)

diff --git a/share/mk/build/pdf/book.mk b/share/mk/build/pdf/book/_.mk
similarity index 83%
rename from share/mk/build/pdf/book.mk
rename to share/mk/build/pdf/book/_.mk
index 21097fd0e..26027cb4c 100644
--- a/share/mk/build/pdf/book.mk
+++ b/share/mk/build/pdf/book/_.mk
@@ -20,7 +20,8 @@ include $(MAKEFILEDIR)/configure/build-depends/moreutils/=
sponge.mk
 include $(MAKEFILEDIR)/configure/version.mk
=20
=20
-LMBDIR   :=3D $(CURDIR)/scripts/LinuxManBook
+MKBOOKDIR :=3D $(MAKEFILEDIR)/build/pdf/book
+MKBOOK    :=3D $(wildcard $(MKBOOKDIR)/*)
=20
=20
 PDF_BOOK  :=3D $(DISTNAME).pdf
@@ -28,12 +29,12 @@ _PDFDIR   :=3D $(builddir)
 _PDF_BOOK :=3D $(_PDFDIR)/$(PDF_BOOK)
=20
=20
-$(_PDF_BOOK): $(_MANPAGES) $(_TINOS) $(wildcard $(LMBDIR)/*) | $$(@D)/
+$(_PDF_BOOK): $(_MANPAGES) $(_TINOS) $(MKBOOK) $(MK) | $$(@D)/
 	$(info	$(INFO_)GROPDF		$@)
 	( \
-		$(CAT) "$(LMBDIR)"/LMBfront.roff; \
-		$(CAT) "$(LMBDIR)"/an.tmac; \
-		"$(LMBDIR)"/prepare.pl "$(_MANDIR)"; \
+		$(CAT) $(MKBOOKDIR)/front.roff; \
+		$(CAT) $(MKBOOKDIR)/an.tmac; \
+		$(MKBOOKDIR)/prepare.pl $(_MANDIR); \
 	) \
 	| $(PRECONV) \
 	| $(PIC) \
diff --git a/scripts/LinuxManBook/an.tmac b/share/mk/build/pdf/book/an.tmac
similarity index 100%
rename from scripts/LinuxManBook/an.tmac
rename to share/mk/build/pdf/book/an.tmac
diff --git a/scripts/LinuxManBook/LMBfront.roff b/share/mk/build/pdf/book/f=
ront.roff
similarity index 100%
rename from scripts/LinuxManBook/LMBfront.roff
rename to share/mk/build/pdf/book/front.roff
diff --git a/scripts/LinuxManBook/prepare.pl b/share/mk/build/pdf/book/prep=
are.pl
similarity index 100%
rename from scripts/LinuxManBook/prepare.pl
rename to share/mk/build/pdf/book/prepare.pl
diff --git a/share/mk/install/pdf/pdf.mk b/share/mk/install/pdf/book.mk
similarity index 94%
rename from share/mk/install/pdf/pdf.mk
rename to share/mk/install/pdf/book.mk
index 58aba1c5f..083bce2ae 100644
--- a/share/mk/install/pdf/pdf.mk
+++ b/share/mk/install/pdf/book.mk
@@ -6,7 +6,7 @@ ifndef MAKEFILE_INSTALL_PDF_BOOK_INCLUDED
 MAKEFILE_INSTALL_PDF_BOOK_INCLUDED :=3D 1
=20
=20
-include $(MAKEFILEDIR)/build/pdf/book.mk
+include $(MAKEFILEDIR)/build/pdf/book/_.mk
 include $(MAKEFILEDIR)/configure/build-depends/coreutils/install.mk
 include $(MAKEFILEDIR)/configure/directory_variables/install.mk
=20
--=20
2.43.0


--nhvyi2ytjbjqqc5s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYBfc8ACgkQnowa+77/
2zKF1xAAqfR1Vc+qN9Oo0MSOuUNlTkuX3sP30gQ1zRJSaxdq8ymbSEYa/e3jYHwM
5Wg6Tb+723qiaXbOPIgwSlQFPM6+4g05s6I6vBA4R5OJs5w5EDTMKOxKc4BB4k+I
XorYp6Ss7B5CQtgYu40fxdptBM+8q+mdDFe+63NjzbSJqbwH0f6mTTRjLbZsLgI6
GK1Z0qhVQwZJvRLwO5EGw4MUByFu1lH5pLitU0VTvtQQ+VJUlObgB8lUiQJtanUH
1lRVayUo5hnCr6XY+TzWX6zw0YtN5JA6lImo/CjRixucxKBNm9lLdv/tmQK+77hE
22w9zyHR1Fau+wQL3FASW9LDZiZQ0h219CHZRFFcKAk5PMUVE6KXEDDYtjIyzgfM
fy7/E2umUSSI9scdGQWPykG0aY6hQbfaNHOT48Pkn9PXaLPoASSp/fAWpgsyqWJV
cFwtpV6EQKCTJGK++/UYRvp79uLEhjbQpnWqkiVWFh8SxgVHSPr6l7Uyl6E41L5a
IqttSp+7Ffmc499dGnrVgxkPaTzAm5UdcHpoxuWIlYgvlgSuByn3oNw6pyR30ALY
84Z/1mfUyo0c/DUdhHqHuznS8LuY4IT06KJbd1Jx9g6+jcuAt4PsstHFSM5LZwFF
9dMRr7O1xdGgiVmbC3iRK8FYGK05IJITTa3h6cUiFLukiiy1dTY=
=JIIE
-----END PGP SIGNATURE-----

--nhvyi2ytjbjqqc5s--

