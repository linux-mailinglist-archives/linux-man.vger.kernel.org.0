Return-Path: <linux-man+bounces-4152-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD6BBE04D2
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 21:03:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C6CDA3B1FE4
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 19:03:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AC1821B1BC;
	Wed, 15 Oct 2025 19:03:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hcik0802"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDEB31EA65
	for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 19:03:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760555008; cv=none; b=UDqAN92ZXCaRoKd6W0tqb02P4xdUgiMC/RaSvwK+KqoqVzmsCE6VgeXUonEZFAAUY0TL/Q0qDDoc6IhB+aufCfNrhqIM/Wjuo+ut2UYZdW5n8Q3G/XZWMH9ey/IQCy2Q7Z6nx1fUECRjIsgkn3JhAqtXDeQ7aBnkrYvKfj9OGy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760555008; c=relaxed/simple;
	bh=IzjVCOESlxg0q4gHf0enjenlUiNlb1uy9lsl6C7k0FE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f/SoH4jIn4ObC7As//wA8X9MgZgoAq36mMZF180UcaplrfgTL0qjxUO1g92jdXcjBWx9UmlVO5cydcG3qNq676jFD1rJAI8mn9lcOHgWy0hVasxsx/hc1Wjb4iXgLpzW9KhSK1xAtI6H7WN1PMp9CQrEUU8bvvtEXqv1xkJf22g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hcik0802; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 448D0C4CEF8;
	Wed, 15 Oct 2025 19:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760555008;
	bh=IzjVCOESlxg0q4gHf0enjenlUiNlb1uy9lsl6C7k0FE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Hcik0802ibVrp6dBBOhucPDSylftFdG5E4EM+9DxPgioV3nacjS/3bVpihN77dj/v
	 15xKfyXUQk21OO3qsfppzkgBzt1t0gbhGIBxyq4WbMkRcXxp/ir4d3YKQqcTE3ftEW
	 3qWYxEutaTPIjnoAkQrQ2oyVbKjk5sBR9Ld55V+dt1JSzVknhgGcHTRszKJFfd5XYB
	 FmNX81YF/hOiBVtQ7h4WaiPcN0nHBxrx+DsvkdXkt1+qp9f2R44lECuRrNBIiJ4P9V
	 7A1Z7oKoxNcChKPCDHPgiVhuoWTG7U4dSCEtHkIBCbPADrjGWqUSWB9j6HIis1ZKX6
	 cc1DO4UaC7IFA==
Date: Wed, 15 Oct 2025 21:03:24 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sam James <sam@gentoo.org>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org, 
	Collin Funk <collin.funk1@gmail.com>
Subject: Re: [PATCH v4] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <e36y5jnoxqshixvvaqsmamuz3qvun3f2j6oarpo3wzedufnvq3@ckwmkcqb7pnn>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <4599445186b3e659166f5c73f682467703396e9e.1760543375.git.alx@kernel.org>
 <1924e1ed-bb96-4a08-a47e-8e77857fa431@redhat.com>
 <7n2g7ccnlfcjm2pgptwwuq3pn6dpnrwvqfxa4exa2hnjikajwk@men5xbekuoop>
 <878qhc6lv5.fsf@gentoo.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2oxsbxqi44pf5ylo"
Content-Disposition: inline
In-Reply-To: <878qhc6lv5.fsf@gentoo.org>


--2oxsbxqi44pf5ylo
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Sam James <sam@gentoo.org>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org, 
	Collin Funk <collin.funk1@gmail.com>
Subject: Re: [PATCH v4] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <e36y5jnoxqshixvvaqsmamuz3qvun3f2j6oarpo3wzedufnvq3@ckwmkcqb7pnn>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <4599445186b3e659166f5c73f682467703396e9e.1760543375.git.alx@kernel.org>
 <1924e1ed-bb96-4a08-a47e-8e77857fa431@redhat.com>
 <7n2g7ccnlfcjm2pgptwwuq3pn6dpnrwvqfxa4exa2hnjikajwk@men5xbekuoop>
 <878qhc6lv5.fsf@gentoo.org>
MIME-Version: 1.0
In-Reply-To: <878qhc6lv5.fsf@gentoo.org>

Hi Sam,

On Wed, Oct 15, 2025 at 07:49:50PM +0100, Sam James wrote:
> >> We should base the contribution policy on things we can objectively
> >> measure and claim.
> >>=20
> >> Rejecting AI content in contributions is objective and measurable
> >> since you can't attest the DCO clearly with this content.
> >
> > Rejecting AI content would follow the first concern, but the second and
> > third concerns would be entirely ignored by a policy that permits AI
> > static analyzers.
> >
>=20
> It is hard in my mind to justify rejecting TTS or similar that may be
> based on AI.

The following is enough, IMO, as justification:

	Ethical concerns.
		The business side of AI boom is creating serious ethical
		concerns.  Among them:

		-  Commercial AI projects are frequently indulging in
		   blatant copyright violations to train their models.
		-  Their operations are causing concerns about the huge
		   use of energy, water, and other natural resources.
		-  The advertising and use of AI models has caused
		   a significant harm to employees and reduction of
		   service quality.
		-  LLMs have been empowering all kinds of spam and scam
		   efforts.

	Quality concerns.
		Popular LLMs are really great at generating plausibly
		looking, but meaningless content.  They pose both the
		risk of lowering the quality of a project, and of
		requiring an unfair human effort from contributors and
		maintainers to review contributions and detect the
		mistakes resulting from the use of AI.

		AI tools should be considered adversarial, as if they
		were a black box with Jia Tan inside them.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--2oxsbxqi44pf5ylo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjv7/cACgkQ64mZXMKQ
wqnOgxAAuIGUXoRl6vDedwpnVZ3F1RDxc2gAAvPKiHDJ7VqklXmankTVD9UrDb8x
jCTBr4HDNOfJ68ggjzpL6fd8nuz7SC6ssNHmYMugdSwz9l0Rf48UEJ/egMSB07AW
YaOfCXGtcp/eghHWSwVcmfxIWYwrUa6+HIG8E9bkbj/3yAU5PJh9ek9h3ahLkvaM
tEZ0Q4RJhigmocm1Onv1VxyU7Rx0arTvFYzezMxvBCqt0qXGW1JQSgpE93ooygAc
6/nH2pXlKPOFLJvvi2UMgPGDTuvEM79jAAM+rrNrRxG6Gmo2/gcz/VGq8oY8xInT
fDHNV3ZJQULwUqdY4pF2BY74zeZrBQ1AeKbKF3oenXOVQ58E2Eg9EPQirhsHSfY9
98N8ewfr4+9rwBsqwc9gzdJ71RuwiA/pxJZIWV0LnfZ4EWt7SY/0kMG/kVqxBnOm
x+tkHxbH/yquShuEBN9Of2avZa6EeWqIA2E+cMgqEGCrNuK1Gz4T6cm12miR36pI
5sw4wIVViFH+fnrb0JtzQ8aPeUQXs1wWzuP67sAYF0pHo86f50imMKxlnJAEzv4T
JZH74Ds+CbSTH9iqO3fz3mkEPUd46eSTJ5mjWcU0hhBZOe0VBRgrdPRIOSc1KZy5
Imbxidm0kDLy/SxTOqZeXlRv2zK4d+hS7fYAJqL/my2Zv2NgZSM=
=0Hhw
-----END PGP SIGNATURE-----

--2oxsbxqi44pf5ylo--

