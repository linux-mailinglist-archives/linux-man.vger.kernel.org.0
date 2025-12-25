Return-Path: <linux-man+bounces-4569-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A41CDE1EB
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 22:20:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4E7713008EAC
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 21:20:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86B1D2741C0;
	Thu, 25 Dec 2025 21:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pzTQOYiw"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 453872AE90
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 21:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766697621; cv=none; b=ZrTeDzQKIcxupB3rPhHj6ZK+AJw5mVmb9GTtWbaMx5WniCNGCfvHTQrSvc3k1PDn/uVLeRHvI43b3JrmGOiD+EnRBIdFe+rieDWQ5gw7AqsZy2ovFjKTuvGjx5C/stKnyb/O99Ulek4TD6jXNNAYfDgqk/WP8yNiaG+uYsLrLhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766697621; c=relaxed/simple;
	bh=XjNHrs9EXxhRzFFJMsnlrMTFOdDa+D/dLqVSr8PTgYI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QYDc2j9/wFNpDaN/6uspLbGNL/ZWJxxULbPZOHeMp55hYEQNUJ7wKBupQ4/cYtqV8H2E2Nsi28GXWda90xM76rW/3edTlUNW6AZk0jAIbHtIddYvmS9Q33XiQMHFIK1DOwpa0Yp1kAQ6NyYdw8HULohLD3grPq3POiaBxRo6FJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pzTQOYiw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8311BC4CEF7;
	Thu, 25 Dec 2025 21:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766697620;
	bh=XjNHrs9EXxhRzFFJMsnlrMTFOdDa+D/dLqVSr8PTgYI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pzTQOYiw1CBOZyg1n/TJz5nJYbuNymEMSUnxffOd96nJVrl5peD72W65whej4oHHJ
	 liEylJFX/wgi4HVVNTdVeb1NCo0kCs5MgBcXO9LR8EfSAD8e3vTFwFlrG6caHY3FoS
	 reJkd+XZC885xzhkElVcWhRnXzbPdYW9fLZCdNKJA/UlyYVjufiHi41otWsMjcolNu
	 Xg+OkOGvP4dKhQ0BfjdQRWJCxRDLaGPtz1yAQpjJCNScB2ufwD6PuZgld7366Ru5fY
	 wCD8dRLD2dqEoHgfgsUkavjCrCN5OGkV4nmMRbkjQZfoZNdIB5+TDgAqWiDG5rHpkd
	 bK7pULAXMIhZA==
Date: Thu, 25 Dec 2025 22:20:17 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com, 
	linux-man@vger.kernel.org, branden@debian.org
Subject: Re: Issue in man page getpt.3
Message-ID: <aU2ptq23PUlRC8d5@devuan>
References: <aUv64tskHbjzCiMI@meinfjell.helgefjelltest.de>
 <aU05v_HKTPPwb71k@devuan>
 <aU06lfjIZExCr8ti@devuan>
 <20251225210533.3xqjtrwkwsl27zbg@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="liex5k53yqgwr7fe"
Content-Disposition: inline
In-Reply-To: <20251225210533.3xqjtrwkwsl27zbg@illithid>


--liex5k53yqgwr7fe
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com, 
	linux-man@vger.kernel.org, branden@debian.org
Subject: Re: Issue in man page getpt.3
Message-ID: <aU2ptq23PUlRC8d5@devuan>
References: <aUv64tskHbjzCiMI@meinfjell.helgefjelltest.de>
 <aU05v_HKTPPwb71k@devuan>
 <aU06lfjIZExCr8ti@devuan>
 <20251225210533.3xqjtrwkwsl27zbg@illithid>
MIME-Version: 1.0
In-Reply-To: <20251225210533.3xqjtrwkwsl27zbg@illithid>

Hi Branden,

On Thu, Dec 25, 2025 at 03:05:33PM -0600, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2025-12-25T14:22:54+0100, Alejandro Colomar wrote:
> > On Thu, Dec 25, 2025 at 02:20:39PM +0100, Alejandro Colomar wrote:
> > > On Wed, Dec 24, 2025 at 02:38:26PM +0000, Helge Kreutzmann wrote:
> > > > Without further ado, the following was found:
> > > >=20
> > > > Issue:    multiplexor =E2=86=92 multiplexer
> > >=20
> > > I see both used:
> > >=20
> > > 	$ grep -rho multiplex.r man/ | sort| uniq -c
> > > 	      4 multiplexer
> > > 	      4 multiplexor
> > >=20
> > > Which one should we prefer, and why?
> >=20
> > A reason for 'e' is that __NR_multiplexer uses 'e'.
>=20
> That's the best reason to choose 'e', and the one I'd select.

Agree.  Thanks!

	commit 011bcb9c453cbf6490f7678e8d2f880acf2026f7 (HEAD -> contrib)
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Thu Dec 25 22:15:32 2025 +0100

	    man/: Unify spelling of 'multiplexer'
	   =20
	    Both 'o' and 'e' are used in the manual pages:
	   =20
		    $ grep -rho multiplex.r man/ | sort| uniq -c
			  4 multiplexer
			  4 multiplexor
	   =20
	    Let's stick to 'e', for consistency with __NR_multiplexer.
	   =20
	    Reported-by: Helge Kreutzmann <debian@helgefjell.de>
	    Acked-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

>=20
> The question of usage of -or or -er is a messy one in English, whether
> in Commonwealth or Yankee forms.[1][2]
>=20
> (If we're being even more picky, -trix further spices the mix.[3])

:-)

>=20
> Regards,
> Branden
>=20
> [1] https://separatedbyacommonlanguage.blogspot.com/2007/10/agentive-suff=
ixes-er-and-or-and-little.html
> [2] https://ianjamesparsley.wordpress.com/2023/02/17/the-weirdness-of-age=
nt-nouns/
> [3] https://www.cjr.org/language_corner/womens_suffixes.php

Thanks!


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>

--liex5k53yqgwr7fe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlNqpEACgkQ64mZXMKQ
wqmtKRAAqHLCPHXBw73zKlv1CiBzu7NiDJyuWkKFvYQz0qAPieaTbFkZ2UzGmWlC
rpCwRKd+V0bUGRqx+O/TfmHthK1dUdbyVipcuiS96QrHQDPT1/43HP6aZZVlTA/9
ICDnPAq2xk/OFD4fmlVS4NFBGWvJbH4xSHE3ApCDn1yDoqThXN/V+vvZbm3SbIuB
Bi+ZJCJh0bnpi+0vzcO/io5tBliX4EdV4seIu3wV5img1ac1Rsq3sfJdfJ6jrIb0
BYQJszNckQZdActb5x5TCE9jmPzSc5vlGJREzPO+NccrT+4JHGS8U9hP60bK4Dqg
IoQJerCQZSWzXF2H+TQq4MLuGyJggl4FOSHR/94aNAWtbVUwpVF9bbqBkv7eAK1P
7uksIlfjskjRoSJj9xNtfgnyxoPFDhZh4yW4BQgSkqSXkWvNSbiBgYIKxckQLgYe
Kdyy6Hrow4b7pc2d139hUQzm6wobFXJ3lK/hrEMJAzdtunPZLkXM4NdZbU7wYbKM
NYjPZEYPQ8XCaH3v8LkZ9jcPv+aH2lvgJKYOSJbH0NC4w51fDALbq+LKULSNgEH1
dcOC3dXNVrzQD+ZWDrRFLmcC7MPDlwp5ruwVqNwVDaWRvOa2lvt3pJLopQ3cWRBw
bG1fF4C80kNZC8FuRPG6IwhfM+2ct4Tp/tIhuispoqXKJRnzYWQ=
=pJcd
-----END PGP SIGNATURE-----

--liex5k53yqgwr7fe--

