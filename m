Return-Path: <linux-man+bounces-1852-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D91DB9BA365
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 02:17:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1E731B221F0
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 01:17:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7714AD31;
	Sun,  3 Nov 2024 01:17:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YfFSDrh9"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86A18A945
	for <linux-man@vger.kernel.org>; Sun,  3 Nov 2024 01:17:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730596620; cv=none; b=AUeOkGLCODVzEmoQZM4PydS9Pq24Rnxcill5fiSKvT3aO8zBbzswUvy9IGJRg80UQlcEmYzAtnaoA9y/h9HGD5vhq/rZsxXQ1VAyQpGVImjCobhk88VUr9+/wrrzGpcZ5U+BknKAYrLitHcWBNuk1Vo35ev+Es6dDm4hDa8vNME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730596620; c=relaxed/simple;
	bh=UeZSZYka1fnc1m2w/blsWoUuEUY/eKpXd/PLo1Zj0dY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AkRdQuErAaJmFjfum+UFgxtu/vdaJBn9e2iGOIswcWqEdtVKcSYWMYMjb5doT0HYTG1/tXJ3gz3cRS+kZLCQvycdBJsFW2w9NqAAHA1hCaxH/4ZGD/wEysMlwSeh0g5gJ1jKC96jIooT0llkfy86wTYejV2B1cNdNuQpzY3qm4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YfFSDrh9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 042CEC4CEC3;
	Sun,  3 Nov 2024 01:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730596620;
	bh=UeZSZYka1fnc1m2w/blsWoUuEUY/eKpXd/PLo1Zj0dY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YfFSDrh9weTHBD0XIXMt5D4MvwDS+Rwj82mrI/W/5CWnQY03NufQBQDhIdFzl4/me
	 C92/voRM4kgsVkDGVQmsCiaOptKCOV86Pw5QeAgFZbZtQMOq4LbCz6KsLBhb3noKIw
	 yY2V4u9BuD0GBtd6KbyCBM4g05wAZk9X7pKzilva+FA8Js7MZmyfqrsYqblkC1gjJb
	 gGA+D02U/uPa2xoPT0SnNmHUp5kT9uwjZz4DVbehh4bQ2bTN4WT5Q5KKFiNZpiOaiC
	 NqFdTS9OgBH2G9dlmCTm5ktrcKw/8CnFqjiYr5v5a5zfcYvIya0ZZ0yhYBj7focFP9
	 hSUN0yEZoPWJw==
Date: Sun, 3 Nov 2024 02:16:55 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, groff@gnu.org, cjwatson@debian.org,
	branden@debian.org
Subject: [PATCH v2 1/4] src/bin/mansect, mansect.1: Add program and its
 manual page
Message-ID: <5ccf08a11af5a0c3a2ac26a01f7d95892c87177c.1730596504.git.alx@kernel.org>
References: <cover.1730596504.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="c7FqWLu+Mz9xMIw9"
Content-Disposition: inline
In-Reply-To: <cover.1730596504.git.alx@kernel.org>
X-Mailer: git-send-email 2.39.5


--c7FqWLu+Mz9xMIw9
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 3 Nov 2024 02:16:55 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, groff@gnu.org, cjwatson@debian.org,
	branden@debian.org
Subject: [PATCH v2 1/4] src/bin/mansect, mansect.1: Add program and its
 manual page

Cc: "G. Branden Robinson" <branden@debian.org>
Cc: Colin Watson <cjwatson@debian.org>
Cc: <groff@gnu.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man1/mansect.1 | 61 ++++++++++++++++++++++++++++++++++++++++++++++
 src/bin/mansect    | 26 ++++++++++++++++++++
 2 files changed, 87 insertions(+)
 create mode 100644 man/man1/mansect.1
 create mode 100755 src/bin/mansect

diff --git a/man/man1/mansect.1 b/man/man1/mansect.1
new file mode 100644
index 000000000..c9e9138e7
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
+is an extended regular expression.
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
index 000000000..a13a6b534
--- /dev/null
+++ b/src/bin/mansect
@@ -0,0 +1,26 @@
+#!/bin/sh
+#
+# Copyright 2020-2024, Alejandro Colomar <alx@kernel.org>
+# SPDX-License-Identifier: GPL-3.0-or-later
+
+
+if test $# -lt 1; then
+	>&2 printf '%s\n' "$(basename "$0"): error: Too few arguments."
+	return 1;
+fi;
+
+s=3D"$1";
+shift;
+
+
+if test $# -lt 1; then
+	cat;
+else
+	find -L "$@" -not -type d \
+	| xargs grep -l '^\.TH ' \
+	| xargs cat;
+fi \
+| sed -En \
+	-e '/^\.TH /p' \
+	-e '/^\.SH '"$s"'$/p' \
+	-e '/^\.SH '"$s"'$/,/^\.(TH|SH)/{/^\.(TH|SH)/!p}';
--=20
2.39.5


--c7FqWLu+Mz9xMIw9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcmzwcACgkQnowa+77/
2zLRHQ//QLdiaikhSZdmivDqu/7sf1YhQdBynAYSFHiUyBBpvHH/fQWC5KKWnu7u
sbSBoht4DZmSxiTSTEszVGpgV7UTJmhdMOpmxqs9Z6zXDdHZkdIUryQdu5cMTCge
TTmvTu0HiM5FPKKJ4JrSGbv+ecGNz5A4kXdww4tXdt6HHyIIqQYypuYM5/j7oDqM
/bNubLkarwJoTnvzMD/4fylao/Zp+u+2CZV+hVN4SfCLd5vy4x9Eis4Pn6FFv/nV
4EaRBLGaC44/LWI2n/rOwHRVfG2axNVk4D9e29ywVf8j0uXKeDaIa0j68yp6kTtm
8wSRRNE4tBTpFGziU3T6JKEgprsjGlkkEQg3GKXckBIL/GE+OglSs38Oai17M+6V
1gEOZrl8Flc+XfhY6TanW/+isTII79FsccgHHcWRX0fKFU+0gvABM/2Ibrl6wVZY
+JDvCmxP9JMkyhYPN1OyuxYxJhWVKlV/WvsnFzf5v+wm4pEPuK3XAN0bY4hJfIfo
LALywWuDh/wsTkpnj0PB9cBJm2N39Mbshd5uOaK00fubWu1bExu8NhOP9q6peDAC
S7nRufkINZPOSYFXHusXUhvPVLESXgktd4cgFFNgAsP2IOsA4lvrv/GXvOy07lRu
MQh3X2T4wjOGC3464yLfQOhhz4BizVLlL2huE6leoDyv/jAtDfI=
=Al86
-----END PGP SIGNATURE-----

--c7FqWLu+Mz9xMIw9--

