Return-Path: <linux-man+bounces-1713-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E41B4960761
	for <lists+linux-man@lfdr.de>; Tue, 27 Aug 2024 12:27:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A1F802813B9
	for <lists+linux-man@lfdr.de>; Tue, 27 Aug 2024 10:27:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47B2C199EB4;
	Tue, 27 Aug 2024 10:27:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDAjBXSD"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0770613B588
	for <linux-man@vger.kernel.org>; Tue, 27 Aug 2024 10:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724754455; cv=none; b=G7E5oWZe4fiLSUena5jiPXiapU3v6l/N4GIFqLOPy6mCBf8JlkwoZVZ08M7uONEvFm6Uw3bdgw0OGHQzvsKq/WwqUYod4jBL3YNq8InnVHINpwKAEYx3BCcozp9UfKAQlbxegQhIyoJUZ9WxYF3xIRDS6QcwYQ+JXLx52c2eFbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724754455; c=relaxed/simple;
	bh=RAS7LyFuPvUx+CekSnwIMgFr3n/LuBnBt46+czXe+LM=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Lscniv1aPGJLmwF0QIX55PVkcf+IZJF3ZKai4tMzlOCGT4eko3vQ1oUuGoySCt4zd0IFYLf4e14Pgk6wTdEJGLnf1qQELON+RSsdNLUIv8PJjHv5gnAMFD50tQViw71h42Wp/6cIK/1enHaNaN4fYWHvqdI65YS3H9Yx726XaF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kDAjBXSD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57A5DC8B7A0;
	Tue, 27 Aug 2024 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724754454;
	bh=RAS7LyFuPvUx+CekSnwIMgFr3n/LuBnBt46+czXe+LM=;
	h=Date:From:To:Cc:Subject:From;
	b=kDAjBXSDfcJPULRw1iVU2qH81EtYmKhUV40yvku+JG+gdO0yYrk0Fj/iasaO5JoYl
	 SnnjYpkLvcLlkIpJ1yvmkeQ8P4k6G28kOid1CVSyy3ruMj1dOd1cJ7WIroHxashMeh
	 s90/tJc+7RlWMZhWP+VXZymEGNjuRniTYxcXq0mn0OuJBpUZP7+/oJKs61pNhauj1h
	 FfUFO1dofySI95ijD6Y/bN0mDTFK8SkQU3EkWRxlH4socSTXBAamom4Eu4x3ObbNxz
	 JAo4EZlzKCsrMyo302dbX5AZAEpuZusbbFWHDESJciKSBUXxJp+NkMiS0AL+dN5Fq0
	 CbrOM7kyNEoAg==
Date: Tue, 27 Aug 2024 12:27:31 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Douglas McIlroy <douglas.mcilroy@dartmouth.edu>, 
	"G. Branden Robinson" <branden@debian.org>, Deri James <deri@chuzzlewit.myzen.co.uk>, 
	"Michael T. Kerrisk" <mtk.manpages@gmail.com>
Subject: PDF book title: "GNU/Linux Programmer's Manual"
Message-ID: <no63r6yyt7bklpu4mldyc7ul3375nlynqhrqghqirowpedzphk@zp4wlhax6ti3>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="n4cego22hqwzu6es"
Content-Disposition: inline


--n4cego22hqwzu6es
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Douglas McIlroy <douglas.mcilroy@dartmouth.edu>, 
	"G. Branden Robinson" <branden@debian.org>, Deri James <deri@chuzzlewit.myzen.co.uk>, 
	"Michael T. Kerrisk" <mtk.manpages@gmail.com>
Subject: PDF book title: "GNU/Linux Programmer's Manual"
MIME-Version: 1.0

Hi all,

I've done a restorative change to the PDF book title.

The manual pages in this project had historically used the 5th argument
to TH, with the string "Linux Programmer's Manual".  This was showed as
the center-top title of the pages.  This was incidentally consistent
with the UNIX Programmer's Manual.

A few years ago, I removed the 5th argument to TH to use the default
string, to follow conventions.  At the same time, I put the project name
and version in the 4th argument to TH: "Linux man-pages X.Y".

When we added the scripts written by Deri to produce a PDF book, the
title of the book was "The Linux Manpage Book", and the front page said
"GNU/Linux\nTHE MAN PAGES BOOK".  For consistency with the project name,
I changed those some time ago to be title: "The Linux man-pages Book"
and front: "GNU/Linux\nTHE MAN-PAGES BOOK".

However, for consistency with the UNIX Programmer's Manual, and with the
old title used within the project, I'm now (partially) restoring the
title of the book and its front page to be both:
"GNU/Linux Programmer's Manual".
(It's not fully restorative, because it has GNU/Linux where the old
 title had just Linux, but half of our documentation is for glibc, so I
 think it's deserved.)
(I was never convinced by the old front text: why should it have the
 word "book"?)

I'll hold this change for a few days in case anyone has comments for it.


Have a lovely day!
Alex


commit 9926e7cefe109b1752b166e5105025db3615b9ca (HEAD -> contrib)
Author: Alejandro Colomar <alx@kernel.org>
Date:   Tue Aug 27 11:48:58 2024 +0200

    share/mk/: build-pdf-book: Rename book to "GNU/Linux Programmer's Manua=
l"
   =20
    This more closely resembles the historical name used in the project.
    The manual pages had "Linux Programmer's Manual" in the 5th argument to
    TH, until that was changed a few years ago to follow groff(7)
    conventions.
   =20
    This restoration of the title is also consistent with the
    UNIX Programmer's Manual.
   =20
    Signed-off-by: Alejandro Colomar <alx@kernel.org>

diff --git a/share/mk/build/pdf/book/front.roff b/share/mk/build/pdf/book/f=
ront.roff
index fdf1a9820..c18ab6b92 100644
--- a/share/mk/build/pdf/book/front.roff
+++ b/share/mk/build/pdf/book/front.roff
@@ -17,7 +17,7 @@
 \m[maroon]GNU/Linux\m[]
 .sp 18p
 .ps 16
-\f[BMB]THE MAN-PAGES BOOK\fP
+\f[BMB]Programmer's Manual\fP
 .sp 6i
 .ps 12
 \f[HB]Maintainers:\fP
diff --git a/share/mk/build/pdf/book/prepare.pl b/share/mk/build/pdf/book/p=
repare.pl
index 800715d82..ef8c17b18 100755
--- a/share/mk/build/pdf/book/prepare.pl
+++ b/share/mk/build/pdf/book/prepare.pl
@@ -83,7 +83,7 @@ BuildBook();
=20
 sub BuildBook
 {
-       print ".pdfpagenumbering D . 1\n.nr PDFOUTLINE.FOLDLEVEL 0\n.defcol=
or pdf:href.colour rgb 0.00 0.25 0.75\n.pdfinfo /Title \"The Linux man-page=
s Book\"\n.special TinosR S\n";
+       print ".pdfpagenumbering D . 1\n.nr PDFOUTLINE.FOLDLEVEL 0\n.defcol=
or pdf:href.colour rgb 0.00 0.25 0.75\n.pdfinfo /Title \"GNU/Linux Programm=
er's Manual\"\n.special TinosR S\n";
=20
        foreach my $bkmark (sort sortman keys %files) {
                BuildPage($bkmark);



--=20
<https://www.alejandro-colomar.es/>

--n4cego22hqwzu6es
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbNqgwACgkQnowa+77/
2zJSYRAAloje36bVlDms4rkWfl90/UTiY9nDFBIs5hdNJXrwciGqxT0xwb1sXDAk
oieSELYiGgTAjZnRnK4QTN/sOSyYDTpQ/28vdgH4dClVA8V1BoaUipWPRUVuKMvV
vfGr1XYT0Hs1vurO21eaCUua+XfzB8YLw5VJrMkV/sxlXP4MPqpaYXaHzsc9oVKn
Ol8LUBzi9jfvmXgPzlNMlr5vQOkWW2cjIhLtnrNeiWhyWVMj84aNGPkHlOLsVsCe
cMHEogToAw+tHBchaDTai286gE7wedXlU8P8pvTWl8Qj9G/tJ+NEbs20VIthbIdT
VSHfyTinFV+OmNoYevHkPay1cfNfNBDfjGXSXEJPXXCwEl9jThKFPq0xELq2Ji+q
VnguZccpMUawpGmD4cgOlWn+wFm/OLadaurSElP8dPYDqxEuWjomxXvOS67xc63Y
RUl12nTCSuJyvnVko5bEVsgWX+gPTwzaTjfJ9Dal6Cdi60CpbsRVmAbMiPutXgYN
l4s7O1onCV6fkpaTzN8e4VsYHW1XNyCSZL+DTOQbYCo//v/oa/SCWMZlYJRS9QNy
dOllQUYsMnOPSbUvHB7cgouXgvPeOaA3kLnXEuOZddE/dXgPk8wazjv1yp9AuclQ
R3Qb2hZDF9TNmaCr0HBfgE5SmMGdwiQbfWMESDXY3h+ZWZiVZMs=
=7NZI
-----END PGP SIGNATURE-----

--n4cego22hqwzu6es--

