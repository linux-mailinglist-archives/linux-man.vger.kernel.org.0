Return-Path: <linux-man+bounces-3194-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B266AE102B
	for <lists+linux-man@lfdr.de>; Fri, 20 Jun 2025 02:01:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B74503B73E0
	for <lists+linux-man@lfdr.de>; Fri, 20 Jun 2025 00:00:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4ACD2EC4;
	Fri, 20 Jun 2025 00:01:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJ5HhVaB"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F7617E
	for <linux-man@vger.kernel.org>; Fri, 20 Jun 2025 00:01:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750377664; cv=none; b=OUZTbeon8VTWCs/BrOkYgu7TZkbKpbYdxaaMUEowhg9/yV46lgyNxJRxlJm4Njp11q8laDiB25zEllyn+/KFtn5Q9auHt9GKL1AjR1g1CMYq3wkQz87yS6DtEy3amPjpg63hUl4P+cARoDwtnMr0R6+mJE0avuaVP6rEq+ZLIZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750377664; c=relaxed/simple;
	bh=VeKaaVBFM2wWus6JSoQMx6WkagP919UuaxKdk+rpwBI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P4WAd/Ronz1RSrjDM9OXstXMJufaxUqQbR0pxD/NbwNjt6bagbZfTJeoXh+3yQ7qqlU7Qwf9VamgPNXF1bfrxykhN+V19RKrJaX5LHfXRlz0JFr0xV+hBy3afjuRZLdzQoXfKERFGeUFxmrk47E8F8wEEhD/NCRGxLy1XuQPXYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJ5HhVaB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04E68C4CEEA;
	Fri, 20 Jun 2025 00:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750377663;
	bh=VeKaaVBFM2wWus6JSoQMx6WkagP919UuaxKdk+rpwBI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tJ5HhVaBr8ikjCJKfjhss8gamx3CUtNNSvqBT5/laC0JEP0R0PYOEM3SLb1cPndZE
	 gywhDdJejVi6wrPN1Ksgz0WpnBM6HLLvBr/gp50gpW1N6Q3sapLLp5R0P6ChtCakhi
	 sR6wTgGBFwk60VVof2MGrc3nsFMIgAyN4r/Ufq+nl77ZIRwxrSHVNud334gwSqlRwh
	 KyXVJjwsH7XupEfaI9ZfrE1fTaqWgryFYELTzfMT9ZCeRIM5u3meiTcE4NKuIxjqud
	 qEysvxABQw+JEEJaYz+nnrX8VkBPOL26lDLX3dIMdeIZsIrL+9q+t0S1aKl5f2p7Lj
	 T5cIM0Wyb5Zwg==
Date: Fri, 20 Jun 2025 02:00:58 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] statx.2: Add stx_atomic_write_unit_max_opt
Message-ID: <ooxbbapwdjxdpcjls73q7yceglnkrasup7hljkyg2g5vai3mcq@6fm3vefehhn3>
References: <20250619090510.229114-1-john.g.garry@oracle.com>
 <7ret5bl5nbtolpdu2muaoeaheu6klrrfm2pvp3vkdfvfw7jxbr@zwsz2dpx7vxz>
 <20250619213432.447iad5445dfmo4b@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="t6pluh7grjfwc4ir"
Content-Disposition: inline
In-Reply-To: <20250619213432.447iad5445dfmo4b@illithid>


--t6pluh7grjfwc4ir
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] statx.2: Add stx_atomic_write_unit_max_opt
References: <20250619090510.229114-1-john.g.garry@oracle.com>
 <7ret5bl5nbtolpdu2muaoeaheu6klrrfm2pvp3vkdfvfw7jxbr@zwsz2dpx7vxz>
 <20250619213432.447iad5445dfmo4b@illithid>
MIME-Version: 1.0
In-Reply-To: <20250619213432.447iad5445dfmo4b@illithid>

Hi Branden,

On Thu, Jun 19, 2025 at 04:34:32PM -0500, G. Branden Robinson wrote:
> [dropping all but linux-man@ since I'm addressing only a point of
> typographical style]
>=20
> Hi Alex,
>=20
> At 2025-06-19T13:05:30+0200, Alejandro Colomar wrote:
> > > +.I stx_atomic_write_unit_max
> > > +and will not be less than the value in
> > > +.I stx_atomic_write_unit_min.
> >=20
> > This should be IR, and the '.' separated by a space, so that the '.'
> > is not in italics.
>=20
> I recommend documenting your preference in this matter as a
> linux-man-specific style convention.
>=20
> To many eyes, having an italic correction between the slanted text and a
> period looks bad when typeset.  Including to me, although I admit when
> viewing *roff terminal output where underlining is used to substitute
> for italics, having a comma or period underlined _also_ looks weird/bad.
> On the bright side, more and more terminal emulators are coming to
> support slanted faces.
>=20
> Further, since italics are (also) used for things that are not
> necessarily literals, it's not necessarily the case that, grammatically,
> the trailing punctuation should be set in a different face.

I never liked the american typography by which punctuation is put within
the quotes even if it's extraneous to them, and this seems the same kind
of thing.  I confirm I want the period to be not part of quotes and also
not part of preceding formatting, regardless of being replaceable text
or anything else.

I guess I'll have to document this.  I'll probably forget, so please
remind me again if I repeat this.  :)


Have a lovely day!
Alex

P.S.:  I'm in Colorado for 3 weeks.  Are you around?  :)

--=20
<https://www.alejandro-colomar.es/>

--t6pluh7grjfwc4ir
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhUpLkACgkQ64mZXMKQ
wqmQiQ//UbP2GqT4koXJp0n9svSxtvsxz9ZT9EfL10yDuA2G/cnsQDp/rW1HcG6V
X4ux5sJ3uxTLUP2qsLFaThQXl72QArZSars6ibi/r4j7sN2nrjd8j3st0i8StTtS
6ZYJ3fJjK+M3tiN1nelBj694GGar/rm/AQCB8AJ4WTaMyCnbZe14UvpGyw0bJvEW
BQEa/FSjoEYtIuRm/XESKLZyTuqdJQtAjKPL3YuWQqunTOq+zyBpRgR6reK151WE
7kSJJqu8SmaGTvTWvo8kW4rAa4HOwgvHyKB+yxIim4LeH/a+81+4X158neL8ibgM
EZ1ErbdW2zMml4ysNYsjR1hL0gyl1AgrrxGC/yLtO7VcJ47plxVGAQofF94cz0BI
vE/naY/IDMg9oLnuzJq+Eiv5+s3qv7ClE/OwsZ44yCtoUCfVgHMbM9jcWL2Geff6
6CeIkn1m2+fyZuUCX1IA+sv8fW8UuA3lwKXHEuCnH4afeHipNYQRhk4zRT2Y75qB
nGwvFza503MN78whFf3wCLM2g1rqgnVSVsi0R4Gyt7XYLLprtqgkKufR2BUFuJTQ
G594bDdGnxGyraiQ9Xdzb0L77YuUvC+RhK7oJT0oWGNn4wuMk59x8nzjcekTnsHa
cF9CraWkqlbuWpeZfb6Vll8/GnhgyABJ03V5JQbtGFsGPC3haHc=
=BLoF
-----END PGP SIGNATURE-----

--t6pluh7grjfwc4ir--

