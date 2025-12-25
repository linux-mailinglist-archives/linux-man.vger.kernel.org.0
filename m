Return-Path: <linux-man+bounces-4568-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E89D2CDE1E4
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 22:11:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 725E03008E96
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 21:11:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D16082877CF;
	Thu, 25 Dec 2025 21:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="COMmUYNh"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E99627E05F
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 21:10:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766697049; cv=none; b=XHfWiWI49VP4p22zg09nSgdW50YsO+5KDYedKjNikdl92sUUadgpb3Y0Y8rE8Zz+eTS9dFEh++FTBRpl8IwhRVWe/6a/JL3Rm5q1TpJpjPvNk03yABJDudLBugsqdxfxk/9vGWWeH9k3nSdwYunqZ5VVbCpqdaVEjjRw7AuorXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766697049; c=relaxed/simple;
	bh=PWOqWDSjb2qjwwI1A2Z4BtsHcO71zDbhDicUyPJfWss=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jHI6O0R/dGpzbXMdmvQvBUM2eBwFnW5WNGI2JEZjTYe6xjfxbedCJCpq1whYbF29w7mRIwC1qSSGHDmoRKVVZMmtRjWX9uLvOLZMxlbzrEg+HwbM2DKkHdKCirJa9jRljJq88m30rNyyn9tmVG/BQSKfelS57I3bQdkeXUaZ26Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=COMmUYNh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FA1FC4CEF1;
	Thu, 25 Dec 2025 21:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766697048;
	bh=PWOqWDSjb2qjwwI1A2Z4BtsHcO71zDbhDicUyPJfWss=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=COMmUYNhOIHKwNXCkmPh9wEigVHUXqTTChv5EFSIg3QBUS05rnHRphQguNtIqKu0N
	 HFpWDeCFInmnc2vEfeXBOOCJ9OAArDGyu9Y/QnHZEb5n/pe+v6pL7aNoEfemBv/dwQ
	 OmFPCt7elDuBBE7c0qOwKkgFq0Gr2oYkeX+5AjcmkubyVlw4RFdTnM3RIUJvE47T0l
	 kaGi7haMnZksem8yiDgyT6LsHBQKGztsdbbnc9POq1RlHxNQxUetesymzB9xSUknFR
	 o0yFu69AYx5gf8STQI81ylegpAGUt30ff6GqlxSE9f28gU/1RL4QtQ4xLBwjbe8coK
	 CVMuSzVMa7dug==
Date: Thu, 25 Dec 2025 22:10:44 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page mbsinit.3
Message-ID: <aU2n3-6mfIhTNmmE@devuan>
References: <aUv63cs-jMDji_PZ@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="v5xt32wkvfarsvlx"
Content-Disposition: inline
In-Reply-To: <aUv63cs-jMDji_PZ@meinfjell.helgefjelltest.de>


--v5xt32wkvfarsvlx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page mbsinit.3
Message-ID: <aU2n3-6mfIhTNmmE@devuan>
References: <aUv63cs-jMDji_PZ@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUv63cs-jMDji_PZ@meinfjell.helgefjelltest.de>

Hi Helge,

On Wed, Dec 24, 2025 at 02:38:21PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    state =E2=86=92 shift state?

Fixed; thanks!


Cheers,
Alex

>=20
> "The function B<mbsinit>()  tests whether I<*ps> corresponds to an initia=
l "
> "state."
>=20
> "B<mbsinit>()  returns nonzero if I<*ps> is an initial state, or if I<ps>=
 is "
> "NULL.  Otherwise, it returns 0."
>=20

--=20
<https://www.alejandro-colomar.es>

--v5xt32wkvfarsvlx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlNqFQACgkQ64mZXMKQ
wqlOVg//S5Skfp+5GMnmfrGDot+YkkynQ7lgpKTL1mG0m0/if4D74vs2zYzhLNG+
wjZJeFwYX6i9WmRi+NDTHtAs8g00Y9GLxQp5bjEgfjC/p0TreLJ3r1tx0KjBSe4l
BauI8h/hnZ8HIqH1frK3DItTjB8dEBGmEehuugwCcjRM4mVh4lMAMau3o3PB4IWk
V3UfbDXKxbBC3+3AyIjCQxxr29SjGfXCHtfYsZg4jXZ/vSAMcDPx5GhpS0PEw2Zc
VDGLnhjYdK6A6A+YxhS7K9peStMCtSYV78wnO7L1nAcgMq2MzlB81l+HbVcFkK/w
N3ctFO9Loy9UNAM2kkZ8eWS8FPQ1R9qPAIJrsJkDQD2RIpLF24a7eDdg53DvGGXR
o6XZmycoZLRMapGln6MznvS/e9b1j+XPWZANxCp1yu7rPBoMmAUJwNHnsP8gGn1b
pwQmWbZqc0kKzInA/j6aBDKtO/q87QMmP0sXAFlArhXJsmnyGCjyxIP4cfPEj2QQ
atkyXCHGd6KpqkNZk4u3fFTpY/OswidVOi5IuWQBuCeK2Fqcq3F/O+Y5AUJYAoBW
X6VAXbej23a74W/lUH4U1gnjeRQdVuEQZ+e0XVgVqnx2N1fkqnRLFuJa6C7NjeEX
wa0h0vvYkWbd0SfQ+Nn80dVBIjDBRoZmbIOP58kDj2iZd6KnR1c=
=IvKw
-----END PGP SIGNATURE-----

--v5xt32wkvfarsvlx--

