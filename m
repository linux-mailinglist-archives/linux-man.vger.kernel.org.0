Return-Path: <linux-man+bounces-3768-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 136E9B3D1B7
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 11:49:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 87764188B474
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 09:49:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E37D7205E25;
	Sun, 31 Aug 2025 09:49:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bzt2LkI5"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A27A535957
	for <linux-man@vger.kernel.org>; Sun, 31 Aug 2025 09:49:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756633747; cv=none; b=IuJgmQ8jiIENBcMUDWIjPMV3Z4PKOMA8TuxJZFdMx3rgBkG615cXvtGvnCUNuBQlYZCqmfbRG7Ct41vl+lY5M40Y7XWQ3mpcZ1I4KJiNYD3ELha4Jd4Z9b03Fb5wH8V2SQR6OGe8cit5phQgO4RfBSCX08qI24pKQ/c9i5iAjsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756633747; c=relaxed/simple;
	bh=cdKqpEkwpomOGno5OEGb4jRhq62vLE0T8Kqbdvv7UJ4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nVwnbeUFlCxg+Q0yqVvO2i2C5aMpTqfsOCodXjg1HmIKLZQthd0L096/4UEABWJzwJtsR6eqOYPSwfQx16JnKr8zCLBpJZlMo22Y4YYPoAqitgE7C3fmKc7rYF3FT26nkk3NFOE9gWSAOUurilgaT9XrpY6uJuvsD980H7nfyeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bzt2LkI5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E062AC4CEED;
	Sun, 31 Aug 2025 09:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756633747;
	bh=cdKqpEkwpomOGno5OEGb4jRhq62vLE0T8Kqbdvv7UJ4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Bzt2LkI5TUqfQgGAQl1hfShcRnsOQgTfwKmpX6kMRp3UpCZwZ4u+3Wnj7oOkUeSmH
	 sjnXdxbqoHB5g1eaII4WOj8RPeFFTn3yyIWHkZ5yrfbGRObUwOs+4sq2TcgwVHBwd/
	 bPZeFlGMWXU5x3Cp95fqS2JAJbrOHchEcU+Mp8SiiuaDJeqyweRd0NPWz543G9T3df
	 89BUW3lH2I7cdk7/BfPvmak49H1jrZ80R+Do5AOiqTM+u7VKBtyaVRYgnjPmKridfz
	 A9Cu16F506aqrfYK8rNnU8aKzWVKecdBFiHd9EoMY6ojnxJ79t//PWNur4A4y11ngj
	 adsewFucUm0mQ==
Date: Sun, 31 Aug 2025 11:49:00 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page resolver.3
Message-ID: <f3svjcgi7nte3hkxke7vgpbywkbotlkg5zkk3mkb2ygjpmatvk@24qrnpyoyieb>
References: <aKsmQBB8CZKAhQvH@meinfjell.helgefjelltest.de>
 <x25fz5cv4jolv37nec5btlbyu7d2ciulxwnb5bipgpzgorehrs@qflc77gpwpne>
 <aKs8ipbVrLo_fFC-@meinfjell.helgefjelltest.de>
 <qiswqsy2zq4yxmkblwuw3zxj2ev3utg525bfhst2sthvpecvyb@enfc6paekaj6>
 <aKyGmOPnZmlZhcgh@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="q6emleoraafgdys4"
Content-Disposition: inline
In-Reply-To: <aKyGmOPnZmlZhcgh@meinfjell.helgefjelltest.de>


--q6emleoraafgdys4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page resolver.3
References: <aKsmQBB8CZKAhQvH@meinfjell.helgefjelltest.de>
 <x25fz5cv4jolv37nec5btlbyu7d2ciulxwnb5bipgpzgorehrs@qflc77gpwpne>
 <aKs8ipbVrLo_fFC-@meinfjell.helgefjelltest.de>
 <qiswqsy2zq4yxmkblwuw3zxj2ev3utg525bfhst2sthvpecvyb@enfc6paekaj6>
 <aKyGmOPnZmlZhcgh@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKyGmOPnZmlZhcgh@meinfjell.helgefjelltest.de>

Hi Helge,

On Mon, Aug 25, 2025 at 03:51:52PM +0000, Helge Kreutzmann wrote:
> Hello Alejandro,
> thanks for the verbose explanation.
>=20
> On (hoepfully) finale question:
> This new formatting is not (yet?) reflected in man-pages(7)?a

I have applied a patch documenting this.  Thanks for the report!


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--q6emleoraafgdys4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi0GowACgkQ64mZXMKQ
wqk+2hAAuo9FZrIyGi4Fi5/3AKyqWtNR22GmfKd8Q6h9RhoSwowaMWqsXIzJ5B+x
Mf0o+bLbFjR3zbZOwIwhBpBWYOJ8VVcsm5OMhUNBj2RfSwyZNXKLMEZsQUVPRstD
21R71bGdsSEorO1oJWh7IFQU2+kesA9624ivq/eUVTD8w9WvS49+EqbVfmZUf+c7
9ggAMKquxgkSY7vl78UmQzGq4j39316d+x76OfOBTrxCwriv3l8FoyuCZO6U4GX/
dIMy+MEym3OeWFKmk0zq3Sh/8hrNsfHehsHOCCn+fNn+j9ZHGB8D2y1UZl+lHsMA
rmsqIvuYJwvJvHL4NkgLzM/zvyqLU2ri2TvlccITSF8jGPoJLCStZ3qwyuG+/oy/
YwGcX5BuRN0bq61dka9LMyWa3vriOLbOVmnrLa9HzVn9VIw6kKOhCoxcN6TorRlk
KBH/LC76csYfFsk1ykkn01MLT4GbT3JFqUXZ7qMkFHlQjtQ6Yya9ON+ZSkTgw9ZF
Sit7Ms8Wcq3VN3KxCgjgowqiP8T7sHmFgufGh+ramtgCy13LmCXL02Fb88Lzblfh
VQTqfCcgabmIt3yB1KLT7ZHXu41fBymvvyx+aPvXUyA6Kyy4aV8cDxLtUfXMz+w5
f09vbDxKjMipOQvTBqfs4VqUp9wv4RozNBi5lBdoEpoiLgv/+2M=
=+Q5s
-----END PGP SIGNATURE-----

--q6emleoraafgdys4--

