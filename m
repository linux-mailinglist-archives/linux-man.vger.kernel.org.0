Return-Path: <linux-man+bounces-517-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD6887069E
	for <lists+linux-man@lfdr.de>; Mon,  4 Mar 2024 17:09:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A34F28C46F
	for <lists+linux-man@lfdr.de>; Mon,  4 Mar 2024 16:09:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41984482FF;
	Mon,  4 Mar 2024 16:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RIBHJRxY"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3960482EB
	for <linux-man@vger.kernel.org>; Mon,  4 Mar 2024 16:09:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709568592; cv=none; b=Ga0VKfYpYxCZ1bSRSu+iKE43G9sG1pSsAtIFfInGUE/VxpkzDR0vlYt6pcy58b4+sGQdfAzsevMGvrOv8a8QNXFI2EvLvVmJjWU9/8esjF/rBmUTvEGOvGJPsCHQb4+PSsm1fVHVzIfp11i0J2lTgq3JAPJm+Zt3wl5/uNtZEBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709568592; c=relaxed/simple;
	bh=RtgNIbWJBePiRODIhVuGXz+8a8CknxuKZkSoovK8/QQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DKyjNLZ4J/GI96XS+H6/j+bUdAzH3+cWjoe3lQeXMxBNpbpc24Zjlgy1EGRb211PPD2I0NJV7EufAXx9By3kAD0z74azv2KokDps70WyuN5WjtOHwdWUV6WOD4XwgnzLINLMY1EPQEwN45/C7uLmptt2gquFdIboeS1L9T1L7lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RIBHJRxY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC82EC43390;
	Mon,  4 Mar 2024 16:09:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709568591;
	bh=RtgNIbWJBePiRODIhVuGXz+8a8CknxuKZkSoovK8/QQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RIBHJRxYRKfILGc0lfqgzA7dmmE8Jd6IsUizp5rhawC00FArJ70eItegWvpV3VtiQ
	 /ZpBwK6Fx2aHDnioPWmNePuKlDchJOg22Biz727eTS0wvGvfIFHBVhIYTGuHufpLOP
	 Oilpxsx31pWrAUEbI93QcFWR3pxd5pbTOY4ooP1amOC9M/O7M1ow9/c29x0kWqx13t
	 XkYrrjyb7qpYcUUtmlHuhNxNt8wU5Xv55cA0kvTkmIzgv9o1wYYMQHvlMvnzzoUhPJ
	 NN438uENuYq/ygoEwmvqSLJuFs/C2UHTGB1+Mty6CHPf0KqL8EJj2nApYKpks1voHs
	 SRNZY+l359OZQ==
Date: Mon, 4 Mar 2024 17:09:47 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "Dmitry V. Levin" <ldv@altlinux.org>
Cc: Alexander Ofitserov <oficerovas@altlinux.org>,
	linux-man@vger.kernel.org, dutyrok@altlinux.org,
	kovalev@altlinux.org, "G. Branden Robinson" <branden@debian.org>,
	Stefan Puiu <stefan.puiu@gmail.com>
Subject: Re: [PATCH v3] delete_module.2: Update man to current syscall
 behaviour
Message-ID: <ZeXyS_yVEnVzCVdo@debian>
References: <20240226120856.21493-1-oficerovas@altlinux.org>
 <20240226185554.GA19542@altlinux.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kfJzxcLj070IiCdy"
Content-Disposition: inline
In-Reply-To: <20240226185554.GA19542@altlinux.org>


--kfJzxcLj070IiCdy
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 4 Mar 2024 17:09:47 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "Dmitry V. Levin" <ldv@altlinux.org>
Cc: Alexander Ofitserov <oficerovas@altlinux.org>,
	linux-man@vger.kernel.org, dutyrok@altlinux.org,
	kovalev@altlinux.org, "G. Branden Robinson" <branden@debian.org>,
	Stefan Puiu <stefan.puiu@gmail.com>
Subject: Re: [PATCH v3] delete_module.2: Update man to current syscall
 behaviour

Hi Alexander,

On Mon, Feb 26, 2024 at 08:55:54PM +0200, Dmitry V. Levin wrote:
> On Mon, Feb 26, 2024 at 03:08:56PM +0300, Alexander Ofitserov wrote:
> > Parameter O_NONBLOCK described in man doesn't exist anymore
> > in kernel versions 3.13+, which is quite old,
> > only O_TRUNC parameter present for current kernel version,
> > O_NONBLOCK does nothing.
> >=20
> > v2 -> v3:
> > subsection Linux 3.12 and earlier renamed to O_NONBLOCK
> > removed info about arguments for kernels 3.12 and earlier
> > added semantic newlines
> >=20
> > v1 -> v2:
> > added behaviour of syscall for kernel 3.12 and earlier
> > in history section
> > added commit hash to commit message
>=20
> Looks like the change of the commit message introduced in v2
> has been reverted.

As Dmitry said, the commit message doesn't show the Linux hash anymore.
Could you check that?

Have lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--kfJzxcLj070IiCdy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXl8ksACgkQnowa+77/
2zKE/g//ewnTixJRzYek7THTNs4xEO0EV9eZ7MduzoYbIVVRBCs54XqVXAP8U2kc
AHSSUlqYFr1wf7P1c6Yw7/8l/tdksH0pn5sxy7WGuSejXuF3ei3qgHZ/lCe7mU0p
2+iuWd0b8UYamgu23o6MJvy7rySAUeNQ7EV4QCMH+26U/3yo79Nx0kh9KShXDuKo
shu6AStr8LsualUwvCJmkCGNeIVRmCT/Nb3Vg8uDgJHKRiMFHIyjs74AY45yoYLI
rxAtx8hH0IvzSlu4O9KyH3mM5gnt9R9UX65Qel+MHejBWBh0hIeFIgc1nuz0PPBS
umdJ/BsAxeHaiaNwfFjhZc4i4wEnAlXy+i2ePYSk0dD+ShP/PSw4DZ0RsKeXzkjj
0PqkmaUMeBlZPEVEineGODAP4/N7C/QHs661Ebg10Gwlw6Q4ZlliaG410Mwk0PSP
+WNEjtBGZe6asI9pdnm0hj4PEakoQVgsLDtYSOmx61YbxwiozSI0qlaWiCtldLQ6
sTQz6cnk0ctzNN980w67cqF+aOh08TdZrBgi5CYXJiiNdr+By1oQfTkMDx4D59C8
0f/UmsWEJdqUhJdgDKRwPlbVS2RuD9GCv89z7Gq3i5eupHU45sWWAjD4sPrwOieR
Df2iP/tO/ScEr8nti2OjHDnWkbBSJAKEIUTj7qVRaswB74J231k=
=7/6z
-----END PGP SIGNATURE-----

--kfJzxcLj070IiCdy--

