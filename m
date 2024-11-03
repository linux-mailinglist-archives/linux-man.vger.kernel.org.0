Return-Path: <linux-man+bounces-1853-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD319BA366
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 02:17:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C42B61C208C7
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 01:17:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 550C9AD31;
	Sun,  3 Nov 2024 01:17:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQ3vpJh9"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 129F033FE
	for <linux-man@vger.kernel.org>; Sun,  3 Nov 2024 01:17:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730596626; cv=none; b=YHyNAyLN37VtsjCVpDLJDe5EGvr7upgyO7ePO0phAAmN5XVvQS7GwmbJUJZvHp/gZzu79FmmgE1iAJ37Pg1WjNsZtAjahwuLQrH458e87K98HD3G0XTi0wQtNk4WVXGNK2BdnGKVFlTc/j5mTmHFefCONARdwkpsav2Lw/SJLf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730596626; c=relaxed/simple;
	bh=skGncAjra7z6CzTwlnY2YRKAKSXKjJ8JNcutcDdcqAU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V+SPT0ZpTYPuvpCCG48IC2Ld6IODR9H42S8+OqmuUiwJKFLcoIWcgH+ziWm/anLSaU+mWrLiTJqz2+B1R7x17ed6x9wxEIE7DcaZ8ajixFfv8EUhtO8di3qbKqLQGWkeWg9BP0MGBfM96xLxH9FZzNp4jCu4UENlqQwVQmk3zKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQ3vpJh9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A083FC4CEC3;
	Sun,  3 Nov 2024 01:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730596625;
	bh=skGncAjra7z6CzTwlnY2YRKAKSXKjJ8JNcutcDdcqAU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eQ3vpJh9ibSSVv+mANDEtrN8Qup2k6O6ltU9KZtPlYfeSwx5h39P3URSSrr2Vp/nv
	 2cyihPkH3OQOdLkJDMiDpYMNnJZQU3L4Dp3vfrrdxCUP7vuKIVBt7eISl6aE6JJJP3
	 l5wg/VAU8xaH5SAM9Dc8oyN5gqONA9f1+0KRBWZdz8b8mENdeMaRf+3UxX6LZr84dT
	 IdUbHqYUKnZklzcJUfqqHMCZqCGnM6xiaABb5PnlFLnlfYNkw/FVDf6A/biwl5Sefy
	 nurzdJi7Kb3/kHBAvDnoIgdg1F+Sc5mVeSjH19h7LLnPz6aOAB9/K2Yq73HAgn2c9d
	 loCM8aDSt5a2A==
Date: Sun, 3 Nov 2024 02:17:01 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, groff@gnu.org, cjwatson@debian.org,
	branden@debian.org
Subject: [PATCH v2 2/4] scripts/bash_aliases: man_lsfunc(), man_lsvar(): Use
 mansect(1)
Message-ID: <ef793bf0af1f006971c6a3aa78227719ae30222a.1730596504.git.alx@kernel.org>
References: <cover.1730596504.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DjC6QbSfbYJ26UGj"
Content-Disposition: inline
In-Reply-To: <cover.1730596504.git.alx@kernel.org>
X-Mailer: git-send-email 2.39.5


--DjC6QbSfbYJ26UGj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 3 Nov 2024 02:17:01 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, groff@gnu.org, cjwatson@debian.org,
	branden@debian.org
Subject: [PATCH v2 2/4] scripts/bash_aliases: man_lsfunc(), man_lsvar(): Use
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


--DjC6QbSfbYJ26UGj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcmzw0ACgkQnowa+77/
2zLPUw/+LgWudYPdF0s2wJ2PkV2VMmsbNr/T190vvY1zWyVE9RkTHbSaY7S0GKz/
XJM9kEc65Dln8y/SWqejwPU18z2KVK8NXH7Ob97DpmHOCIaqhUgASuTTtngblzio
aqVRyXHrdjFKLwvOEBx5E94WACmMuJ7JIcTJ8bBkwEGgCkc6LHwQ1jlpv1I792AO
UpGyqzaiMxiRzU2VfKZ6PwBkMr5NtM1+hU27f0fRkTPMgLObwbfw0651z9wdtMO+
UB1Led8WYfGAtXV0lIwfTegZzMDotAlOyZmpj0+pvRLKuSYt9TcZMfczuYQ34X3X
9MFdzC8MT9EWLXvGwH/YH7UrdC5vP/6E5tmdPfF/fL8Ab012w0B7UdxoQnFytsdb
CYjJoluEurTloJVoeemTC+KGoCiMpbMVTMkikcbSB/+3UptUoTWnbHquIWg9H7dL
CiANPox3UC4lJ3vRcZENXCylD838IfuZlabhclb+ZpJ8/NGWSnCAJtxbOGJ0H73+
Yzg47OTfgJiOpd4qcshQt/mZLSfx26brL2WqV8tsNPk81Rsrgwxcb09ADKIGHOSC
DSiIP/1kKLVznYDn1NJVQsM5k2FPjiYrFHReZlbxIsFKpuXWJv5RPU45R3K+qPqj
hQP78hfs1RKbwQEOo8SF/wFym4d0NWOBA1Y8oZD6Vr69DaFfRDQ=
=sFMG
-----END PGP SIGNATURE-----

--DjC6QbSfbYJ26UGj--

