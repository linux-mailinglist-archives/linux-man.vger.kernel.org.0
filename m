Return-Path: <linux-man+bounces-2936-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4DBABA988
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 12:49:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0F2C29E3E1C
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 10:48:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5217D1E1A3B;
	Sat, 17 May 2025 10:49:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lo1ZGLnv"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F1C1DF265
	for <linux-man@vger.kernel.org>; Sat, 17 May 2025 10:49:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747478945; cv=none; b=Jn9a+y7jv6sWRqiY3QUOiBs7Iu6k14D4mSLqJHjJEpKRDVqjocxXXOTc9WyQ//YSHGcG7gLSuJI8lA8Lfjc9/EhjH/GZpGFW+itX0MrgFCDy6TuU/CPYdohT/oF6W3H+9+DMEgMbv++oGBRQ1dNdA5GEJWfpbh5a3CVEu5yRbvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747478945; c=relaxed/simple;
	bh=HQqFCGPQgWiKMnk1SPQOu/DaIG3mqIWZ7g2XOqOC9e8=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=mTk6BMgz55r1f5OJqXxRGvuwRlhNLSj3bR+BYB07LH7a8GvD1xNqYk0o9+iAFd+6JR8cQvmQgFetCnZ81YPILYqae5jj2Gcrm2ASui3J5k465WQIr7wRmE8oDtvsikeE6je7ak7PBLOIgyP5sc9UWbe2P3gg8sKbwqEF5nBmy5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lo1ZGLnv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FBC9C4CEE3;
	Sat, 17 May 2025 10:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747478944;
	bh=HQqFCGPQgWiKMnk1SPQOu/DaIG3mqIWZ7g2XOqOC9e8=;
	h=Date:From:To:Cc:Subject:From;
	b=Lo1ZGLnvXL6AZGpNWykKyQkXEGSvJM3GQ8QcvKwaX+ebU4qeOyWMy/nRIlDiR+d4e
	 YIv4xfYB0m1lB53gAW94UOijCAYLb3V/a28dw3UaTy9iGtMGnAz0jBp0y+J7ueSo7i
	 Gk1u61seU2IlRo2+r1ijuFn/DE4WXfRoCic5OgZvQrWQenO205kRB+hRgNE2fd3dGn
	 FGoMomy0cS5SoiXzpCiuS8FrE+B0BSAK882d7/o80QxyOQv3eu8RCstVITRSrcZLKF
	 pJESbA+kUl7Nepr3NRC5i16Njk1jATq3huasJMWC0TkypS74sbY1b41DCXB4x5224K
	 tme+50t03ATCg==
Date: Sat, 17 May 2025 12:49:00 +0200
From: Alejandro Colomar <alx@kernel.org>
To: libc-alpha@sourceware.org
Cc: linux-man@vger.kernel.org
Subject: fork(2), _Fork(), POSIX.1-2024, and AS-safety
Message-ID: <mp3cwzbgvqw2m53jykhfz5xloihxcr5v5bwynig3cxrsmmpqhe@eaok355sjksi>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="43b2qsms2eozicnd"
Content-Disposition: inline


--43b2qsms2eozicnd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: libc-alpha@sourceware.org
Cc: linux-man@vger.kernel.org
Subject: fork(2), _Fork(), POSIX.1-2024, and AS-safety
MIME-Version: 1.0

Hi,

While updating the manual pages for POSIX.1-2024, I've realized about
the existence of _Fork().  The GNU documentation says it's a GNU
extension.  I guess it needs to be updated now that it's standard.

I'll need to write a new manual page page for it, and change the
existing ones to note that fork(2) isn't AS-safe.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--43b2qsms2eozicnd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgoaZUACgkQ64mZXMKQ
wqlvqQ//fRwQQcJNku2qBiKK03e6fXRJwp2JoSkw8mR4j3IQ8W+CnUIjvb08n93e
IuIdxKa2+5tu3emzPjItBGG649R4YOizNWdKrgCWUGSpeMpU5B0WK3hyyk9y15DD
AJ+4eP3KCdzU0FlxJwXfVSCf0CVdfSuWnd4Q2BPb1B6skVlroDabJJpEszIk5UJm
mL7lUzy3NABTPlEc8+YQAzO7boVMMhKcKyt1tv8wKqcVSh45Aeik0A4T6ClW8JqU
QyZ857ann81A/lqZLN5t9aLpHfQSi+HinzyHzsS0yvxTHFsUAO2mt4CGf1xKF5jx
ES0dxnBtA97Fcqr/gVh5aJ2Kbt/Qlg6ZNSHhP5lVRLFBQ+K/T0tc8OMSAd89FdhE
tCfyuEik0Cu6WOcLXlubZSnnXvjYM/QP0eRu6u7ITs36SI7oR6DeXt5/C1+sRdZx
evcFbdqiwEUzUjCpFZplLQIv9ghA+rUC4plTXlUHvQD2snqeDZRqzO8PCtds7ifv
MDA47qZmSr0f1VHAyywfxdTe0xgaSU0PEVBfSwiyMwZeKZ3+5s8wEklLn4zAwSYO
QLmLQJcYSrfxkBOoV+X2J/I+rMY1mA+O4ArtviR0FkuZCoRLQvzC6ijtT4grcS6Z
JVbWxJKiSDpY78EuhxBh3mB7Gv6WchCuh8GnFO9JtQLEr4Z9qRI=
=Mb/k
-----END PGP SIGNATURE-----

--43b2qsms2eozicnd--

