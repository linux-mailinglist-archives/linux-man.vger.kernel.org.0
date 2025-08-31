Return-Path: <linux-man+bounces-3773-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BBCB3D2A9
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 14:08:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AA0E118832BD
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 12:08:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7D6224397A;
	Sun, 31 Aug 2025 12:08:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p9l20xFj"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64DC621E0BE
	for <linux-man@vger.kernel.org>; Sun, 31 Aug 2025 12:08:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756642095; cv=none; b=HpWVC91D+ycOnPksecZv3Ard37p53IDL+XMY15UYVwm2u+ZXcyHzDNDUbceHwGmloCBhdVgIzTP+A3XFU8bWVDUI5RebeY/CktY3rY6N547QhOoHlxZjBMwqaNEDr+AzG1n4OExfp/V7GyTau4rr7ifrUg+FE46u8RncvdfjTWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756642095; c=relaxed/simple;
	bh=ZemYvnpL0KWATei/LQLdO9hy0ovXScO7Kz1eGWrHgk0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JN9C6pg2ZehTWFGQRrodoUZi8clCNI1+Q4s2lb82GxIUWfigZ2iA4hZgnXDysc5fxZGEMUclnhWLXzUho0AQh2HjMECLyg99zCG7jbQuaMrlVpQcRS0CPVaJBqQRcSwBb9HFHcr4ykpSeka9ZXSJfereikAUxgWXJWTii7tBVaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p9l20xFj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73E01C4CEED;
	Sun, 31 Aug 2025 12:08:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756642094;
	bh=ZemYvnpL0KWATei/LQLdO9hy0ovXScO7Kz1eGWrHgk0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p9l20xFjF+v/aIm9TNiyYTUdwQn/9G9Fw13yBdUVojXaRvNZ7Goy91XolkQmUdQE5
	 +MizxYAKErMxFSXlnEjpyD65UUP+DoS+4+SdNvOvf0w/3B6FvIE/QVgvrtc3tAl+9H
	 PrJdubgP5y8QR9xl583kLJBSrTmhHj63QrDTXcmSMK+JsEKytUYRU5RnFFYyvxHAiE
	 ZI5Q7S1jjGIZ6U+WYl2Qunl5N/KK7GDtm777M0fNsvHg38ME2kC02mKYkllmru0cEo
	 mhDhmBA6nEXGWFOMp8FXuLD+0qDbUbQrfKR5p7qLip8Yafk7QVGgLRtypmcLsUOQ7h
	 darLd5ijXzYwg==
Date: Sun, 31 Aug 2025 14:08:10 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page malloc.3
Message-ID: <oo2xa2kphi6to3ajqpmc7t7zkrk2vxyye7gtcl42c47p4p5hyt@3iooshty5ot3>
References: <aKsmS1f0DzFgPxS0@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tmqjhqjejb5fd2t5"
Content-Disposition: inline
In-Reply-To: <aKsmS1f0DzFgPxS0@meinfjell.helgefjelltest.de>


--tmqjhqjejb5fd2t5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page malloc.3
References: <aKsmS1f0DzFgPxS0@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmS1f0DzFgPxS0@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Aug 24, 2025 at 02:48:43PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    enough that =E2=86=92 enough, so that

Thanks; I've applied your suggestion.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D5765b190cc2e6fba6c12fdf4174aab6734cb2a72>
(at port 80.)


Cheers,
Alex

>=20
> "The behavior of I<realloc(p,\\ 0)> in glibc doesn't conform to any of C9=
9, "
> "C11, POSIX.1-2001, POSIX.1-2004, POSIX.1-2008, POSIX.1-2013, POSIX.1-201=
7, "
> "or POSIX.1-2024.  The C17 specification was changed to make it conformin=
g, "
> "but that specification made it impossible to write code that reliably "
> "determines if the input pointer is freed after I<realloc(p,\\ 0)>, and C=
23 "
> "changed it again to make this undefined behavior, acknowledging that the=
 C17 "
> "specification was broad enough that undefined behavior wasn't worse than=
 "
> "that."
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--tmqjhqjejb5fd2t5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi0OyoACgkQ64mZXMKQ
wqntXhAAgnxDY42Pzg3j3h/+tRATQGDHEIG+DMwYmw3l9THmE9qeYubmWMGqNHc/
af3LrCdS4QP9x3t/gRyQRLwY9Yvzm+4i54eu5DkeguQpHCJ1Xt5kMgmzSYp96rpT
oGxgtAW4pyjy6eLT2cD/j/fvm/43Wg2AMEAkyi5CvS19Fwxaih6HzU4ZA4pZKL/E
kgxD5vUGr2VoMjFwoKgdDeWA9okfj+7eaWFmHnQa89jakjdT4WCptFz5PYILOpBA
GIUZyBlHaYwgPXNG8l/Q3bb0sadOe+N9WXbnQ4+u8xLob33ljZJgrout+SnC/o7b
3M79cH2lKkHDAh/5lfQwUOCQLfaIpF3I5RxtFx+0Bq07jyLzfoFu0Qe7tG8/Z3jV
NzeSthjVMbj9QvvMBhZ/FbGYw2Vkatmj0C3fWbs445Z9EtBhGzoAef5rUI0UD9w1
7QieuIvnqj2514X0GzI3yec228p/wGr/bfxcT28inViFfVaxO2xiNkyyX7lJZS8k
GnVlnUwhSunSLtw1oRVjTUJLid5z3n0hh1qrskAdvdOW2R/wNb1MK7QdSvcB/etT
yhMH10DR7P3rqYSfS9vqQ0cRZQUMnSxD02HlvkF58SOS7j2d9QBvDzd5Ve49Qw1c
CEh76E6uGzAhKDpEKiWPEkz9g5DGEBGbn9ztyOBXLBSJU8lHV8k=
=0lhf
-----END PGP SIGNATURE-----

--tmqjhqjejb5fd2t5--

