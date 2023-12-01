Return-Path: <linux-man+bounces-197-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 038D7800014
	for <lists+linux-man@lfdr.de>; Fri,  1 Dec 2023 01:15:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6398CB20F92
	for <lists+linux-man@lfdr.de>; Fri,  1 Dec 2023 00:15:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A9674695;
	Fri,  1 Dec 2023 00:15:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QNRY4pS5"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEED468A
	for <linux-man@vger.kernel.org>; Fri,  1 Dec 2023 00:15:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF8D9C433C7;
	Fri,  1 Dec 2023 00:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701389701;
	bh=w07uMZb6YNmOVT9re8skDeo1ZkNQ3HMOQz0AcrL1KSc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QNRY4pS5nl6ObzAVvIMozTQQkGqa2aPnOkziNcAaRu400+JHoWAiqezIqwG2r2iEM
	 AFV5aRFxv/kPyRQoF0yvDcP8kQydryTAydjvuXhOTXSqS6d6rNWuNO5oHymZ2tbNU/
	 Yf764JKXWC+4CtYSiRy+UrGjmapkVy/BU+772nauW0g5XXegYWyPIZ0grl76n9YipS
	 dt8K48hZJ8bykB9PWRq7ZtUrmIGjFUB09m6s7Rbl+y6JjRnti9zcPbVAPNH9VCjIyc
	 m/lqnKG+tLvoIZ3BL7pN0GzsI5a0dz5+PjAAzuDT3mvKVbZxt1oQQt+spE00B/fpb9
	 zija0RMunCY6A==
Date: Fri, 1 Dec 2023 01:14:58 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org
Subject: Re: Optimize script for generating LinuxManBook.pdf
Message-ID: <ZWklguznkCz6pdr8@debian>
References: <ZV4XNnNlv8OK1B1m@debian>
 <ZV_OXhw7V6Vk1HBR@debian>
 <ZWCNHM9qQnK96ksZ@debian>
 <17198161.Vt6cx1TxTY@pip>
 <ZWkO4qPC4BxkwBNm@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sGnzczPQplV+e09o"
Content-Disposition: inline
In-Reply-To: <ZWkO4qPC4BxkwBNm@debian>


--sGnzczPQplV+e09o
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 1 Dec 2023 01:14:58 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org
Subject: Re: Optimize script for generating LinuxManBook.pdf

Hi Deri,

On Thu, Nov 30, 2023 at 11:38:18PM +0100, Alejandro Colomar wrote:
> > It replaces the complete LinuxManBook directory and the executable is n=
ow=20
> > called BuildLinuxMan2.pl.
>=20
> I'd prefer if the huge groff code would go in a separate file.  Would
> that make sense?

I've applied a few tweaks to the script you sent before committing it.
The performance is similar, and it's less of a change to the current
code.

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D0e64299d4dd0df90ea52b3fe6777e5ebfb2484da>

I think we should be able to cut half a second or so if we add a
BuildSec() function so that we don't block the first page until the
entire sort is done.  And it would be also more readable.  Please check.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--sGnzczPQplV+e09o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVpJYIACgkQnowa+77/
2zKMZg/+KJgA4z0Q7lVAxZVm9alRX9Ukw+oqe4x8xlQL0pNqV8tUZ4TsBcKSz+VZ
b90Qt2BpAikqGQ9uIBDHI89wQm5gsd3kkzJD2lzCusypqlRIY4IEjw55EYC31/i3
uyPEeL1r0QwY+qCe13e+FSOMRjEHwAiJzaKo5e/hmiIuwnFG9IPRvs/c8egNFz69
bNd55LmkCj7kq1/vodcnhhVO+AU0czY+PINML+kQGFzfFB1sZGtYzBM0biVfwZbx
+sTeQcKlnEQvviztr+7E954BMRrPSiroR36vmlXwTciZMe1I7qqsHatPKqm4jLxR
rb3oiMSMUf0KWRuBIiyMZjyaJvBTHJuMua7EG4najRHO9MY4sLIQvPGjBPb0dhaU
4V6ZRkSqr3+Jxu/0vK/sGCEQ3QpARMJ7hGA0r7oUBvtfkPpVX991Ydin6DO3Ulg8
o3pBlaxONLX6UCJLHftjT6o28BkSALEM+WrWb2wVK1NJhj4ueS9txodJRU4o/TMJ
WkqY1LPYXcCjaDEhwLAVAnp00saAlaz6ESphg8WRRi7dl5EbW6YDVoG7FP60nT/v
qV8Dx8PIxASLeFkT07t1KPdSJqVt4H50e/0xMEMlHNZNT4NGJ6DCSCt6IrOxsJWK
jhFNKYZ5EJFlDBJxmbAGL4n1uNPIzgtBS2TMJqHNkzat5U7kG0Y=
=kN3A
-----END PGP SIGNATURE-----

--sGnzczPQplV+e09o--

