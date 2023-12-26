Return-Path: <linux-man+bounces-299-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1447A81E844
	for <lists+linux-man@lfdr.de>; Tue, 26 Dec 2023 17:02:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B86002812D6
	for <lists+linux-man@lfdr.de>; Tue, 26 Dec 2023 16:02:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D63E4F5E3;
	Tue, 26 Dec 2023 16:02:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="Z7+YZEzx"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F9C54F5E1
	for <linux-man@vger.kernel.org>; Tue, 26 Dec 2023 16:02:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202305; t=1703606534;
	bh=uLGTaz8yEB5iwGftl3p6qZ7pZWA21flLUbRpU4/XYVc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Z7+YZEzxUuxN1BJ5CzLhDoWii7Clo3MyEenbQZkEq59H8qhl1ScYYXIleCTy0Lkwj
	 6A9xM2SK3MzBk7/NH94FL20yvnTP5mLH8LV69XDbwIoMC0KPYcaRw/wXGKgesEZGFi
	 QE0fhUPM9IFV96a92AjGIQveA+qKRAaTRH32VO8dLehqtE3H5q2i/6CHHEEGLblRMk
	 VWAfrdOGrxKp+f2lGuNJm1gHimoam8JWDIn0DFfey/cOrlxhFKJ3T3gmy+fPYv1Yp6
	 WudwOain8zBWe5Z22/annp+fGblWGjOPEqQwBRQhpnekNPuT5S596dqRShKqbfo/VY
	 1QACIsxgVvxDQ==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 119AE145A2;
	Tue, 26 Dec 2023 17:02:14 +0100 (CET)
Date: Tue, 26 Dec 2023 17:02:13 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2] stdio.3: note down fmemopen(3), fopencookie(3), and
 open_[w]memstream(3)
Message-ID: <owwpm3vgvq3sme3ev4poriwqcokscunppxu4rj2t5lmxzrc7vn@tarta.nabijaczleweli.xyz>
References: <pwyv65idwrl2lbir2g7k3x3iqrpfew2np666zxiqspwr7oikcj@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wu3suokh5srgbpbo"
Content-Disposition: inline
In-Reply-To: <pwyv65idwrl2lbir2g7k3x3iqrpfew2np666zxiqspwr7oikcj@tarta.nabijaczleweli.xyz>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--wu3suokh5srgbpbo
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

I was looking for fmemopen to remember I was actually looking for
open_memstream, and it was much more difficult than it ought to've been.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/stdio.3 | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/man3/stdio.3 b/man3/stdio.3
index 833230402..d340d3334 100644
--- a/man3/stdio.3
+++ b/man3/stdio.3
@@ -192,9 +192,15 @@ .SS List of functions
 \fBfileno\fP(3)	T{
 return the integer descriptor of the argument stream
 T}
+\fBfmemopen\fP(3)	T{
+open memory as stream
+T}
 \fBfopen\fP(3)	T{
 stream open functions
 T}
+\fBfopencookie\fP(3)	T{
+opening a custom stream
+T}
 \fBfprintf\fP(3)	T{
 formatted output conversion
 T}
--=20
2.39.2

--wu3suokh5srgbpbo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmWK+QUACgkQvP0LAY0m
WPG7CA//dJuyiSFOiZuqoOop8MNZBUQ65bYXEIWAUiKHywBUVMJJdpvZQR5L7tv+
DXXMamxSKl5fPVPr9eCER9/ac4ps1hrSqrYhkBUYCPcKlWId/Ie9Rl6++3zzkran
BSL4s216DYBOwJFfiPg7Gql6VTccFRLpu3sPhWePp0NpkgfWiOBF6+S4PRh/MRYp
Td22TdSU2SiuAVMXH5IrhqkqFI7/CNxMn7lEcMaLOuPVIImDxOph+8vmxI/4w6dq
6iw2YPuC6482N4DBJOar/gBvMn/7ZbZb/LkGxXzfviHz53y7uOyAbRoMb0fCHDYl
LfBdu/JRJgZ/rmLHmKMYQcIhf5Tu/JHu8caJ7FcXjhmg+NOmxdfwLuzDE4Cgjd9G
86XkT8fAu4HHyk2mDSMpUMeq/7TybpYP+2zkOTQCqkbLlGNZh8P7lxqrjtKDnGNi
r28bVIsOvg4M6q3DoONzDSqqwMxZFA4Sw1snpO4zlEamFRlxBJ2QUaJb4zMi9JFD
ElGgFeejmYJqYdv0auDylekwALNDajS7bHv033s0Wx/5f7LHgR2jlToTNSrV0WEe
20TbchYVhq0kR71tY/RbQx4vqdK9/eXN7+m2zfuav5vwi8zXiY3Loib0yh5j7j0B
ZGkYhbtecvFyzBF+p21M0JnPg36hFaDE4AeYftLeNddNYdSUz7U=
=z1Gz
-----END PGP SIGNATURE-----

--wu3suokh5srgbpbo--

