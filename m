Return-Path: <linux-man+bounces-2627-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BBEFBA6C5D8
	for <lists+linux-man@lfdr.de>; Fri, 21 Mar 2025 23:20:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 07BDE18839C5
	for <lists+linux-man@lfdr.de>; Fri, 21 Mar 2025 22:18:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6ECA1EE7D8;
	Fri, 21 Mar 2025 22:18:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XmW1AL64"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75C934A0C
	for <linux-man@vger.kernel.org>; Fri, 21 Mar 2025 22:18:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742595525; cv=none; b=GxSKcsT9VbYo8KmFB4rZWaKZArpumSVjyQUOWJXqUj03+TJQKmc/YmfF/iamoiK2QFwWR3vr920Ayq33b7Hcx1Nt9o8+VEHu8MX54x5p9Scd+3nZlbIh5AgKHS0fRctAzAPk9Pvv9c6oUsqxt116bvZKTNv4Swtw+0YVnuhnego=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742595525; c=relaxed/simple;
	bh=ByYN5hOxkNQLrqOrxF1lb5+yJ/nUOnRGr2ZYsGzL+B0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TuDVB//HEZr6DTEAONHAlAag3J0bWMDnpTVMOmd3VbXuNMYUGAY6+rKTPRTwUpu2oBaRhwSF3WcLxj8wV4LqUV4lb/yxWj96qTYGkhpK+EGNmheO2YzqgY5F8Tq3wtZuFPVVQ43xFsK9gge3/1gKC+p8G6D5hlPdW47u78yrTfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XmW1AL64; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30987C4CEE3;
	Fri, 21 Mar 2025 22:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742595525;
	bh=ByYN5hOxkNQLrqOrxF1lb5+yJ/nUOnRGr2ZYsGzL+B0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XmW1AL64ZTmnKjXfY44K8OJUupcxWWJhhYrltclOyv8OpQfjatG6qQgzvxrKv7JtA
	 4E/xdNor6G4ge0jfAXMEZNc0UaophKRaFXt6+yxrHtJhMHK2ZfW6M6wIbcEVdNtOET
	 8xbjZzfpD6uxsr30/nKcSuS8380rgIvYt6nIGz7CsV8+8OG8w8k2dxBs9h+iT1WDxr
	 2pYj4vYCHMXWE7fX88hBelZA7ImuWlmbjGZQTpM5cTXWLPX+Z1eqrjGDHheQsKQ9As
	 QfzNpgofHtTQyn8/haTTZ3K18DdtYUDmBudFO6fA4f96EETPTDz2XucbztFHnJXg4T
	 aKnwt7O5uJTtQ==
Date: Fri, 21 Mar 2025 23:18:42 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Bruno Haible <bruno@clisp.org>
Cc: Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v2 2/2] man/man3/strtol.3: CAVEATS: Clarify how to perform
 range checks
Message-ID: <b5244e62c588ff9521726c7ba518cfba19113cab.1742595341.git.alx@kernel.org>
X-Mailer: git-send-email 2.47.2
References: <cover.1742595341.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ls7zxw4dmbgq3yxh"
Content-Disposition: inline
In-Reply-To: <cover.1742595341.git.alx@kernel.org>


--ls7zxw4dmbgq3yxh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Bruno Haible <bruno@clisp.org>
Cc: Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v2 2/2] man/man3/strtol.3: CAVEATS: Clarify how to perform
 range checks
References: <cover.1742595341.git.alx@kernel.org>
MIME-Version: 1.0
In-Reply-To: <cover.1742595341.git.alx@kernel.org>

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


--ls7zxw4dmbgq3yxh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfd5cIACgkQ64mZXMKQ
wqlfZQ//YB5+eg8oJv17QGeGf7MtwlC+H3SJAa2zyQ7jRlOobJ/ovinAM02DZV9y
7DfJg1h07fbWWEbfU6gAhgOoxhtseJmq1NUjVJQ1sZXvGk4dfoHRirH84jKREmJ7
2b7AgrXen01TR+m1M49mo4ESMPLO/LJvoSVduHNSVEYrryjguatee6+8zdT0ffIJ
3OPBffoYsL2UwxiBFGoICHWaLFeXRqNNb5ThMAbYBgNRBXeDqjbWlh9V88H7kY2Y
NdxmvYp4S+LRW7AlwfYPg9TLFlhyj4Zmqw7S+HgLaM3wvYEV96nWHBtGEvYkeHDb
C7hMjSmmFf7bBWf+l+ZlrczRng0+5D/+LqlvJo+gaLa3RK9rKHDDMyqGRknBl4je
7Aarhpx16ZyCtQ1w+0SQGw/GqjLk+XYHRvfDrNVYhJdB1k3APfq+M7peDyM1hSBV
qceVKsTI5iiuKCoS4FoMXj1rfuwps49NwUYKuXEr8uhoUaf8tybNRs01xTBbeQ3C
/7bNPkGuewL887wN2OV84RffxhxFaGdur6RmgA9kMcUUK01ksgZBVeh+KNvd0UfV
adW0hWxRhi3XAuU+cVmMrenZ4Yfip9+ZMQoAtkk0LnNyGREHfT8XF6HrJ+DuFDVw
oiKKXg4BnpbKEtIZpQ+QTvguQQZkiX4HuvZnTinVqcYFucfr72k=
=1Svi
-----END PGP SIGNATURE-----

--ls7zxw4dmbgq3yxh--

