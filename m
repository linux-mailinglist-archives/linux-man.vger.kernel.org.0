Return-Path: <linux-man+bounces-4231-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C5BC1D9FF
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 23:53:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 68BE518903DA
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 22:54:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 368D22E6CC9;
	Wed, 29 Oct 2025 22:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B7zqtk7s"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E82102E6CC4
	for <linux-man@vger.kernel.org>; Wed, 29 Oct 2025 22:53:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761778409; cv=none; b=cmLwZ/i8p/uW5lPaaFmvGgHK/Pd/ZaUFXBW3675pbkW+3mz47Xe9ObFewSaW88/RugyG6tmXLIdazjbo1mua8NwKZtBpe9uPIEQJ8ogof9onG/orlg7srcZFR911MLLg1vu+otqEafC8mQelLoivKIY4fMMWsH+Yon/UPcWxfpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761778409; c=relaxed/simple;
	bh=ShZlEJGI9b2cP06VxjJ6whZsiFGDtuKmwv/yfU5dPck=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WF1zid8HS5pwfTde2AwQMoome+jMNIr/10KdveqkIb3W1TPTy578uB4iF3lpqn4WueoRCnYKCe16o6D4hhB++UYw6UXk8KAEEPumsYTKBW1eMD3tDYMtIpjcuIIm7KlpdLrzAyKN9y1k15uVdR0PE97FWRZmWfulJtsAeu4KNwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B7zqtk7s; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A20DC4CEFD;
	Wed, 29 Oct 2025 22:53:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761778408;
	bh=ShZlEJGI9b2cP06VxjJ6whZsiFGDtuKmwv/yfU5dPck=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=B7zqtk7sXher+jeoeg7mv/CIZwmfYYM7PLfdM6OYdZo15tvSAwgrSeYh7q5ugziQ1
	 un4LeDSwfIo1py0xaVZpRDLm8G+pL2ex4QKceeJxEhyYWWZnpWx5DIA0RD5UcLHu5H
	 4Y07+ZqN9O9oarm1Ze68lWs5ccYmQGKLOtxjlhFtbRbHS7M1ZzW3BZHDCEKtVSRwbf
	 c7GGY0ZPIWkgvCYLCvyvaR4gjQ5p9VVNz/OEn61Up390d4EXr6dd4rxWmxlkMv8uRS
	 Nr9G7qwEFDD4SAY549VKfa9qhAQ5n00sqgqXsYiOcUoamAgNWXQ+M0VL+wKmIuLTMm
	 xIBv6P6gAfjwA==
Date: Wed, 29 Oct 2025 23:53:25 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>, linux-man@vger.kernel.org
Subject: Re: [PATCH 4/5] tm.3type: describe tm_zone, tm_gmtoff
Message-ID: <myqycq5n5docgmoddqpin367lg2ycre2fvwxdsdehwgcrviqr2@ozysvg77dtph>
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <a8be8830890c50b1a36e9b7d20693c19c77ca4e5.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <90beebd3-2636-21d5-323b-766c8d81d6d3@gmail.com>
 <20251029090718.6xpq6zf6iawjta2j@illithid>
 <oaa34iz4h2uu4dz2z6ias6lugfh57fspd6bdep5ycw4zzv37oe@rhos3t2bvz6y>
 <20251029223053.hbsbdsizoeoudejs@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="x7fccrbqua64rwt2"
Content-Disposition: inline
In-Reply-To: <20251029223053.hbsbdsizoeoudejs@illithid>


--x7fccrbqua64rwt2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>, linux-man@vger.kernel.org
Subject: Re: [PATCH 4/5] tm.3type: describe tm_zone, tm_gmtoff
Message-ID: <myqycq5n5docgmoddqpin367lg2ycre2fvwxdsdehwgcrviqr2@ozysvg77dtph>
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <a8be8830890c50b1a36e9b7d20693c19c77ca4e5.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <90beebd3-2636-21d5-323b-766c8d81d6d3@gmail.com>
 <20251029090718.6xpq6zf6iawjta2j@illithid>
 <oaa34iz4h2uu4dz2z6ias6lugfh57fspd6bdep5ycw4zzv37oe@rhos3t2bvz6y>
 <20251029223053.hbsbdsizoeoudejs@illithid>
MIME-Version: 1.0
In-Reply-To: <20251029223053.hbsbdsizoeoudejs@illithid>

Hi Branden,

On Wed, Oct 29, 2025 at 05:30:53PM -0500, G. Branden Robinson wrote:
> > > I think the idiomatic term is "inverse".
> >=20
> > Inverse is too generic.  Inverse functions do something else.  The
> > specific terms are "opposite (of a) number" and "additive inverse",
> > AFAIK, and maybe also "inverse (of a) number".
>=20
> Yes, but `tm_gmtoff` and `timezone` are _scalars_, not functions.
>=20
> tzset(3):
>      extern long timezone;
>=20
> tm(3type):
>      struct tm {
> ...
>          /* Since POSIX.1=E2=80=902024:  */
>          long        tm_gmtoff; /* Seconds East of UTC */
> ...
> }
>=20
> Consequently, if they possess an inversional relationship at all, they
> must be either additive or multiplicative inverses of the other,[1]

Which makes inverse alone still ambiguous (could be 1/n).  So, additive
inverse would be the term to use.

> and
> the page now makes it clear which.

Yup.

> tm(3type):
>      tm_gmtoff is the difference, in seconds, of the timezone
>      represented by this broken=E2=80=90down time and UTC (this is the ad=
ditive
>      inverse of timezone(3)).
>=20
> I apologize for re-raising an old and as far as I can tell,
> satisfactorily settled issue.

No problem; I don't mind that.  It was funny to see a reply to a
message from 2021.  :)

>  I was looking at messages in neomutt with
> a non-obvious filter in place (meaning one I'd applied, wandered away
> from the computer, and forgot about), and since your message of 19 July
> was still in my inbox, I got confused and thought it was an item still
> solicting my input.


Cheers,
Alex

>=20
> Regards,
> Branden
>=20
> [1] If there's another kind of inverse that can apply over the integers,
>     I don't know what it is.



--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--x7fccrbqua64rwt2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkCmuQACgkQ64mZXMKQ
wql7xA/+MPqVlVrCJGEVlzNcaJScuhSGB2dqcDZ5iwM895ZkglunHXlJA5cKvdZI
QRWPLA/kOpSNBh2LH9IeVQ9b4x9+fvXmW0/9vzGJfFOWdrdjChmpNWhFI+FA7J7Q
moNpiIcpQ5rrNtXchAGw9GxEn9sbmvx42P/rQ1iJxb7oBH/EPlZV3n0UyHPVCc7r
G/K/sHnbMCmDzz8pud8D8U1JnjqutpQVYvEfXWPnoDhJvJr2wFEshNUQS2hQZC3E
27WPmZJ3LKzGOtu4kORKyY1Bx/4zuZUdqD9pEKmU/z1tUM//wGI7xu6VhkmJZX0a
ae1gAHHkFpGezgYBKGKLjPP7SWtP29hNlwEkpQiVuZ+OWtZFIO6clqYyz9WeS+yo
xEKL9Ii4bMnpjlaZFfYrF/2wveyM/V01Kvkl93mecDp0juI2QrlRlNm+K3MULjPs
oXinpV7VJSGnsWAvVkmoE5MFuZ8mK8AY5Dezn15xjJnOhHlGlNQIV2rJ/T5F/gCt
6x1pl4tpmHhMuTl65XTF3al0IZPspPqNba/gqQhEvNqDMYvTj63ki5Mdp8vHnUds
7yWTCMrbv8DuiFupXQTFqmXvBScCu8WoAzY1WI6qvqswODkHyw9iPUQqqHxmZX4a
mc0GoLHFLFx5VrabzEl9MpiZKDX9A/sKd69M9LsHz8EcyLgQ5z0=
=jD0L
-----END PGP SIGNATURE-----

--x7fccrbqua64rwt2--

