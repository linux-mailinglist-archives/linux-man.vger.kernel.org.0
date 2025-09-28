Return-Path: <linux-man+bounces-3989-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 56828BA76EB
	for <lists+linux-man@lfdr.de>; Sun, 28 Sep 2025 21:28:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DA79A3B9DCC
	for <lists+linux-man@lfdr.de>; Sun, 28 Sep 2025 19:28:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB527261B64;
	Sun, 28 Sep 2025 19:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Re3Enjs9"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66109221F0A
	for <linux-man@vger.kernel.org>; Sun, 28 Sep 2025 19:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759087714; cv=none; b=BfiM9Lc3+IXovgWRSTmQhMLAYE5of7ITNoNZPofPFR7Ad0aZxT8W3tEXlP7L04l8dI8VGdludHtvzcJtlaQ/hwwcE4kx3MCGylSBZwfnWzTLYdV5dvsFJYbIshpBAwS3Eh/I+JerJz8+DlkOuUUxoagl4jjFuCLvztzUvJhwCAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759087714; c=relaxed/simple;
	bh=rGfnOJS9+Ju9QulshMZuStVFYr/Byn13ZmxRIWb88Z4=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=FVcQm53po+V2gidii9PHay4O+RZ4UpaUvZ6fbEt6uAd8DCHNzrSf6DxBNzet9d4vpOwsF7e3wwQq2VRqn9KLR9ZvlTK36QSZ1MQVEzLbw92q5CaAifgEHuXQJyWHokfby+aA5Kokl/RTT23g6M5PJDlld7aQZC8LlU7qSgyuhO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Re3Enjs9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2FECEC19421;
	Sun, 28 Sep 2025 19:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759087713;
	bh=rGfnOJS9+Ju9QulshMZuStVFYr/Byn13ZmxRIWb88Z4=;
	h=Date:From:To:Cc:Subject:From;
	b=Re3Enjs9nQ8wf9sKWN9czPnMlAXB3jzHJ+rv2odSOXfbwRHvECVTPbL1zsnf4/Z/j
	 aI7AgxEufcoZ8eNGO1mVoMJemyvT1keZqYTRiSHrY5IYn38dPW4HH8aqlEZEEN3bBQ
	 FIRgI9l2Nl+Ir+HwKpwD7j+BDtH1qQ8u0Q9Wx3YU4Qzj7CbJcrZkBqh7km2IT1J89M
	 HfwguHMPP8vMqtP3t/wYNFVLt40RGDf8H8wGJ/Y/f1+nAD7qPAQq82/B27mzdjcpFQ
	 HRz1ta6m4/ZATJWbZQfsyfgBHNPhV9HmiKClAMpclCokFxLq6hmdxJcT4289RfZ1KN
	 sYvXZ2ni4qFag==
Date: Sun, 28 Sep 2025 21:28:30 +0200
From: Alejandro Colomar <alx@kernel.org>
To: libc-alpha@sourceware.org
Cc: linux-man@vger.kernel.org
Subject: Last parameter of getpwent_r(3) family of functions is useless
Message-ID: <2vi5vq4gvrfis3jdcgwni6xyxgeub5b44xptztkqve7bhemrtv@652ihd3hhivr>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4gbwuj56lckzkiua"
Content-Disposition: inline


--4gbwuj56lckzkiua
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: libc-alpha@sourceware.org
Cc: linux-man@vger.kernel.org
Subject: Last parameter of getpwent_r(3) family of functions is useless
Message-ID: <2vi5vq4gvrfis3jdcgwni6xyxgeub5b44xptztkqve7bhemrtv@652ihd3hhivr>
MIME-Version: 1.0

Hi!

I've never understood all the parameters of the getspent_r(3) family of
functions.  Today, I've implemented one of these functions, and I
realized the last one is entirely useless, and thus I haven't
implemented it in my version (sgetsgent_r()).

I wonder if we could simplify the usage of these functions by allowing
the last argument to be specified as NULL.  That would be a compatible
change (although not usable by programs for many years).  In the long
term, it would be an improvement.  Eventually (in a couple of decades),
we'd be able to document that the last argument should be a NULL pointer
for historic reasons (very much like time(2)), and simplify its
documentation.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--4gbwuj56lckzkiua
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjZjFgACgkQ64mZXMKQ
wqnJDA//aRhg7BBnt3/nP8GH5THKR5fuM3X4jUPFWh6qtAXdyMipGxV3T0Ns3Lp+
F4aMKoGTWqjq0alr07VgAXroJ/52EWiu/1/E5uIq8E9y4c0F31PoRlDvRU4GxaxS
uegcPkw1kfwf1iolqNkCrjH+U9wuu81M0dMEhxC/jN6cQ7iUgMfitEY3/O2b90MT
V7+RU1ZN9hZiopi+hBWCPUWsAqmya5dPzzebrrduqODXiFs6jXJn22d4TZwnm/PM
WsAulai0JMGBCGmJ+0+YOw7XKtDETdq3iWhzDVfuwpkyEbGweYCAaSxBlUXefPCi
zej/f9tCxnkEuY18XW8/IFHY/QE5ObIAlYBa9H+zTS9seJtNNi94kINbDTVOLZ0y
BYpFTu9B+/Xyc/VN2x2mbmENtJqvChSstpcbsLcgzLWsGb/zcyzb5P4uZqwBTv32
nWKyAT5SaijDCOC5jNOS/On39FpcHa1cGKP+41v4XD/TAbjdlAUl6MaOSDYVIv4S
ACC8b5J25lwTTW9nbPnFuN/YdrBiRCw+Oy54PkV4zDnJa/L6JzIPiChfoBZLcAgx
kJgRFEN4qiJIcNPxTZrvnwd/ObP41UWgrzU02asAog01gpDhGuYMcn2Mn2lX172K
aGI+wsOXrb6b0+r4zG12OYnL9FqpO+xYcfIGMsmzcB7DaeHZuqM=
=GRbv
-----END PGP SIGNATURE-----

--4gbwuj56lckzkiua--

