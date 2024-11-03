Return-Path: <linux-man+bounces-1855-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E043A9BA368
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 02:17:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A4F05282B6F
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 01:17:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CBCF14A84;
	Sun,  3 Nov 2024 01:17:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUVCrFPS"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC1833FE
	for <linux-man@vger.kernel.org>; Sun,  3 Nov 2024 01:17:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730596637; cv=none; b=FBiR840Fb/5j5obSGigsvD44uVuHo3RyRkhCfH6/Io3PzUikS3Z2PPSxqDv/dCM26g5zMj53yDRJr2JwxgkpmAcN4yLRx2wvLlSKRs684QwRpLpXDRnc7iyoaMvtOxUPLrEIJzU6M1cZuUCfve4CzUILZ1L9/EiO1LBC8bqh/oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730596637; c=relaxed/simple;
	bh=CBacAZNR8Mnxxyg4BMb0sDrk8/Rq7wUWzOHlo3KZMD4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VCEXdspcBDGaPl1muYozv2BSM5XxcfkdlcbwIessLVmzUSVwkULTJPbrsP46FKMCsIWbMq1h909mTw5L0BDvnSFOAg64vj/0E1cxW9RbzxrbkNXCa+Fr+fPf2yTs74pSLGbQ6M4x10kAXAXox8btX+LhWnRpjjnQwmRz497cz8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TUVCrFPS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 068E0C4CEC3;
	Sun,  3 Nov 2024 01:17:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730596637;
	bh=CBacAZNR8Mnxxyg4BMb0sDrk8/Rq7wUWzOHlo3KZMD4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TUVCrFPS6jNLRja5X2POM5JD1HhvFqhZTOkX9iED2eGGyhBGIoUE8TNgvVuJ8yd8O
	 ttbkZXuN307SGxbxKVGKk501VMx+JQbDS2faj78GJD4DmS+VDBJz91uG2yZusl6hnq
	 1FrPHGm1dyS2QMdhzG3Fy2qs1j7BiiWq8LgJVyyftBCOPpmr02ZFPbEBvwT4iUwUjR
	 NVlTX/WmiLFt2KLc2IMfVcH0MXDmO0AXpt6/YwKy+C/jW6uzhQZ4++jdndbQRpIcv+
	 ZsMvKiItkJEXaMfGcqWISJf2P8PRVboiNs6b0ZIpb/R3ociI++0e0GnIc/FTn9De3o
	 TFUYizUiEV/PA==
Date: Sun, 3 Nov 2024 02:17:12 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, groff@gnu.org, cjwatson@debian.org,
	branden@debian.org
Subject: [PATCH v2 3/4] scripts/bash_aliases: man_lsfunc(), man_lsvar(): Use
 pcre2grep(1) instead of pcregrep(1)
Message-ID: <0464c22ec3af1ee92f05c6a4202b10b2a1c2dc4f.1730596504.git.alx@kernel.org>
References: <cover.1730596504.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2gs+vgnHevs5BVds"
Content-Disposition: inline
In-Reply-To: <cover.1730596504.git.alx@kernel.org>
X-Mailer: git-send-email 2.39.5


--2gs+vgnHevs5BVds
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 3 Nov 2024 02:17:12 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, groff@gnu.org, cjwatson@debian.org,
	branden@debian.org
Subject: [PATCH v2 3/4] scripts/bash_aliases: man_lsfunc(), man_lsvar(): Use
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


--2gs+vgnHevs5BVds
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcmzxgACgkQnowa+77/
2zJCVBAAhKS8hNuBMBe78keMIm/FuupZXJliC745NPfIHSO+bcgKcZ8MjlnJmNgi
B8zZQ6ZPLMe2MyWcLti/6Fe7wx5OvM4hnLFTqcLC9odfWmMVP7L0FFUrrivxluFo
edC/l7i18HzvSG9zhiIZmA5ZnGd13uovPG9lpDHHzCxcRbqKFalyNK188hv8xHBm
PcY/2d2weEgkDKZkUHEbarS311tn1RYWCwEmIiizMyC9ngHSc8wz6y72SUSXjTd5
bNrueGacRfpDVruQhdropLjt4yHYSPcIkgYGXAEtB0W3XzLC+u38vJowKN1EoURw
PdX8On449szNdSIKRyqEnSOZTPSHns1LWpkfaSuFbgIsTxG2dAyPIV+Rlmz3e6eU
59S8P8ewMVnWtYmhlqbEztsXwbhJN9yOfjC8Hf1nLeKbGB7AkkyndXr6VmZxmlY4
dOCirDt4plAtgaxxtAFsbFByNIPXjpiBQWN0qQ4vq04qZ02jXt7ziseleKkbTp90
WQZLxRDgbDntliGSvDNktHDhuK/xPJ1jDe5ZEcpkpplGoFHIXuwzHtINkSooc8L8
nKMcU8hZec1Zd6N9wZYyoUvssWbOXH6hXNybei6qCfqeHsDgfOmbpK+tyPEovc48
GupJGzns2SJyEDOvdN3nmjYUFkup502CQTxyPrBOlDjXZKIUo/Y=
=gLGx
-----END PGP SIGNATURE-----

--2gs+vgnHevs5BVds--

