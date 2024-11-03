Return-Path: <linux-man+bounces-1854-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A149BA367
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 02:17:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 29157282B97
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 01:17:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B4D814A84;
	Sun,  3 Nov 2024 01:17:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPAozqiL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF86F33FE
	for <linux-man@vger.kernel.org>; Sun,  3 Nov 2024 01:17:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730596632; cv=none; b=t5mFQA3fSilY8IgAiha5eQ7YNgSBETlSrIYZg53Rz+VKBddHbLP9xhDF+4DTsveWG8X7jiXAcGm3g1yJczew1ZvJisR2E47ke6oT6FabltFeFRtsYIeAY1iLFYfw225rWcyt/56d5puFxl4J0mNYljbD5WYJBE/Cgio8DEMM6ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730596632; c=relaxed/simple;
	bh=veqsPsYcpQoURJ5gtWR09UAE2pahMqFSl8u9hrlGfjg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JNQHjvdLnqJ6+xOMo84rw69T733t7gNELFqNMmdnnpT6gOlUIwOozEsoHOILit3ELf4vrR2DYTIrFM/IpmX3A+3NJPbWlZ1OlzVLe1IKgoO5zcSKBESynCRnQtcYYcbTZO3nMTz25tULAFgiAoCeFzipbfy393Ny/C7rWg+KaxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPAozqiL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F11DC4CEC3;
	Sun,  3 Nov 2024 01:17:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730596631;
	bh=veqsPsYcpQoURJ5gtWR09UAE2pahMqFSl8u9hrlGfjg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gPAozqiL/x9GZCT20AlPefP3z4dFu1zZDUyw5Pzd5VKCwAvP+W3vtNW/CdU09IagZ
	 GzIeF5fagOGfRtFF0C2fsXtVOg179htanzJnSM49Bc7KRxA0EE0KtqPN94LDO5+deU
	 +WXx06RGmn75FAQGbp30dQzlAxPwhYSpFXfQxqO7eyBxv+btKNmSgVYn2z3KXZp/U4
	 PBrfgkml9nK/9Vm4nVQPlNvwBxfj4q3bGpYLNpUWqJuzUGVPe9fUikdy2t6rhSH4dr
	 FJ9nBEVodoRJnwwoO/tnsY4ibx3e0/KDPXPtvrAWKLgeHJyDiYFChbUQm8NW2wNYmb
	 5Ki9NWjsrugWw==
Date: Sun, 3 Nov 2024 02:17:06 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, groff@gnu.org, cjwatson@debian.org,
	branden@debian.org
Subject: [PATCH v2 2/3] scripts/bash_aliases: man_lsfunc(), man_lsvar(): Use
 pcre2grep(1) instead of pcregrep(1)
Message-ID: <0464c22ec3af1ee92f05c6a4202b10b2a1c2dc4f.1730596445.git.alx@kernel.org>
References: <cover.1730596445.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="LL68t5WHLvXmVT74"
Content-Disposition: inline
In-Reply-To: <cover.1730596445.git.alx@kernel.org>
X-Mailer: git-send-email 2.39.5


--LL68t5WHLvXmVT74
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 3 Nov 2024 02:17:06 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, groff@gnu.org, cjwatson@debian.org,
	branden@debian.org
Subject: [PATCH v2 2/3] scripts/bash_aliases: man_lsfunc(), man_lsvar(): Use
 pcre2grep(1) instead of pcregrep(1)

pcregrep(1) is obsolete.

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 scripts/bash_aliases | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/scripts/bash_aliases b/scripts/bash_aliases
index 25425c389..98b466410 100644
--- a/scripts/bash_aliases
+++ b/scripts/bash_aliases
@@ -54,7 +54,7 @@ man_lsfunc()
 	|mandoc -Tutf8 2>/dev/null \
 	|col -pbx \
 	|sed_rm_ccomments \
-	|pcregrep -Mn '(?s)^ [\w ]+ \**\w+\([\w\s(,)[\]*]*?(...)?\s*\); *$' \
+	|pcre2grep -Mn '(?s)^ [\w ]+ \**\w+\([\w\s(,)[\]*]*?(...)?\s*\); *$' \
 	|grep '^[0-9]' \
 	|sed -E 's/syscall\(SYS_(\w*),?/\1(/' \
 	|sed -E 's/^[^(]+ \**(\w+)\(.*/\1/' \
@@ -77,8 +77,8 @@ man_lsvar()
 	|mandoc -Tutf8 2>/dev/null \
 	|col -pbx \
 	|sed_rm_ccomments \
-	|pcregrep -Mv '(?s)^ [\w ]+ \**\w+\([\w\s(,)[\]*]+?(...)?\s*\); *$' \
-	|pcregrep -Mn \
+	|pcre2grep -Mv '(?s)^ [\w ]+ \**\w+\([\w\s(,)[\]*]+?(...)?\s*\); *$' \
+	|pcre2grep -Mn \
 	  -e '(?s)^ +extern [\w ]+ \**\(\*+[\w ]+\)\([\w\s(,)[\]*]+?\s*\); *$' \
 	  -e '^ +extern [\w ]+ \**[\w ]+; *$' \
 	|grep '^[0-9]' \
--=20
2.39.5


--LL68t5WHLvXmVT74
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcmzxIACgkQnowa+77/
2zKJJg/9Eli0f3Av7DLmLyEYl9k2Dx469tsuxfX54XSTceOaX4YVbZIhD41tlef9
6HDRuK2yDVxlladPA9O6FfF/pbj7B906mMf3g9zCOSO15lThOWieAk34aoEy3cw4
p9F20SbAt145J7mSlD/WaZyxtzp88bi4F+wNhs8bp1MuuUPkiHRnbVQ83VmnYfbi
dfA1J4wYYac9mTrpM645EEfWf1uVB5mPecJYjsthbKNk/NpyvL4kxjL2NP6ldJTt
OI1rrpqXqvTSMwKgcBoBTQvI3gVrUo0WUovqrx7QEht8l3x/zNR4EVNHqLSB8fRU
BGwhRDIs124Nerp0bDhMybFNjXzG9IYKxPcQMo5kBXLd7GhW0ihC/LjZou/w+4kz
ZPnZRzQFlmmTxz0D/T304x0bBCf22QNmZQS0kMV3U8QLquqCOTPzglUBBDwNq6zl
ZI19fA/80eku/wj4pP6m+07GVjFhiWPQzDOViyv0BKX265KfF/ZFb6l1NNPDMbKN
ka29k+UqVA4/oRNm/WmQxg51tNAcwxY7bX98osKYCTd38yq9dxZfDC2N/AaimStf
z2u/o2Ro//RsSvKJnQcbBpI7SXrXFCucCGLvGbu3Hjlny1bZnArCHQa02Q8pb9bB
rSaxo6gp/P0VcRFW/eszBL3YvECCrRCEAXn4Q7Ld97fPFpRdDbY=
=m34A
-----END PGP SIGNATURE-----

--LL68t5WHLvXmVT74--

