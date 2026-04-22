Return-Path: <linux-man+bounces-5375-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id APsUDhEQ6WmiTwIAu9opvQ
	(envelope-from <linux-man+bounces-5375-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 20:14:41 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A3E4499DA
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 20:14:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 86EDE303A5C6
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 18:08:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FE233914ED;
	Wed, 22 Apr 2026 18:08:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbEVxXOE"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8651362133
	for <linux-man@vger.kernel.org>; Wed, 22 Apr 2026 18:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776881307; cv=none; b=n3Emoa3jB52AULHNsmGhUxVouJVjTI9b6OfailmnXC7EoS66Bt3ohu496XDHrYY3kO208SPH/s8g5WMlbLhiKwPRq56P2ecKvjsExKJhY+f9TZbqtuSa5kUqzgYeQlvRDY5R5CBzJ1h9BMw+pKkchyMkKHg7pJ7qK0vx2V2Mqpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776881307; c=relaxed/simple;
	bh=uD7v/jNdO+U8AVkqxA5DA6cS7jHiJ6HUBI0QrhYINHI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tyTO+A4SWmSDPii4t9l3KbaY4w+Vaqw+5KPxzf+571eGinVMQbYSg9Ytu7UJBdb/c5JnEkmRQxA1lSMyWhfqPQKJcqHPA1p4Z2YOmXHPP02KD7xt9kT+7uGK0GdHqsijqzH+gute7Q9xmjpkkcYjExQ1tvuVa1L8ko8P0qt7HT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbEVxXOE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF465C19425;
	Wed, 22 Apr 2026 18:08:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776881307;
	bh=uD7v/jNdO+U8AVkqxA5DA6cS7jHiJ6HUBI0QrhYINHI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cbEVxXOEXm3TBDt4eDDOeQxHNUHBiDv4FTSqJHW3HB1LrP0pz9WCzN0ySkuwUqufo
	 tZd5EqVZhnkYznzBAvz96V+OIi0wFWoYdKNEJ3O+v3sYTgL2tbYjqrQfa4dCIXHnKD
	 SoIS8eLxpHEINhK73blcLNlpR1/+9dONaPZO7SK5GCcnBOnsFOO/1KFlPX4DNjDAnH
	 vb6edhbUj6MDRh9hOrrKMbaxGI3K1mY7cY6/BRSXuGRR8aapEzN0XUEXmxqig8eycI
	 5L300tc0lhkZxoKHi287TH9GU7ec/VxWQ7OZOxZK6ZsPW+JV/JZsK8vD119EMBz9gK
	 EdW+ZrIKJjBJg==
Date: Wed, 22 Apr 2026 20:08:24 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man7, man2: document SCHED_EXT policy
Message-ID: <aekK3aPO7fegzeC0@devuan>
References: <20260412181743.276652-1-yphbchou0911@gmail.com>
 <aejvcpOKmAxCnJQV@devuan>
 <20260423000434.G45a2@cchengyang.duckdns.org>
 <20260422163603.xvgyqulnl7knxeem@illithid>
 <aej9PG3FsVRGaR3W@devuan>
 <20260422172328.q65i3pge46mpaj6m@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xs5hhcvhzyawvfwh"
Content-Disposition: inline
In-Reply-To: <20260422172328.q65i3pge46mpaj6m@illithid>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FREEMAIL_TO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-5375-lists,linux-man=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,wikipedia.org:url]
X-Rspamd-Queue-Id: 26A3E4499DA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--xs5hhcvhzyawvfwh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man7, man2: document SCHED_EXT policy
Message-ID: <aekK3aPO7fegzeC0@devuan>
References: <20260412181743.276652-1-yphbchou0911@gmail.com>
 <aejvcpOKmAxCnJQV@devuan>
 <20260423000434.G45a2@cchengyang.duckdns.org>
 <20260422163603.xvgyqulnl7knxeem@illithid>
 <aej9PG3FsVRGaR3W@devuan>
 <20260422172328.q65i3pge46mpaj6m@illithid>
MIME-Version: 1.0
In-Reply-To: <20260422172328.q65i3pge46mpaj6m@illithid>

Hi Branden,

On 2026-04-22T12:23:28-0500, G. Branden Robinson wrote:
[...]
> > However, 2 lines below there the patch introduced a line using BR
> > perfectly.  That very much read like random LLM stuff.
>=20
> Nice catch.  I like the way you sussed that out.  While humans are not
> immune from this class of error (forgetting something you "knew" 60
> seconds ago--maybe more like 60 nanoseconds in LLM time), it's uncommon
> among mentally healthy people who haven't been hitting the "substances".
>=20
> I'm reminded of how toddlers acquire object permanence.[1]  Not _quite_
> the same thing, as abstract knowledge is more easily lost ("what are the
> conventional units of the ideal gas constant?  how many operator
> precedence levels does C have, again?

Off-topic, but in case you have the doubt, it can be settled:

There are as many levels as subclauses under 6.5 ("Expressions")
--I don't know the number of subclauses from the top of my head, though,
of course--, excluding of course 6.5.1 ("General").

In C23 (n3220), that is documented in footnote 82:

	The syntax specifies the precedence of operators
	in the evaluation of an expression,
	which is the same as the order of
	the major subclauses of this subclause,
	highest precedence first.
	[...]

Checking the number of subclauses, it happened to be 17 (18 - 1) in C23,
and remains the same number in C2y.  That number seems to have stayed
stable: we already had 17 categories in C89 (but "Expressions" was then
3.3).

:)

> ")--but it seems close.
>=20
> A course for people red-teaming LLMs to pursue, maybe.
>=20
> > There was also the arbitrary combined use of .P and .PP.  I suspect no
> > human would use both in a document, unless the surrounding style
> > already uses both (which could confuse).  Since we only have .P, the
> > .PP came out of nowhere.
>=20
> Another good catch.  As you note, the domain is limited.  In documents
> with long histories and multiple contributors, the pointless profusion
> of paragraphing macros with identical semantics is sadly common.
>=20
> > And then there's the extensive use of \f (without brackets)
>=20
> Still _really_ common in the global man page corpus.  But yeah, a hard
> mistake to make for someone who's a total n00b to man page writing in
> general _and_ to the Linux man-pages project.  People don't think up
> that syntax, they crib it from somewhere.  Or an LLM does it for them.
>=20
> > and \(bu, of which we have no cases anymore.
>=20
> Unlike `\f`, I regard `\(bu` [preferably spelled `\[bu]`] as cromulent
> usage.  We need not be afraid of bullet characters.  They degrade to
> US-ASCII perfectly well in groff (and mandoc(1) too) and I'm confident
> that this special character will work everywhere the Linux man-pages are
> likely to be formatted.  See groff_char(7).

Here we exclusively use the spelling \f[] and \[bu].  That's why \(bu
was suspicious.  I could expect it from an expert in the matter who
didn't know our style, but the author didn't seem one.

>=20
> > All of this was very suspicious, so I had to ask.
>=20
> Is there a resource that collects "here's how I caught an LLM-generated
> software patch/research paper/court filing" stories?

I haven't heard of any, but I suspect there is.  I've seen some good
amount of LLM crap that I think I have a good eye for catching it (even
if sometimes I may not say it explicitly, especially when the author
knows it's not allowed --I may prefer to wait for the author to disclose
it voluntarily; that has the benefit of allowing me to evaluate the
limits of the honesty of the human--).


Cheers,
Alex

> Regards,
> Branden
>=20
> [1] https://en.wikipedia.org/wiki/Object_permanence

--=20
<https://www.alejandro-colomar.es>

--xs5hhcvhzyawvfwh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmnpDpIACgkQ64mZXMKQ
wqkatw/+OHwf6SEC2/Pe+J8JATuf3FLu3Yc+Mfi+kDfoWNjYbS8W8FDu1T90eI1Q
WHgFgTCnCEOnpcrQI8jGEZLAYASDJYQNyQKFS9A9tUMa7T1PwnzmeaEpMNNR65Ke
VtpuG+pbXQfep5vyTCUCic7gMBtBJUqJB3iw+FJZqboKMvuaSbFvFDOfk69TyZYq
L4HcSUxRIVYGaKSBxWVqocm+oYF5apuQVlrV40d+IOZWhDGKG/9cZ47xdIPk9BFt
h9s5nld+NuUUlcaYshCT1NpQfPNwch7j6sfA8qrfQqpDtxkMKnrWuwfhDxymu0Bc
7cyZhvFpmONoKYEzTw0ocASpbmOcbQfB1xGqLURm7ht5hs0g/ZbQmIU4o02LzfQJ
y6TBf6i9+Kt+ATsKrlaxpBPpd3msMu96mmh5X/yNO7i6XCvIil+RGMD8nxRXzop6
g2tuPfd80RnJXjk4wYP+WRivjiq2pmBpuezHE0gvAZuCdtmJv++uUunicVJd1Wfs
hAemxxp+ahGQL0BYYgk3+dgELYcdFReUyQB7PhExljQkLR8k5wgr3cLKL31EtxIb
4bhWpvNEMMjCMSlubYQL8MnuZ6HMethl+xiQJhmU8Mc13VVbqOOzW7y2HC/gOsYB
lNx+Hg01cZjcJfzuk5FytBJWVRzNNbuPRKGiJnkKnSG0V/Z0yQw=
=k0uu
-----END PGP SIGNATURE-----

--xs5hhcvhzyawvfwh--

