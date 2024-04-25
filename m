Return-Path: <linux-man+bounces-813-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1418B20B2
	for <lists+linux-man@lfdr.de>; Thu, 25 Apr 2024 13:49:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 51AD11F25A64
	for <lists+linux-man@lfdr.de>; Thu, 25 Apr 2024 11:49:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84A7C8526B;
	Thu, 25 Apr 2024 11:49:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YjcYQ+po"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452EE38398
	for <linux-man@vger.kernel.org>; Thu, 25 Apr 2024 11:49:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714045745; cv=none; b=XcQXxLgyg4LxAqB8LWVRgusfz4HRhHx8Xi8p/EkR/bb30oIKsHBZCXfqwLwFCf70VPpRAJcOHaQuD0aPvVv5fU5tdeGWbizziOdS0WO1GsoKkIHOX0ExZInpx7y/ta/VWeMwi8FZl1Z45CXuEsalUZ1RkI7Jg9cmwnwZ8WJufVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714045745; c=relaxed/simple;
	bh=UC7RMcpfrpl0bLHpQCEcYb4RW/QUxe0zGiRh9EVfdcg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Op7RcfrVu5m3Ffmj8OYz+aSubBdQBcqbG7b+sPqhNniX5/yJfZe0iC0BJeacr2IMLB/UcWI3N2SzK4r5ALqdjqkng/y32nq5cjG472A0V6/WGkAHp9PxQT2cVeYaE4d57hyxGwq50UOPLh2YOwEvZeVAH0Xy4Da4WZ2UufvZHQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YjcYQ+po; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2DEA3C113CC;
	Thu, 25 Apr 2024 11:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714045744;
	bh=UC7RMcpfrpl0bLHpQCEcYb4RW/QUxe0zGiRh9EVfdcg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YjcYQ+pow9JNA/yrTLc1TuOWQNNV8Rsh5z0JuClBFPjcw5zCBIQ/UlH135305Qq2R
	 yBhKh/21dKts+EuXw1ALLv5Yp5l2A5h3vzGBbHyc8dwl4+zM1YbRJ19B6C12Bp2jMi
	 kNxpUjVnewulGtnX3j0A1O5COjbkOarJ3mCODmXtmKMcq6jR0PC3yZmNVLKTlNR9i3
	 iHIXMuTVITkcQ04JmVL5Fy2hFRzWtMnOCkpB8WqeHYqcSOoankbkg82/u/LSiv7ng+
	 l4t4YVNtOzBHFd/XzFH7uiu6uzIB4ZE0hWYFXqSYKCUl3bC8v1Ch+uoCLivtKRcQMe
	 F4WEbRla9bWmg==
Date: Thu, 25 Apr 2024 13:49:01 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Simon Barth <simon.barth@gmx.de>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] slist.3: wfix
Message-ID: <g4bkaz2d4ukdjdxajlpl2tnshlzbky6tadxdg4pjycmt4g4y5q@hkmk5yd4xas4>
References: <20240424000949.65424-2-simon.barth@gmx.de>
 <Zijb98AgXyX6VgYU@debian>
 <ri344dcxgwoni4rlwmn6g5yu5zpw2a6tavmjocpldgxil7i7wm@rzzh7itpv6gj>
 <ZiomDWBQvwzXT7EE@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pvpkabafkted7saa"
Content-Disposition: inline
In-Reply-To: <ZiomDWBQvwzXT7EE@debian>


--pvpkabafkted7saa
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Simon Barth <simon.barth@gmx.de>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] slist.3: wfix
References: <20240424000949.65424-2-simon.barth@gmx.de>
 <Zijb98AgXyX6VgYU@debian>
 <ri344dcxgwoni4rlwmn6g5yu5zpw2a6tavmjocpldgxil7i7wm@rzzh7itpv6gj>
 <ZiomDWBQvwzXT7EE@debian>
MIME-Version: 1.0
In-Reply-To: <ZiomDWBQvwzXT7EE@debian>

On Thu, Apr 25, 2024 at 11:44:44AM GMT, Alejandro Colomar wrote:
> Hi Simon,
>=20
> On Thu, Apr 25, 2024 at 12:43:35AM +0200, Simon Barth wrote:
> > On Wed, Apr 24, 2024 at 12:16:23PM +0200, Alejandro Colomar wrote:
> > > Patch applied.  Thanks!
> > Thanks a lot! The contribution process was easy and straight forward
> > once I got the mail setup running!

I'm also interested in the mail setup process.  I remember it was a bit
difficult for me back then when I sent my first patches to this project,
and had to ask the maintainer of the time, Michael Kerrisk, to point me
to some tutorials that explain it.

What mail client did you use before sending this patch, and was it easy
to find a way to setup your mail for sending to this project?  Should I
add links to pages explaining how to set git-send-email(1) up?

I thought of adding a link to <https://git-send-email.io/> in
<CONTRIBUTING.d/mail>.

>=20
> Nice to hear that!  :-)
>=20
> BTW, now that you mention the contributing process...  were the
> CONTRIBUTING.d/* files easy to find and understand?
>=20
> Have a lovely day!
> Alex
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--pvpkabafkted7saa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYqQy0ACgkQnowa+77/
2zJ9Fg//dr9HKXcwtT+1S2AdRWH6FKDAI2wGMvgYdXmypHq2gmxgpa88/qmnuHg+
Wtfh6JFzeudQvzRtAXhey7IQER4T+RSK5149MJdy/IpDIp4lnYPvC97P6YNqrZeZ
h+rxZwvUW4YWXueHpxZPP5NtWLLGbVh9z6xRVg3Jvh7I/JkQHUYvOmWf0b3Bai1+
Ok6SaMAIifvuZaJ2DgQVH+q7Q+Xa37FPVDyn3kFOG1YhhIsXzO8K4D3mPiNFhWTo
mXbGTmeYXe33kSSlYol+4q7GCIymLYU6p8mx8VR7mPklkr+wP+sy34ootnET7e2e
BLp002GT4fcm6daBEGJrAJF4USXZd5WtfxW/gJR8k5xDW5rnyI4Xa4rLLADI3Xlc
uKkoJ5PukdqotjPNkkZw9b405dgf/WrwCbbtQPgQwIiJIOgJPeSpPYaQ/A501P/w
SNUoOYKiIpkbkv7jETgvfJ4XlCPU7ffNVf2o/xMJ5oauqo2tYlCb/RaTEqYm0m68
iJ3U8hLwSxqlWAx2JGoBX4smfYaCHy64JWAWGtBX1xr3aF9Fazc44qHCaPtV/rL8
LAoh5cQnTOD28jIcU9JNSDkNsSO3GWogMFzST6+ll74sqnmh9SdRv1UVElIkxrHh
+wPinzjde5DYmlFS+fhhxyC7pgYvkDSs9wAJzarmvQ4rls1i3Ho=
=mL8/
-----END PGP SIGNATURE-----

--pvpkabafkted7saa--

