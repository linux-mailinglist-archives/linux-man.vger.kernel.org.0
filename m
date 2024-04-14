Return-Path: <linux-man+bounces-755-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D8F8A4337
	for <lists+linux-man@lfdr.de>; Sun, 14 Apr 2024 16:50:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CD23A1C2097A
	for <lists+linux-man@lfdr.de>; Sun, 14 Apr 2024 14:50:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45F3D134421;
	Sun, 14 Apr 2024 14:50:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NoYudz4Q"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07033364BF
	for <linux-man@vger.kernel.org>; Sun, 14 Apr 2024 14:50:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713106229; cv=none; b=dH5FVJcB4imYQnpQl+HUBDNjQ0x4tEfsZCWoNsIeqdJQ6tsCgW1SDy8q7WOIBfhxl+rx9+WtXIjgHRy04enaWdJeMoqokMT78RcYQLNBZwPQBZTOx2Tl11LgWXycb5GdW0j57aY8D3CC8EOdumuTp42rQ4l6BGx6Xq3C5x2Gc+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713106229; c=relaxed/simple;
	bh=5cO68axqPRFR1buq3Z4vff7xBrzK6boQOLQZnf4t41Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nq+xKvUxXSBHVaZ6rKGcJ5QDlneTEd5GfvBFASQUSxc8MFO1GCivjle/do4VzxO8+YW/PoUVIeMh1ySkjpbMGme73oFJAiKzLECN1HRqn0YLUyOrCE/iEWQ0s6bskwk9vaQdGKNcNiLKfMik9XA8ae4pNZ1FSrArIAN0zeIPsj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NoYudz4Q; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08EBDC072AA;
	Sun, 14 Apr 2024 14:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713106228;
	bh=5cO68axqPRFR1buq3Z4vff7xBrzK6boQOLQZnf4t41Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NoYudz4QVxsvy/OEcc0u/bS27APtVp456VlBv5aB8tEDdFCQIbUnA12kN9uYLHZPL
	 t5XWu8cj1f0QQmDu/zz45XCpa0AFSY/bvmNfjwrrU9cQRmrA+bCfxQpx5pzMepR3Bc
	 KRi1mPiu6mCEBSah9V200x6j90m+aFKIE5C3Scmn3Qo9I5Ivlnp6YB+h/Jfcv/92n/
	 eRALeQi9IL6b9dlNclOZ9354whWJgZn07BK3KSS7WW0se2IQe6qghKG0RuL7KiV43k
	 n8FF8uE5hPKMgUVb8yutIcvA8998QYfJGKozUbAgzzYe81x/3QBgVgOkLyKJb2w/w2
	 WjpAgQDqqHF5A==
Date: Sun, 14 Apr 2024 16:50:25 +0200
From: Alejandro Colomar <alx@kernel.org>
To: branden@debian.org
Cc: Deri James <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book
Message-ID: <ZhvtMb-G1duk_d0K@debian>
References: <Zhu_-FE5sl3vSu1w@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BKdykOyf/A/3pnxs"
Content-Disposition: inline
In-Reply-To: <Zhu_-FE5sl3vSu1w@debian>


--BKdykOyf/A/3pnxs
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 14 Apr 2024 16:50:25 +0200
From: Alejandro Colomar <alx@kernel.org>
To: branden@debian.org
Cc: Deri James <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book

Hi Branden,

On Sun, Apr 14, 2024 at 01:37:15PM +0200, Alejandro Colomar wrote:
> The makefile target was recently renamed from build-book to
> build-pdf-book (for consistency reasons).
>=20
> I also reorganized the files to put them inside the build system.  Here
> are now the files most relevant for generating the book:
>=20
> 	$ find \
> 		share/mk/configure/build-depends/texlive-fonts-extra/ \
> 		share/mk/build/fonts/ \
> 		share/mk/build/pdf/book/ \
> 		-type f;
> 	share/mk/configure/build-depends/texlive-fonts-extra/Tinos.pfb.mk
> 	share/mk/build/fonts/_.mk
> 	share/mk/build/fonts/TINOR
> 	share/mk/build/fonts/tinos.mk
> 	share/mk/build/pdf/book/_.mk
> 	share/mk/build/pdf/book/prepare.pl
> 	share/mk/build/pdf/book/front.roff
> 	share/mk/build/pdf/book/an.tmac

Branden, could you list all files in groff.git that are similarly
responsible for the generation of your book, so I can compare?

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--BKdykOyf/A/3pnxs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYb7TEACgkQnowa+77/
2zLKvBAAogBrwxvNfa0k533XvPz8znm5WnweIFG6goe+Ht7uYQBuzSUhKRwwMNmd
36IH9HSAKWx8jqAg9QRygT/0cGYQaHJD7pqlfxrDy4HHuhA6Yr8nTUIRbqQm+xGU
wYijzBczqzWAlFQDV+Yq46e/kZwHtA/t9juRxfwZfmvnhdokOaftL88010SsV0ip
qYX3pnvg4WuE1LNCnvoFp8P6MnLA3snXLmxUki/jb5bTdkMXzbuB45puS3HbFvod
ZOie9bwBTWvbt0j+rt6JqHUMqIIXilWyo5ecSYi8yAXSYEA0ipmNqkVFIjwdGmRN
dPprGVayw/Y6Aimgg2MEhMC4Sx+J3r0G8Ngy1f/lIlGnzc40on5qb0ksNEebpTGx
vkjx7Qnd3R7sv3t9uYDdEJYLsti1IRL+ng8oHLtjK+uS1b9qeuM3eIJRRonmeFBa
KEY1bpNJr82JlSBr2f9a821/MVKTLrEEi/acTfHS5lgp62hqGlMhtdVoMuHOfBCM
7D0NJcztBPQZ4TK/j6ZPBIbVOHwv9RFjDegjZi4e1toWDE8hS6sSvzJfI7PUxZXk
P4/NHhW672SaPWZN2bgHPhYfJqjPCrNweEFuuf89dowUQennrRIHmNWKddDjKk2k
bNfIPF61dgRB3A5ClwO+U8BYIml/J22MoSwRSr+oRnUuBt9nNP0=
=nOCN
-----END PGP SIGNATURE-----

--BKdykOyf/A/3pnxs--

