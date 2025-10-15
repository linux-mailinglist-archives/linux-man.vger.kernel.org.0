Return-Path: <linux-man+bounces-4157-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 249CABE08D0
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 21:53:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 890073AF9E8
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 19:50:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36CD1305E1D;
	Wed, 15 Oct 2025 19:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F16xjzVq"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9D4D28850C
	for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760557835; cv=none; b=FF29GIY52H/KQ9fL0uFZUALjOYtatcKWyrkpVHknk8rBIJM6xmE139AmQafMpTMzuxhJ1CWa/g2EqXQiXiWfefEDDn/xfjd/m1m1kPT836qc62ofyRTOP2DWXHW5Bp9zFcYjzes/xEhT/EKMXWtGf7RMFTV0q1CAxWQuCoWCiQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760557835; c=relaxed/simple;
	bh=e4fRm7T/WTSNbbmCMNxFP7VVwbAY6fhbyEsZVY13Gcc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aWuNXxa0FNx0qvb8I7tpgWbstQinHJhIBYl8MB39S20tH95atjeuRKj5CnCRbmd6z7AaylekLQu0gAIlncLq1etdEPBrv2PO13SU2ATXj//KjtvYgNR1dKjvCOjVnG3oBOYnZi3GHvY+qpUk5PO2fIhKIUbsrfGHFeON+qEGgdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F16xjzVq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55841C4CEF8;
	Wed, 15 Oct 2025 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760557834;
	bh=e4fRm7T/WTSNbbmCMNxFP7VVwbAY6fhbyEsZVY13Gcc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F16xjzVqQAa7VMT6IZ3VX2XD6T4J9KNpT4NINPEDq0rEncnFRklM044mGmiUjQ0Zf
	 nKmGxI51e7yGKUwTUnSxvVuM3+7ZZwjQ+JbNCmxsmZ5oMQx2QpLEQb4xz6F0lEhhVp
	 3GNSeY6tuXn0mSkHea8V6lWHMgBsupvXNeJlgV0VCQU/ePl4aAuZAw+k6nsKiXziYw
	 QjPiX7oymrfKwx2HGy5uTtiuNjHbsmxhBoy+Ril+7K75JwE1JB3Wp2FYl7mOtKUkgq
	 YpKvrE8bSJY5J1iZ8gBIB3v6Tk+kGmCGukhHVNxWLo4ofTBnr+j/2DXfDzPKH6uNmF
	 ugX8d3Tj9EB+Q==
Date: Wed, 15 Oct 2025 21:50:31 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org, 
	Collin Funk <collin.funk1@gmail.com>, Sam James <sam@gentoo.org>
Subject: Re: [PATCH v4] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <nfhonc5o6vwo3dco6k374c6xego3z7jpbgxadtauscgco47ucg@yuqrblqw5jyt>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <4599445186b3e659166f5c73f682467703396e9e.1760543375.git.alx@kernel.org>
 <1924e1ed-bb96-4a08-a47e-8e77857fa431@redhat.com>
 <20251015165624.2xm73mgtymbwil6y@illithid>
 <abtyuyzyayvfpclfcfmexoiqe3umhpijytxguquyee3stkvyy2@26ohhywcpbjf>
 <20251015192422.5ytbfcvpfr42c2ad@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rfga66l2l3aijl57"
Content-Disposition: inline
In-Reply-To: <20251015192422.5ytbfcvpfr42c2ad@illithid>


--rfga66l2l3aijl57
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org, 
	Collin Funk <collin.funk1@gmail.com>, Sam James <sam@gentoo.org>
Subject: Re: [PATCH v4] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <nfhonc5o6vwo3dco6k374c6xego3z7jpbgxadtauscgco47ucg@yuqrblqw5jyt>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <4599445186b3e659166f5c73f682467703396e9e.1760543375.git.alx@kernel.org>
 <1924e1ed-bb96-4a08-a47e-8e77857fa431@redhat.com>
 <20251015165624.2xm73mgtymbwil6y@illithid>
 <abtyuyzyayvfpclfcfmexoiqe3umhpijytxguquyee3stkvyy2@26ohhywcpbjf>
 <20251015192422.5ytbfcvpfr42c2ad@illithid>
MIME-Version: 1.0
In-Reply-To: <20251015192422.5ytbfcvpfr42c2ad@illithid>

Hi Branden,

On Wed, Oct 15, 2025 at 02:24:22PM -0500, G. Branden Robinson wrote:
> At 2025-10-15T20:11:10+0200, Alejandro Colomar wrote:
> > I prefer that they use badly written English by a human, than
> > good-looking English written by an AI.
>=20
> That's a tolerable and defensible position, but it is not the element of
> your policy that is drawing pushback from Carlos, Sam, or me.
>=20
> (...assuming I'm understanding Carlos and Sam correctly--as always I can
> speak only for myself.)
>=20
> > The principle I'm following is: consider an AI as a fancy version of
> > a chat with Jia Tan.
> [snip]
> > Are you using the AI to walk?  Then it can't possibly affect the
> > quality of the contribution.  Are you using it to translate something?
> [snip]
> > > I think Carlos is drawing a line in a good place.  By grounding
> > > policy on the process of _production_ of content, rather than the
> > > process of knowledge _reception_ by contributors (all of whom are
> > > imperfect) we better avoid the pitfalls of hallucination in both
> > > natural and artificial intellgences.
> >=20
> > Let's consider again the case that AI is a fancy version of a chat
> > with Jia Tan.  Should we trust contributions where Jia Tan has
> > influenced in any way?  I strongly believe that we shouldn't.
>=20
> I don't think the Jia Tan scenario is a useful litmus test.
>=20
> Jia Tan was presumably a state actor, maybe FSB/SVR, DIA/NSA, or MSS.
>=20
> Another possibility is that Jia Tan was the agent of a huge metanational
> corporation,[0] like those characterized by the erstwhile FAANG
> acronyms.
>=20
> Yet another is that Jia Tan was a front for a highly motivated
> individual or small group, possibly a criminal enterprise in the
> ransomware business.
>=20
> All of these possible identities have in common a protection from civil
> and possibly even criminal penalties for breach of contract or
> fraudulent attestation of any warranty or guarantee or ask of them.
> Criminal enterprises with sufficient resources routinely buy impunity
> for their crimes and tortious offenses against the public.[1][2][3][4]
>=20
> Nothing that "Signed-off-by:" implies is binding upon Jia Tan.  Not in
> any practically enforceable sense.
>
> The Jia Tans of the world can and will lie to all of us, and the Linux
> man-pages project will be wholly unable to hold them to account.

What I mean by saying that we should consider AI as a black box
containing Jia Tan is that we don't know when it will lie to us, in ways
that look as plausible as possible, so that no reasonable human reviewer
would catch the problem.  Just like Jia was able to sneak its weapon
with very small "typos" in the build system.

Of course, there's a difference, in that Jia Tan did it on purpose and
(likely) had virtually unlimited resources, while an AI will (likely) do
it by accident.

But the output of AI is, so far, unpredictable, in the sense that we
can't know where it will fail, just like we can't expect where Jia will
try to trick us.  With humans, it's relatively possible to expect where
they'll make mistakes, as long as they're acting on good faith.  That's
why reviewing output from AI is as hard as reviewing output from Jia.

Introducing a vulnerability because you were tricked by a someone
malicious or by a random generator doesn't matter.  What matters is
introducing the vulnerability.

> > I think of the three concerns (legal, quality, ethical), the first one
> > affects code produced directly by the tool, but quality concerns apply
> > as well to code influenced by the tool.  And obviously, the ethical
> > concerns apply to *any* use of AI.
>=20
> Richard Stallman, too, attempts to persuade software developers of the
> world to adopt his ethics.[5]  To what extent do you think he succeeds?
>=20
> That's not a rhetorical question; projects that employ copyleft licenses
> foreclose contributions from people who hold that BSD-style licenses, or
> dedication to the public domain, are "the only true free[dom]".[6]
>=20
> I don't suggest that you shouldn't hold the views that you do, or even
> that you shouldn't express them in material that Linux man-pages
> contributors are likely to see.  I _am_ saying that there seem to be
> some accessibility applications of "AI" that are beneficial to some
> potential contributors (and maybe some already existing), specifically
> in the case of machine translation of existing English in the Linux
> man-pages _to_ a person's native language so that they can better
> understand the system documented, and subsequently contribute revisions
> and additions to the project's pages, in English, from the metaphorical
> sweat only of their own brow (meaning: without "AI assistance"), that
> may be inexpertly composed but that other contributors like you and me
> can wordsmith to a satisfactory level.

What if an incorrect translation leads that contributor to misunderstand
reality in a way that results in a vulnerability being introduced?

> In a game-theoretic sense, when you devise a social contract, you should
> do so in anticipation that your counterparties are those you can expect
> to earnestly, if not necessarily perfectly, abide by it.  They are
> "cooperators".  A social contract cannot constrain the actions of
> "defectors" who abide by the contract, if at all, only to build up
> reputation for the day they betray the community to their advantage.[7]
>=20
> Even more broadly, this is the insight that informs Wilhoit's Law.[8]

I trust the people to act on good faith.  But someone acting on good
faith, with garbage input, will likely result in garbage output.  GI-GO.


Cheers,
Alex

>=20
> Regards,
> Branden
>=20
> [0] https://en.wikipedia.org/wiki/Mars_trilogy
> [1] https://www.reuters.com/markets/us/us-authorities-set-unveil-settleme=
nt-with-binance-source-2023-11-21/
> [2] https://www.justice.gov/usao-edny/pr/goldman-sachs-resolves-foreign-b=
ribery-case-and-agrees-pay-over-29-billion
> [3] https://subscriber.politicopro.com/article/2024/06/billionaire-michae=
l-saylor-to-pay-40m-over-tax-fraud-charges-00161273
> [4] https://www.reuters.com/sustainability/boards-policy-regulation/meta-=
investors-zuckerberg-reach-settlement-end-8-billion-trial-over-facebook-202=
5-07-17/
> [5] https://www.fsf.org/about/what-is-free-software
> [6] https://manpages.debian.org/unstable/mailcap/run-mailcap.1.en.html
>=20
> [7] The title is cringe, but the piece is useful nonetheless.
>     https://tryingtruly.substack.com/p/how-generous-tit-for-tat-wins-at-l=
ife
>=20
> [8] https://crookedtimber.org/2018/03/21/liberals-against-progressives/#c=
omment-729288



--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--rfga66l2l3aijl57
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjv+wEACgkQ64mZXMKQ
wqnQIQ/9HyajyDXVZ0aIzBMPomlnXIqaBCEd2JcuJC7slby1hssNjxJGLLJDXX1q
Bo99ZOF13KZOWfkerX4HEcGT/OuXFr9iWosIegIjq+RvijlvN4YEHukDrVhrgAQx
fOEWJ4JqzwVwgI+uyjBDW7u9YSzJWTlNDs5fmI3LSsk9DnWFdQDxdqiW3oEfsKAL
OlQGQijNKhoK7j06DmmjJ3DoeLW0k0I1Wk3PLtoMhak+zUpZM9yODnqWMIew0I18
7I2E7DEY7y0xa2weA+1ouQTDk2wf9TWchGApALPnHdQcFBomtIck4IqQzcZFXv3M
Wnb7s9LealKZsiHP7MqpD886HaBqvNqPiLRxMW8yqqN9r6eHgRNkqze6pSaiOLFu
IXsc7N3R+ozwUDIJOj0CGqk2bkPvfn/Kyaa/+YUSa0hTuygYJe8uQ7YSEII0OdZs
JdDpnw0HGCHHdq8UUCqeV10WaHM86U+Wc9ZEwlzVj3b1Cgd5un7kuwKbmuFbslPw
C04siKZfvsJW3Ov7Naow7AE+hzUNcRmAjaDT53OB0hAXHhv5+hoKg19PFj9oDgKB
eqtFs/QNjYRHGjuLIH745b+Vc/EVX9JP8xwuuAfrSApS2XQNs4A+BlSdmFJHitUz
jtRlWaH3QLEJP96+YsI4D/LBV55r3zzhe2WR6D3h8VSujY+62do=
=RYpJ
-----END PGP SIGNATURE-----

--rfga66l2l3aijl57--

