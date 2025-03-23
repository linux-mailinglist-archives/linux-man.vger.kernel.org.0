Return-Path: <linux-man+bounces-2638-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C1BC9A6CEFD
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 12:43:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2D4F516F716
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 11:43:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D4AA204C2E;
	Sun, 23 Mar 2025 11:43:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MY8YVmz9"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E118E202F87
	for <linux-man@vger.kernel.org>; Sun, 23 Mar 2025 11:43:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742730199; cv=none; b=lYRSE166QED4Qf2a9vIkUbfNizHBZZ0YD/s4hTxIdid9qSdKVIoH5r0iHaAIPKO2rOPqDKkdoqu0AmssHaShokYoC2dAuvh3A+UusxC8ETLVcdhRScFDch0QNBgZW1sPFQWJX6BKKcJOBgF8GGJ2MxcUzRdQGkaPRoLrRZPthgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742730199; c=relaxed/simple;
	bh=izkUTWuoN5PRBw127l5SmgxZsM1l8w7d8vRHcGAHo4I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JRqDnx4wbglN2+1Vnuv0d5tgGnWD0DwGgOM16fSntb1wNyjRPaLff3Ea2wB6NZXfnUmZxJTyk1KAvS0s/paKaCKsh9CZqlDn1TJ2CuswcXK2H4tebFhdiFHkuwaIN0p3Bexf/t9CwxwZpO+q7NGlKQwiK95i7Mw6eboXSrhmsPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MY8YVmz9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D63BC4CEE2;
	Sun, 23 Mar 2025 11:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742730196;
	bh=izkUTWuoN5PRBw127l5SmgxZsM1l8w7d8vRHcGAHo4I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MY8YVmz91oWiNvNzVwWkwi2NVa2XYOID4oMBV5T1OktyJ+gTyKf3wKSNnAuhVnr5E
	 YZuFgV7RBt5xX5mTpPk+NbfeLl5RA6H7Q56YT7x5Uon+RLWVMFy4rqQZib/Cb7h5WI
	 67E9k+/YNKSWuGQhbwpK7oddqIST1m2qP7JsPGosRHPxCF6MS6nKQgV3/7FLI91woN
	 IC7IYz2AXshtJjXrvgZXU6smQ3XWSDKZqeGgH+ATtmTtUXBmbPVGP6ID+8T/wrIzbn
	 mO4KTrwrhtZnw5OUhQqMtUe3JK97VblsMN4Ui+NO6UV5dGbv2mbCkgkqgcINo+n3iG
	 J5IsxdCUf3sGw==
Date: Sun, 23 Mar 2025 12:43:14 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Bruno Haible <bruno@clisp.org>
Cc: Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v4 2/2] man/man3/strtol.3: CAVEATS: Clarify how to perform
 range checks
Message-ID: <98af3aa6c23d46d29c72628375f7b0b3df11ab6f.1742730109.git.alx@kernel.org>
X-Mailer: git-send-email 2.47.2
References: <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>
 <cover.1742730109.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="twdkdw534st3w4bx"
Content-Disposition: inline
In-Reply-To: <cover.1742730109.git.alx@kernel.org>


--twdkdw534st3w4bx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Bruno Haible <bruno@clisp.org>
Cc: Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v4 2/2] man/man3/strtol.3: CAVEATS: Clarify how to perform
 range checks
References: <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>
 <cover.1742730109.git.alx@kernel.org>
MIME-Version: 1.0
In-Reply-To: <cover.1742730109.git.alx@kernel.org>

Reported-by: Bruno Haible <bruno@clisp.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man3/strtol.3 | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/man/man3/strtol.3 b/man/man3/strtol.3
index f9c9af4bc..f1c5b6ec1 100644
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


--twdkdw534st3w4bx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmff89EACgkQ64mZXMKQ
wqlQkg/9Hrv08b0+ftQtjYt0o5wv7n0RUJuKXFQbIYk7t6foQ9Hct7lWYNZI+I8k
DawyM3h0/y7PBQLM1fBXTbdoXIZRShELhkT0wH705uwtmFUvdQ1ds6QeubSKPydu
bIJS2i7vG4Oij99eJbCsUe9/26nLd1JzmRVtn4n+S411fUNvupR4SGdlo/0Er+Cw
MW/JVKGJcZMmhzVBq6rKB20GUU332UsqkkXSonIbPTflrH8AHGzRrcmsvb0716SL
1oblazHeWdhPmnUH8oNoHXC4oe07yK1vLudu2L/S69g5Bqa6hlTBexG56IGAuhuh
v9ZCRB4VscrgBhy9wSd17tpR3nKCwKCos3yz29dUvUFnaI9aARmSfLxDoJPJs/M1
1ia07HheOb6iji59SMqOZceYtkaCPuBefNxIPIAPXAWWqBoVSI3qWTkaszKGZnrd
uSp1lAM9CeQUpx75gVw1dkv2yTW5k6hZ2qDsYHZyRpKmbYUQNT11BJCII/xhhxWM
9lk6Vv5ZbYzWK2uO/IAu/N6TikCsZ8uOCfk8fJeTiak6tLBZ0nUjE0tK8VwVeG6j
INYHib7n2Y3b/xc9HT1dZ/5fOHN4/VlE9kaa9Z/if60mWWFOpcQ6BtVwiuWlSAql
PdYNpY3HMitKkkINoKdBD9MutjU+hgbNudLpR6hhOll0g/25BOQ=
=uJPW
-----END PGP SIGNATURE-----

--twdkdw534st3w4bx--

