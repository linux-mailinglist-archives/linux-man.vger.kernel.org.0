Return-Path: <linux-man+bounces-1851-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A359BA363
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 02:16:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7EEA01C20CA2
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 01:16:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 230C3AD31;
	Sun,  3 Nov 2024 01:16:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jXibl+9i"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D401333FE
	for <linux-man@vger.kernel.org>; Sun,  3 Nov 2024 01:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730596614; cv=none; b=DfHZTTwMMNWsAmGyCsQkCpMKW950aXcWrIC8Z1nEagK0Bs81JXuGgHx50wlnCUtK3How8gpBcerQIZ+0Bzx6762iRcA3su/9EiAcQzGZwfznJBOrkD05btnBGUpBf7IUS7fa6zjdIp0iA+7n7ECHXDeGnaA1YrjWdD+voTOeOcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730596614; c=relaxed/simple;
	bh=+lwb6pShExYtQAxcBXdBCmvTpg8c9zG+j3lEt1KX2qY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uPvZ98DNHm1UlESRF8TDvCg8d9NUvBFxl5yFWLIbpVRU61JDFzW7261VKGf2fQFYFFd2IJ+UPBYyDQ3C9KB4vH5F1pr39Duq66KrcjljHkaFwyqUF6xLAJvDa2pkGGbZjOsVrl06G8NdzVg8EGlav5p1RJI3qJbvGmUvCb58jRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jXibl+9i; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54F57C4CEC3;
	Sun,  3 Nov 2024 01:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730596614;
	bh=+lwb6pShExYtQAxcBXdBCmvTpg8c9zG+j3lEt1KX2qY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jXibl+9iWUQmRxwbar4sO8EL5vBronZWu5zIZ4U/BNYD4q/iCEn17YrQnzELXXiSN
	 1KcMH/ZJs4n8Icyq2GTmNPuo36vT0FdrX/oZ08yVYSgKpfNo6VZg5M2z664HDH7ZvM
	 JTvMttozoLTgvCMrR5uL3QD+qtPdfxF7umkCb5ITdIu706hhtX4lymZWr1j2miwWOY
	 YOUYLqXCp5i2GAbnHD5KEedrHp4uOZIK8zv+sqwht06/Zv6Jf3mbw3j6Dd5y5CJf85
	 R/69fX+cnLl/sWHsDv5rtjpgPvknHh0nYtLdVrioqz8X078bZm8ROTbTnwfu0AoDKF
	 KHDXc4s5gGdlw==
Date: Sun, 3 Nov 2024 02:16:47 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, groff@gnu.org, cjwatson@debian.org,
	branden@debian.org
Subject: [PATCH v2 1/3] scripts/bash_aliases: man_lsfunc(), man_lsvar(): Use
 mansect(1)
Message-ID: <ef793bf0af1f006971c6a3aa78227719ae30222a.1730596445.git.alx@kernel.org>
References: <cover.1730596445.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="++la+IAgaG7pt1dZ"
Content-Disposition: inline
In-Reply-To: <cover.1730596445.git.alx@kernel.org>
X-Mailer: git-send-email 2.39.5


--++la+IAgaG7pt1dZ
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 3 Nov 2024 02:16:47 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, groff@gnu.org, cjwatson@debian.org,
	branden@debian.org
Subject: [PATCH v2 1/3] scripts/bash_aliases: man_lsfunc(), man_lsvar(): Use
 mansect(1)

Remove the man_section() function, and call the mansect(1) program
instead.

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 scripts/bash_aliases | 45 ++++++--------------------------------------
 1 file changed, 6 insertions(+), 39 deletions(-)

diff --git a/scripts/bash_aliases b/scripts/bash_aliases
index e461707c8..25425c389 100644
--- a/scripts/bash_aliases
+++ b/scripts/bash_aliases
@@ -38,39 +38,6 @@ sed_rm_ccomments()
 ########################################################################
 #	Linux man-pages
=20
-#  man_section()  prints specific manual page sections (DESCRIPTION, SYNOP=
SIS,
-# ...) of all manual pages in a directory (or in a single manual page file=
).
-# Usage example:  .../man-pages$ man_section man2 SYNOPSIS 'SEE ALSO';
-
-man_section()
-{
-	if [ $# -lt 2 ]; then
-		>&2 echo "Usage: ${FUNCNAME[0]} <dir> <section>...";
-		return $EX_USAGE;
-	fi
-
-	local page=3D"$1";
-	shift;
-	local sect=3D"$*";
-
-	find "$page" -type f \
-	|xargs wc -l \
-	|grep -v -e '\b1 ' -e '\btotal\b' \
-	|awk '{ print $2 }' \
-	|sort \
-	|while read -r manpage; do
-		(sed -n '/^\.TH/,/^\.SH/{/^\.SH/!p}' <"$manpage";
-		 for s in $sect; do
-			<"$manpage" \
-			sed -n \
-				-e "/^\.SH $s/p" \
-				-e "/^\.SH $s/,/^\.SH/{/^\.SH/!p}";
-		 done;) \
-		|mandoc -Tutf8 2>/dev/null \
-		|col -pbx;
-	done;
-}
-
 #  man_lsfunc()  prints the name of all C functions declared in the SYNOPS=
IS
 # of all manual pages in a directory (or in a single manual page file).
 # Each name is printed in a separate line
@@ -83,9 +50,9 @@ man_lsfunc()
 		return $EX_USAGE;
 	fi
=20
-	for arg in "$@"; do
-		man_section "$arg" 'SYNOPSIS';
-	done \
+	mansect 'SYNOPSIS' "$@" \
+	|mandoc -Tutf8 2>/dev/null \
+	|col -pbx \
 	|sed_rm_ccomments \
 	|pcregrep -Mn '(?s)^ [\w ]+ \**\w+\([\w\s(,)[\]*]*?(...)?\s*\); *$' \
 	|grep '^[0-9]' \
@@ -106,9 +73,9 @@ man_lsvar()
 		return $EX_USAGE;
 	fi
=20
-	for arg in "$@"; do
-		man_section "$arg" 'SYNOPSIS';
-	done \
+	mansect 'SYNOPSIS' "$@" \
+	|mandoc -Tutf8 2>/dev/null \
+	|col -pbx \
 	|sed_rm_ccomments \
 	|pcregrep -Mv '(?s)^ [\w ]+ \**\w+\([\w\s(,)[\]*]+?(...)?\s*\); *$' \
 	|pcregrep -Mn \
--=20
2.39.5


--++la+IAgaG7pt1dZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcmzv8ACgkQnowa+77/
2zLDyw/9FQjXeZHQS6SgxKx1jhocZZURbeURSu87ZL1cTIwacjrpOB4J08EY0KtK
ivh2PDeI32hu5X5uktj5cEGOekclR/RQCmgm6t8RFDBOSeVro0Cvwnal3NM1aUgf
m/GTbyy+3/nhRhFHCKJd1PRyEzW3fn7OWxLmLxY/g8/J5YKj4CM7aT4eHP0oIXIr
hlerlU7IkZkdXQAYXBSUs0DqwhYy70sGR2z0SEw+zuV0rq87h0nJjB0yh6srjZRj
zJQe/R0fT/QB92g5fJIZgYSQHfdHC4V5x6V3Hg6pRWCzb9Zc1o91uwcmAJnD8iIp
Pdaw2cSvZX7oLpUuc8T1DD2hLLzt0tea1XQomDAJ6UUmOP4oHR0SedB5uLHRSTZa
rvyBkYEgu0Lz2gJYLsmYdJuCSN8cXA2UmIqZwvfw0EaGkXXuMeVDwhl8Q8iwYcLl
OwjqMvK+xZafHwmYCGILoeghHRKaCawY3uYOD6PsHelxbUXugIGRms/1lxJ1/HJ9
C8q+BnwMnUSyTJB3ZiUuNXYnAxEYmsuiBWBNb1r0C0Wb6kTES9XZRSOZMWrZNBEE
idJBUKvk5ycvZ3ne8lG8RgDhCR+qKOVv/7YfSvZ0H4f5gp4IdOvevUZUVZy+Gvcd
spQveDqc5MDBGt2cNNU2reRiDE5RYYRZ2sdSXyTBy1HmbcWYVIM=
=AmUb
-----END PGP SIGNATURE-----

--++la+IAgaG7pt1dZ--

