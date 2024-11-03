Return-Path: <linux-man+bounces-1857-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B7E9BA36A
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 02:17:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8B6271F220D4
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 01:17:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2670EAD31;
	Sun,  3 Nov 2024 01:17:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNtkdA+v"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0BB133FE
	for <linux-man@vger.kernel.org>; Sun,  3 Nov 2024 01:17:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730596648; cv=none; b=feBMC67LgM4CiNQmNoJhEyn0FXxqfJYmqr4L4DKbeb18bbpjlSwUklAUUuYjCD1tv8SEgf97xt+4pdBGqaPHnMRTrtFDwf4VIXzr/QkddSZs4MCdoTgv3iMGDcaw5k6BAxZDmFsVPKm7Hw07E3llKH3Hj2i6PFsxnaAxxKPbl5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730596648; c=relaxed/simple;
	bh=CJn9j78HTW84ERGSNDONxA/PwKZcZCbSTgMj8gFrxYU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HCt6xNbS/BYxZHPAQBM5KlAnpwcZLZALfs27cRd8aZzwmJK0JCRFljkezUK4D8O86RDi98OO+nknUHltJ8ZlhAvebaJ2dv+68iy56j5i7LskL3+8Oem05C9UrDqnGJm6WavAoEP1c557OZANt4KqYDt6zMQzddzO+ru6jo5kZ7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNtkdA+v; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94A09C4CEC3;
	Sun,  3 Nov 2024 01:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730596648;
	bh=CJn9j78HTW84ERGSNDONxA/PwKZcZCbSTgMj8gFrxYU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GNtkdA+v/zK4VGBrumjV7Bhb2oWqX/nfaAWGo/ivnw7Nd3YhcKxZaZOH6Z0tTtaBs
	 nEnrrwgPyhf475W7DPk9PbYcsm3d8+HX9wsGO/eucp4sVliZ8Tq64PUJktuRUY+7zi
	 qsAnpu2SB80QCrusz6wFqiLyDz6Cqt8AtcC9xp8cEZwlQQ9QSJUF6qg5s96S1BRfJ1
	 VpJtSEJxNijYmgC51PKrHOZIBRzGDQUkzdpv7a+CxY5lmFzUQvDxJ7/lnh/1FNot+m
	 P7aDBOiR46wcST+PlmdGzLTBeLpEFVVRkA7C93e9ImB5bWTk6lTtDCb4htU+BjS050
	 RCZTa8r7dsNaQ==
Date: Sun, 3 Nov 2024 02:17:23 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, groff@gnu.org, cjwatson@debian.org,
	branden@debian.org
Subject: [PATCH v2 4/4] src/bin/mansect: Preprocess with preconv(1)
Message-ID: <929d1df174d5656e3e14228d990db258e0405459.1730596504.git.alx@kernel.org>
References: <cover.1730596504.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cfqBoLfmkc1oRZur"
Content-Disposition: inline
In-Reply-To: <cover.1730596504.git.alx@kernel.org>
X-Mailer: git-send-email 2.39.5


--cfqBoLfmkc1oRZur
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 3 Nov 2024 02:17:23 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, groff@gnu.org, cjwatson@debian.org,
	branden@debian.org
Subject: [PATCH v2 4/4] src/bin/mansect: Preprocess with preconv(1)

This doesn't process the pages in a significant way, and has the benefit
that it writes the name of the pages in the output.

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 src/bin/mansect | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/src/bin/mansect b/src/bin/mansect
index a13a6b534..e1e83a8d8 100755
--- a/src/bin/mansect
+++ b/src/bin/mansect
@@ -14,13 +14,14 @@ shift;
=20
=20
 if test $# -lt 1; then
-	cat;
+	preconv;
 else
 	find -L "$@" -not -type d \
 	| xargs grep -l '^\.TH ' \
-	| xargs cat;
+	| xargs preconv;
 fi \
 | sed -En \
+	-e '/^\.lf 1 /p' \
 	-e '/^\.TH /p' \
 	-e '/^\.SH '"$s"'$/p' \
 	-e '/^\.SH '"$s"'$/,/^\.(TH|SH)/{/^\.(TH|SH)/!p}';
--=20
2.39.5


--cfqBoLfmkc1oRZur
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcmzyMACgkQnowa+77/
2zK6KxAAqx4lywCdhik9Azz+ImeMH/+bDaK2qt4rZPOdX18QtBGe3Ak6mifYCUou
fGyzkn/fFddFwKeWDS/ZTFw/X5F+CjGZjMt9AM3J5YDWdG9F2Pr1XpvY4DL+qwhe
cIe2CUSA+NX8RuR3Ulbmb42zKuZhPw8G8ArgJQK3fdGtIxLnX41MPh95FVa3R7He
5iR66K6u3M7DX3ubz2lB/cXFxFxd0sAnNlvqBgs3Kp9qFYH3itvhkfzyfr9pJDki
4Aqo/6CSa9Sb1+cc78/MCq+mbOgRd2HfS+aGQDi7BGQeWtLODwF2q1+QkH7USjr1
ehVcwYAxgFlEfqJe62m+mLHOeWyjABLuIGiNdiIFayhf32BbkJ32OwnY1DnwPFED
QsB/heZmzuQYFTGbVp/cR9aauQGuUcSF7bndq3fglz5DVj0bFDoRySkd4HRifsmJ
S8QbgVkeQDUFjmSITAa01aA5RpluGPAxmOvcgFVcPfCbVgEL7L2W6a1Pz1wotkjf
FrvemUM7D/u3umFhIpjsxFw5LsD2RY9K35IYnGFPXhW1lB6NA7tPQSbqwfJxfe4U
pepxDbFcxZdw834qgLfCdMTMLtNCpRKxlM8Y+e/15RrcGgRve0Y0BaddQYxbXfUE
N03CdlJ4gVXO1RFe4utTQM+tRJ+V4X7daWcOiwnNB5FBs5qOnhI=
=I9yB
-----END PGP SIGNATURE-----

--cfqBoLfmkc1oRZur--

