Return-Path: <linux-man+bounces-4544-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA11CDDCEF
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 14:24:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 42EF4300769A
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 13:24:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9009B31AAA9;
	Thu, 25 Dec 2025 13:22:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ki9SQuNi"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12824207A38
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 13:22:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766668978; cv=none; b=FkoTO0ll0UmqVlohfPpQlziJizIgAnubTu0MGzO8r8ar2tFGA5iGhPLhvDIEwBrynj3smsNfjXulxmzbXURMRdAn5bvztOyh1LUlW3gdqn33My1B9Iz6QUSTl3Bab6azKDAQCLVOuq2fzEKkpoOhvpqsQXNS5YdWBBxx8gWfnZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766668978; c=relaxed/simple;
	bh=MmEYSxCChEW0WQXoEZmbM8rD22GHlLIQWLvORuqhB9c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HbiUZjXm87uRanzwNOeVLbMAzZDCTdU5CsH/YraDE4wT3jcWXUepFOASVbrL98cJYRxgdT1KS6W4ljDU1CFBSzHU1uLQeNHTI6if/Tb7eMe8sxM+NiBd3SPwU+278AVniH0IJZyo2ms1/ZTDJjgNeJ83UsvOBqpn6diy7EsFY4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ki9SQuNi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EB3DC4CEF1;
	Thu, 25 Dec 2025 13:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766668977;
	bh=MmEYSxCChEW0WQXoEZmbM8rD22GHlLIQWLvORuqhB9c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ki9SQuNipqGWVueXAj3Exzhz4311f+u6ROoGKhRMje5ggfqAR+V5jbGRN5XBRw6z5
	 tqXNr07y8zf3820aHuSJbEzxajG+yclA4VafIWc01bgRcfGzKKY3OToKoMhN7w6ksW
	 rb/1LrmdifhdmmG8BPNX9B+voMUzLlVLe1ur8fDFC5jQAElNv5x7vjEHrUK8kcnEuJ
	 SZoPP2nphjONhSkN8A2lxItHagua0g6x/sf96TD26xjg7jT5Bb2bU3XcekL7UIkzek
	 df2zqnFk+7NltuJ6VQS0tD7fwv/t27mI9tqT8fD5C1iwVoeZU1dbjZRprWUCTvoiZm
	 Glescp/S/CgMA==
Date: Thu, 25 Dec 2025 14:22:54 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org, 
	branden@debian.org
Subject: Re: Issue in man page getpt.3
Message-ID: <aU06lfjIZExCr8ti@devuan>
References: <aUv64tskHbjzCiMI@meinfjell.helgefjelltest.de>
 <aU05v_HKTPPwb71k@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wzv4bfpoenstuc4i"
Content-Disposition: inline
In-Reply-To: <aU05v_HKTPPwb71k@devuan>


--wzv4bfpoenstuc4i
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org, 
	branden@debian.org
Subject: Re: Issue in man page getpt.3
Message-ID: <aU06lfjIZExCr8ti@devuan>
References: <aUv64tskHbjzCiMI@meinfjell.helgefjelltest.de>
 <aU05v_HKTPPwb71k@devuan>
MIME-Version: 1.0
In-Reply-To: <aU05v_HKTPPwb71k@devuan>

On Thu, Dec 25, 2025 at 02:20:39PM +0100, Alejandro Colomar wrote:
> Hi Helge,
>=20
> On Wed, Dec 24, 2025 at 02:38:26PM +0000, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    multiplexor =E2=86=92 multiplexer
>=20
> I see both used:
>=20
> 	$ grep -rho multiplex.r man/ | sort| uniq -c
> 	      4 multiplexer
> 	      4 multiplexor
>=20
> Which one should we prefer, and why?

A reason for 'e' is that __NR_multiplexer uses 'e'.

>=20
> I don't know if any one is more correct than the other, as I'm not
> a native English speaker.
>=20
>=20
> Have a lovely day!
> Alex
>=20
> >=20
> > "B<getpt>()  opens a new pseudoterminal device and returns a file descr=
iptor "
> > "that refers to that device.  It is equivalent to opening the pseudoter=
minal "
> > "multiplexor device"
> >=20
> > "on Linux systems, though the pseudoterminal multiplexor device is loca=
ted "
> > "elsewhere on some systems that use the GNU C library."
>=20
> --=20
> <https://www.alejandro-colomar.es>



--=20
<https://www.alejandro-colomar.es>

--wzv4bfpoenstuc4i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlNOq0ACgkQ64mZXMKQ
wqnR0xAAhV/b0ATOwvCVEsMQR/fq8UhiLEUW4hU7hdMCRgtfG4G1eUeQKvtl7fle
0PLQLMNls0eJeIqw4EfJlyuI9GcufdbitdyQd4mkowOV76aqR34mv7xB7eYNIp3x
mvaBX2065xdNFkLMorXY/+grmnT2NLVu1mekV2qLIXIH5nnj4ZZW9ySy7U3GC8gF
Ved05jILbs3aNlPUNxPP06pAk0bQHZa6ii3zq1txZ688PYWEkomJPaB6nIy6D/Va
zQ9t/+hZNmcFJznCQD/M1MTAx+E2CMN9vh/kMt1s595UuToW19yvEshlXq/eI2+b
XKUASvLLRLd9PMoUhapVUJvTRatcslinQ1jYFbmc7g7/RIh1h+H65xH5BZmNLCO0
oOJuDGz0X2QgLivFNfLAkexJMBxcV/ZX/RO+5er6TrzQONKG1M/6gS4xxxs1fSGC
ceCOVkzo1HLxJvXvdHCC7hi5bZgd2T3b3p4az0ZRX8VRfJj1iZy+AqayQQBchb/h
kZ5u9C270b8P+oBoGdQe5AUs7vwuvTmgYjFJBN07sQ7m8m02/1T8IYysqek21eQm
tlMHy+o6jHrBvIl5ppOusnq2bFQaMvhbnT6vqw5IwirKUHYNNbTj8xWtEMpVwXwt
lssNE+1Yw1SdpRdiZ0G0HZIAFdumoZ6yKC5a/3h1IXmK9/5CLOs=
=BvU0
-----END PGP SIGNATURE-----

--wzv4bfpoenstuc4i--

