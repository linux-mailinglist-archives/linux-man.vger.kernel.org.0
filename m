Return-Path: <linux-man+bounces-3770-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BC306B3D27F
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 13:33:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 87C0217C9E0
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 11:33:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1318255F27;
	Sun, 31 Aug 2025 11:33:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQB7oywj"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F552253B40
	for <linux-man@vger.kernel.org>; Sun, 31 Aug 2025 11:33:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756640032; cv=none; b=NclCOeMxOU+k8ZT6wJPRccMIAIkAfr2Zh+DEun6N+e2yAnxVl/i8T/zR99TLj1+r3DOLnM6lj7/37sGHQrDLNlk+61ry5dsJiydE9HEyTn5hJunBxgfgs4O5KW0/xSn4j7zXZ7Bzhy93qRzxeOE9jAh5hjns7mTEdFB+GAW6+4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756640032; c=relaxed/simple;
	bh=Js+j3LHlmqPKoNOu6o1I71gHRF7cQOKgdZsNMPMzxoo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HyPUZgijepeu3vaeIEkxRXtF43oVRAZEcNYp3kPOnYvILdZyodPyazH4J7vWtwPsZeGCVFUjkpIowupp8m0K5jk72KPCEr6hG4X/7QwgeM26Uw/ctL+Y0H/d89XPP6nl9+vWy6//nXvA5zV42f1Sqm2eiqRyyQdI5vnvf6PMp/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQB7oywj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 725F8C4CEED;
	Sun, 31 Aug 2025 11:33:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756640031;
	bh=Js+j3LHlmqPKoNOu6o1I71gHRF7cQOKgdZsNMPMzxoo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fQB7oywjHNPiKg2Wvhxg1e8GhxEFV6iskDkff5IfNI8eoT1FvrRJ4py4jEqJpgqLg
	 KwVfF/p//uN96IqlzXSribA6tUro/fedcLwqPbDXaY+pPLUUY8BSdyTtRrVrUQRnOz
	 S1DtYXqf56Ve2bIAk20QU839OMj4FsPczDErH2UptWNBLle+JrHSbmry/Y8BOrFZ1g
	 RqTvU9DGTxOhNbdw7vznoiuSH31cLuDNO6+fpYp4k+V7+82HI3gXP9LO5dpzbqgkDN
	 +sqFRJuHASRPKSh/0e5ByaNwG4NMgRGDakUwJMowOEiW87k0+JOyTY6fbABhi3T7Zr
	 NtnCTXOoAS/jA==
Date: Sun, 31 Aug 2025 13:33:46 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page motd.5
Message-ID: <nvvtzeq3cy3q6kyaynyldwahfhnkkddezrjwu44mvuabuo3ow4@os4w2g2436q5>
References: <aKsmTShE9A4C9Zof@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4mgxomuofaqcfmbp"
Content-Disposition: inline
In-Reply-To: <aKsmTShE9A4C9Zof@meinfjell.helgefjelltest.de>


--4mgxomuofaqcfmbp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page motd.5
References: <aKsmTShE9A4C9Zof@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmTShE9A4C9Zof@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Aug 24, 2025 at 02:48:45PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    double space before "after"

I can't see that.  Can you please check?


Cheers,
Alex

>=20
> "The contents of I</etc/motd> are displayed by B<login>(1)  after a "
> "successful login but just before it executes the login shell."

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--4mgxomuofaqcfmbp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi0MxoACgkQ64mZXMKQ
wqlnzg//cqwImxynplHS04Hx5oBVXwA8uJdL7rEsXsUcnjQhWERS6aUBgjWXIpN0
E6r/MTnegvUeiaTNa9Ru2U9OMn8KnaCUZIAV8eq7StsF+6YeZIRgBw6xYDcmKiRU
dRdPy7K37GoR3DNMMngBE3nc0L42LKd/MBW0Gka/b+bpzzNGIimfohYcVJk89MTp
NUSvhoTdaS+GkaNdLJ+9zHdCd5ItI2JmYSAKo6EbO0+gY3m2KgAFg5CeKU6xcUZB
cBo+3K43Z4wy5GHBgT+oXFGRANtxM3a0gxYZwonw7M4AvEYzh23PeargQdSGPl3T
OlU8IJ+KEyJpEivBQF7eBHj5Ouq7srn64PUbDe4zhqU75V+gqIgSWgo1ryMJLQER
9YIUmWg+KdufHayOvCNgNmbGr7y71bF0OgCgBfm9pPPL1sXhTSBzEaRHW/Apt/Hj
KcKluEhcz6KZXJpkTiK4SZVDAw5IPJpMVvQT9EKyh6Ej65KKWsevLENMfVflNcM8
Brc3YYD9iRMuBHWjBLduKfDOW26WvU3Hre9VP78TT0OJinXRoDKDNt6lYURnHnlN
15LnsgKmiQSh83Ho/zLDkFawcsM1yq2LZqaGf6g3f8mtbzQ2oUVIaTpRkQvC6bX4
RfUhG/PI0IMaMUmFdpTf2usr6w3cwfQ0+SrRgGaeU98zk28ymQw=
=q/UY
-----END PGP SIGNATURE-----

--4mgxomuofaqcfmbp--

