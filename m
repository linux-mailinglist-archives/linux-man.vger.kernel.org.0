Return-Path: <linux-man+bounces-3691-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF6FB33245
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 21:10:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3C2A83A6FFA
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 19:10:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8CC2221F00;
	Sun, 24 Aug 2025 19:09:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iaSb/F0y"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 862EA14A0B5
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 19:09:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756062597; cv=none; b=diWHGUOIZbZ/RAmFqo7fbLMX0tivXeBdv3ErQFg7H2khxO1tmaXwxj6egO0DU0emFGpLBbqHHip+rwnQSIyJ7yfQl8S5KLpOTuIKzFa8B6l4m/vGf54adahRq/Jr4kpomGnLW1UOCpGH+Vz+gxOT9lplu+ExezcvmzwtbGiIg8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756062597; c=relaxed/simple;
	bh=WjZ5Y8pdDKDC8e4ZvREYmD4CMSDYiamCxN17owYb1E4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nDT31+1l2sYT7leh44cgMXzXhVw6rjEoAqaQKeFWn18pGnqeykEvKeVc1xab29AfDP6DiBE0kxPwO80l3CW6swndSulwoGQaIyiUGUZlgR0HkpmFwvkVrGvcuZzoT6G95AGxmSEtfEfkIDpR+EBWo+IZVtpfQ//8+M+festymoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iaSb/F0y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FDF2C4CEEB;
	Sun, 24 Aug 2025 19:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756062597;
	bh=WjZ5Y8pdDKDC8e4ZvREYmD4CMSDYiamCxN17owYb1E4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iaSb/F0yQzlMZb3wrobanu+OCgw6PeqEygwN6/COgPzqAtKqO7X3rLOX4InK3X7Pt
	 iSc2lQSOhxxeChgCY/qzkf+oBHcxh/vUP/5d+tGfsfwWKeCWfkFDJ1YaycDoyCDlbI
	 T3bE/TW2x5j8WcxuXBF/ZIqfU7chg7EUVtwYuWbZDvEvu6iz3HMRkHYKIZndiEkAl9
	 JktjiE4lEfIXWw7LMaKmTwqv9XtuDN0pJBhZXrK+4KqTdvEHASz8X9HqD7G5P8E5U7
	 nSLE/6pfnSaScRoLy5cEkYhdR2L8krByOthF5WPv18D0b4Mwr70/v8LTABPV5etp4v
	 E0RzbaCGuUTeA==
Date: Sun, 24 Aug 2025 21:09:52 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page readlink.2
Message-ID: <7dfk6dgmyuslen2sqb326fmp5tgdz4rzm3nodqz273zoh44aub@fipo7ik7hj4v>
References: <aKsmU4aCX_S2TaJZ@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tgr2necycmuist4k"
Content-Disposition: inline
In-Reply-To: <aKsmU4aCX_S2TaJZ@meinfjell.helgefjelltest.de>


--tgr2necycmuist4k
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page readlink.2
References: <aKsmU4aCX_S2TaJZ@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmU4aCX_S2TaJZ@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Aug 24, 2025 at 02:48:51PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    What does "like B<readlink>()" refer to? This is the man page o=
f readlink(2)

It refers to the readlink() system call.  It's in the description of the
readlinkat() system call, which is in the same page, so one refers to
the other.


Have a lovely night!
Alex

>=20
> "If I<path> is relative and I<dirfd> is the special value B<AT_FDCWD>, th=
en "
> "I<path> is interpreted relative to the current working directory of the "
> "calling process (like B<readlink>())."

--=20
<https://www.alejandro-colomar.es/>

--tgr2necycmuist4k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmirY38ACgkQ64mZXMKQ
wqnClBAAvamVAOFS3jB1Udv9YHE5sDZu3yosFDAHPNka14WqhVBOMx4LDIfGgMtr
l6oGk5wXjaKh6+pmxYxYnjBEDwK4fsTzbyp9CNrlla4RTJOmUQkMrTTTT85UHVkG
YYnGEqS5AHG3ZyPEKqpS9nUPupPEXFaBNJaDVD4QC5BM4ORJanFU9kla2xa7HDV2
PtE9Cz24pHX4BMXWJZJXyYYbk9LWTRJncFYCypzd9lMnzyYuD3cM/Ai3/aZrsH6c
s4DpK6dBceQIvaGCNV88e/yMxuDhMs9kq5YgnOuyB9L/J3LM7raQ/gYDMyiQx0hv
sRywkT5YHWf3x0WPRiCxv3lFBRVT7TS1Fux1IevaQFZ0tGO+JZzTrvXLaFlvFcvj
LkYhGzXfASg2kmmbt4eZrizSD6DaSqxHia7SPS3Svio1sJ5F9HFc+g1Wyf9z5l29
sgu47Td3kvBjcDBjJOhKNsuDzHD0ouookO9zuZN+crY3RK/vNJH8UYZb6IZmBwi9
yZ65sqbXeBL1GGMKjB9Jg9Jd7zpP7VcUmqc9DcrHTAr9IY/wHZ6XrdizEcVmBI50
GZ9UolM4QbFmKm0hTl9f4fWQiHoucP8I5J9BAcps2zT17jwZYbtNykAcVNNSYVkZ
h6F07pPc7DHvHiuHHqH9ccbM5SWnryBzc2L2yMy6hXxs5Qoht4k=
=5N6F
-----END PGP SIGNATURE-----

--tgr2necycmuist4k--

