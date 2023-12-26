Return-Path: <linux-man+bounces-300-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB72381E847
	for <lists+linux-man@lfdr.de>; Tue, 26 Dec 2023 17:03:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0FE361C21263
	for <lists+linux-man@lfdr.de>; Tue, 26 Dec 2023 16:03:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3F124F5E3;
	Tue, 26 Dec 2023 16:03:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="OPrxyIYp"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F7E4F881
	for <linux-man@vger.kernel.org>; Tue, 26 Dec 2023 16:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202305; t=1703606617;
	bh=QNPKC1qNgW3id/Sw7QAsdGNV/9VR9JmtyhpHV2AzTW8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OPrxyIYprYMK57RqBBom0hhmS/oIjwQ2+zND2gozgiCd0Y0HjrS2OO4VFOQ5Kv8iv
	 7CquBVQVkOP47ytJH/6hdBaDlVWAMy8CtlyzyKdH6A/5NiwuUUV2d5KtB/8Hj2XpgG
	 5kq5f8K0JIHyZPhyaMAKfOdNDX0Tw8ofqzfkTSMUpbA760sKqEQ9j1jUxR7wUq+tOZ
	 hz06t/h97KEa9YBJL9761BItFVj4J6nhPY1iRZQEoItMVTZnaLxgxDkAVZUCarYnzz
	 qy7CS8hjCunfNQLFRtCQ3FeFi+NZ9X5qHFsHnm29HCP9l0FMj76eh7lUVQMDDthFbZ
	 eWL16wOKRkxoQ==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id C01E013BF8;
	Tue, 26 Dec 2023 17:03:37 +0100 (CET)
Date: Tue, 26 Dec 2023 17:03:37 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v3] stdio.3: note down fmemopen(3), fopencookie(3), and
 open_[w]memstream(3)
Message-ID: <nn6xod4zdcimrh2pbhng4n7ff4x6g3pfjyb6u24swkno7thzx4@tarta.nabijaczleweli.xyz>
References: <owwpm3vgvq3sme3ev4poriwqcokscunppxu4rj2t5lmxzrc7vn@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ozzqanaakmomjiw3"
Content-Disposition: inline
In-Reply-To: <owwpm3vgvq3sme3ev4poriwqcokscunppxu4rj2t5lmxzrc7vn@tarta.nabijaczleweli.xyz>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--ozzqanaakmomjiw3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

I was looking for fmemopen to remember I was actually looking for
open_memstream, and it was much more difficult than it ought to've been.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
Sorry for the v3 for some reason I didn't amend the commit
(blame it on the holiday cheer).

 man3/stdio.3 | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/man3/stdio.3 b/man3/stdio.3
index 833230402..0809b4536 100644
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
@@ -243,6 +249,12 @@ .SS List of functions
 \fBmktemp\fP(3)	T{
 make temporary filename (unique)
 T}
+\fBopen_memstream\fP(3)	T{
+open a dynamic memory buffer stream
+T}
+\fBopen_wmemstream\fP(3)	T{
+open a dynamic memory buffer stream
+T}
 \fBperror\fP(3)	T{
 system error messages
 T}
--=20
2.39.2

--ozzqanaakmomjiw3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmWK+VkACgkQvP0LAY0m
WPGyzxAAsMU10QbUYgbuQX8eY99ZDyJ3x3wCkNZRt/4zje0RNhkvZd5/iJPPNN2v
fDlanxub4RidCiJcEvvTMDmF2eK+LdWsMsr10ySKBSMyJFltJwMPJyv/tW8U7WEm
AsZ+ajUJPVn4F1Q7JpiIqOjlkwAiv3/2YQJiOUBwtbuZyg8b45nnsU1kcLWMd+Zu
OVyNTExx+3q6zlyxcbwgPVDBPWUInExHGdv5jcjEYTbT6Nt7ZB1gHqfBm3ovGhya
gTOnUeObmePe5ajxNw+IcKS0IGlVTlzkUojIuvp8Rpj3IWA+PoMxT04IvgkvPCJD
hM4smkG8quw3drGjiFQoDBPPgTqs4TjwEkRp3zsnkAI4Z/QcqOm5K8l5VEBkuRNR
rBaVm8bxp6qKeLSViuafD8+mRc9zWvoLGSMOfx9DC9uBE9AMdpRVhL3/rSW+aJSi
QS9ahJNyKzJP+KHYriN2+/SeN5l8TWiE+NHJf0MgcIQfKoP0HrZOzE/J+R4zW+Va
OX2bCWnoLOddYdzSRBu0tryV4Od8ShX32x9AeMHCTA0xtkye0S6B516xJi9nvx3P
Yzl1j88NjNh9gvECBtg09uKiOZVOWCkdjWO8l7g9mGKvQXZdDWNcLpm/ufZqOYXM
hrzAHDdpiEl3PKX9DK0D6FwdY/BOupZM5QKu2N4stmiEa+Rl1x8=
=A5I2
-----END PGP SIGNATURE-----

--ozzqanaakmomjiw3--

