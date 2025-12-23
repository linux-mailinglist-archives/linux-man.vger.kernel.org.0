Return-Path: <linux-man+bounces-4474-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 31024CD95D6
	for <lists+linux-man@lfdr.de>; Tue, 23 Dec 2025 13:51:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 22B8530217A6
	for <lists+linux-man@lfdr.de>; Tue, 23 Dec 2025 12:51:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A6EB340A4A;
	Tue, 23 Dec 2025 12:45:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmv4FNr/"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A52E340285
	for <linux-man@vger.kernel.org>; Tue, 23 Dec 2025 12:44:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766493900; cv=none; b=JtnT3SyDwTSjcS2nY6Efg79OWKFcNQTQ0dN9kyI0mXzc8iJWcbLqpcmVOrnfbFigaF+UeXWJ1Otgge6Yh9dWsb/LKU1v1TkPqzIPSV4QYpQE63CkLOiL8It9j6Mhju76H8brLF4i+2osW/Y2hLfcanAmODby13VGEzfl4QVEI3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766493900; c=relaxed/simple;
	bh=yDVXI4YnQ8z5ot/NzD0m8pbhCtU5V5DB4SjaKtzeLi8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Tht/7Ynp6VGezhd+jSwksV9a5IZquM84olRyNZoumfCSHMpvZikGd6RTvRfpgyClILHkvtCQYDRCKAKv4sQnhSjWBfA4ZkA+CT//cFDJgQfemHvtg9HNgfYOjLsGIFBrbGpErKv2XOUZpWdfir+vKttbDqPsdX0T6q7AE+qsLW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmv4FNr/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6C13C113D0;
	Tue, 23 Dec 2025 12:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766493899;
	bh=yDVXI4YnQ8z5ot/NzD0m8pbhCtU5V5DB4SjaKtzeLi8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hmv4FNr/exJJA8I7l+rjApvNEWQhMI7gsLZEpupnvi1gSkOKK2FU94hyISMVzwcGG
	 WgjJK1S1/5FOKFr8EqBFTIZLUVyDZZFeRlOpmWQoeGX+WoDmgO9gUWSvl2j+NeJ0fr
	 t+fLGo2n5vK9eS6m/cU14NfNo52GllduWL8vfwgY/JhxgeoOj0sRQUcNRx0Vb4leMp
	 5b+wXFQy0AlVa1lpAPityDrJcdG4IK7rFkojIeF0RnuF0sCYEdwcb0ggp65UtTNzn/
	 Iwj2UvIW1FUVNXACCkX+0TQQFYRR11EBhbtrPf/f4b8mMo8OLJ8fTXqcpLlICq1SXm
	 i37xJhjCdLAPQ==
Date: Tue, 23 Dec 2025 13:44:56 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>, 
	"collin.funk1@gmail.com" <collin.funk1@gmail.com>
Subject: Re: Outdated standards(7) page
Message-ID: <aUqOqhkw45_MrglL@devuan>
References: <I8K8HXS7TxdvIdzhsS5M03Fz5hnQp28BkAR-9d82UTEMdcPpNA767OxJ0_VRN3dHo8GBgGnprip2EsvlRAAKWC8NAzTn6A-ZMD2Eeci24ls=@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="x3xx5wgu5kb2oftn"
Content-Disposition: inline
In-Reply-To: <I8K8HXS7TxdvIdzhsS5M03Fz5hnQp28BkAR-9d82UTEMdcPpNA767OxJ0_VRN3dHo8GBgGnprip2EsvlRAAKWC8NAzTn6A-ZMD2Eeci24ls=@pm.me>


--x3xx5wgu5kb2oftn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>, 
	"collin.funk1@gmail.com" <collin.funk1@gmail.com>
Subject: Re: Outdated standards(7) page
Message-ID: <aUqOqhkw45_MrglL@devuan>
References: <I8K8HXS7TxdvIdzhsS5M03Fz5hnQp28BkAR-9d82UTEMdcPpNA767OxJ0_VRN3dHo8GBgGnprip2EsvlRAAKWC8NAzTn6A-ZMD2Eeci24ls=@pm.me>
MIME-Version: 1.0
In-Reply-To: <I8K8HXS7TxdvIdzhsS5M03Fz5hnQp28BkAR-9d82UTEMdcPpNA767OxJ0_VRN3dHo8GBgGnprip2EsvlRAAKWC8NAzTn6A-ZMD2Eeci24ls=@pm.me>

Hi Seth,

On Tue, Dec 23, 2025 at 04:23:45AM +0000, Seth McDonald wrote:
> Hi Alex,
>=20
> After reading Collin's reply, I realised the standards(7) man page does
> not yet include the C17, C23, POSIX.1-2024, or SUSv5 standards. And
> given that the man pages are currently being updated to specify
> conformance to these newer standards, they should certainly be included
> in standards(7) for reference.
>=20
> I'm busy going through the functions' history sections, so just consider
> this a bug report for standards(7). I've also CC'd Collin since they
> prompted this find.

Thanks!  I'll have a look at that page.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--x3xx5wgu5kb2oftn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlKjsgACgkQ64mZXMKQ
wqlC7w/9HW2gCA61a6lU6MeKdwjyCFGRaJqFvVRKf288rHcC8bgUdYkcXNoWoB3y
FpZqzx6aEz4zHP+GV5iRdrP0ifbBWz7GZQJdvyBJyPVsMrP5O8RYslHl487GYTNa
Fzu0YRVJnL4lObJ6nhxCGoFow1mVypy0bneSYqYDgfMhJUHhcKrPmhUsjcFZJvMO
ufp+B7TubVKNdKzzxrx8t4cDLoiRAbUEHYKwAr5g/8vcs1YRh9a05TUDndUleGR3
gtmL5GaMxFR0WD6IyKhyFbIVtv7THqGDGmJ114rSHz9z3rfiez4NOqJrxK4dplbp
29IZU4bgdYekeSo+gFZESq+r3wHPHzCieQJbMsrBctXcyZH/38bRzFZk/GJmAcko
0nrmyLLIpzrm8bnNK+rNK8s9dXtmh8XfzDR8pXdb1CZXJrglRuzL392hEQEipv42
d1wsRIeAb2LC8x8a2yBzQvvYTeY6msXNAH84alEE2XVdQ36DVDQk//sg6cyQIfvK
jBnj9ThNgzaDqNguAXSNmnd27ZCM1o8jaMryK5z3/xKQSfjAkBITgx6DoPhV6IcN
WiB+aL5pKFbH8KsMQ6MuLGyZShSr00E224JggpgO27ablzmJWrMG9UPGLQm656Sy
ySmOhVIYWbN8QQUqZuA8Yp/siMQlGOiL8P1KxbnaTM7IX66B3g8=
=b6PE
-----END PGP SIGNATURE-----

--x3xx5wgu5kb2oftn--

