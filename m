Return-Path: <linux-man+bounces-2775-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DA111A907F2
	for <lists+linux-man@lfdr.de>; Wed, 16 Apr 2025 17:47:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 61BC45A1197
	for <lists+linux-man@lfdr.de>; Wed, 16 Apr 2025 15:46:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A5241C5D4C;
	Wed, 16 Apr 2025 15:47:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DERMJM7b"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D0B19AD89
	for <linux-man@vger.kernel.org>; Wed, 16 Apr 2025 15:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744818423; cv=none; b=pvxl41MNLbDsLHeJdVxdfS/maqFQiILaDpyyC2crtTylGTsPs+miiLiXl/s7yxZNbf1sYEi5SX8V54yNjXAm+60U1R+Q9nWGdAgRMo3PsFTeZL/Wmr/KsVBd1OSVB1/Q+RTz8NZOLtyL+9RST73G4HtaEvEUYy3UG+o8cNu2UxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744818423; c=relaxed/simple;
	bh=1sRuNSppZMS8COSzyLuXRoNaJI5WILyVPGAbeGqX23w=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=bs2xI72oPdjKWfiQqYN2fiiuJ6fzTK3+srNT3wEXGKajSi1GB0+UDgXescXSA5QLXNiI7k+7JROgPDhM/SXOq/oBFvcVPsHD3bWNW0t8Ps9nS7lKOb+oSrbdcUgxNTXl3+eCtyaAEqAPmdZz7U/dHAFCZcRCr7dI/XTMW/PFr44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DERMJM7b; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9793EC4CEE2;
	Wed, 16 Apr 2025 15:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744818422;
	bh=1sRuNSppZMS8COSzyLuXRoNaJI5WILyVPGAbeGqX23w=;
	h=Date:From:To:Subject:From;
	b=DERMJM7bRpGQ2U7mQi5u5c45qWg2Fh3+2OJzBihG3j02B2f3taOsCtj62mpQHdgjj
	 X1d98bXKA/CiMkOL+r+NHUF2fJXvzoaGUwGRtmhSrnpghm5/BZNFgnNHdjBje3eb65
	 42bcdFA2PXaqNgYyz9AuV/o1Pg1wY0TeQkQ38zK6G3xxodHG2vJF+1bKWhjEvoR1B/
	 xNFy7m3IkAsE41vaYDAwb20j7CkARxa8xLHqmFlJ/z+QM8keMvb0nPbJIPLPhgpHQS
	 q9Nh2TrahIhOwtgyXnXFzOuutN46REuOcK9RJs7m8c/RSW4Z8M4BTV5kmr1MYZVcHz
	 +OF6LieaYfVmQ==
Date: Wed, 16 Apr 2025 17:46:58 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, libc-help@sourceware.org
Subject: POSIX issue 308: stdio function EFBIG errors and SIGXFSZ
Message-ID: <yfrf3qmz4thtpn36quqmrx742outmlsi7wzeo32lbefiqt7u6b@gnf4wpe3vi5s>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lsudkzxwp4uzjgzn"
Content-Disposition: inline


--lsudkzxwp4uzjgzn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, libc-help@sourceware.org
Subject: POSIX issue 308: stdio function EFBIG errors and SIGXFSZ
MIME-Version: 1.0

Hi!

Does anyone know if GNU and/or Linux are conforming to POSIX.1-2024
regarding <https://www.austingroupbugs.net/view.php?id=3D308>?


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--lsudkzxwp4uzjgzn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmf/0OsACgkQ64mZXMKQ
wqkRaxAAjg/rfq3cvoiNES0LJ3qeylcj5RaOOheojIvs6PXgeeCfCrqKr+8GGGnM
cEvOb1H/aDQILo4FxHxvsCWKh2swUJdlTT9ynxY+hYP1FQnxXzLURjXxkaNh/lUX
3rF8RaY8Pcls4jKNZEiX19my+sx+QyQ+VWSh82SbBQmJKep24KMr1lwCtjxzHFT/
chtOVLHNmXRaormCNoNY/Eb12w8mBlIr6mbO/Cs1bx6QS3aCNp+pWE4BMOgi0Ij2
a2dZuHhiYEcTXcOhuJKIm9DnHbFKHRfBsthRcwfb68qKYpaN4u3Ya3WfN6rAH8yM
Z/70wojQlhIRAswrs/AHFXPUMlbHkKU9WeaLTlYAk6iaW8nEZTBTJ6JXvD39aIoq
gaBH/QH1bYeiaNoNDei+7+ePNCcz42j04o/O8rt1R/42pqemETiB9fGMLZrwE2FJ
g+f5B4UbaMp9by68fd8yjyYgsr4KeBtCqfcT2tjm/DWS1f4Yuul1+sw/ZE0gd0o0
JuvgKqwra8ixS1J9fNPVE/noUjuu/0+OFUJuuIEpBJM3V96601qeOW2ZolIvuyub
HPr2ecCb3ocugeRa/xasl1ezq0nrGi92yp2O8JiXVwEtdr1fMW30t3LXp00IeDxK
NXlzEeVs+mg8IT6Y8VCA7I2X9Yk0YRHzf/NLpEaQf2R+dJgQkpA=
=d71/
-----END PGP SIGNATURE-----

--lsudkzxwp4uzjgzn--

