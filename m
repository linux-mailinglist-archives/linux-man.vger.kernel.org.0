Return-Path: <linux-man+bounces-190-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3B37FF396
	for <lists+linux-man@lfdr.de>; Thu, 30 Nov 2023 16:29:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 65E982819FE
	for <lists+linux-man@lfdr.de>; Thu, 30 Nov 2023 15:29:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A6EE524B7;
	Thu, 30 Nov 2023 15:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJ4lnqmD"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7D3524B2
	for <linux-man@vger.kernel.org>; Thu, 30 Nov 2023 15:29:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 086F1C433C7;
	Thu, 30 Nov 2023 15:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701358174;
	bh=qKAgk+S2EB9OtOZzXhMvgL76tfmi+5ZSqaVDKGjyRMY=;
	h=Date:From:To:Cc:Subject:From;
	b=BJ4lnqmDRvyS8y53C9jkbNFCwmka/WeP/bxoI5DMHEInjFgNyyTotTgrPIQl2/hHW
	 bcJ1Xv2e+QPeFdwL6C65n16wjMupP1UH0Kz3V4qtMpcwLCF4TQSqAQNjC5qv1jM3Qm
	 lbGkch3qxKxGrcBqJ+F9oW/HeB/lHRSVqV3aolqk6xwIj0v/x9EF7x4JZTRsgwvhXd
	 JpgkB6PBkV3B5cpimPdrnQP1VR0WdPQxVjdkgAdrbNxQJgKhzaYTmDuAhecnh7OUWp
	 xQkj5/bcFUNyBpCRB2+fI07ZvcnpfEBSO2yZqWb8hv0UCfPnowbb+5iv0diYYQ6RLD
	 zmiK4pfKx/oiA==
Date: Thu, 30 Nov 2023 16:29:31 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, libc-help@sourceware.org,
	~hallyn/shadow@lists.sr.ht,
	Michael Kerrisk <mtk.manpages@gmail.com>,
	Florian Weimer <fweimer@redhat.com>,
	Iker Pedrosa <ipedrosa@redhat.com>
Subject: [PATCH 1/2] Revert "strtol.3: EXAMPLES: Simplify errno checking"
Message-ID: <20231130152910.322395-2-alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1+UYQSmk4rN0iLCS"
Content-Disposition: inline
X-Mailer: git-send-email 2.42.0


--1+UYQSmk4rN0iLCS
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 30 Nov 2023 16:29:31 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, libc-help@sourceware.org,
	~hallyn/shadow@lists.sr.ht,
	Michael Kerrisk <mtk.manpages@gmail.com>,
	Florian Weimer <fweimer@redhat.com>,
	Iker Pedrosa <ipedrosa@redhat.com>
Subject: [PATCH 1/2] Revert "strtol.3: EXAMPLES: Simplify errno checking"

This reverts commit 93f369892aeab4d56b92962224e318f739ee2455.

That commit was wrong.  It is necessary to check both the return value
_and_ errno to determine that strtol(3) failed.  In fact, the checks
are still slightly incorrect, since strtol(3) could succeed and
return 0, but still set errno, to something other than EINVAL.

Link: <https://lore.kernel.org/linux-man/ZWiCsBkRpOLEc1Y3@debian/T/#t>
Cc: Florian Weimer <fweimer@redhat.com>
Cc: Iker Pedrosa <ipedrosa@redhat.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man3/strtol.3 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man3/strtol.3 b/man3/strtol.3
index 01c658025..a5082a761 100644
--- a/man3/strtol.3
+++ b/man3/strtol.3
@@ -261,9 +261,10 @@ .SS Program source
     errno =3D 0;    /* To distinguish success/failure after call */
     val =3D strtol(str, &endptr, base);
 \&
-    /* Check for various possible errors. */
+    /* Check for various possible errors */
 \&
-    if (errno !=3D 0) {
+    if ((errno =3D=3D ERANGE && (val =3D=3D LONG_MAX || val =3D=3D LONG_MI=
N))
+            || (errno !=3D 0 && val =3D=3D 0)) {
         perror("strtol");
         exit(EXIT_FAILURE);
     }
--=20
2.42.0


--1+UYQSmk4rN0iLCS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVoqlsACgkQnowa+77/
2zKegA//Wozs4uNlTrlHISnMEIOlQspUf9GHgOo8iBbBDk48WiAEouBuz/AQzT80
vieOD4A/qJ6Ih8nw+KCLOHuUMCJ1AEMjEl9/UaxnF0vtVpcFVbR9HpMs8PBP29rs
hcsPxlZD6KeQolqmsE83m1NQ5vdnhVgjnedWN1nqvpEEhOonBPiM2ssalWDiIbFt
8G+qJUYy+2kYBR6Xg0sXQCaWorGY5xqmoAT0ceZFPUGfkktSmK/bGyw8Gd8482ZJ
IOir1h4+EN/LBRoGNwJv0D2nyinG6SCOz4wDP3+Jfbx+W7im1tODrPboMci/BUPJ
pv06kO0xcMByqTBpVcZVUf+JelAMz1xd3gaFisLZxsod738F1zytLAS9fSI8SEnN
RpKhi/3RAuNww1cBAEnIyWxz7h4f81uL8wAk0i8w/Sb2QtkM16rNu527RpjMP/Pd
ZbVSS9NfN+KufHwEmmQqEXyFL2SBfree3SFrxkzOthCcmFtJVCVcmkSsvM022dwO
EYojYScdft74Jklya8faQiT8rR2bde4XpvHBbWILeJQfCb2sShg3nRbHLsjSsjEI
K/MsZ1itY1lgDGkODUEdYj4VqcNtocLtaT2asHMs4mK2giVZQmyNZWDTNqxc1p3p
kumdM3t0VVj147Xss7QcnkU4uWs9Lwv9YKw5/hUQG0t+WjeQ+es=
=ibiP
-----END PGP SIGNATURE-----

--1+UYQSmk4rN0iLCS--

