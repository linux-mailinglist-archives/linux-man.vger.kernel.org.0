Return-Path: <linux-man+bounces-4149-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D5093BE0037
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 20:11:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 295F8189B0A7
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 18:11:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30F9F301039;
	Wed, 15 Oct 2025 18:11:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ubyilw/s"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E230323C50A
	for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 18:11:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760551875; cv=none; b=A2CM8aAmp4PkGmHQdCnB/ECkILzFbTl+jVcNXVR3joy69vX3T9rnyVRetSuL56Fq+gILlPUlaMDGfRZsODQsppSWt12LE7+O+tzh7ZhH8KQvtW4jGzE8mLnRK97ohGNQjsCAuMztxyu7owsYZx11eTTRgJPPIDENgpilgTouZIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760551875; c=relaxed/simple;
	bh=R3k3o7nlfMu5SEJDIOA0GB365Y0PXv3DnsDwY0nHFZw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MWLclovbWn1T4hsWhCzD78ot8iB3w9ntIzpzIOzKTf4t1N5BcNU7xCUd+6kS/8xejCSfRtGImIo+WEb1aAIG7GvkhfRlXiZpxjPmYMi/FN0zK4fcqBJRRKYM+zOZejgThasVB/eAIm3DXY6Shv5K4i/qTvYCPbSGmk4wjEmXQzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ubyilw/s; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32B47C4CEFB;
	Wed, 15 Oct 2025 18:11:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760551874;
	bh=R3k3o7nlfMu5SEJDIOA0GB365Y0PXv3DnsDwY0nHFZw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ubyilw/sQqbcm9qoan0BinunRBD418t8h4s5tqWE4uN5CnCei4Obn6+1+HevlhXHn
	 AsZwAwdwzwDneZLnwHy+Jb/zQUZS9/8gtZl0IC2FvbYTg1K8vQ69s0u7FaqmGbZsxO
	 aPXaexE+sVyxpAs06ZOm8xQg1p9oAex/MAzS9wGL6HgDYobjiPbYLUBvNNZsnv5Vz6
	 rZxnUryA24zZM1yHAorM0C8y9YQMkMVoUdLJDBzQH2WTxw5o0ftx3LlydJqg7vwDkU
	 ycYL8ZSAjCs/QoMgrSImvo8ukra1WRRyObZegyeADMiY/U+jFCrx/9raBUsA72thiY
	 dRG1+OsEtFK8A==
Date: Wed, 15 Oct 2025 20:11:10 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org, 
	Collin Funk <collin.funk1@gmail.com>, Sam James <sam@gentoo.org>
Subject: Re: [PATCH v4] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <abtyuyzyayvfpclfcfmexoiqe3umhpijytxguquyee3stkvyy2@26ohhywcpbjf>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <4599445186b3e659166f5c73f682467703396e9e.1760543375.git.alx@kernel.org>
 <1924e1ed-bb96-4a08-a47e-8e77857fa431@redhat.com>
 <20251015165624.2xm73mgtymbwil6y@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sfsilavcg3hrqp46"
Content-Disposition: inline
In-Reply-To: <20251015165624.2xm73mgtymbwil6y@illithid>


--sfsilavcg3hrqp46
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org, 
	Collin Funk <collin.funk1@gmail.com>, Sam James <sam@gentoo.org>
Subject: Re: [PATCH v4] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <abtyuyzyayvfpclfcfmexoiqe3umhpijytxguquyee3stkvyy2@26ohhywcpbjf>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <4599445186b3e659166f5c73f682467703396e9e.1760543375.git.alx@kernel.org>
 <1924e1ed-bb96-4a08-a47e-8e77857fa431@redhat.com>
 <20251015165624.2xm73mgtymbwil6y@illithid>
MIME-Version: 1.0
In-Reply-To: <20251015165624.2xm73mgtymbwil6y@illithid>

Hi Branden,

On Wed, Oct 15, 2025 at 11:56:24AM -0500, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2025-10-15T12:03:07-0400, Carlos O'Donell wrote:
> > > In v4, I've added a paragraph clarifying that AI assistive tools are
> > > also included in the bad.
> >=20
> > Isn't this the *opposite* of Gentoo's policy and QEMU's policy?
> >=20
> > We should base the contribution policy on things we can objectively
> > measure and claim.
> >=20
> > Rejecting AI content in contributions is objective and measurable
> > since you can't attest the DCO clearly with this content.
>=20
> I think Carlos is on the right track here.  Consider the (apparent) fact
> that it's getting difficult these days to undertake machine-assisted
> natural-language translation _without_ some kind of LLM-based machine
> working, possibly without disclosure to the user.  This is, as I
> understand it, because LLMs are actually pretty good at this.[1]
>=20
> Think, then, of how that affects contributors who are not native English
> speakers.

I prefer that they use badly written English by a human, than
good-looking English written by an AI.

I'll repeat what I told Carlos yesterday:

	On Tue, Oct 14, 2025 at 08:16:24PM -0400, Carlos O'Donell wrote:
	> > I explicitly want to disallow such uses.  I think using AI to lint code
	> > (documentation or C source code) is dangerous, as it puts trust in the
	> > AI system to find issues.  The AI system might trick you to accidental=
ly
	> > introduce typos or bugs, or it could create a false sense of
	> > correctness or safety.
	>
	> We're getting into ethical territory here.
	>
	> What I put my trust in or not, is none of the project's business.

	I think what you put your trust in or not *is* our business.  I might not
	want to put my trust in someone who puts its trust in something that
	I consider dangerous for the quality of the project.

	> This includes a clear license, clear and unambiguous copyright,
	> and a level of quality and correctness that we review with human
	> reviewers?

	I think human reviewers are unable to review AI-generated content, no
	matter how good the human is.

	I'd consider AI-generated content to be as if produced by Jia Tan.
	I wouldn't want to be revieweing Jia Tan's code, as there's a chance
	that I'll miss something eventually.

	If someone trusts itself enough to review Jia Tan's code (or AI code),
	I'm going to not want to trust that person for contributing.
	If anyone was really capable to review such code without mistakes,
	that person would probably be capable of writing such good code by hand
	(or with the help of deterministic tools) in the first place, and
	faster, anyway.

The principle I'm following is: consider an AI as a fancy version of
a chat with Jia Tan.  Are you using the AI to walk?  Then it can't
possibly affect the quality of the contribution.  Are you using it to
translate something?  Then we should be worried.

> And if the LLMs keep any native German speakers from contributing
> verbiage of the form "X allows to Y", then you'll retain _me_ as a
> contributor because I won't have gouged my own eyeballs out.[2]  English
> usage anoraks like myself are occasionally useful when preparing
> technical documentation.  I hope.
>=20
> > > +Description
> > > +	It is expressly forbidden to contribute to this project any
> > > +	content that has been created with the assistance of AI tools.
> >=20
> > This is OK, the forbiddance is on the created content.
> >=20
> > > +	This also includes AI assistive tools used in the contributing
> > > +	process, even if such tools do not generate the contributed
> > > +	code.
> >=20
> > I object strongly to this paragraph.
> >=20
> > It is the *opposite* of what Gentoo's policy intended.
> >=20
> > This is policy over-reach into the lives of contributors.
>=20
> I think Carlos is drawing a line in a good place.  By grounding policy
> on the process of _production_ of content, rather than the process of
> knowledge _reception_ by contributors (all of whom are imperfect) we
> better avoid the pitfalls of hallucination in both natural and
> artificial intellgences.

Let's consider again the case that AI is a fancy version of a chat with
Jia Tan.  Should we trust contributions where Jia Tan has influenced in
any way?  I strongly believe that we shouldn't.

I think of the three concerns (legal, quality, ethical), the first one
affects code produced directly by the tool, but quality concerns apply
as well to code influenced by the tool.  And obviously, the ethical
concerns apply to *any* use of AI.


Have a lovely night!
Alex

> For an illuminating historical parallel, consider the fact that AT&T
> once regarded the Unix operating system as a trade secret.[3]
>=20
> Regards,
> Branden
>=20
> [1] https://paulkrugman.substack.com/p/talking-ai-with-martin-wolf
> [2] https://english.stackexchange.com/questions/85069/is-the-construction=
-it-allows-to-proper-english
> [3] https://www.tuhs.org/pipermail/tuhs/2025-September/032496.html



--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--sfsilavcg3hrqp46
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjv474ACgkQ64mZXMKQ
wqnxjRAAuZaK7A7kQarvP0dYLQZqaS6e+eq4+KB302pEA3UeQn+OVd4PHkLsxYbq
sBnbQEKbvQVb+oIptQdVnqp5e+B7Z9GjWAYHjqFzJUPbel8RjWz5KmSVyR2L9v8B
oRQG6oQETgRfaH+aDja2PqSmKeJ1zabrZWwWijgzjYnFdqaSr4c3Qs6mohHlGG7O
mG1pnqodl9oKklT/e24A2ORpVySclhOgKu0Nv2WSMrbYzdkUYzuZKDh+rhLEc1ga
g1qIrL80ZtFP8PMhWgfFnWZOINEpk1mAQh/SXPNE3hp5rt7U22QKw4lBcmHvBbW6
D1NS5QDtJJsPoQjLQiFQLHhquU63XWs9Gpax1moMunbN254OWP1QxBWRAS+PF2t8
sjGPQEKgQoVNGheguJwat3n8RXw87l9wF1kP++IzK18XEzbKg1ZUKBtNgWzfjT49
zai1QlZksKeqipQ1ZvCT6wNMThgUJfa28z7+SRZUO48QFbk8XUkjEyKiJk1ULtF8
cCAC5crp/f1ZN79iP3lqotaZsMTyvI/4Bk95g1+r7NVry6shqgLH3V/OD5UMhImA
Ty4F8NXUh+dvQdxB9PlZd40L3maqYVOsYDJom1WpHOnci/qbmQ2gLGhNkaFtnf4g
n1LLyrMVMhfMQkYJenc3TAc/srmio19DtbezRvOrP077MHHUyt8=
=BAxZ
-----END PGP SIGNATURE-----

--sfsilavcg3hrqp46--

