Return-Path: <linux-man+bounces-4148-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 851BFBDFCA0
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 18:58:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3E5BA3A51AA
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 16:56:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2663A338F26;
	Wed, 15 Oct 2025 16:56:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SDoVOPhQ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF7925333F
	for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 16:56:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760547389; cv=none; b=V2m9+uI6Uquc+eUErb62JGi6B0zLJk7cckFiTCRuR7922sDRobp3oxQGGQQG2daprfZYjaLfMw/JEhlbWb1Wuo+SsXCB3/Z1y5HoHxPPblH35Jigj78Lq1mXFvNgwIzAbJ4PJkIsciyMGqwCCB8LNrZNn+x8gDGMxz3ts+7qJOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760547389; c=relaxed/simple;
	bh=0uu8NJPrxP1RYQ+nyV6QEZ3v5AUrRnaQXNfHUSTIWGc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u/u6Y9YcCs1TDzzSm4+hpkngKjFiGpMsQzY8XfKv29hgy2gRXFtqwFUeaH5aWzLuUh2y308cLC8usRWdv12xNmidDYY1VyKO1hrYDem2Skjblay4AS5PrZ5AN/blG2pxi4gr3++znFRMD8o7/0ZQWmEp2Y0itepej0lPOJ/e7v8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SDoVOPhQ; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-7814273415cso25807567b3.1
        for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 09:56:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760547387; x=1761152187; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oFPzj2jI2eRSZ+x2YGqaUR4MoUgdRXrFOxaL0woGtk4=;
        b=SDoVOPhQs4+nf0ZySqeqCDO24xG9WKfdsYyxrVQnQxvpvbGfjfQEYVwRFSYxdvedNa
         hrBbrRCNqL+NzWTTWfrgPrhpwt2z4ooguuGMyDmrAKwT15IILYM/AvBDixhq0AQTZYOy
         KYzzkYfeL7mPj28WN0yeOmPbSg8fMdGYc+WLVGHoGr0/Ejcp6P6t4Lt4R4wGhHUE+Dl5
         ks/cgw/Yg9ETM8mCo86L1yEN7N79nIPw7N2SQ4rAGweMb5WFFCK4/cGMom4FjnHZ2Cma
         clvQvMylqM60p0+s23Oq8tBCLS4WNkSS72xxKcTtJIZ4BmLMarFPbrR0RW48Ic1pS0k1
         eW1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760547387; x=1761152187;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oFPzj2jI2eRSZ+x2YGqaUR4MoUgdRXrFOxaL0woGtk4=;
        b=qgafHPwCIt6ZsFIk6gogJgs3dWY6iTRtr5fljN0k/lbusTOxygz8QSbW11tPyzoTpG
         Lm8xYhTsSg710IPmfLPtEMuwehgConpyF6CFYx7l1SaQAlreB3or8+XCgL7AdwFaySUr
         hQGRYR3KXb5ESJE1xJy68q2e6sjNDq98XjMPhrTDBg7aL9LmA703wk9fhjU0yraKL1md
         7tqZvTXl+8y2B9ghhWLU1J7OFhp6gtJkdfv0cG8C3X9CABJ85ZWdDdZNzWlULJshLkWP
         ZOA3zJjX0LPT4sRhpwga7oVKfM6CiUWzoflxCXSC0Ic7rlQebnlQxgFekd0UB2xhDiaF
         TvVA==
X-Forwarded-Encrypted: i=1; AJvYcCW/7dJvKv1h6cvNlAdJvaJqW+pNNKLgJV7pg/+ti7zBz+SfIolyvtNwHhxo25FVbCdXOqOs5p9KCe0=@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6aH2/DkG4YCvWQ32K72u4rOqDEZsr3Zjv7KcBcgrVP1OE+N3T
	Pwwa3cY7cRv5Nt/4YcI8FehnuWzpz/A1EYcOsz2gV+gPiUqs06gxMv6q
X-Gm-Gg: ASbGncsf3FNV1DgqKvqR2mtUwb4pu5Ak8ZlUlGCz6D+v3ftt/XHGc9uBJR7PJV2o4FO
	FbUWEy2QyCwLoShDpPNSGW2VzBBAFvb0cU3WrKkAF3rydFD4/jyRiTc+UTm1dkhP1H4QYagUqxg
	OOT2sXnlfA10mAepbPL5m84eYu+YQ6jiGW9/VyapU97OZn9SuSh3k3reSzw76qEX97t2XzIWnv2
	X7wnaaRFS3L1yaw4xRhGpE7C7Ue/H2exDxgmtUPBowvNL5yB5RpTm5xjhJ/DJfv9ROOMhGnF6fB
	LYCq3MU+chZ2iN0VqmJz70QUiI32Lcv5vigRu44lLx1CXRvvyjsCIhhI2XepGCaFkPMd0Y1wBF0
	VEslZvH7P0OQ3pwpcgqqiGRHNI2h8dZQ=
X-Google-Smtp-Source: AGHT+IEcbGGko7nNMkuISqIBolByX9yT2cdnzWIS0+iN5zrVQQkHRpUohOFflNn7x+47VxO6ApcuCA==
X-Received: by 2002:a05:690c:4883:b0:780:c1a2:4400 with SMTP id 00721157ae682-780e157604bmr264217947b3.40.1760547387090;
        Wed, 15 Oct 2025 09:56:27 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-782932f3299sm314107b3.46.2025.10.15.09.56.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 09:56:26 -0700 (PDT)
Date: Wed, 15 Oct 2025 11:56:24 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org,
	Collin Funk <collin.funk1@gmail.com>, Sam James <sam@gentoo.org>
Subject: Re: [PATCH v4] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <20251015165624.2xm73mgtymbwil6y@illithid>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <4599445186b3e659166f5c73f682467703396e9e.1760543375.git.alx@kernel.org>
 <1924e1ed-bb96-4a08-a47e-8e77857fa431@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="e3qtdl6ncp6537d7"
Content-Disposition: inline
In-Reply-To: <1924e1ed-bb96-4a08-a47e-8e77857fa431@redhat.com>


--e3qtdl6ncp6537d7
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
MIME-Version: 1.0

Hi Alex,

At 2025-10-15T12:03:07-0400, Carlos O'Donell wrote:
> > In v4, I've added a paragraph clarifying that AI assistive tools are
> > also included in the bad.
>=20
> Isn't this the *opposite* of Gentoo's policy and QEMU's policy?
>=20
> We should base the contribution policy on things we can objectively
> measure and claim.
>=20
> Rejecting AI content in contributions is objective and measurable
> since you can't attest the DCO clearly with this content.

I think Carlos is on the right track here.  Consider the (apparent) fact
that it's getting difficult these days to undertake machine-assisted
natural-language translation _without_ some kind of LLM-based machine
working, possibly without disclosure to the user.  This is, as I
understand it, because LLMs are actually pretty good at this.[1]

Think, then, of how that affects contributors who are not native English
speakers.

And if the LLMs keep any native German speakers from contributing
verbiage of the form "X allows to Y", then you'll retain _me_ as a
contributor because I won't have gouged my own eyeballs out.[2]  English
usage anoraks like myself are occasionally useful when preparing
technical documentation.  I hope.

> > +Description
> > +	It is expressly forbidden to contribute to this project any
> > +	content that has been created with the assistance of AI tools.
>=20
> This is OK, the forbiddance is on the created content.
>=20
> > +	This also includes AI assistive tools used in the contributing
> > +	process, even if such tools do not generate the contributed
> > +	code.
>=20
> I object strongly to this paragraph.
>=20
> It is the *opposite* of what Gentoo's policy intended.
>=20
> This is policy over-reach into the lives of contributors.

I think Carlos is drawing a line in a good place.  By grounding policy
on the process of _production_ of content, rather than the process of
knowledge _reception_ by contributors (all of whom are imperfect) we
better avoid the pitfalls of hallucination in both natural and
artificial intellgences.

For an illuminating historical parallel, consider the fact that AT&T
once regarded the Unix operating system as a trade secret.[3]

Regards,
Branden

[1] https://paulkrugman.substack.com/p/talking-ai-with-martin-wolf
[2] https://english.stackexchange.com/questions/85069/is-the-construction-i=
t-allows-to-proper-english
[3] https://www.tuhs.org/pipermail/tuhs/2025-September/032496.html

--e3qtdl6ncp6537d7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmjv0jEACgkQ0Z6cfXEm
bc7qtA/9EjpRBtzopm0oLa2irOMkxqwTarToZr8UiEZGcV/n1kSe1fG/JmLm8fyg
ba2TanE6vW+id5UtFI5O55uanqGVUEUba+IIyNoUSREAFZipPlomWre1nHyp50la
ocxr/U49UCIpAqMC5mElJ1tlY5lxWS+Y+wMZeHEe6/1ytThUHL9Z8wPCEdXdE2aJ
OIhjvasgTiju+i4ST/zaKl4wkvi+DyYztPeTDzjVUz0zm+dOVK61cseHLPzK6fks
Hycb3HPOX7an8i2yJ0f+KYh/cjtfASh3YBjrdL0yfusfDCtxprJZw5QF8R8/XPxF
3oVpfYH+vVw0XeE4RbkYxECcNnBrx7aYRp1rhgtra7G6vsIYdleoHN9gzsHDeEBN
NDOPmag5i605/hnFJckvtIB82GIno/NSBmsxmC2/OIHus+9nxkipjhAubP/u/aBS
Fx1xwUM2cdN0RaJh4BykXnrk/GIX28qhuH0nY5cD2WJ6cR3yQwnu9UNCmEpFvlJq
mYUj03VooR5EdUnIrWKcVpGqpBy4IRekkV4xpP8svkn5Z4JhMXG7thBBYLzZWLHL
nniI2E/wx2ogiD2wG2IyXTocaDBF48CJ4jc1tFw+yAh/azI5byJjsdcQCcTn2Kh7
e4NWtcY1jl/8XZLo/ZrD60yGIMtbtNBjeCKLz6iQCIwC7YBSiMs=
=ixW8
-----END PGP SIGNATURE-----

--e3qtdl6ncp6537d7--

