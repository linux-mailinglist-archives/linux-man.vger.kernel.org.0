Return-Path: <linux-man+bounces-692-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F8288A7F2
	for <lists+linux-man@lfdr.de>; Mon, 25 Mar 2024 16:59:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 82D661C6139C
	for <lists+linux-man@lfdr.de>; Mon, 25 Mar 2024 15:59:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BC9912A16A;
	Mon, 25 Mar 2024 13:35:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+qXdjC2"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFA6612A164
	for <linux-man@vger.kernel.org>; Mon, 25 Mar 2024 13:35:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711373751; cv=none; b=Lkk/YK/86XFvciUj0cmCH8R07Vo5QoZsRdndV8OdOdHohnhcNlGkSsfdw9D0fxkK5l3RHFoHMTjPbzbQJt3y+AGn4kmMozrb1Q3eQCNianZ7mMcmyWeridR3YdiIKpq7O7srwXUXT0XWHYBh1H5sx6x/9qWAqWWKuw88EZz9Soc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711373751; c=relaxed/simple;
	bh=TPNcczmYOqhbc9VvriC9dMZpJ4eVtTB6GP6B7P9NXZo=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=LnFPE1qaPyWny3jXXePMJjSUWd0wwYNPwN5GWtzhHZKLazg9+FqgC1PZiE+oWpwZdUpKmIqfdKeDjLB/ZX1RUXM94zI1Pzj34YpWXjv3k2R5zxWiGreS8Mms4BcF4DICtHpF4lzPSdQNDBS3xcKegACOFCurXOT4ZjeAMeJM6xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+qXdjC2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2E83C433F1;
	Mon, 25 Mar 2024 13:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711373751;
	bh=TPNcczmYOqhbc9VvriC9dMZpJ4eVtTB6GP6B7P9NXZo=;
	h=Date:From:To:Cc:Subject:From;
	b=h+qXdjC2Q58NchjmC5NheiowW0MdojJJFFAJnLYf8Zi2foVInX8TLOOjCODD6W3f4
	 MeBPedFU9li+N0NmQVJOgF1gQ5zFJD/WFz0tysqHNbV7bo+ahva6ydMhNNHoBYt3Ew
	 1cxpntHxg2DvEZk+A8GEHDbFoVHldcWnRctbMlQFizSwShSpFkFASJjhIKu6ha4WDC
	 tM03tw4lAlFK4KRcoJPsLvEsq6p/BoFsM9L/SxefhPW4QPWgpF0J59AjKxqmhuYF8N
	 QpUVQmNAYF9g7MR3jFmaB4aJS2I5NMpzBe680jUKB+I6vB+UMVldNDFY5G/AA8PSuO
	 BzoUc8wgBvBeQ==
Date: Mon, 25 Mar 2024 14:35:48 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: branden@debian.org, Deri James <deri@chuzzlewit.myzen.co.uk>, 
	Alejandro Colomar <alx@kernel.org>
Subject: [PATCH 1/2] share/mk/: Generate the fonts during the build
Message-ID: <20240325133031.56302-2-alx@kernel.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eexwlcgz7jzogyxp"
Content-Disposition: inline


--eexwlcgz7jzogyxp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH 1/2] share/mk/: Generate the fonts during the build
MIME-Version: 1.0

Suggested-by: "G. Branden Robinson" <branden@debian.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi Branden, Deri,

I've removed the Tinos font from the repository.  I get a few more
warnings now (especially after the second patch), but the PDF looks the
same visually, I think.  Would you mind reviewing the patches?  I
removed the contents of Tinos.pfa from this patch, to avoid 7858 lines
of deleted .pfa.

I would also like to remove the TINOR thing, but I don't know how.  If
you can send a patch for it, it would be great.  If you want to have a
look in git, check out this branch:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/log=
/?h=3Dfonts>

Have a lovely day!
Alex

 scripts/LinuxManBook/devpdf/Tinos.pfa         | 7858 -----------------
 scripts/LinuxManBook/devpdf/download          |    1 -
 .../devpdf =3D> share/mk/build/fonts}/TINOR     |    0
 share/mk/build/fonts/_.mk                     |   21 +
 share/mk/build/fonts/tinos.mk                 |   36 +
 share/mk/build/pdf/book.mk                    |    7 +-
 .../configure/build-depends/groff/pfbtops.mk  |   15 +
 .../texlive-fonts-extra/Tinos.pfb.mk          |   12 +
 8 files changed, 88 insertions(+), 7862 deletions(-)
 delete mode 100644 scripts/LinuxManBook/devpdf/Tinos.pfa
 delete mode 100755 scripts/LinuxManBook/devpdf/download
 rename {scripts/LinuxManBook/devpdf =3D> share/mk/build/fonts}/TINOR (100%)
 create mode 100644 share/mk/build/fonts/_.mk
 create mode 100644 share/mk/build/fonts/tinos.mk
 create mode 100644 share/mk/configure/build-depends/groff/pfbtops.mk
 create mode 100644 share/mk/configure/build-depends/texlive-fonts-extra/Ti=
nos.pfb.mk

diff --git a/scripts/LinuxManBook/devpdf/Tinos.pfa b/scripts/LinuxManBook/d=
evpdf/Tinos.pfa
deleted file mode 100644
index 88c21d670..000000000
--- a/scripts/LinuxManBook/devpdf/Tinos.pfa
+++ /dev/null
@@ -1,7858 +0,0 @@
diff --git a/scripts/LinuxManBook/devpdf/download b/scripts/LinuxManBook/de=
vpdf/download
deleted file mode 100755
index e230c8213..000000000
--- a/scripts/LinuxManBook/devpdf/download
+++ /dev/null
@@ -1 +0,0 @@
-	Tinos	Tinos.pfa
diff --git a/scripts/LinuxManBook/devpdf/TINOR b/share/mk/build/fonts/TINOR
similarity index 100%
rename from scripts/LinuxManBook/devpdf/TINOR
rename to share/mk/build/fonts/TINOR
diff --git a/share/mk/build/fonts/_.mk b/share/mk/build/fonts/_.mk
new file mode 100644
index 000000000..8b456453e
--- /dev/null
+++ b/share/mk/build/fonts/_.mk
@@ -0,0 +1,21 @@
+# Copyright 2021-2024, Alejandro Colomar <alx@kernel.org>
+# SPDX-License-Identifier: LGPL-3.0-only WITH LGPL-3.0-linking-exception
+
+
+ifndef MAKEFILE_BUILD_FONTS_INCLUDED
+MAKEFILE_BUILD_FONTS_INCLUDED :=3D 1
+
+
+include $(MAKEFILEDIR)/build/_.mk
+include $(MAKEFILEDIR)/configure/directory_variables/src.mk
+include $(MAKEFILEDIR)/src/man.mk
+
+
+_FONTSDIR :=3D $(builddir)/fonts
+
+
+.PHONY: build-fonts
+build-fonts: build-fonts-tinos
+
+
+endif  # include guard
diff --git a/share/mk/build/fonts/tinos.mk b/share/mk/build/fonts/tinos.mk
new file mode 100644
index 000000000..2b93e84ec
--- /dev/null
+++ b/share/mk/build/fonts/tinos.mk
@@ -0,0 +1,36 @@
+# Copyright 2021-2024, Alejandro Colomar <alx@kernel.org>
+# SPDX-License-Identifier: LGPL-3.0-only WITH LGPL-3.0-linking-exception
+
+
+ifndef MAKEFILE_BUILD_FONTS_TINOS_INCLUDED
+MAKEFILE_BUILD_FONTS_TINOS_INCLUDED :=3D 1
+
+
+include $(MAKEFILEDIR)/build/fonts/_.mk
+include $(MAKEFILEDIR)/configure/build-depends/texlive-fonts-extra/Tinos.p=
fb.mk
+include $(MAKEFILEDIR)/configure/build-depends/groff/pfbtops.mk
+
+
+TINOR :=3D $(MAKEFILEDIR)/build/fonts/TINOR
+
+
+_TINOS_PFA :=3D $(_FONTSDIR)/Tinos.pfa
+_TINOR     :=3D $(_FONTSDIR)/TINOR
+
+_TINOS :=3D $(_TINOS_PFA) $(_TINOR)
+
+
+$(_TINOS_PFA): $(TINOS_PFB) $(MK) | $$(@D)/
+	$(info	$(INFO_)PFBTOPS		$@)
+	$(PFBTOPS) <$< >$@
+
+$(_TINOR): $(_FONTSDIR)/%: $(MAKEFILEDIR)/build/fonts/% $(MK) | $$(@D)/
+	$(info	$(INFO_)CP		$@)
+	$(CP) -T $< $@
+
+
+.PHONY: build-fonts-tinos
+build-fonts-tinos: $(_TINOS)
+
+
+endif  # include guard
diff --git a/share/mk/build/pdf/book.mk b/share/mk/build/pdf/book.mk
index 7566f0043..21097fd0e 100644
--- a/share/mk/build/pdf/book.mk
+++ b/share/mk/build/pdf/book.mk
@@ -8,6 +8,7 @@ MAKEFILE_BUILD_PDF_BOOK_INCLUDED :=3D 1
=20
 include $(MAKEFILEDIR)/build/_.mk
 include $(MAKEFILEDIR)/build/man/_.mk
+include $(MAKEFILEDIR)/build/fonts/_.mk
 include $(MAKEFILEDIR)/configure/build-depends/coreutils/cat.mk
 include $(MAKEFILEDIR)/configure/build-depends/groff/gropdf.mk
 include $(MAKEFILEDIR)/configure/build-depends/groff-base/eqn.mk
@@ -27,7 +28,7 @@ _PDFDIR   :=3D $(builddir)
 _PDF_BOOK :=3D $(_PDFDIR)/$(PDF_BOOK)
=20
=20
-$(_PDF_BOOK): $(_MANPAGES) $(wildcard $(LMBDIR)/* $(LMBDIR)/*/*) | $$(@D)/
+$(_PDF_BOOK): $(_MANPAGES) $(_TINOS) $(wildcard $(LMBDIR)/*) | $$(@D)/
 	$(info	$(INFO_)GROPDF		$@)
 	( \
 		$(CAT) "$(LMBDIR)"/LMBfront.roff; \
@@ -38,8 +39,8 @@ $(_PDF_BOOK): $(_MANPAGES) $(wildcard $(LMBDIR)/* $(LMBDI=
R)/*/*) | $$(@D)/
 	| $(PIC) \
 	| $(TBL) \
 	| $(EQN) -Tpdf \
-	| $(TROFF) -Tpdf -F"$(LMBDIR)" -dpaper=3Da4 $(TROFFFLAGS) \
-	| $(GROPDF) -F"$(LMBDIR)" -pa4 $(GROPDFFLAGS) \
+	| $(TROFF) -Tpdf -F$(_FONTSDIR) -dpaper=3Da4 $(TROFFFLAGS) \
+	| $(GROPDF) -F$(_FONTSDIR) -pa4 $(GROPDFFLAGS) \
 	| $(SPONGE) $@
=20
=20
diff --git a/share/mk/configure/build-depends/groff/pfbtops.mk b/share/mk/c=
onfigure/build-depends/groff/pfbtops.mk
new file mode 100644
index 000000000..73f5f0455
--- /dev/null
+++ b/share/mk/configure/build-depends/groff/pfbtops.mk
@@ -0,0 +1,15 @@
+# Copyright 2024, Alejandro Colomar <alx@kernel.org>
+# SPDX-License-Identifier: LGPL-3.0-only WITH LGPL-3.0-linking-exception
+
+
+ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_GROFF_PFBTOPS_INCLUDED
+MAKEFILE_CONFIGURE_BUILD_DEPENDS_GROFF_PFBTOPS_INCLUDED :=3D 1
+
+
+DEFAULT_PFBTOPSFLAGS :=3D
+EXTRA_PFBTOPSFLAGS   :=3D
+PFBTOPSFLAGS         :=3D $(DEFAULT_PFBTOPSFLAGS) $(EXTRA_PFBTOPSFLAGS)
+PFBTOPS              :=3D pfbtops
+
+
+endif  # include guard
diff --git a/share/mk/configure/build-depends/texlive-fonts-extra/Tinos.pfb=
=2Emk b/share/mk/configure/build-depends/texlive-fonts-extra/Tinos.pfb.mk
new file mode 100644
index 000000000..c1c713c41
--- /dev/null
+++ b/share/mk/configure/build-depends/texlive-fonts-extra/Tinos.pfb.mk
@@ -0,0 +1,12 @@
+# Copyright 2024, Alejandro Colomar <alx@kernel.org>
+# SPDX-License-Identifier: LGPL-3.0-only WITH LGPL-3.0-linking-exception
+
+
+ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_TEXLIVE_FONTS_EXTRA_TINOS_PFB_INCL=
UDED
+MAKEFILE_CONFIGURE_BUILD_DEPENDS_TEXLIVE_FONTS_EXTRA_TINOS_PFB_INCLUDED :=
=3D 1
+
+
+TINOS_PFB :=3D /usr/share/texlive/texmf-dist/fonts/type1/google/tinos/Tino=
s.pfb
+
+
+endif  # include guard
--=20
2.43.0


--eexwlcgz7jzogyxp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYBfbQACgkQnowa+77/
2zKulw/7Bd+1+rP7nrJ6TiWsR0fV7tql7W421BgZpU0pL+Nnb6hkIk+n+vcAFLcx
Xn1B0KieY4QfgB9aLoJShd3sIXrnHUf4e2bv6E4HsyyZJjcX8SaYaPqrZ3IQwbfq
nuLQYJoTLWVAf6fXGXrigEQbwJzBmIGJVBh1IXU/obqoXiAp+Z5ibNNVN9wlXRmX
VOtSrJk7CZSZ4TLGLnwQ1eWing7H04kGx3FbzonNN79106TsKhMysbWwRbxcCNcq
dGOCMMIgP+RqRwlYjzd7/+hhQHzgIkCCRokVB/YEyGkv+Y9cIeG9xcEgWyYhR/hj
SgAdGRNmPtWNpx5+sDAVIeBRThorJ6PxjZalzDf4E0CvKWejMFfq60qwGzuvD1kn
lytv0llZWrcT+xMkuwaDwIyPIQ5WYJufdwzhkl7hokPiLAgb2TiNd57IuID1XZGz
nPGMhaIR3IfWxkXZ9G/irpBGNjCFmLTNtDkiOjRz9bS6wGVO4e6w4n3y0x7IBrRA
4ziEGqQ1gM62YoINEbGOSWcAosa50wbL3EhPWrQYIyROGZS7c/PXHIfCUygiA1ML
9sKbD6Jg6OYV9LI2DWAfSdYTbe+I2b6Cp7I4PcaRl22AQgmEcv1Z9gSEJHVd7Kn0
L1Q1xqmCxbdc321JLuYR18ugfKKVDLxlyHVJ/4/6JBE4gi3DJVw=
=DFxC
-----END PGP SIGNATURE-----

--eexwlcgz7jzogyxp--

