Return-Path: <linux-man+bounces-477-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D69CC862A51
	for <lists+linux-man@lfdr.de>; Sun, 25 Feb 2024 13:23:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 143D81C20A5E
	for <lists+linux-man@lfdr.de>; Sun, 25 Feb 2024 12:23:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC6BF10A0C;
	Sun, 25 Feb 2024 12:23:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mpL7Opmy"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DE314C96
	for <linux-man@vger.kernel.org>; Sun, 25 Feb 2024 12:23:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708863817; cv=none; b=FnZbvQ483OTqZHS0ECmPa3uBSX1DnJ+eDMLi6wqLXRCLcodkB8y79F9azIZqxx0NvAnD+6yjmxsttBujez3y3WxDECX6eyWsjrYnbnccfXBfG1IybFqypGsT2im+pYGbrZR0rkyXqXe0ek+lU5+Hk/Uice+3Rqp9WedVAypFNVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708863817; c=relaxed/simple;
	bh=yZDqkex5c8udMlpQ4QiI41RjYAgs34Rg6KGOGte9ti0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jxFLJxvqJ6hCXreF1y5KAFruC8COaU406FrGea6NzcCjLBg2ViCmeMvJkKBihN6Mj+lYDpWR/K98OULqB4fLufcOYiR2dCea86+uDSK2/T3pHuktDDCrV/KsBV9zw3zLfHGuQ7a1pr8PcJgVSnj1dE5kIxgZpDFHbdhMlIM16zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mpL7Opmy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9891C433C7;
	Sun, 25 Feb 2024 12:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708863817;
	bh=yZDqkex5c8udMlpQ4QiI41RjYAgs34Rg6KGOGte9ti0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mpL7OpmyNUJMpgy//nFQmDbk75BZBf9K6iTAjKnHS4WfKXGl4nWx2ZBeqLbKEm2j3
	 DWthC25RLN36UF466Y7TIQna3W5Ml3KE3P5g3ni4kdFVnapxJY3sC4W0mprzkCzFRN
	 DZWGoOAhKQrRta3vcxL3Y5/+2OyaGVAktK3GkDtIj2UgFD4PGGAJRjAMuOi5Efk4vg
	 2oZLoPJt8KvGoa4yaGG+Zv3jnwS/0TiZP9SCg9UogAvMW8asWxw7HGDOxxdR7GH/sv
	 SJPkblMLlzoTjlnK67ad+77ySxDNRl1Q1w3XKeArZ0UnDEbLoR+Ofv/7smu3LZAE4L
	 xmJ19zyi/S6Bw==
Date: Sun, 25 Feb 2024 13:23:34 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, 
	Florian Weimer <fweimer@redhat.com>, Carlos O'Donell <carlos@redhat.com>
Subject: [PATCH 2/2] process_madvise.2: Rename parameter, and use array syntax
Message-ID: <20240225122250.441157-4-alx@kernel.org>
X-Mailer: git-send-email 2.43.0
References: <20240225122250.441157-2-alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lrsx4stbf5lkmvnb"
Content-Disposition: inline
In-Reply-To: <20240225122250.441157-2-alx@kernel.org>


--lrsx4stbf5lkmvnb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH 2/2] process_madvise.2: Rename parameter, and use array syntax
MIME-Version: 1.0

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man2/process_madvise.2 | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/man2/process_madvise.2 b/man2/process_madvise.2
index ed8739663..2d91924ca 100644
--- a/man2/process_madvise.2
+++ b/man2/process_madvise.2
@@ -15,8 +15,8 @@ .SH SYNOPSIS
 .nf
 .B #include <sys/mman.h>
 .P
-.BI "ssize_t process_madvise(int " pidfd ", const struct iovec *" iovec ,
-.BI "                        size_t " vlen ", int " advice \
+.BI "ssize_t process_madvise(int " pidfd ", const struct iovec " iovec [. =
n ],
+.BI "                        size_t " n ", int " advice \
 ", unsigned int " flags );
 .fi
 .SH DESCRIPTION
@@ -27,7 +27,7 @@ .SH DESCRIPTION
 It provides the advice for the address ranges described by
 .I iovec
 and
-.IR vlen .
+.IR n .
 The goal of such advice is to improve system or application performance.
 .P
 The
@@ -43,7 +43,7 @@ .SH DESCRIPTION
 structures, described in
 .BR iovec (3type).
 .P
-.I vlen
+.I n
 specifies the number of elements in the array of
 .I iovec
 structures.
@@ -80,12 +80,12 @@ .SH DESCRIPTION
 specified as 0.
 .P
 The
-.I vlen
+.I n
 and
 .I iovec
 arguments are checked before applying any advice.
 If
-.I vlen
+.I n
 is too big, or
 .I iovec
 is invalid,
@@ -152,7 +152,7 @@ .SH ERRORS
 value.
 .TP
 .B EINVAL
-.I vlen
+.I n
 is too large.
 .TP
 .B ENOMEM
--=20
2.43.0


--lrsx4stbf5lkmvnb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXbMUUACgkQnowa+77/
2zKzEw//VvTMDqOQWeJ5qEPVZqxsi0qaTosgsXUJi+VFO9JylPmqkhx9YalemFWd
ap4YOfhhpTZEGmmVX4HCcc/Y/a2cPPJpZdtJRnXZCfSqtYgGpdbZoy+/bKXCTtaL
fbmPHySyGwwiaA7IbztlAg0Ky32BKYPIN0DHmMDiJZffdEXSnaYNqEvXH8mp+jkC
oIYBDd0aJ0cwP4GTcxbp5KQovBtGK33yJuCnmg5wpXTtE95qVNiMmmEmsCskLSeX
m0aQM5T534DnzNdb7iGLc7BQREArM4qdUG1T/vfacLMTXEXwKAM1MkG1wLRvoLQY
2tQ+xTyBSvfr9PPwSLY0Y6b1sK/HMnIbl94HC7Wbk0AYrNHPYnA3ibYoa78l2Jo6
KE8UNSMjNFl/ako9W+KPLDLJsue6fPn4Q/zlQlT9g0IOX+y12B8qp5WvYz3fomfO
Uqi13f9Rf/EogHRV7mTEbB1cR0Onz69whZ+JadL8JMC0Edh+Rr+EFoRo8P8OSyjd
/BJFi4DrxJYkxHv7fespVMTnHW2oS/2/J003OgyyNJJwton0AMg/Bj80530G1OTw
VTbDyc9dnv/Xnp+P4EecWwHfJqcqxIq3V+nbF2JdxhgazKgYz9bWyFoc9b8Ri4jI
PXyxUHsr+n2eruhmishOEFKp7mlSd1MNXyeTAKAJYyakslNFSP4=
=4Yi1
-----END PGP SIGNATURE-----

--lrsx4stbf5lkmvnb--

