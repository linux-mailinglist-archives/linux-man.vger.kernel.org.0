Return-Path: <linux-man+bounces-1838-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB219BA2FE
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 00:10:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A9CB4B223CD
	for <lists+linux-man@lfdr.de>; Sat,  2 Nov 2024 23:10:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C477170A30;
	Sat,  2 Nov 2024 23:10:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sw61Qcxm"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEF25158546
	for <linux-man@vger.kernel.org>; Sat,  2 Nov 2024 23:10:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730589039; cv=none; b=hx/lJkmwphnA4uJv3WOlWZ+06JKJdSgALpQbq7oss1T8IOYw8jTZtH762NxzWdM829SoOzpv7Q9Vx9BurgyKVwxGA2EH28EB0SEUVZyHfdPWVCOtM3H3Bqgi9p9JuNVxRI8XFwI3o0mGuQNIpYqdCZLrOSMLUe6/P6KyFcBAyNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730589039; c=relaxed/simple;
	bh=YDFZlH/O9FtNCbEPMfdcj604IZpZgeDM4yk3u3p+rXo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sd7Q/2gYtR4f9G4bQVeKNRyGqElrfY0enSC7DIaZNS1r8EBoW/CRusIWJvPjXLbc1vDWa9mIESUTxCjoHu41T7LrR9OegBlFTYHSozPOWkDG2Dj4l+hN4dOdM5lVJK+1yAvV74iFdk1GO6pkG/GXKGvhxfRw7Y/Gnso3G+yzo8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sw61Qcxm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8EEAC4CEC3;
	Sat,  2 Nov 2024 23:10:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730589038;
	bh=YDFZlH/O9FtNCbEPMfdcj604IZpZgeDM4yk3u3p+rXo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Sw61QcxmcBv1RI3qi81Ek1wxQbWQrZtNethtgEl6L3jCZWQc85C/eBSdjCPCOnGuO
	 YuQ4poQGEMOivSCe1K7BNlkZI9LEkoB5y9BCDARcF6sFFbCznoPidAVB6d/gqDIDON
	 sd3h4+unY7iPQ2+QBscYrH3AjSsCv3VrPQFd4pYRCHClVjtihJQf96bkzglXqaja9M
	 Vl+7BYk+Y2Q6Xv77huyHyHh1EFWCLNJtaGxmDmM57K3twsuIXLN7GWOfuHxRvXLizz
	 KThtpxLYfmsE3iBw/RLAymzi6Z2qDmWi8UJyQ06dn1+/RnsiP/AlfzrNezipO71sY+
	 Y/QTjgeyi7frQ==
Date: Sun, 3 Nov 2024 00:10:33 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, branden@debian.org, cjwatson@debian.org
Cc: groff@gnu.org, Alejandro Colomar <alx@kernel.org>
Subject: [PATCH 2/3] src/bin/mansect, mansect.1: Add program and its manual
 page
Message-ID: <48204d056b4d8bcb035e3083ba1905b0eb855256.1730588410.git.alx@kernel.org>
References: <cover.1730588410.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aHFS4gKUI3UH7XmY"
Content-Disposition: inline
In-Reply-To: <cover.1730588410.git.alx@kernel.org>
X-Mailer: git-send-email 2.39.5


--aHFS4gKUI3UH7XmY
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 3 Nov 2024 00:10:33 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, branden@debian.org, cjwatson@debian.org
Cc: groff@gnu.org, Alejandro Colomar <alx@kernel.org>
Subject: [PATCH 2/3] src/bin/mansect, mansect.1: Add program and its manual
 page

Cc: "G. Branden Robinson" <branden@debian.org>
Cc: Colin Watson <cjwatson@debian.org>
Cc: <groff@gnu.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man1/mansect.1 | 61 ++++++++++++++++++++++++++++++++++++++++++++++
 src/bin/mansect    | 33 +++++++++++++++++++++++++
 2 files changed, 94 insertions(+)
 create mode 100644 man/man1/mansect.1
 create mode 100755 src/bin/mansect

diff --git a/man/man1/mansect.1 b/man/man1/mansect.1
new file mode 100644
index 000000000..f46dc0609
--- /dev/null
+++ b/man/man1/mansect.1
@@ -0,0 +1,61 @@
+.\" Copyright 2024, Alejandro Colomar <alx@kernel.org>
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH mansect 1 (date) "Linux man-pages (unreleased)"
+.SH NAME
+mansect
+\-
+print the source code of sections of manual pages
+.SH SYNOPSIS
+.B mansect
+.I section
+.RI [ file\~ .\|.\|.]
+.SH DESCRIPTION
+The
+.B mansect
+command prints the source code of the
+.I section
+of the given manual-page files.
+If no files are specified,
+the standard input is used.
+.P
+.I section
+is a basic regular expression.
+.P
+The
+.B TH
+line is unconditionally printed.
+.P
+The output of this program is suitable for piping to the
+.BR groff (1)
+pipeline.
+.SH EXAMPLES
+.EX
+.RB $\~ "man -w strtol strtoul | xargs mansect '\[rs](NAME\[rs]|SEE ALSO\[=
rs])'"
+\&.TH strtol 3 2024-07-23 "Linux man-pages 6.9.1"
+\&.SH NAME
+strtol, strtoll, strtoq \- convert a string to a long integer
+\&.SH SEE ALSO
+\&.BR atof (3),
+\&.BR atoi (3),
+\&.BR atol (3),
+\&.BR strtod (3),
+\&.BR strtoimax (3),
+\&.BR strtoul (3)
+\&.TH strtoul 3 2024-07-23 "Linux man-pages 6.9.1"
+\&.SH NAME
+strtoul, strtoull, strtouq \- convert a string to an unsigned long integer
+\&.SH SEE ALSO
+\&.BR a64l (3),
+\&.BR atof (3),
+\&.BR atoi (3),
+\&.BR atol (3),
+\&.BR strtod (3),
+\&.BR strtol (3),
+\&.BR strtoumax (3)
+.EE
+.SH SEE ALSO
+.BR lexgrog (1),
+.BR groff (1),
+.BR man (1)
diff --git a/src/bin/mansect b/src/bin/mansect
new file mode 100755
index 000000000..a35d387b1
--- /dev/null
+++ b/src/bin/mansect
@@ -0,0 +1,33 @@
+#!/bin/sh
+#
+# Copyright 2020-2024, Alejandro Colomar <alx@kernel.org>
+# SPDX-License-Identifier: GPL-3.0-or-later
+
+
+if test $# -lt 1; then
+	>&2 echo "Usage: $0 SECTION [FILE ...]";
+	return 1;
+fi;
+
+s=3D"$1";
+shift;
+
+
+if test $# -lt 1; then
+	sed -n \
+		-e '/^\.TH/,/^\.SH/{/^\.SH/!p}' \
+		-e '/^\.SH '"$s"'$/p' \
+		-e '/^\.SH '"$s"'$/,/^\.SH/{/^\.SH/!p}' \
+		;
+else
+	find "$@" -not -type d \
+	| xargs wc -l \
+	| sed '${/ total$/d}' \
+	| grep -v '\b1 ' \
+	| awk '{ print $2 }' \
+	| xargs -L1 sed -n \
+		-e '/^\.TH/,/^\.SH/{/^\.SH/!p}' \
+		-e '/^\.SH '"$s"'$/p' \
+		-e '/^\.SH '"$s"'$/,/^\.SH/{/^\.SH/!p}' \
+		;
+fi;
--=20
2.39.5


--aHFS4gKUI3UH7XmY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcmsWkACgkQnowa+77/
2zKo5A//QZLdL5nDa/0Q1TYw3aPGkq+3uWwMaHDYEMJXZhGuJ95tqcUVaRSJsJvU
gDvPeEGbmDWr8bilTGKJFNVsM/y3ZKpX/cxPHZkbeDjZE2+sV4V1CO2qARjJDlH4
R4Uhy/RdXzzCENG1JcI8OJkFsrBls2NLoTiytidsNaxH+b/ZIo2avB12m7XVDGDK
6cRtI1avicWbiWgtRHtY999Hhr2zKY1PzYaGmgikXxVXSos8PswlGWTww8h79p9a
Hq1s3nCSqmeTV9SFBRtHaWmuc2TnMIKQPdiGn2H+QEG8KOsZFIgrnEhtG5XPtGAp
ZDbYCGxSjwudcB3+rwhgEnFZCn99M32aUsHSIpo1619Ql/QeUdvd8c4cov+te0CQ
pUaeX56DLk9QYZR3KoALd+u/blscxYELFEHjqyy6HJy/1Tu+NrHerGWCkATtsJLB
FvyXfQApLYjKONANbrMkSVZ+o14Jd79LEwRCREbnNOkUjafIs2ehEsX8z+5U23mE
h/UlN1Ls6H8FhPfmW9yrsNbGPAdzidDrUPyi5gMH6sG2JcA8Qfv6/2BHZQwivIbo
6cH5ftVQ6ky9mujFwcynIMA5DaXXGPSbQbGyo79yeMtTv9aQNCLdbNi08pTfY1KW
EBMPeoK+3qW5THq6GBCO54pFC9BwLX/fgAK6YOlOrmu6NvTzT7g=
=mFXP
-----END PGP SIGNATURE-----

--aHFS4gKUI3UH7XmY--

