Return-Path: <linux-man+bounces-191-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0188F7FF39A
	for <lists+linux-man@lfdr.de>; Thu, 30 Nov 2023 16:30:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 329E81C20C64
	for <lists+linux-man@lfdr.de>; Thu, 30 Nov 2023 15:30:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FC76524B3;
	Thu, 30 Nov 2023 15:30:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SdkyiqGw"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4834A51C37
	for <linux-man@vger.kernel.org>; Thu, 30 Nov 2023 15:30:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47C7EC433C8;
	Thu, 30 Nov 2023 15:30:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701358229;
	bh=vqtB5LqCyudexCFxXej52Eq8EF3CQogWlQlfrqFl1AQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SdkyiqGwUNMeUX5viuPxdzk30Qp5dkkon+n6JHvRF3J6nR1btRRMWEGK1KUYgA9fC
	 mfUoVotv/dSiOOSYR69MSRMV8SRMfEquCP9sSH1G7iOjrAkVnDfwkOdJKNkIbUfvgC
	 7NF8r1ycW7bROeeI6d1c6xyXVputsfa4l1+X33Fh1+yJS6UlQGkn7zVzXhbT1QWrMO
	 jMaXWFe1FTQuzjmv+9yaZvDvOu7j8UI3m/GN3c8yflbb0O8XaJU++cWVb0cRaYe2ad
	 WvECzk8PYcPowHP36gsHyKCeqyXc5pt3UGtbQEh4YxtpUfc9xx2o7/3tl5Z0iCCX8f
	 +180ehS+jJC9g==
Date: Thu, 30 Nov 2023 16:30:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, libc-help@sourceware.org,
	~hallyn/shadow@lists.sr.ht,
	Michael Kerrisk <mtk.manpages@gmail.com>,
	Florian Weimer <fweimer@redhat.com>,
	Iker Pedrosa <ipedrosa@redhat.com>
Subject: [PATCH 2/2] strtol.3: EXAMPLES: Fix error checking
Message-ID: <20231130152910.322395-4-alx@kernel.org>
References: <20231130152910.322395-2-alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dmiMyTGM9iB3vMY8"
Content-Disposition: inline
In-Reply-To: <20231130152910.322395-2-alx@kernel.org>
X-Mailer: git-send-email 2.42.0


--dmiMyTGM9iB3vMY8
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 30 Nov 2023 16:30:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, libc-help@sourceware.org,
	~hallyn/shadow@lists.sr.ht,
	Michael Kerrisk <mtk.manpages@gmail.com>,
	Florian Weimer <fweimer@redhat.com>,
	Iker Pedrosa <ipedrosa@redhat.com>
Subject: [PATCH 2/2] strtol.3: EXAMPLES: Fix error checking

If strtol(3) returns 0 and sets errno to something different than
EINVAL, the call succeeded, or so we interpret from the standards.

POSIX allows libc functions to set errno in success, and it only
specifies two errors for strtol(3) for which it can return 0:

-  Unsupported base.  (errno must be set to EINVAL.)
-  No conversion performed.  (errno might be set to EINVAL.)

If errno is anything else, POSIX doesn't specify, so it can only be a
successful call strtol(3) that read "0" and set errno for spurious
reasons that are allowed.

Cc: Florian Weimer <fweimer@redhat.com>
Cc: Iker Pedrosa <ipedrosa@redhat.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man3/strtol.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/strtol.3 b/man3/strtol.3
index a5082a761..be8cc81d9 100644
--- a/man3/strtol.3
+++ b/man3/strtol.3
@@ -264,7 +264,8 @@ .SS Program source
     /* Check for various possible errors */
 \&
     if ((errno =3D=3D ERANGE && (val =3D=3D LONG_MAX || val =3D=3D LONG_MI=
N))
-            || (errno !=3D 0 && val =3D=3D 0)) {
+        || (errno =3D=3D EINVAL && val =3D=3D 0))
+    {
         perror("strtol");
         exit(EXIT_FAILURE);
     }
--=20
2.42.0


--dmiMyTGM9iB3vMY8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVoqpIACgkQnowa+77/
2zLvARAAoYbeVxsyC7NNCFW8iRtWTtjSyukmFOGvutQVLGplowlsB97wX3pnQM2c
PsPyXTQNPIe7LtOADFBVrAU4CPXgrRjxDbSIRY/aKQul9AL0dZ7KOpNivA9llLWu
+2sC/tb1qG2SoVIwH8obtfv8dKxkLcbLuoV4BtcdyPmfBooJgiw4rYzaYJ3JdhcP
WGh5OThNkpkgAy0gk+4C+27wCmh+QNpsCWIMX6gc5ePb8JDA+jmqpM/7zDPc+ySr
LYWaxdSFjvClQuCAwsQpfghKdehhJsTmWOs0kYPoE68YFIa9d5BRdiEtZ3yJVDe9
Fe/hwy7NN6ZIp7uJ3vX2mhFe1fdgkFjYA5IYUZehr1td7Ud0AfPcziSTllg1HuOu
qekSmLPJmKatSizCk4PcZfcSU3PoMlYMyRc8OaAcD/k0D8wGK9X0HhpbiWeflEgL
nRHDVi55A2LwivdKcl/ldwnIpKpq4EHpzMAXSzAdwd2OxozwE2hSKWkdtSO6mzsW
/UmDkISbMSFIdcO/Dd3our/IoJlP6Z9umHALqqFl93oS8QDnlDoQn7f2EaN2VjRh
ZUN1QtJBOsGJ3hvyqWMYkLHkQLvySQjtItB16NH3rkgYt6U1F6zRtRfVV/XvCYkR
l/Vo4YNdxuFedVTIyZqX0MtOEIuXOBFFx5a0IElTct4Hhc0Tk2A=
=28yo
-----END PGP SIGNATURE-----

--dmiMyTGM9iB3vMY8--

