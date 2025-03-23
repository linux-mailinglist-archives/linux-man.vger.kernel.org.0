Return-Path: <linux-man+bounces-2632-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D1EA6CD93
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 01:30:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1F5163BACFF
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 00:30:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28B951D86E6;
	Sun, 23 Mar 2025 00:30:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NwRVmrJh"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA3D81ADC86
	for <linux-man@vger.kernel.org>; Sun, 23 Mar 2025 00:30:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742689839; cv=none; b=UKQTWDL2Es8lsXphzPTToRLd0ovzWVtZ5d3BxWfMelL73ku56Dh9i9gOpqXrqI4lSHMz8F7Pe5ZCkYO3edrIFSkaamEObht6sl2tJWUL9B4fj8MwjNAZov0xcRz4Eo9Mx2mGDYdDDYtEquiU/igaOXzmADuF6dPSvUd6UM3XwN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742689839; c=relaxed/simple;
	bh=wB/IH/efv3loZs/p+L5/VfBwMSKE8AYTbLayWs7Q8qI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GeCunKxHpHgPB7MhUfN1abWYFsW8EfVQrjEUlJcr3vFQ1yDMtP6GvJr01wPAaJqIKnybmenGBulHAPXQ/82r4QVZb5DS6XJDB9MzgM+eMyH4qANlh1T49c1o+/uV7raCt1OrFM3UJpHDpztV4Q+eEX3Sc0hsUN2d2aUWUuxvbrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NwRVmrJh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 996D1C4CEDD;
	Sun, 23 Mar 2025 00:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742689839;
	bh=wB/IH/efv3loZs/p+L5/VfBwMSKE8AYTbLayWs7Q8qI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NwRVmrJhioMF0FN0gFF6jVR4mXweg0JGRhf24UaUmbFp7W4LtsZg8Si5VOe4KQHHU
	 17vtig7mgdhjMt1soKgaJrZ4603qs2JLXd2fmiMUnNQPkYseBFpIpFi9C/NoTqwJmn
	 /rcfovaXmPuR2+5vTxgIf9mkuJM/OZhqj+14hZqYYfnfQFB3ctzC5aAhg6XXRbNd50
	 ukYu8HjHLFSMHDa4pXEqZDsdJSRvZbQvz1rNmzwFGyMNUcIGaxEgF76KF8e4orB/fC
	 Dm/NRpwswk7L6u5u/967npHQ0wsL8j9InqNqiRd+wIimMUNyAWsnZJhG5K9z3hpyux
	 Aqyqozqy+FYpQ==
Date: Sun, 23 Mar 2025 01:30:36 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Bruno Haible <bruno@clisp.org>
Cc: Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v3 2/2] man/man3/strtol.3: CAVEATS: Clarify how to perform
 range checks
Message-ID: <020b468a3bd1093ef94e7d4818b0fca198712e43.1742689797.git.alx@kernel.org>
X-Mailer: git-send-email 2.47.2
References: <cover.1742689797.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6xxgngk642vwtiyu"
Content-Disposition: inline
In-Reply-To: <cover.1742689797.git.alx@kernel.org>


--6xxgngk642vwtiyu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Bruno Haible <bruno@clisp.org>
Cc: Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v3 2/2] man/man3/strtol.3: CAVEATS: Clarify how to perform
 range checks
References: <cover.1742689797.git.alx@kernel.org>
MIME-Version: 1.0
In-Reply-To: <cover.1742689797.git.alx@kernel.org>

Reported-by: Bruno Haible <bruno@clisp.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man3/strtol.3 | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/man/man3/strtol.3 b/man/man3/strtol.3
index 03047f10a..973d6a78b 100644
--- a/man/man3/strtol.3
+++ b/man/man3/strtol.3
@@ -192,6 +192,7 @@ .SH HISTORY
 .BR strtoll ()
 POSIX.1-2001, C99.
 .SH CAVEATS
+.SS Range checks
 Since
 .BR strtol ()
 can legitimately return 0,
@@ -210,6 +211,17 @@ .SH CAVEATS
 .I errno =3D=3D ERANGE
 after the call.
 .P
+.in +4n
+.EX
+errno =3D 0;
+n =3D strtol(s, NULL, base)
+if ((errno =3D=3D ERANGE && n =3D=3D min) || n < min)
+	goto too_low;
+if ((errno =3D=3D ERANGE && n =3D=3D max) || n > max)
+	goto too_high;
+.EE
+.in
+.SS base
 If the
 .I base
 needs to be tested,
--=20
2.47.2


--6xxgngk642vwtiyu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmffViwACgkQ64mZXMKQ
wqlg+A/8DpPu1GFfoy5EC/QEYn6dsFy0Ls5oGJP+a3azpWXLODohlgoS7fujer3O
eo3w9lLStWJz0zBzl3Vmcjz4rBFHEiLSzqPPAQ0iv9kiuceLhHAtX3Hqg9SKGm+P
vzRX+YQuJ+7eSrKY632k8u6wQopJa7ZaIMYRKOLLaoAOsuod0Y9fyUl8IZc53Ttb
tcago4E1mvc1aleTldcohR1YClpav2/ydGecMSKNoyfTrjocVBwiKQO1wk8sHbb6
S5DlKWKTglcC2QsOvg5WfsNuY4Hp9eYYZvXaCixcPpCaeHxMb0gFJ6wdCTldr3K/
mZ177+95Wsbe3eGjFv/hYP8iy6Ygfe9e2ziDoG+nqL/olbI64tmcYzDZU3hiOj8U
FON4f5rTLzbrD42j/MhG59Rln9Yh9a3RIspiWasW9bvOuvpGkmq4m6/g+haFkj1r
r1P4G6AVlOppD6yZP7WC+frdnH2cS4aGzc7qX/wyAEwkNCBBuXHNs3x45U8aIV3x
qoGucHlVQQT9NLgrY07MwkweSl11YDo+K4W+AfY3KQOEsupCMOBh3rfyWHtguTls
2l0T+zUd1I1jF00aKeEwm5iSSc0REy5bBKkv3gYZtFPLpyDfQNWmCmNaoUGpJO9Y
PH0XbFPPZLds/R4yyistfEUcibYqHRvL+59VgQ8wXtLtuaGTZvw=
=bw1I
-----END PGP SIGNATURE-----

--6xxgngk642vwtiyu--

