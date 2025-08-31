Return-Path: <linux-man+bounces-3767-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DF8B3D19A
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 11:25:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 87A5217ACE8
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 09:25:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E23D24468C;
	Sun, 31 Aug 2025 09:25:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGDNKvIA"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B77035959
	for <linux-man@vger.kernel.org>; Sun, 31 Aug 2025 09:25:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756632321; cv=none; b=OK2a5qLeX5I+5jdfbeTQ/mqTfqGGyj2MhvXcDy9gE69kLJmmykufdmbaJftJ2nnQPcl5WGQVVKmRqGhQbD3hH9059LTxorHEI9QQOJb8+SBUtuMpEOl0WP/M+GwTUCKsD5VbfBhWDcOe0lmLbRIWe749+eYLkgaTMpD1SwulBAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756632321; c=relaxed/simple;
	bh=rk1UULTkx8z27oR4h04gtABsqsM5Xg3ObB4KID+eJtA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nuFiAz0UkUYIP/2Rry9n9XKoupLhwSkx7VeznMeJYVNLvD/sNImgfccYcHFTtlHm28B2dKHpUP+i79hgIMBqSC3rlIHxlUKJlHNKJSK8CHDdjKy+6JU+eQ/r2rsz0ySiA49hKKnV2JWAChOtKWwkazngIwmZkNYz4YGxytJ/5QU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGDNKvIA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0666CC4CEED;
	Sun, 31 Aug 2025 09:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756632320;
	bh=rk1UULTkx8z27oR4h04gtABsqsM5Xg3ObB4KID+eJtA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KGDNKvIA4JKMXtOjnRNj/3dGxudcIf6oL74+r9TwD9ScMeXoiLk5OGjVtkel6LVup
	 3wghqKtDaaKI6kWi/D8gJzS7x7X0FR2p2JFAFknDNh3EI/ulJFiZ28sDCQvQH3rUBH
	 Txgxmx0U4lWPr4FU+VFOTUuedSdXTgj1vAekW88SesE6YymkJ733voVWTtnCJorJrv
	 B0p8M1Fg62BD8n1sYm9FhJVHrgy25trxvIzcOU0BhgiiF6BpzHVgN3/TXZgatRVMQv
	 e1QD6uuJMURizKl06mP/Yxcv8O2x7DZmZ9cfLO1brMvsTJmNYOIUDJBTcmDahF/VlL
	 NuPgfMvItHD/A==
Date: Sun, 31 Aug 2025 11:25:15 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Helge Kreutzmann <debian@helgefjell.de>, 
	mario.blaettermann@gmail.com
Subject: Re: hyphenating English phrases (was: Issue in man page
 pthread_attr_setschedpolicy.3)
Message-ID: <rt4eeojubbxj3orjodn3c7e7vrgvnw7zmweu2owplfqlefst3u@ymw7cum6r2vo>
References: <aKsmUGE8mAXnM917@meinfjell.helgefjelltest.de>
 <5n2mlo4l7kqloztcuruagrkglh23gkqfqckuqf6pajerx6qkwh@b6qqipttn4xy>
 <aKyI4KbJh6LJC_8r@meinfjell.helgefjelltest.de>
 <7pe2qwvkqpd6drn5ql3xld5s7auq7d36thdu6b3oowpf646ppc@mvteqf4f7245>
 <20250825194532.hwoasp4prqzkmd4q@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2jde2m5k3ihltyyi"
Content-Disposition: inline
In-Reply-To: <20250825194532.hwoasp4prqzkmd4q@illithid>


--2jde2m5k3ihltyyi
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Helge Kreutzmann <debian@helgefjell.de>, 
	mario.blaettermann@gmail.com
Subject: Re: hyphenating English phrases (was: Issue in man page
 pthread_attr_setschedpolicy.3)
References: <aKsmUGE8mAXnM917@meinfjell.helgefjelltest.de>
 <5n2mlo4l7kqloztcuruagrkglh23gkqfqckuqf6pajerx6qkwh@b6qqipttn4xy>
 <aKyI4KbJh6LJC_8r@meinfjell.helgefjelltest.de>
 <7pe2qwvkqpd6drn5ql3xld5s7auq7d36thdu6b3oowpf646ppc@mvteqf4f7245>
 <20250825194532.hwoasp4prqzkmd4q@illithid>
MIME-Version: 1.0
In-Reply-To: <20250825194532.hwoasp4prqzkmd4q@illithid>

Hi Branden,

On Mon, Aug 25, 2025 at 02:45:32PM -0500, G. Branden Robinson wrote:
> At 2025-08-25T20:53:15+0200, Alejandro Colomar wrote:
> > On Mon, Aug 25, 2025 at 04:01:36PM +0000, Helge Kreutzmann wrote:
> > > Am Sun, Aug 24, 2025 at 09:15:28PM +0200 schrieb Alejandro Colomar:
> > > > On Sun, Aug 24, 2025 at 02:48:48PM +0000, Helge Kreutzmann wrote:
> > > > > Without further ado, the following was found:
> > > > >=20
> > > > > Issue:    inherit-scheduler =E2=86=92 inherit scheduler
> > > >=20
> > > > I think this is correct.
> > > >=20
> > > > I think it's this:
> > > > <https://www.grammar-monster.com/lessons/hyphens_in_compound_adject=
ives.htm>
> > >=20
> > > Thanks for the pointer. I'm not a native speaker, but "scheduler" is
> > > not a adjective, isn't it?
> >=20
> > Yeah, it's not an adjective, but the rule is similar for this case
> > even with a noun.  I'm not sure how they call it; maybe compound noun?
> > I don't know.  But since they modify attribute, and the go together,
> > they have a hyphen to denote that they go together, I think.
> >=20
> > Someone native please help with the exact rules, if anyone native is
> > reading.  :)
>=20
> Several years ago when I began revising and updating groff's
> documentation, similar questions came up.
>=20
> One resource that proved valuable was the Chicago Manual of Style.
>=20
> https://web.archive.org/web/20171118013349/https://www.chicagomanualofsty=
le.org/16/images/ch07_tab01.pdf

Thanks!

> About 9 months after I cited it in a commit message,[1] CMoS took the
> resource down, hence the Wayback Machine link.  I don't remember if
> that's before or after I immoralized its editor Russell Harper as a
> black-hatted villain in groff's Texinfo manual.[2]  ;-)
>=20
> CMoS is a fine resource; just don't believe its editor's lies about the
> history of inter-sentence spacing practices in typography.

:-)

> Another rule we (mostly I) observe is that adverbs in attributive
> phrases _don't_ get hyphenated.[3]
>=20
> For example, we would say...
>=20
> "Alejandro Colomar is a Spanish-speaking developer."
>=20
> ...and...
>=20
> "Alejandro Colomar is a highly competent developer."
>=20
> ...but not...
>=20
> *"Alejandro Colomar is a highly-competent developer.".
>=20
> However I must concede immediately that in common usage one often _does_
> see adverbs hyphenated in attributive phrases.
>=20
> "The child of well-heeled parents is born on third base."

I remember to not hyphenate adverbs that end in 'ly', but I hyphenate
the ones that don't.  The ones that end in 'ly' are easier to remember.


Have a lovely day!
Alex

> At the same time, while the (notoriously permissive, per Charles
> Harrington Elster) Merriam-Webster dictionary includes "well-heeled" as
> a headword _with_ the hyphen, the Oxford and Cambridge dictionaries
> appear not to.
>=20
> I like consistency, so this case may be one of the few where I prefer
> Commonwealth English orthography over my mostly American practices.
>=20
> (Observe that I did not write "mostly-American", and I suspect most
> other experienced writers in the U.S. and Canada also would not.)
>=20
> Unless, of course, they wanted to come across like some kind of hoser.
>=20
> Regards,
> Branden
>=20
> [1] https://cgit.git.savannah.gnu.org/cgit/groff.git/commit/?id=3Df81a9e3=
2d0b1f80344d8b4dc39ab505b14151e11
> [2] https://www.gnu.org/software/groff/manual/groff.html.node/Sentences.h=
tml
> [3] https://savannah.gnu.org/bugs/?57618



--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--2jde2m5k3ihltyyi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi0FPsACgkQ64mZXMKQ
wqkuyA/+L+rHORT7LAnje+B1DaJSHJslewtyMsQP7mtURXsPSMcsJUwcgrp0Manb
2+A24K8NOtgbg+O+MVJlJW8bXGxRFiSJLkeA1BV0HHpCiZB3OIUyLBBQwS9FeyJ2
viGXvZkXXbagRffekDXctI/2Cbbiq33uo4Ev3Zx/gX+Ib6GaNxmaW0nC3b+Bspb6
uyA//mWUopF0vzfVvCwzeor7YoyPhilDbjNPlrnXRXOzxtpki2Mz60MoplAQzC2m
3Wv1D84GKFYHNKdd/0LhawgYIdYXJ8vaCGwTaVF43PqMcf5b6WvqcWOmhW+42fE2
UDz2O9pgJYoQyqvlUl2b19Y2p74EAlbOj7Vg9j4xjsRSRxtqWGe2oC/UIaNtU/v4
SJVJXYMNJW5RK14nc4hHe8jY/FNhptuUGa09v5rtxKgq3+Kbw+btucdKRU6zkyDQ
QEBrv2oIkDe3atbyHyWkzb1dgQm4jF3CwNID5bleWsorGf8dPV/vEU/LrCCacPpW
/jpys6sFj8vrb1oMjGpMCDDZmGRjYdI3WkiAN4eQdN0uzgWmYAglyMxWAgGv8mja
kJDTc12RtK31ow4bzxaVLkIJz7scBGd3bTvnV+mRj7yN0Wttlh/HC86CnGS+EGmw
n5bF8ONvVqTqCip/k+LERhiNPZ5eUB2Cwrm1PwWi4pPyJtY7XZ8=
=RiLp
-----END PGP SIGNATURE-----

--2jde2m5k3ihltyyi--

