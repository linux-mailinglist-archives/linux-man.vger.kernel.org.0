Return-Path: <linux-man+bounces-3792-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A0AB3DB62
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 09:47:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0CE8B1896526
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 07:48:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0F6C2EDD53;
	Mon,  1 Sep 2025 07:47:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QnSrpoXD"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D57B2EDD4D
	for <linux-man@vger.kernel.org>; Mon,  1 Sep 2025 07:47:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756712860; cv=none; b=Wa4vF2ixb9X6nN2afNyOG6ACJ4qcbIsHEKlaz6HqcCuCI3QWEZea6FkseeZcalxUgK7ew+aBmcP/Co/iT2K0VP02t2bb5LdLLQLDwp+1/BvVg8EDXoslpQEj8cNZdcyPv19nZGwTXRKnjXcwdZGEm5hzYcypYKk3wnDYzE7ZnHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756712860; c=relaxed/simple;
	bh=nLo8bMgLxba+vs41JEIPEoIEbyJwhDxParkQ5SqQCK8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kZ7WnLVkrO85emgF2SnyxQE7vxgmLwd+4jUxLRS/EkLKb+kjnHs/c0neCkDlEwxhfd8plWvzghjTKO5d6EN46qDvx0CtE+a9DdTK95/YoqeeXpwTXQkNfn4/7P0nNoSmjWn5Gs8pQ0Gu2oxuNSfV064We9C86FjNBd9uPKxHjQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QnSrpoXD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E1A5C4CEF0;
	Mon,  1 Sep 2025 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756712860;
	bh=nLo8bMgLxba+vs41JEIPEoIEbyJwhDxParkQ5SqQCK8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QnSrpoXDfdz/jxGBZIYhFCNoVizMu8Q9DxE5BxHysVQIZTWWfno8mREgoiPutppBN
	 YuF9D24ncY47hC0laZ2JvdpiYVEVHpqLha6tnd4qoavYfsNVtp90xwQO/R7EkSajZm
	 s0XUKI1DBmTnramcHxqzPQLlamt/2J8doNbSiAWV0jIIVHTPTddlsRVTmn8pU91wLS
	 Xut+WRyGx/DTNNcS7ven5Xp8Ow3x5JKnst5Ixxx6aQVgoxBjPcAIC3sAAFxUIlK/53
	 xTvXtppWi9ve2bZR0uclgnBcZLJUm83U77QNlEam/ohaICIWw/KjxJ1wkSFNsHLpXb
	 MVOqXnFqrC1eg==
Date: Mon, 1 Sep 2025 09:47:29 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page fma.3
Message-ID: <cydmigk4amlt62bjeircdfzgjzajlsoaw6pje6z5te7fu4a7bd@upahclev5v3s>
References: <aKsmR8KMxEjAmxGL@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lwdjuscbhaxtubsg"
Content-Disposition: inline
In-Reply-To: <aKsmR8KMxEjAmxGL@meinfjell.helgefjelltest.de>


--lwdjuscbhaxtubsg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page fma.3
References: <aKsmR8KMxEjAmxGL@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmR8KMxEjAmxGL@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Aug 24, 2025 at 02:48:39PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    According to above, a domain error also occurs when I<z> is a N=
aN?

According to what exactly?  I don't understand this report.


Have a lovely day!
Alex

> "Domain error: \\f[I]x * y + z\\fR, or \\f[I]x * y\\fR is invalid and \\f=
[I]z\\fR is not a NaN"
>=20
> "Domain error: I<x> * I<y> + I<z>, or I<x> * I<y> is invalid and I<z> is =
not a NaN"

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--lwdjuscbhaxtubsg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi1T4oACgkQ64mZXMKQ
wqntOA/9ErItnjmWRo6EZOgfGdavNTPWpUm1MWKxGjUmBitNPegHjBsGK0dkW6Nl
kMKfa1gARzzqPO59eZLq1Wei3vIwYzTPG54ZANfBsQCbGMYRc81solK3rwUE3/oD
jH/IfVflgtkuXQv7h5Etv/lXyZtp52CIWwEObvPa9VCsgvcRJS8StT7BSwm2W4C0
FdAMtnYw3dSP9sm0qI3VaJy8U2TWCp5edc6lDq1MhALS62IUp2bL6ww3LNCdvAZU
O4dD4tFmlt9vUwxpKTh7vyFh+3FR8xJxelzHrDQ4VhQ9TMF7bewbLBQkRVZxSN+r
DM42cFQagKT7LzHxjNVVrXPDbOG5+ehNf6Tp4ftHV7y1JLWRSzS2kiMujf02jS6O
F7zKQKXvb8e0w4+a9WhE/ZeJGGYGJcraxWEjguVm1qdvBaY22r6YoFv6HSI1DJBu
eYWa72fSUs2miiInz9JM3fv0PSZKmWgubBooeUvbbogtGWnQ+1CAm6H0ya162a2/
m+I3bTgODlc7BrygB69iN2Z7UApIjcayNKEgnI74XVgIzNPWF13Vr/tJYt4jKCUg
xTUwN+0PlWRkdFpbr/LmFibKXN5v9AAx5AYQ175xRPdDW2NJqr19v51O2bjWWVmA
ZpYF+WBV6335ImWn8AnfDcjshppnv0TKaMjsdN2P/TYsRt1zzL4=
=MoFX
-----END PGP SIGNATURE-----

--lwdjuscbhaxtubsg--

