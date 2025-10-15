Return-Path: <linux-man+bounces-4139-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 11530BDEED2
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 16:07:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 355F748640A
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 14:04:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33340241696;
	Wed, 15 Oct 2025 14:03:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQhgl+Mf"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E636A227B95
	for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 14:03:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760537022; cv=none; b=pwbbfrNYVUPOKZiz4+oK2w9GCWDph7lc9pG7cBKbTTNJYwZ5Y1v9umww3Cib9+ZsQyKtB7rmvvf+9YDJWZpuYEyuUJsMVTyaP3yauYdheLRbe/zrztHqHVt9pJkjF14+6Qen0YS0REIVSpEd1YowQAJbSN0EYQdJWHDQxrM4oIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760537022; c=relaxed/simple;
	bh=OYb21eaLuL0IiK9EygzTkqPJfvJxnVLmkptFeUH1TtI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S1kKpLxrA09LrcelQ30ym7Im+lYubgmQ1MdaIxueGCw2N6uzPQD9JMd9QvC/SCN5OgvZrOUCj4Dcd83SoydBk6Qi4KXoHBr4WdYDtd2qqaxVlSdaK/rK7/iHH7EzZ0EQmy0SDFDwPHIUb8ez00wVe7a3YRX8FQinzgEJ01H87K8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQhgl+Mf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6985BC4CEF8;
	Wed, 15 Oct 2025 14:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760537021;
	bh=OYb21eaLuL0IiK9EygzTkqPJfvJxnVLmkptFeUH1TtI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fQhgl+MfrgAXj0W7Hz/Eu06evbLVxAm2X8/8tlvHe8Er78xmgS+0uLirhRazZJo7n
	 Wu4001zMZQohBUDSQDUR9KL7WJyFYrhwMDKgtER7MoOzhyh1RzbSj/Xe6jqH6ZFjZU
	 lvukyCkMQ7ARDI8TXziCw92S8lG+Vl0wd/C16DOAAxPOhNej2Vu/XLxBCPVz8ooJ7H
	 4ll2cRwQZmhylqPb/So0ND+H/9YvYcAyV3H0xycaQB4oIXsmWK8yNZDY3djsk7v+CL
	 AgH0pdtntjLRsvYptURGY71Z5b3zMsOUKo6/jHU4sNOQYYNi8M+zyZVK4ZMzB2pqW2
	 NTAlVTyeS7seA==
Date: Wed, 15 Oct 2025 16:03:38 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: linux-man@vger.kernel.org, Collin Funk <collin.funk1@gmail.com>, 
	Sam James <sam@gentoo.org>
Subject: Re: [PATCH v3] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <g5uo7olmmd5mh75ypoh72rleomaytx4eta7bmphvxqcnfa7fwq@u4nnsyzjrhp4>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <a6d76881a06350e807107bdd71d62efee4df485e.1760527144.git.alx@kernel.org>
 <4d14273a-ae17-4f68-9a91-e06fac1d9be5@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yefvjc4wtozzwbra"
Content-Disposition: inline
In-Reply-To: <4d14273a-ae17-4f68-9a91-e06fac1d9be5@redhat.com>


--yefvjc4wtozzwbra
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: linux-man@vger.kernel.org, Collin Funk <collin.funk1@gmail.com>, 
	Sam James <sam@gentoo.org>
Subject: Re: [PATCH v3] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <g5uo7olmmd5mh75ypoh72rleomaytx4eta7bmphvxqcnfa7fwq@u4nnsyzjrhp4>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <a6d76881a06350e807107bdd71d62efee4df485e.1760527144.git.alx@kernel.org>
 <4d14273a-ae17-4f68-9a91-e06fac1d9be5@redhat.com>
MIME-Version: 1.0
In-Reply-To: <4d14273a-ae17-4f68-9a91-e06fac1d9be5@redhat.com>

Hi Carlos,

On Wed, Oct 15, 2025 at 09:25:14AM -0400, Carlos O'Donell wrote:
>=20
> Needs a v4 so we can review the final CC-BY-SA-4.0 license requirements.

Oops, I missed that.  Sorry!

> > +Description
> > +	It is expressly forbidden to contribute to this project any
> > +	content that has been created with the assistance of artificial
> > +	intelligence tools.
>=20
> OK.
>=20
> Though it has been discussed on-list that this policy could be seen as
> forbiding assistive technologies, but that this was not the intent of
> the Gentoo Council's wording.

Didn't they?  Do you have a source for that?

> I don't have better wording.

Okay.

> > +Caveats
> > +	This policy can be revisited, should a case been made over such
> > +	a tool that does not pose copyright, ethical, and quality
> > +	concerns.
>=20
> The original content is CC-BY-SA 4.0, and so you need attribution and
> a link to the license and a statement that you altered it.
>=20
> e.g.
> This work is licensed under a [Creative Commons Attribution-ShareAlike 4.=
0 International License](https://creativecommons.org/licenses/by-sa/4.0/).
> Text derived from the [Gentoo project AI policy](https://wiki.gentoo.org/=
wiki/Project:Council/AI_policy), used under the Creative Commons Attributio=
n license.

I'll send v4 later.  I have written this, at the bottom:

	Copyright
		SPDX-License-Identifier: CC-BY-SA-4.0

		Text derived from the Gentoo project AI policy
		<https://wiki.gentoo.org/wiki/Project:Council/AI_policy>.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--yefvjc4wtozzwbra
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjvqbQACgkQ64mZXMKQ
wqnHDxAAthpdbFjVlTDvgw5ulBybDrzUf98bzJH4Kozayk7iqibaGpQgBzXxdL1F
w00jrAHL+AeggWMqAFJAsiG9mgrUYbp9CWKl3jpk1+AgwVLgB6Z0Yp2EX+FNV2n8
89Pg4rI3j0bGvLEHIRJB8iJGowEIS+8Cu2rQo+5nL/SxJYToY3Xvy7X2WaoRp9my
erzCmDEPtMRpNZnD3iCKjp20ZAPLcbBj73NVFOjUJ14/5xHs4YIPGJTO7IYY/MKu
EseKsWQo+OjYUhGM7v9EbODILXZCCJe5E8fbhKHv73BNqoFAGensQ8fRgr/htahN
DlpkHwIighsswDKRkpftep42+y4Qw16rVtfSfugay74gIMw388K4HPL7cPhNhcky
0c0AKXwYlfewYxTvdUsd0WMnjyMy5BBwRBEStbEixHwHJkgFGWoI+CSHOOBvpsET
Y22cNEDPzl/BaOtbaKXVAQp9GOq9ERZMW1u0TIgzATtHJtIR25J4pI3PHepWzNzh
Qkvq4o+iO5XWCNrhhnlBAzMr+GGN3rDEJB+GT6v+p4mHZaCWNDbRg8Iw0oCY5ONs
ez+p2cwsl+BYLwvhGPQpfgcys9JLwNdu1ftFv1FTSZffDiVNONuWkZLTJ0Y9z8Rb
LpCswtdv07tV4sz+03j01QqS6HtuIrk/kSyIpgWuskwLmKxMXy4=
=Gsk/
-----END PGP SIGNATURE-----

--yefvjc4wtozzwbra--

