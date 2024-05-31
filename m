Return-Path: <linux-man+bounces-1017-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3425A8D68F1
	for <lists+linux-man@lfdr.de>; Fri, 31 May 2024 20:21:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C64EC1F25066
	for <lists+linux-man@lfdr.de>; Fri, 31 May 2024 18:21:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6831E17D359;
	Fri, 31 May 2024 18:20:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="BSBkqzl0"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99C3217D8B4
	for <linux-man@vger.kernel.org>; Fri, 31 May 2024 18:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717179650; cv=none; b=bLNgnoYVkMdtKwIb8/98cQtfufGcUWW1+bk0H/kRawkiOU91wOn47l28v9oVCC78Q0KphOZRNT0rFn6vw2VHKptlo3rzkTF5GcXfCdWVot982dWlHItZfmOIv4Be6EC3RdEmztGIHoOKh5meW6LYldR9NnQQHixqWgKZFgm+t00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717179650; c=relaxed/simple;
	bh=C1I9Zf7HONW/lZYaAW+ZbT1ik6aa9M6425VV2euPjqs=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Ab43SEmoTe0hBHtjpDU11pG9hl0i69ug7AWIjDfJvoAGj1hgBY4F+8WL6gyHMcDCMokNBefli6EMzsioxHJyot/RngB1y0BCAzgI8nFFJ6aGCPzxCXAWT8Tz4joXLaZojXNLU4Yl7gfV5oLx9w++Wzbv2qS5KN8xpoWAndfFKqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=BSBkqzl0; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1717179077;
	bh=C1I9Zf7HONW/lZYaAW+ZbT1ik6aa9M6425VV2euPjqs=;
	h=Date:From:To:Cc:Subject:From;
	b=BSBkqzl0qUaS9bLReyEnckfrxYrcOsXCwsXmO4KZl/CCKtIw/JzJW6fzOJlrATgXz
	 nBCks0Yrjnv5FckGQR5lPh2y/w6MBGNcvu3GrW8NT9b7tiLhqRKuzTTP6SC/ElOx+y
	 ps8X7u+cmuaDh/6DVNNQtk53525+8Uky+n6A6vnM+1ENPiI43kTde+yUTkE8b/tNS5
	 DHFKVpRXUoSoJnMDg5gOY9yd6C2lczHoZE3g+gSLiYwzDvNAlwxJOOniYNvJnEXoX1
	 rcpkvg23/oOp5X9nb0x6fEXpP+MIH8DvIErbvKnW3Fs0Oa2F+m2oSR+fp4OD252+xo
	 OE3j5VlSaE1Ew==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 556386308;
	Fri, 31 May 2024 20:11:17 +0200 (CEST)
Date: Fri, 31 May 2024 20:11:17 +0200
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] ioctl_iflags.2: document FS_APPEND_FL ('a') on directories
Message-ID: <vzoykfmkokepn2gq3nqb2vvlbim32vky3vnac2x2avmkyzcdez@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6t7jtffuigbnzjyw"
Content-Disposition: inline
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--6t7jtffuigbnzjyw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

For some reason, neither chattr(1) nor this page document it;
ext4 supports this (tmpfs and ZFS don't, didn't test more).

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man/man2/ioctl_iflags.2 | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/man/man2/ioctl_iflags.2 b/man/man2/ioctl_iflags.2
index 0f4c533bc..fb7036cc4 100644
--- a/man/man2/ioctl_iflags.2
+++ b/man/man2/ioctl_iflags.2
@@ -44,6 +44,8 @@ .SH DESCRIPTION
 The file can be opened only with the
 .B O_APPEND
 flag.
+If applied to a directory, forbids removing files from the directory
+.RB "(via " unlink "(), " rename "(), and the like)."
 (This restriction applies even to the superuser.)
 Only a privileged process
 .RB ( CAP_LINUX_IMMUTABLE )
--=20
2.39.2

--6t7jtffuigbnzjyw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmZaEsQACgkQvP0LAY0m
WPEYMRAApQHaYINXHiInHv8Tiam2C6CROY3nMkwpLwm9QYQ3IILsQwgmWEB+nTNV
33dOjdn1JK/fXdxT7js/C0Vd6s2w6q11LXqsjgZ9PWAIAQ72FAiS32YYHAssMpj/
b/7NtAKbvcQtxARRqOeviWvojJT6LbaGvVuUj8Ke9RIpM6Nry9/9+dVD4JXBd3Wk
xHHQUtcE4K/ryUunbE5NnNZopOv8yudYYNp1ssRH7tRzbx0xGyFJMiw1GIQbyXzZ
WICgT9tnZCP3DTDGMSNU8QTuXfXBxGR/IBOZ7w0R9cP14uEgxhvmu3AmoXJ7Qiwp
f1xt5uBtQMlVoxLVINqNhEg7HbHjXbXYNI7h7bznY5qJiqGB/eC7fJobhXn7HHb+
R1ABz6x2O6I7iNPxpupjNi+Pf7fwZExw4I/U+M5JY0ULYnMT+uS2+6ia3E/p7CwF
lSlYkZlMA5nPy56hsULJVWf8rWe1+90ccHy/XVihPD5j5lCYxBZDPNpholNvIh8+
njICO0fJuutPFN4f2cjrAPBli98mA3bCyUhXpkjusCFKioae2Ro9uQ8v8uxR2YSA
izoM6hhktImBPiuOUjya1x7rlpXhaUEfeqT3cx8O7gX+ARgv8WYWawQnT3FReGtw
2cOlbL6bxvUUQPabec+gvQUmG3YTkX/ReycIbS5a6Ayo9tuAUWE=
=g16R
-----END PGP SIGNATURE-----

--6t7jtffuigbnzjyw--

