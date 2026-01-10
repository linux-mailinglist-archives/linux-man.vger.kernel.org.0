Return-Path: <linux-man+bounces-4789-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A7009D0D5EA
	for <lists+linux-man@lfdr.de>; Sat, 10 Jan 2026 13:07:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3F189301141D
	for <lists+linux-man@lfdr.de>; Sat, 10 Jan 2026 12:07:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C23C34107E;
	Sat, 10 Jan 2026 12:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n8K13lZA"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2035B341055
	for <linux-man@vger.kernel.org>; Sat, 10 Jan 2026 12:07:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768046824; cv=none; b=lSoyeq5aS9S9Utzc6Wg5tcbtphMinVZKkZYVnvqttyqK2HrEmsxF9TRTsACBAk6rU4oFdYC4ay995MhS1J3m0xGxzGDoe2RkGznTs0SsA87v9Wfkq+DYi1izFuuOrnWSWrdNAe1NQ+2FDm+T5v0JPxrAx+DBqYonLIj42FDjDTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768046824; c=relaxed/simple;
	bh=bdy5owdVEKL+nzGSKqscQ2/U0ZOsn52iLH+Fj6DANQs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B+o9ApLYZFY/6VaV3FTd2kbYjD35OteGrdIMJg3aUupxQCEnwOYe/Bw7zBZb6V6j7/bXKuJJddi8eeTiybts++0wvs7uUVLIraz/TbuRGyDG51t80b19ET03/ITU15IlZKQIXNBBc4y5qc71WKZRH5QZk/fqSMw6aLPy0zPWmm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n8K13lZA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6168C4CEF1;
	Sat, 10 Jan 2026 12:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768046823;
	bh=bdy5owdVEKL+nzGSKqscQ2/U0ZOsn52iLH+Fj6DANQs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=n8K13lZAhMSD8MNTjOQkTx8kvBIb0nb1yp3uQzN5DlzBRDSedTzq/5qWxeQ+xrgsd
	 NZ9d39+frclvwuD0WbAT1x+4oEb549qi2Pq9f2mQ843A0tqLWczRyneT7ZDli0G9lj
	 1wcVt2WgRVK13rDxgCUdvuLbzfjMg4NAPlO60gQEzKRapdx4mHXsWAHcv0BP2szSPA
	 krGxm4jFecRxjCu/LVJJkZcX4TXInNperRQrcEqzcqjefHlJowIFVxInh4ApwY+1Hz
	 Fc8TOwB4+IcsvQc7joeZIHUghOwXUtNt+WktvfwDe3I0sEo/yA2tHc2pcxGohVsH9l
	 oeSyphe1ii4bw==
Date: Sat, 10 Jan 2026 13:07:00 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: Re: origin of "void *" (was: [PATCH v1 19/25]
 man/man3type/void.3type: HISTORY: Update first POSIX appearance of
 void(3type)
Message-ID: <aWJAhEW5BK4yohbl@devuan>
References: <cover.1767939178.git.sethmcmail@pm.me>
 <efe8112034e9388465c108fd0418d7e0c68d12ee.1767939178.git.sethmcmail@pm.me>
 <aWDZFvDvb-hAXQMJ@devuan>
 <N5rwikkzw2f0JXz95u_1kI4bAmDj9D2gkp_MrOGQRmYRpZUHBuRAP390fgTkgcNbzYe3YAfS3Zb-OT95Mc_XjSCLQwr-JnMM6fLmIlsN8NI=@pm.me>
 <aWI0djUqajn0xGZL@devuan>
 <20260110115228.bwtdqrpe5x3b2rrn@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hek3wtas265dr3mw"
Content-Disposition: inline
In-Reply-To: <20260110115228.bwtdqrpe5x3b2rrn@illithid>


--hek3wtas265dr3mw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: Re: origin of "void *" (was: [PATCH v1 19/25]
 man/man3type/void.3type: HISTORY: Update first POSIX appearance of
 void(3type)
Message-ID: <aWJAhEW5BK4yohbl@devuan>
References: <cover.1767939178.git.sethmcmail@pm.me>
 <efe8112034e9388465c108fd0418d7e0c68d12ee.1767939178.git.sethmcmail@pm.me>
 <aWDZFvDvb-hAXQMJ@devuan>
 <N5rwikkzw2f0JXz95u_1kI4bAmDj9D2gkp_MrOGQRmYRpZUHBuRAP390fgTkgcNbzYe3YAfS3Zb-OT95Mc_XjSCLQwr-JnMM6fLmIlsN8NI=@pm.me>
 <aWI0djUqajn0xGZL@devuan>
 <20260110115228.bwtdqrpe5x3b2rrn@illithid>
MIME-Version: 1.0
In-Reply-To: <20260110115228.bwtdqrpe5x3b2rrn@illithid>

Hi Branden,

On Sat, Jan 10, 2026 at 05:52:28AM -0600, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2026-01-10T12:30:13+0100, Alejandro Colomar wrote:
> [rearranged]
> > On Sat, Jan 10, 2026 at 07:57:49AM +0000, Seth McDonald wrote:
> > > I know that the void pointer type was not mentioned or used in
> > > POSIX.1-1988.  Instead, the standard used the char pointer type for
> > > pointers to generic data.  POSIX.1-1990 seems to implicitly require
> > > void pointers - at least for conformance to "POSIX.1, C Language
> > > Binding (C Standard Language-Dependent System Support)" - by
> > > including them in some function prototypes.
> >=20
> > > On Friday, 9 January 2026 at 20:34, Alejandro Colomar
> > > <alx@kernel.org> wrote:
> > Hmmm, since POSIX.1-1988 was already written after some C89 draft, it
> > seems void* was incorporated to C89 in a late draft.
> [...]
> > Yup, K&R C 1st ed. is too old and I wouldn't expect it to have
> > void*.  I have a physical copy of K&R C 2nd ed. (1988) and it does
> > have void*.
> [...]
> > Being a scan [of 1e], it could be authentic.  I don't have a physical
> > copy of the first edition, so can't compare.
> [...]
> > If anyone else reading the list knows anything, it would be welcome.
> >=20
> > Be careful of online copies of K&R C, though.  I once found one of the
> > second edition, and it was fake (by comparing it to the actual copy).
> >=20
> > Much better to get the physical copy.  Although the first edition seems
> > difficult to find.
>=20
> I have a physical copy of K&R 1e, but unfortunately it is in storage and
> not easy to access.  However...
>=20
> I have before me as I type this a copy of Tom Plum's _Notes on the Draft
> C Standard_, copyright 1987 (Plum Hall, ISBN 609-927-3770).  Publishers
> treat years in copyright notices the way automakers treat them in
> vehicle models, so I'd guess this puts the date of publication anywhere
> from 4Q1986 to 3Q1987.
>=20
> In Chapter 2, "Comparison with Earlier C", on p. 24, it says:
>=20
> 	"A pointer to any object type may be converted to a =E2=80=98=E2=80=98ge=
neric=E2=80=99=E2=80=99
> 	pointer and back again without change.  The syntax for generic
> 	pointer is void *."
>=20
> Tom Plum was a noteworthy figure in C standardization circles; his name
> shows up in much literature on the subject.  I'd regard him as an
> authority.

Thanks!

I've now checked the rationale for C89, and it says that

	Several new types have been added:

And mentions 'void', 'void*', and 'signed char'.  It seems it was an
invention of C89.


Hve a lovely day!
Alex

>=20
> https://plumhall.com/newsite/phall.html
>=20
> Looks like he passed away last year.  :(
>=20
> Regards,
> Branden



--=20
<https://www.alejandro-colomar.es>

--hek3wtas265dr3mw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmliQN4ACgkQ64mZXMKQ
wqkwrg/+L3TkaLsauhEqCkWEyQ0NVVUPrqRXfltgm2oKOzfd0/HXM2qKPfkCEuPt
JIXuPDzlv0RCOw8dNC7VObrvuhq9TFl8yTzkYVpuijxmkE0U0HsIu1VPvZKpalPM
wE5U/cIYEp5J6R94mEZ8cu86P/Lhqqg9ZW2bkYrOj4P0Zvha+fQ2/KdSlR11dO1v
rVPcdkMHHI3oRR87SZ08Dbl0MMM7vyc8q1mvUKA4yX9rU/TRFddcQ+/okhQW3Wl9
P6gRG1uM2B65BPf+fqa6Fe/B5WRCZTCr1jEQRoKWoO4phdAU1SW2QWwmpS6U+lLo
Vz6w3boGA+XKMC0q5jLhUQiW7JXWnMRLPkJE7d17+bGQWuLdEEovyPT7sSpnPWnU
Liz0SJKf33E5CGbVLI8XSd5claQg/oznRUg2UPj9JXjQbXEj+h++EYPtv1AEeB6R
hcRx+q/RpMOH0T8chiKNQ//AaLVPmyc4tPhrtGSkzo1wydXt+KbHPXYPY2K4Scpb
vA6FTVYiRDI4VRuZXR74v73L31nx6i4ZvHWliEsR/TPPDCBUBMqlnZFAqWk11y0t
ojdPXKe5pYQ/N3EQBYvtAdY75CtQF1bHmgubbYxietuT8CrnwEMi6lM4LJCSVYbA
NFeHSmg5/Qv94x1yD7vKLk+UlAkK0Zi58q4jFGabt6h6qcwXK5I=
=arnH
-----END PGP SIGNATURE-----

--hek3wtas265dr3mw--

