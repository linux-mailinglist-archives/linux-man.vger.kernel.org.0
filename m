Return-Path: <linux-man+bounces-3787-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CE06BB3D470
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 18:47:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A08916F013
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 16:47:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 394082701BD;
	Sun, 31 Aug 2025 16:47:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZKxrxGx"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC6B426CE39
	for <linux-man@vger.kernel.org>; Sun, 31 Aug 2025 16:47:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756658847; cv=none; b=dNR/Jtr/SnlgWyqjDcahn/SjCTs/pPO2hHhWoPdg+BLygQySHdUbd7kfB03DJehqtT7Zkxz6L8YO8D5eiTvfH0VLy0HPouJUOYRU4W7jyQK1NvPiuDl7t/7UTiUxc9lgMktWdba3IHMvZ4ypJusjEkAs74QvF/ipZsRSm+FugOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756658847; c=relaxed/simple;
	bh=VdG65iq8/Y/Oiro/X+sdtwAT2oashLvSe17/zV+TYQE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KE2GxkKaXmZ9vRSFg0UuP8aVHkF7ypBNRz3xWQ04uyML3FvAAi9ujn0ofs4pZiU0ZLokjH2JuqOJIm1G9JJ7D4ASRebpiA+qRaW+nXlvlDTBuQWlBExKTJkFkGC2Mh9IHf0hgxsiQN1pCNgS6nTPE9JG1/RkU7IHXM/4OULFz50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZKxrxGx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 860B9C4CEED;
	Sun, 31 Aug 2025 16:47:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756658846;
	bh=VdG65iq8/Y/Oiro/X+sdtwAT2oashLvSe17/zV+TYQE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IZKxrxGxu+aWeWeDP+6hRtuZnMjctbm1UVc88uel9VGcwCJMd9TroY+zShhzKTI7a
	 3N5ZYLj//zD06NIFiwzGdXYPQMaqNoo4a6U5gMlMFxHH8aWOA5Y7KTBE5K2ihfqvp1
	 z4kfPdyf/lGUor4E8EmNtJIa2NUNsePrClSE66U/AnzRqcatXHtBD0tTPUDosor6C3
	 CZ5lzTk8oh1QAD87xubH4R2otuyMUweSUvf0Ivue9hKUF8lBsxa7Qz8hZJmbQ45Mzo
	 0hJFoyBJRbNnMjfylOaY2Om/N3Zy2aI0rVkx9AxjgaGIacvVWpN/O/bjsyMonGy731
	 jctB0BKm/PzeQ==
Date: Sun, 31 Aug 2025 18:47:21 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page gethostbyname.3
Message-ID: <dk6xu5uvxogh2ylep7yx3wdxebxbwrci7s7jlygylykoxs6jbv@3bmauzqzdnmi>
References: <aKsmSFzbvWX7IQQp@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="novbtwtireeifbvz"
Content-Disposition: inline
In-Reply-To: <aKsmSFzbvWX7IQQp@meinfjell.helgefjelltest.de>


--novbtwtireeifbvz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page gethostbyname.3
References: <aKsmSFzbvWX7IQQp@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmSFzbvWX7IQQp@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Aug 24, 2025 at 02:48:40PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    size I<len> =E2=86=92 size I<size>

Thanks!  I've applied a fix:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Daa88bcfabc52b7d4ef52a8e5a4be0260676d81bc>
(at port 80.)


Cheers,
Alex

>=20
> "The B<gethostbyaddr>()  function returns a structure of type I<hostent> =
for "
> "the given host address I<addr> of size I<len> and address type I<type>. =
 "
> "Valid address types are B<AF_INET> and B<AF_INET6> (defined in I<E<lt>sy=
s/"
> "socket.hE<gt>>).  The host address argument is a pointer to a struct of =
a "
> "type depending on the address type, for example a I<struct\\ in_addr\\ *=
> "
> "(probably obtained via a call to B<inet_addr>(3))  for address type "
> "B<AF_INET>."
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--novbtwtireeifbvz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi0fJgACgkQ64mZXMKQ
wqmSnBAAucRy606V+Dg/vGWdhhPTs1Ooy4p7u12FTc6dyp607tPgOgXx8sOs3bNX
ahmyUTE/Llk2d/Cz6aDa9m9AiFy0kwTGDaKDr5ujqmi/59tCpDDDZ66kn2fSJ+Dn
O2lHIy3XMI8r+b1sP1qQ4BeulzEpHsrrixinTXASV/yc9TEp040Oa1u2vOIsMJQz
ETXKymhLmoSgFKYgKgPccc9P/90AugNR4C7wPe6Vb57oNxKDJ+msR2KakHGd3jX6
ndwOc+qGhs21yC3LyXIbUjNuQIm/diFnqJX6gDntZeIjpwrUcZjT8o3Xr6/EN2Xz
4bkyJAupniOP/cxvEcRtvwOu+THjn9vJ3AjsYhKMbAjjwz+//mN7DX33lU/MT5oF
RrJTfIoWVh2njhdbOeb758aIYBQ28qH7iYzecV/N3mVh7wrW6wotWtB9pAqFezIN
Shs/eyq9Lal3H/DDoF3iW0dej2dBUKz058xvajn/Sys10mWM07yz9VaAbO+ReRz/
I7RmtvfOSvwVjsBl/OYLcMvgWK00SYFj13Vvvp5KBNPlLNWHZqJcruVAYK8ZI0a4
qrGoeJabHcGeEVCiv7Ka/2aIrWvgQzM2+xuv2TbQLw3zn8ermGJGb5g188Q0f/dX
tjeAuaTHB3voVhFShRre9NvvUUtR3kCHYboWQQoGvRMtQBMENl0=
=UULG
-----END PGP SIGNATURE-----

--novbtwtireeifbvz--

