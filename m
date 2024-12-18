Return-Path: <linux-man+bounces-2170-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4EF9F68A0
	for <lists+linux-man@lfdr.de>; Wed, 18 Dec 2024 15:36:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D07C51892882
	for <lists+linux-man@lfdr.de>; Wed, 18 Dec 2024 14:36:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77C001B0436;
	Wed, 18 Dec 2024 14:35:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="KU7L2gi+"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5857C1B041B
	for <linux-man@vger.kernel.org>; Wed, 18 Dec 2024 14:35:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734532536; cv=none; b=jA9EQpXijn/xu6F227PQC1LPbcuPpwLGO0aAuI2jNoDzUfd4XLC+G3LcFe9mxg0ZkhmiPxCpRwaZZR29pAzW+tBq45fbqLue4zem9TOR/UdlHM+k5I0Z3UeUmANiGa7ep4iCdOZ6GC3fVmspoqIwne2bfBS1PuQF9gxONn7RuUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734532536; c=relaxed/simple;
	bh=sO8lK7SM7NgARU2RCW8eL8CmukM9+wfeyp2+9J21Ehg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o6GC1xOoKVVT+qgyHl05UTbt//3A8tgt5LIwF7BX0Epf7oEQfd9I83/wFCFxxwhfW9sM2ZouiWtnk+8ATz7ZVEPWbBQ3IXeAhigLGLPbcXb6xJWHfLLQdcXJEo2Z40HRDhlZuWd8RcHDX6NcHIzKCTphxh0d1l2TKFGZvW3t2DY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=KU7L2gi+; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1734532528;
	bh=sO8lK7SM7NgARU2RCW8eL8CmukM9+wfeyp2+9J21Ehg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KU7L2gi+UTR3vbTXwLV9pZ/PEQJidJYg2ESCNc77oPu+BH2XtjF7ccKI0zmD3MPNT
	 5r5PNiIVHEnmRG3zhQsHYFFg0tWNhHMzW/SqLcKDrhuniHJlzGKoT+ipy5OlEQEkmk
	 wkqQQr2Thw1vxciAl0Uoqk/ZAj2Z7GlgWKMoFKOt/ml8xr1FmW7LfRiG0sGPsvK4kf
	 R6OmtSbAGuHJXeMH6+va83UffCwAeHUUz35vtF9Ga6RCJ02VokzEq/ZN5ojHydo+Ek
	 lpzlRqm2ZEJ2ibTskwHJe+LBGkREgQY/+EYRDETSKvtf1H7dQUiy8sIqbAfP95O+Xc
	 ePe4g2gQlUrVg==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 96D992B4C;
	Wed, 18 Dec 2024 15:35:28 +0100 (CET)
Date: Wed, 18 Dec 2024 15:35:28 +0100
From: 
	Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= <nabijaczleweli@nabijaczleweli.xyz>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org, Eugene Syromyatnikov <evgsyr@gmail.com>
Subject: [PATCH v2] getopt.3: remove _<PID>_GNU_nonoption_argv_flags_
 description
Message-ID: <dwfybzlb5ydbsc4puo6igj7nm7iregquv6hxhhqb53bwrvqswb@tarta.nabijaczleweli.xyz>
References: <3oaxdb2364nqty4fxts6i2fx66dksiw2vq3s5nlzfukztakg3j@iyl3vwrgrfe2>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ylexsjmfbqjdx5au"
Content-Disposition: inline
In-Reply-To: <3oaxdb2364nqty4fxts6i2fx66dksiw2vq3s5nlzfukztakg3j@iyl3vwrgrfe2>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--ylexsjmfbqjdx5au
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Per <https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommitdiff;h=3Dbf079e19f=
50d64aa5e05b5e17ec29afab9aabb20>:
* this was set by bash 2.0 (1996-12)
  (implemented in glibc b07c5668f672125074dd5b0b658145e1544120be)
* it's no longer set by bash 2.01 (1997-06) because it was bad
* glibc disabled this with no way to enable it in 2001-08
  (518a0dd201c48a5c15d73c1919c304a9f8f5e3c1)
* glibc removed it in 2017 bf079e19f50d64aa5e05b5e17ec29afab9aabb20

So this was experienced by people for 5 months at best,
and could remotely be experienced for 3 years
(if you somehow wanted this bad behaviour and added it into your shell),
over 20 years ago. No modern reader (or, frankly, non-modern reader)
has ever used this, or could use it, really.

Link to the removal note for completeness only.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man/man3/getopt.3 | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/man/man3/getopt.3 b/man/man3/getopt.3
index 67c3ec9b3..9a84e2f44 100644
--- a/man/man3/getopt.3
+++ b/man/man3/getopt.3
@@ -318,15 +318,6 @@ .SH ENVIRONMENT
 .B POSIXLY_CORRECT
 If this is set, then option processing stops as soon as a nonoption
 argument is encountered.
-.TP
-.B _<PID>_GNU_nonoption_argv_flags_
-This variable was used by
-.BR bash (1)
-2.0 to communicate to glibc which arguments are the results of
-wildcard expansion and so should not be considered as options.
-This behavior was removed in
-.BR bash (1)
-2.01, but the support remains in glibc.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
@@ -391,6 +382,12 @@ .SH HISTORY
 for this purpose as LEGACY.
 POSIX.1-2001 does not require the declaration to appear in
 .IR <stdio.h> .
+.P
+Very old versions of glibc were affected by a
+.UR https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommitdiff;h=3Dbf079e19f=
50d64aa5e05b5e17ec29afab9aabb20
+.BI _ PID _GNU_nonoption_argv_flags_
+environment variable
+.UE .
 .SH NOTES
 A program that scans multiple argument vectors,
 or rescans the same vector more than once,
--=20
2.39.5

--ylexsjmfbqjdx5au
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmdi3bAACgkQvP0LAY0m
WPGiQRAAqOxVsKnPXFmxbQIPugRsC2th72UfJDJcsldDhm7wFpaKERhwwGiKI3NL
K9yJ/EsGkeo+0KcZB5smVJVNkl3WSoP5raszZ2SG5NXz32+bg3ADb4vv5+nYVRF6
M1x/2ldb2ruQRLgzg788Y6tZCNueIoVvNxybzNm3qiAtUBYq6RdN6jbmGIRysZ+B
vN6P5zyAUChQK3FU7PLkZfYqSJEaFPGP9GkyhOMujxOCOeCtym/Bv9CItxbh6TnW
H57yXwMF+XC2Ki2E0W8mm0v64pPOI4/AU8SV2PxyCuDAkUvjfM0TG0lNmQmteZ2d
qLZI/6TX+PJRKPO5iyw5X7Vg0k7TUOpSFRZyHvlE8iVpyV6A9JnfHMvl3udB3vuX
eZkgGkZcZ3HJ2C4zBzK+EAPPtBSdUd7w9KIRnfqgrgIL5uw+VIW5hasF5v2KQUY+
atFOZFQpnpCVRjMN8AZch19SZGcpocWPdDmnLmaiUPkf2U5ZGAz3lN9v1zsXcpe/
+lquGf9X1gIRA/Vgij4qZ14Mc7g1TJ/XPSSdr5xTeHGVlKJ/Toq0nOipt5hljeiQ
wv6UEKfiX266dgPD8Cicuw/nLu/us3g+Enj/oOKS3a4kTfzhBJBDt29KW5WMZOOn
gYfzzahd6w6QbVIHIwri3qdkrjK3hVUmtY+3uVypD5g7QHAXexA=
=tNjt
-----END PGP SIGNATURE-----

--ylexsjmfbqjdx5au--

