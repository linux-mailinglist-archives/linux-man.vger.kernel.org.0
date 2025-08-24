Return-Path: <linux-man+bounces-3699-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 40493B3325F
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 21:30:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 26575188E0A7
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 19:31:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29D791F09A3;
	Sun, 24 Aug 2025 19:30:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ThAdtP2m"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC97A11185
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 19:30:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756063845; cv=none; b=BPcUvjCXWfQFVechJYXidnW9OpKB+ruGiWjinvacTSWFc9ocnakvgS0O39U+j27uQQaUW4OjFnDdCofVezPhfDzVphQ71Fpb8BRWnro3IQ3KhaG/Bh9Gb1oR3M4dld1yVQaIHRov8Cw6Wf/DTEfd0sZdVLXAkWHpINNiWG2aSeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756063845; c=relaxed/simple;
	bh=Zli2Fhl2KAGcVOHenK6pWnjD18V5D0wX0B2pixKVDQI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ubb1ivLoWHwwcUaxOYQwnHUjCbgv8yz2eSfxCjDX/TM8cNvnp3pP+NQYqecUtewCYR8gRIcArAbMo1wq/UeYQNt5py+Br4eNJpnPhzl3AkjyIfZRHwQmggaYrU6CHyfjkRoNm3rEcaG81tNmkL0E27LdVPRwEJBtScGG8YbEbAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ThAdtP2m; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1AC0C4CEEB;
	Sun, 24 Aug 2025 19:30:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756063845;
	bh=Zli2Fhl2KAGcVOHenK6pWnjD18V5D0wX0B2pixKVDQI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ThAdtP2mjQq+ZBLnsXAfBGFT5/1m1n6eihadE0BWz1LOi2CMiRv+j0ghgNvsG9mPS
	 8lG2PUm3UB2YD1EksoSmpwgIRReJkFizDT6yaZTJVjhVvjltj8DVX+wi7epLCUe4jD
	 z2BLxDhszbUZ2hwnabnd9KAu3sSytayx/3m0YKX20h33h7lUcGOVmHEyNwdnl2H68v
	 gULE7VnO59/UNa1KdYgF3FeRXXxlJAsvi1zvBuG1yP/3tx/E35RLrgZDCzKXGPj+rO
	 uphYYoeKBVdMe8ev9OGyBYlfF5b+HhBe1pb4AGOGLYBoTOUVlTweCjrRTg67yDN1dO
	 BKQwuMRFCDiug==
Date: Sun, 24 Aug 2025 21:30:41 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page pivot_root.2
Message-ID: <wjn4oomdomv37jl6njfp5dfjeotytxgwq3cp2vyjeqmni6mome@cp55zzskteex>
References: <aKsmTgut2boYJqiN@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lvvjybthw5li322x"
Content-Disposition: inline
In-Reply-To: <aKsmTgut2boYJqiN@meinfjell.helgefjelltest.de>


--lvvjybthw5li322x
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page pivot_root.2
References: <aKsmTgut2boYJqiN@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmTgut2boYJqiN@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Aug 24, 2025 at 02:48:46PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    I<chdir(\"/\")> =E2=86=92 B<chdir(\"/\")>

As in the other cases, this is an expression, and thus goes entirely in
italics.


Cheers,
Alex

>=20
> "B<pivot_root>()  changes the root directory and the current working "
> "directory of each process or thread in the same mount namespace to "
> "I<new_root> if they point to the old root directory.  (See also NOTES.) =
 On "
> "the other hand, B<pivot_root>()  does not change the caller's current "
> "working directory (unless it is on the old root directory), and thus it "
> "should be followed by a I<chdir(\"/\")> call."

--=20
<https://www.alejandro-colomar.es/>

--lvvjybthw5li322x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmiraGAACgkQ64mZXMKQ
wqkzWA//YlB5VhxCVzJ2od75OzWsnQ3q7nwUw3Y5e3TS2e+nMN2He2QOYx90TZXo
eHSghEZ++isXz3B3PH63Gxs6p0SprUz//pJCPiD57/k16ZKN7xU1RS2S6myAkZeo
a27efE+Yvyi84V8BtjRep7ktNhibXEgWqV9N/cH4ifuSN8awlRz4qeL+Ed85kaiO
PQyHfcZmGIAUkukk4odu0E7qHUa1oMCiBspwSUCBs2LsoqmvPaqzA+Rwo78BwI5D
5oa7KPlnQiQ8t5rpI8NK5RxgcLqUyJz9CQWSCU2dgP69eHf3VPuj80SJtk+kzN2W
PY0iNVdOLLjwaTro5Vk9afPbDUA+Jso+EhtxSYxTXTl3LOMXzpvGOhdv8QOvSRnN
pVfL04BnYom6DI455Yttns1DW76Rrnl19jVHyWVzyq66DpgmJpTW3Sew2FQMcfr4
zdbUNSzuCsiRXJOCA2Z6kZ9Ljduoc5OcmtI51xsyC2SJXfdwx6MXVYfmaLFSjs9j
k6vK71B6rT/+YlLAZ4c+s8tKl/8NHrSuXhNjpAXsWircePi+PZ9SrNsRjDvqLOfU
tdp4ZV1XGOAdlxfSXnk1aljGu7lTjLQdJ8de/s41GuxqMvRg/Irvec9XJmhjCi4U
VKDjJlujy90KoClRVAjIJBpbUwXTnvop4P6I41JLNqVWDYEUWIw=
=onJG
-----END PGP SIGNATURE-----

--lvvjybthw5li322x--

