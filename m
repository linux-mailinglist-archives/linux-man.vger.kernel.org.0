Return-Path: <linux-man+bounces-3698-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8955DB3325E
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 21:29:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 644C7201E9F
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 19:29:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34059221F00;
	Sun, 24 Aug 2025 19:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMiY3Gnx"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E64DCAD4B
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 19:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756063795; cv=none; b=t7QxhVILCX6BHcMi4cl5kkSdmK38Bs+CAd7QU8WAsQqvg0oi0IU0nwOJXRYqWYxga4/36RlBfuQPYE1Koljk814zvs+5jH4vA5aIroQbRxl0vCJkDqlp5UcM2T4q0e8U50blOSaxS33yfSYw1WG+k5jyoruupMmKki5xQJOsfUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756063795; c=relaxed/simple;
	bh=9n3itdH9xTAcw47N4pJYDL1R5DVjQ/o0XDVob7vkzfk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pnjECtgs4LMS/5doXYsB3EW/QCZbN4G09NgoFErXx/Cll2fYDRM33D7rck3lreL5d8xVkMKFjzxK2FsTzZVbHnSWK1S1j5GydDcQfg/DajJE/bUwMCrSrm7VzB8oFg303vvIJVkR/S+htbCLTSw5K2W0zRtY7bzXHs2tIY0XppE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMiY3Gnx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CC1FC4CEEB;
	Sun, 24 Aug 2025 19:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756063794;
	bh=9n3itdH9xTAcw47N4pJYDL1R5DVjQ/o0XDVob7vkzfk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cMiY3GnxZYhN0JSGebaoSxxB+SuWStm3kKKHTs3jV6ekKiyNIv3hqOOiWAIVfd8HO
	 NmKcaG/mBkoucEgx5K9oEhD646I1E92VHGm6B5MJTY4rA0i/faWE0ne1Cl+kiAXVGs
	 2jsiJBWlK7jNwhK0MQPxt40I6J3/lX9ziXgJJ/iS7hEPZMR+LAg9Y0ZPM37qAGSdBA
	 7XO3raRFkgbnZAEzNkcBYdx/Emzsy11bzhfDItrTOddcw4HT8CYIFzRC7nJ36xCp34
	 ZHfpqhvJsVfjKHooRHuneOuCMeaYcYthCj730IFh7jzVt5EYA4iXi+zaPalnXc0QNl
	 eTUp/mnbho8Fw==
Date: Sun, 24 Aug 2025 21:29:50 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page PR_GET_TSC.2const
Message-ID: <6f4j2hew47rgcofrc57a6lhzfqdr72mlrdm3es3hel5e7xzmc4@gyt5zhzltvr5>
References: <aKsmTylO-YgrkKzL@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wmhhm5dpyb6mahxl"
Content-Disposition: inline
In-Reply-To: <aKsmTylO-YgrkKzL@meinfjell.helgefjelltest.de>


--wmhhm5dpyb6mahxl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page PR_GET_TSC.2const
References: <aKsmTylO-YgrkKzL@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmTylO-YgrkKzL@meinfjell.helgefjelltest.de>

On Sun, Aug 24, 2025 at 02:48:47PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    I<arg2> has not been mentioned in this page, ist it <flag>?
>=20
> "I<arg2> is an invalid address."

Fixed.  Thanks!


--=20
<https://www.alejandro-colomar.es/>

--wmhhm5dpyb6mahxl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmiraC0ACgkQ64mZXMKQ
wqkWqA//WzAqJWjIculvFcP7tdoG4GsiFAILZSAMkwEWMcp/xXzFS9e7Z4m+8OZZ
qQvsB/7cz9uV+B2O6VwFImhlTBMMSfcLFD7qwM0AgnB42vqoJWIbyqyaqf5XV66q
mzi6La9l8w/2VaMAtM8uG8X50TUgUWXhVqo4llK6s0zXdNcOF6bKgif/U94dqfmJ
H7vPKjriCYGsyNj2NpeVVzy1Ah3QPqJT1yeSK9c69zDEL8DcZY6qDL/FCCKAg0ki
BAfj+Ezz9JeFlrOSvFxcG7nFr/n02In8+cFCb4Fxb8MiCFjfoi2a6XgkJkRGpaJC
3c83oj0g9HSPAFAJdKbXbh8k7q2a7T8bUluk/Dmt1GnF8DTV6aoT7c0eA9y6Kukg
hNpnul3vCQCrIY5u1CP1a8h6yg3ZleW2A4N4TJJuedyxSt1bx5FqulN6PyQmRRHC
oqv478XYzo1yLEEsKzDG7KGX39qv1l3V57Yhx5Hcbt6oGTw5ntL0xqNP+CF6fqMk
HRtp7VpNaD9IPszHm6sQZutfM0a/mxv2uzdBNiRvBk1StjACAWfR+akbP3/ow0NC
BIImhRbv9jGalw17OrShYKAOvIQJeYVIT+iG/zuTvqadgeFMuVRsx1XQTb5Yyjux
aUDzpP94tk0yctlD3aiuRMe3wdPeCoAbDoOsEVTAdWMHWlx27Gk=
=g00H
-----END PGP SIGNATURE-----

--wmhhm5dpyb6mahxl--

