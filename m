Return-Path: <linux-man+bounces-3990-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD64BA7795
	for <lists+linux-man@lfdr.de>; Sun, 28 Sep 2025 22:26:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 156E4160458
	for <lists+linux-man@lfdr.de>; Sun, 28 Sep 2025 20:26:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C22727E1D5;
	Sun, 28 Sep 2025 20:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXhTyy3I"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EF717B425
	for <linux-man@vger.kernel.org>; Sun, 28 Sep 2025 20:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759091194; cv=none; b=m6smKtqliiWphNIs1z9ZQO9BqMMUGjnDYEj2uc/vhj6jfP1X68mus7NhsNPw+JdzIEvpaSWxSwxcBtoaFWJVnlqPlVIPGeptPL2J6MDEx8DFEZMgHUSlmmZ6OqMx8kFfWE/EqXaB4Q6vdyLIWQtYiiIDDIOGiVbRT0MPozkQXPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759091194; c=relaxed/simple;
	bh=S6LABJtlB85u08nAuDFREO7GrHKToWma/ZQijTm+DV0=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=CrnBO6bI1w+rEPh9grGktpRbfhzqqwWvFVyA7/ILnuurjL0WFqbxWlI4I9/y/MM3EZnt6Ou1RZITzTaOIEWSMwZQ5XH4NCfJJGpMFfByNz58m3Xi5ARhBfVWLnEBQ1iGC6runyv+qoCopofUdnIL7yY5npf3LnRl/Bbi/z4krxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXhTyy3I; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DCFBEC4CEF0;
	Sun, 28 Sep 2025 20:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759091193;
	bh=S6LABJtlB85u08nAuDFREO7GrHKToWma/ZQijTm+DV0=;
	h=Date:From:To:Subject:From;
	b=WXhTyy3IWOtH/tlYxS3gj/VaH6R+85D4qr8U6cUbg5TUn0lCV+lJUjCc2YAe48MuA
	 6g461d43Sypnrl1i9TcD3LLSly527C9hHV5T2ch8Tde2ImybnloKrBdfJqGgiBlYlQ
	 cgoWu69QHUHSjw2QxWu7h780u4NE8j1G2jIG22aTb/ViKoqpRq+QtJyWkGp49AHVXj
	 w9hJMAFFL6S1KgYInLQTEBXyYPXCXx4cHJZAaziH4Iw9E6yPnLfTIqtPZAc0ukD040
	 L8Sz6OaUxA1V/bAifGS7Z8dnO4veBtejVbQfBbatVBv//sbaWQmf9gn+23+lrg7hCL
	 noPwn3FcfnGWA==
Date: Sun, 28 Sep 2025 22:26:30 +0200
From: Alejandro Colomar <alx@kernel.org>
To: libc-alpha@sourceware.org, linux-man@vger.kernel.org
Subject: getpwent_r(3) needs gr->gr_mem to be freed, but that's not documented
Message-ID: <vy2burlsbramtt4oysq7gsesrytp47kkhmevlmgkxsktksjeit@7eenz2wnzkh7>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="r53i4dt4ai7wjiir"
Content-Disposition: inline


--r53i4dt4ai7wjiir
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: libc-alpha@sourceware.org, linux-man@vger.kernel.org
Subject: getpwent_r(3) needs gr->gr_mem to be freed, but that's not documented
Message-ID: <vy2burlsbramtt4oysq7gsesrytp47kkhmevlmgkxsktksjeit@7eenz2wnzkh7>
MIME-Version: 1.0

Hi!

Another thing I realized about getpwent_r(3) et al. is that gr->gr_mem
is allocated by the function, but is expected to be freed by the caller.

I didn't find this documented, neither in the manual page nor in the
glibc manual.  Is it documented but I missed it?  Or did I misunderstand
something?  Or is it just that nobody documented it?


Have a lovely night!
Alex


--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--r53i4dt4ai7wjiir
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjZmfAACgkQ64mZXMKQ
wqmDWQ/8C7VWceqXNO/AMQ0M6O9GkCWHD+XuH3wt13qUkK/f5UKihloDl8w4hUuM
ZbBBgRImzR9kN7q/m1NzCphXQmLgq5CZBjKlNWgdx8d/lk5axM3HX7PTIr/qu8OU
snTPW0h6IHeH4yalCXuM91plJztLSZsWZdt6RoA6bD1wmRq7tGBDFaT5BFmGYexz
2ltOMdYAMPbz9yYW+vxLV2YKKgb+y5Vci/a26YgDv4ooK/5DpErkwiq0qb1iTrWP
8P1RMG2fu1Q2P8YHrBBiJaLI1mA1yYl5lnqbnCjDOQJSepakKXOzMv8zBT//NoXL
6zsoWl+0FwJta2RPoUFn4po+f1YQxxZQTq0N5RxR0cFetL3yVodFHwgeH7Ihk5S1
eMeV4DTp0yBoLyDlkoJ1u/bj70tYIZ5mHLr2Rp1RZVTsA8u7IcLlEAVJjZS6HUIN
YFZA+l7tNUd1nr23dKqAFqYLRUrfhmEsbG6/p/+i+JTs8X1d0/iaNjDkvIrVB3Nk
Pd5DWD4rrfY4zRT8Wd8FbcO66qG8GNVjgz3pExH4fQ52vl6uDrTco6tlqz1JggY7
P0eVcchhTN0WS5vk2xa62NHGL0d7WIUfR8Ii82pMFcR9lN3bHI1wrFs0Wx/4xqks
X/CcxnKupBtoR3IWJOBroM7lHfk7GhLThBNFx0l8M16qx4BajqM=
=yhZJ
-----END PGP SIGNATURE-----

--r53i4dt4ai7wjiir--

