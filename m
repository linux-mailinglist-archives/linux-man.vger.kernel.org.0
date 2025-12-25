Return-Path: <linux-man+bounces-4554-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 521DCCDDD5B
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 14:49:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D73CB300F9C3
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 13:49:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32F971E5B94;
	Thu, 25 Dec 2025 13:49:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xef0EuVy"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E65127E110
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 13:49:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766670567; cv=none; b=JLWK8ZaEpI9lZdqeUWDmUhFLmIt8JwkoZFilhm9wLxvg0E+F/W7stHNg5MZ5knerFr7FTUgzc/I7jpBtdAa+nm6Z5aMEI6tAnjTMR+Cix9W7AQyDLZr1y+3Updnml6Lo1rYlF7/JLYviA4rfUeYXiYTXvKpahWUFBqoCoNGWiSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766670567; c=relaxed/simple;
	bh=aiDlKC/I09fSzACwxXwEzEhoEQUkr+vIzHZNdHw6jiU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PjPlmv6lFrvIgWb+NmgpKNjiIm9rA+WFSWAm9PIfW/YZFvoqm95stiMeUZ7FJTeQ9jkAC7OBuD7/SQXOeys/K6AbKvqFWsA0EaBnYBS3h93LDHSycfhi/08BJO9RnHAoSuIQETAEiOwl3PKH8s59XU/eaWPEcZdRS7w0n0mf47Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xef0EuVy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9DFBCC4CEF1;
	Thu, 25 Dec 2025 13:49:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766670566;
	bh=aiDlKC/I09fSzACwxXwEzEhoEQUkr+vIzHZNdHw6jiU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Xef0EuVyNJsk4iCkgqUG5YL2sRnRb1WOM83NWPtlwPD3OZgDGKHSv3ngZmZe2R2L7
	 i+IjPKEPjGLPeqwZxasuE/FtaZvbtcxkUWB1aiU4tMFCP+yDoXEE/YILCAO5aJf8Rm
	 Zlyqljo0j7jPFngCioTglZ913cBqyay/lWrN+HNpYfxfK9UMd8K5cqKREq1/wB4Jp/
	 TpHPKnvbL6bBggZH0SPiwK8I3q9WY83kf2YfV6PkYEsBjvQiqy2yFpnjD88YHBiNxy
	 NY3x7nwQG6xhgvlP0ZmVXSB8mOHgcwVarEKXbXE0LP8ZyIv/oYG7Ejs39dve+88aKx
	 wyCCnNrhESPUQ==
Date: Thu, 25 Dec 2025 14:49:23 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  PR_SET_PTRACER.2const
Message-ID: <aU1A1nItvZiTB0Vc@devuan>
References: <aUv631U4dmX0wzKb@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ujf5577tv5v3cm7q"
Content-Disposition: inline
In-Reply-To: <aUv631U4dmX0wzKb@meinfjell.helgefjelltest.de>


--ujf5577tv5v3cm7q
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  PR_SET_PTRACER.2const
Message-ID: <aU1A1nItvZiTB0Vc@devuan>
References: <aUv631U4dmX0wzKb@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUv631U4dmX0wzKb@meinfjell.helgefjelltest.de>

On Wed, Dec 24, 2025 at 02:38:23PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:     Replace comma by fullstop (in SEE ALSO!)
>=20
> "B<prctl>(2),"

I've decided to just remove the comma.  Thanks!

--=20
<https://www.alejandro-colomar.es>

--ujf5577tv5v3cm7q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlNQOMACgkQ64mZXMKQ
wqmImg/9GoZzCODwl9ZhdNAxLifpsVeQ95rCo6xyuCOUkJmCtHd+UhpeyiYpLQZ3
nKOYwSL/DYvHANdjkdzAaX9oK3eg9V69YZUji0Cx/WyX9i/L6gxHDATmPuAZC4tM
/RFiujV0OlGd/j2+wnLEo0fwtCztBtQVnebdJtISQvUeS3ZGIPoXPyDgqIKuWoBt
v4VW9ZPORRH1ebCj/MmaZ/UxJBWqSwW0i+riQADpBe2EEWL+xlYgTgNHgmd/rIAM
XTvnPdS5w6MLzgyIrSkJq4pub2OJy64tYQzVPt5AnfOSjUvXN+2TtANiEjqZ38NI
w5wLHS6TiMlUmlWpqjB7KceXqVT18+yoW82WQ81uUFeH5sERWo0znkqWgOs38mnU
cK3gtBDJ3wPge8yo70+IgqkQI5XyGJvHPBPIsS3NOe8JtSdQQz3458m01cw4Qbrq
NtirXJuFLRWYDm2QFqLATULc1SpE6hgIeB2t8Kmzx1n9B75BJvdJ6nh3yTvcYVlM
Db3ItMekDKGCdu1yLSpNZ9Nn21pxEz/vFenqUD1oDG1ZV5PQklDEjoNYOAjGKoDK
jT0E/em6FAsDrQHXKqFA30PouKGmrVFH5/fvb0+vgYZ3KNvbd0HW4qeGzFb6yZQR
8c716Pz0hVMHRMTSskNgUO+vuwjo37TS+xOBMu6aHkgzisGS6VE=
=sPfR
-----END PGP SIGNATURE-----

--ujf5577tv5v3cm7q--

