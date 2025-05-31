Return-Path: <linux-man+bounces-3072-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A0398AC9C2C
	for <lists+linux-man@lfdr.de>; Sat, 31 May 2025 20:03:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 93615188EC66
	for <lists+linux-man@lfdr.de>; Sat, 31 May 2025 18:03:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D4BD7DA6D;
	Sat, 31 May 2025 18:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="E7KFwIew"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD3A37260A
	for <linux-man@vger.kernel.org>; Sat, 31 May 2025 18:03:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748714613; cv=none; b=WEhd9y42bKpXac+BgUfNdBPJvsMQUXovzdKiVfCTcvHKadG/uSgo2u0sp4cCDV41Y/Ca4BvCiyfyjGmGkN0CPzfZeBP19zrC+uigVWL5wZ4dtjkRIQOjR/bdDAX9bC7F6E5LCqN2pPO46ZHVt0Jq5Fh2Hm7EU6t+DauMDRMI6pQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748714613; c=relaxed/simple;
	bh=EsOLTgi/y0akToG3N+v0ER/ByFIbSnN9VQCIhpngBZY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bTvVbspOlJA5y7B7KpdWR6p/8lZsP0R4lhoFN8OLneZdnoGEva8mJiW314PUoYgekXUoVGl39jkPxl8BAWRR2uqrPYhV7eOhoh1uktffUp2VHjTf8WTQCowZCzHogn5aGaMwOYtSEZRuorAHfiRLoKgwQ6dGrNpLB5Ggb5jpmCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=E7KFwIew; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202505; t=1748714608;
	bh=EsOLTgi/y0akToG3N+v0ER/ByFIbSnN9VQCIhpngBZY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=E7KFwIew/sBpphSRdsQZtkj6MKmdGZ4AvUkl+CFvQWTaCK3OC0K+1IdmPpm6pI6C/
	 GnOM14rSt5Vz1s1XPTBde9Q25S51IKcT4TFWqUav1W8v3r+xJy4eZ1QCmDyTZtcw+9
	 G3vozfk4JsrD6Aj3W1vfj9fYGTNO4YD4/wkptBizu90PJYXWI3kGj6P+rziZtHI/Av
	 +WwOQP3yQnSdolxUwYncN2iRbJwujYs0Qs6UAbHtBfdwpif6sHJWD3rTQ7iOq/bdJv
	 UzGNvU9e6zJ1pSxFAyIP3dew6ebojNxXYe86vyjuQO8ZOwQxtkNgBRA6a6WePD2KQn
	 DMHhcZR36tLEA==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id DF7FB275A;
	Sat, 31 May 2025 20:03:28 +0200 (CEST)
Date: Sat, 31 May 2025 20:03:28 +0200
From: 
	Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v3 2/2] memfd_create.2, mmap.2: fix missing references to
 proc_sys_vm(5)
Message-ID: <c28f98b90ff40c3944aaa3189627d795e0c2d9f6.1748714599.git.nabijaczleweli@nabijaczleweli.xyz>
References: <t67f5vgjqhm7zariy3phlva4lohzchvskkaxeo6qweoaiyifuy@h5dwlwfuzbsr>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="huh2pbfhvsbkeltx"
Content-Disposition: inline
In-Reply-To: <t67f5vgjqhm7zariy3phlva4lohzchvskkaxeo6qweoaiyifuy@h5dwlwfuzbsr>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--huh2pbfhvsbkeltx
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man/man2/memfd_create.2 | 2 +-
 man/man2/mmap.2         | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/man/man2/memfd_create.2 b/man/man2/memfd_create.2
index 29a110ef7..487fc0311 100644
--- a/man/man2/memfd_create.2
+++ b/man/man2/memfd_create.2
@@ -199,7 +199,7 @@ .SH ERRORS
 group; see the description of
 .I /proc/sys/vm/hugetlb_shm_group
 in
-.BR proc (5).
+.BR proc_sys_vm (5).
 .SH STANDARDS
 Linux.
 .SH HISTORY
diff --git a/man/man2/mmap.2 b/man/man2/mmap.2
index cf110dad9..036610f9d 100644
--- a/man/man2/mmap.2
+++ b/man/man2/mmap.2
@@ -365,7 +365,7 @@ .SS The flags argument
 See also the discussion of the file
 .I /proc/sys/vm/overcommit_memory
 in
-.BR proc (5).
+.BR proc_sys_vm (5).
 Before Linux 2.6, this flag had effect only for
 private writable mappings.
 .TP
@@ -618,7 +618,7 @@ .SH ERRORS
 group; see the description of
 .I /proc/sys/vm/hugetlb_shm_group
 in
-.BR proc_sys (5).
+.BR proc_sys_vm (5).
 .TP
 .B ETXTBSY
 .B MAP_DENYWRITE
--=20
2.39.5

--huh2pbfhvsbkeltx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmg7RHAACgkQvP0LAY0m
WPG4cg//QsT9o584g+1M5PHiRvvUfPFzNy+q1C3WYeChC2R5F694wZQO7q/Hue5y
vW7is7LczRxRLXXrr6b2ISJLMK/ARHl7hfS+maGyMzWePGPhm2VliMWAJ/jw93IE
Ecs+eykwTwpkFxIl+AofG5XAUhX6mSlgaetCqBdhNOM7gArRsnVWXW4c73wl16b+
RZYzl2f3a2zL3NChOc7tN1H3ue5gqAN+Vhn6p8G80nZZfXmBijdzfcP4ARx7nqH7
GZuJPSBeW8G1M86IGO/cttl//N69OXNfpnPO/25PSuvilQ921Avsx9oelemV5dhd
fZiR6RELbLKV6xn1BX1Klcif7Y2yXXdoTpdUYwiP23/dmZy5NLqKcXjoxi/Cdixe
DY31sfPOXbNcxcN7qZEM0LoJaG18Z2MeMqW1Yn4PucdNwP8R/+Uv0mFALkzqokdp
7tn43xMb07o4xO6f6jRTaEtCklvBKzfnWmJCdKNyP/b/Im0i4C03p5ru2SmFrGCS
mMWit/9DhZDQeMKPhl6AQHOKvzXs3ZS7TXaNMEJgM0P8nwN4Vd1R3KgZEUFjrVMr
DIdMlrJNTsdEPPvBPs8NPQv3dRsTRtdIKKxCeXNn4sAH79lKC1jGgj1rUqvhLRHz
57wm9pvntxL3a/NVfKsV8NWvDBrzYjM+nX9D/NlZP9vqiHLHDhA=
=yRcn
-----END PGP SIGNATURE-----

--huh2pbfhvsbkeltx--

