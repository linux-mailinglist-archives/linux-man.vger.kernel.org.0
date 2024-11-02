Return-Path: <linux-man+bounces-1839-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C229BA2FF
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 00:10:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 84F9D1C21458
	for <lists+linux-man@lfdr.de>; Sat,  2 Nov 2024 23:10:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8A1D170A30;
	Sat,  2 Nov 2024 23:10:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QG2w28TQ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F9A0158546
	for <linux-man@vger.kernel.org>; Sat,  2 Nov 2024 23:10:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730589044; cv=none; b=pAooCy6N98x7hy35TCpXzQJ5WUvkbjz9kegMkUSySeI3FcC7NEh6mQ1Fl4mQAQdg2MvNY70G1fb65IIPNXFGGOEVZOXjFztu3+NZTpjKJiCGH5HEaZ1Cgn1tWqxyjNr2TmQjKs7UTNojvTzLmjUZX6QDVKUewAiI4U0NeuRl3M0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730589044; c=relaxed/simple;
	bh=vFYZujIPEWtUNGV2Hm7xLCnu+nNd6WhBO2iLdjrpyeI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FIYD/vx4T9Zb+3c92Bvcbki/PmMsjuceNmWEvLV+5DxlBi3upYfr8IoM1KYC3eEfgFfHof1geBuebgm35/CcY5NQXrNACPMoOsEYnH0LuvGhfXzQ28egFEAIsL3kHNM+E1+fgpe+TDaSRGIGU7BI6HuT3AyzH9QSjcnP/6lPZto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QG2w28TQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD183C4CEC3;
	Sat,  2 Nov 2024 23:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730589044;
	bh=vFYZujIPEWtUNGV2Hm7xLCnu+nNd6WhBO2iLdjrpyeI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QG2w28TQgkEpQj7tRndbOZrbYi1csinp7j4/jMSLwhVpzpssGfb4onYLcLtwLp8vE
	 v/oAZ/o660B7hUPyeypk/gMyZ8CY0EGyPtqquaCXAOcBcS0uaHA2yvbq1VbOg4xae5
	 hmTe1LuPFN/DXYzSCrx2axhuENFmpxf4hUhm5/oeUD6dqnjvSFOU7D82J2vARdgpPA
	 aNDvkX9lPRyr7F9pnGvAh3m49eP3dc+pE84HkD1bBknQJaV1TyinpiZx1mgC0Vo0He
	 ivN7QKCH05I4D2s4JhiUr2Nk/bK4s3uEgmWL6jQClBdNnHFBbEygoV04LhWPXrMOSv
	 2Ay+R9Cr21Vjg==
Date: Sun, 3 Nov 2024 00:10:39 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, branden@debian.org, cjwatson@debian.org
Cc: groff@gnu.org, Alejandro Colomar <alx@kernel.org>
Subject: [PATCH 3/3] scripts/bash_aliases: man_section(), man_lsfunc(),
 man_lsvar(): Use mansect(1)
Message-ID: <d79336b4d236f9b27ca0a56f5e98abc5f4d3d5ab.1730588410.git.alx@kernel.org>
References: <cover.1730588410.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="g0JHlVw8Afd5ZzTT"
Content-Disposition: inline
In-Reply-To: <cover.1730588410.git.alx@kernel.org>
X-Mailer: git-send-email 2.39.5


--g0JHlVw8Afd5ZzTT
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 3 Nov 2024 00:10:39 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, branden@debian.org, cjwatson@debian.org
Cc: groff@gnu.org, Alejandro Colomar <alx@kernel.org>
Subject: [PATCH 3/3] scripts/bash_aliases: man_section(), man_lsfunc(),
 man_lsvar(): Use mansect(1)

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 scripts/bash_aliases | 38 ++++++--------------------------------
 1 file changed, 6 insertions(+), 32 deletions(-)

diff --git a/scripts/bash_aliases b/scripts/bash_aliases
index e461707c8..0b0b5e08a 100644
--- a/scripts/bash_aliases
+++ b/scripts/bash_aliases
@@ -40,35 +40,13 @@ sed_rm_ccomments()
=20
 #  man_section()  prints specific manual page sections (DESCRIPTION, SYNOP=
SIS,
 # ...) of all manual pages in a directory (or in a single manual page file=
).
-# Usage example:  .../man-pages$ man_section man2 SYNOPSIS 'SEE ALSO';
+# Usage example:  .../man-pages$ man_section '\(SYNOPSIS\|SEE ALSO\)' man2=
/;
=20
 man_section()
 {
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
+	mansect "$@" \
+	| mandoc -Tutf8 2>/dev/null \
+	| col -pbx;
 }
=20
 #  man_lsfunc()  prints the name of all C functions declared in the SYNOPS=
IS
@@ -83,9 +61,7 @@ man_lsfunc()
 		return $EX_USAGE;
 	fi
=20
-	for arg in "$@"; do
-		man_section "$arg" 'SYNOPSIS';
-	done \
+	man_section 'SYNOPSIS' "$@";
 	|sed_rm_ccomments \
 	|pcregrep -Mn '(?s)^ [\w ]+ \**\w+\([\w\s(,)[\]*]*?(...)?\s*\); *$' \
 	|grep '^[0-9]' \
@@ -106,9 +82,7 @@ man_lsvar()
 		return $EX_USAGE;
 	fi
=20
-	for arg in "$@"; do
-		man_section "$arg" 'SYNOPSIS';
-	done \
+	man_section 'SYNOPSIS' "$@";
 	|sed_rm_ccomments \
 	|pcregrep -Mv '(?s)^ [\w ]+ \**\w+\([\w\s(,)[\]*]+?(...)?\s*\); *$' \
 	|pcregrep -Mn \
--=20
2.39.5


--g0JHlVw8Afd5ZzTT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcmsW8ACgkQnowa+77/
2zKx7RAAk9cc0vL8HCncqigaaIAbWcVCber9CHyOCPImsn+2dOW3d1hM+fV0nkiV
gL268txgjonZgqwxBRudACf3vW+vRzLFpJEuern51swosc66OjW89RfO6K+zvWa8
GdqW4zKMCQ8XCyHONM18vhG/4z76Yh6z80nlIAwytFwVbQeIUnX6p19A+FjLjPY+
v79X8cKL+h1fqDt/P8xCFWOtWHgCpzsbcGABt5Mouj1C7utuNzpQWcVSY0F94Vrl
4U/knCU0Tu3WM2S48CvGvi/kBXgfJywhOk2rxgFYqo/2ZDXe6U98rqbZvFYKKzLD
Bc6+ru/DcsLVsM3Fp0YFVOn4Zum0wLjebnDP/7xYBsWjP99828CC2erF5XdAd1+0
mb2MQ3QI/dor7hnqvhrgAho7N2IjqOyGU5YU6k9mQpyFg31fGfEo2+o5PoBHx9Po
vDosoJtAviFzjS63t9wmZq6UrgaInC2n3Y41DpCXV07V2UhEOJa0CQc1qVI2M45Q
twlZWGlRAm9tEM6YjHotHPR+LAvwtNLy62g++XnAAM+tDun5C41+t8qrkQIMvdC9
e3TRxuhgI2veDTavwnt671p+TyUDBToIgVPyZPlcdC3hCXxfCnSQmlZlO5areBxg
Oop10cKzp1STIoTgu4FvkqpSLLCEMAhEXFIPVsk2zBozpNcKY74=
=2tpL
-----END PGP SIGNATURE-----

--g0JHlVw8Afd5ZzTT--

