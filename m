Return-Path: <linux-man+bounces-4156-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 49091BE05A5
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 21:24:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0111E4E5FE3
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 19:24:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB24927E05F;
	Wed, 15 Oct 2025 19:24:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="E6MoImYQ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B53241D90DF
	for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 19:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760556267; cv=none; b=TOYE41ihQUtT1xKMv01bCKWqCh9KHEnvTMlTTqXmXn36HYbWL6oBzKrqCImtsUVG3YANUahBdOKAKwBBgdvKlgUJdJ/oex77wuKtIUy51m/imuf9vfN0dErDLhJOEtvRn8+UXAmW7Pmd8Eecl2EMfFu8U7bpHZo0pZunLY6z5Ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760556267; c=relaxed/simple;
	bh=nedA9d5DjA00e9sk34jDQ8oW9+n/HEnUWb+JWgNX9zI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=alGK7kXEcnu0jdpVEpnNsuixjpJTKAAB8kH6NriRqg6TdOUMao5irbKkrqLtabhGYbwjWVKahJScSlYz2ILaEeKUdb2Ftmv2W2QoUUGd+Ju9OBqPRawI7j0Bvh6we7f+r0g1iJnLFtnazxE+rMwYQW9btrtEZ5vMBm/K5no60jI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=E6MoImYQ; arc=none smtp.client-ip=209.85.128.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-780fe76f457so66615387b3.0
        for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 12:24:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760556264; x=1761161064; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UPAOZXQtiVHm4qUiBW5xaertQ5gkIMrCsI13AmTRURc=;
        b=E6MoImYQEnv5Ph0CWRid5oXa5rdWCE3SDsko6WHe32EcsgbaTJGGAEjuVbrjLTEC95
         Mo9EGtLYLoQh8RLERjSwlTMS377jOwZAI7FYizZDlbe0j3Hufkfa0Y1kVz6SoUdfY7JR
         gDNz5IHNqhqJNLlme5LLNcA6mz0rVLRGl6cmU2HrDsYgGp5Fisx9wTtWeZ5bA8NALpvq
         KC8YJjcEc79PAK9F0cwgkfOPCUvQrhT3UvqmCoDlbIu2pj4oJc5jB3bBfG/p+T+oNRam
         ElqWVm8+MwkauKcKHeEUHfnqvmYXUoqTb3VkIuNvbWE5Wudp4gZncat7ZQ092n/vQiyg
         WxnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760556265; x=1761161065;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UPAOZXQtiVHm4qUiBW5xaertQ5gkIMrCsI13AmTRURc=;
        b=eZ1LNgckTpZV20lg2bN85N5rbrsPmFxRGLc8mbfVM4kUN2SjyVomqTOJRloFJr7HQz
         NjvV9ciLGKTiQfRb5+GcMAr5NBOeQNn3eJ49eQsYiIUC9wbgqcubwHITKCJO3O9eqLUp
         0gFh4mxKD+qLEaNuCil8zf+j9awi+NX/8ewzkxMqd+tk6pKM08ih7tWK9M8HPC9L+60n
         PMs3g5qlDIrP8WW9ETflBXCZqP6yANY5wbq2O4XlZWk5GpJVRduUbGPdSruh+U9QNwGi
         bnQScx4MRUMlJDlt8XsmEjXIRpXbMGIP3i36p/BfvCodpsVp3+jHqij/KBat6q6EuJK/
         +1BQ==
X-Forwarded-Encrypted: i=1; AJvYcCUuLUmJIFZSbtMniiYrWaSydtv3GjpJCXDYnW8kkhXisPJUzmilN37csiWUTOuvvtpClSPpLcITClU=@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1aX05wrlCpYPzLv1xvcCKGL9n+9pFIFQSvf2XxEDGsPPzQ94P
	hwzDrYpzwkQTR3ez6mVcagodQTOEo/gPNvTjW49NoJtY4HTCnfEpvxyTYo82uw==
X-Gm-Gg: ASbGncsRMioOrA06VumbHk8EcNarOrjGY5fUdmPI0WeN4ZAB70j8O3BY7Jl/ucjwkSg
	lOitjQC2ZadpY6jmS9q8LoJXsthhtIhTeyVv1JJIkpO10+T07wNIPkVRAj31EgXkLab/C1iiugL
	YapaBiku6Hoj84P4pPCB88AheIqY0lvHkmRC8IcNSoNkR9Gj5frRRTS3zrYXv1qOJp4zkQzPJrx
	b7ZGmcAj2Cc2tFCEzA0LLw6A/B+v0DslTEo6YsIUtVErSk1kc0nqBdDOAdX004DEexfkcgv+T1Z
	pV2H2n5o90ihz3NPR+7i/DzUVY6CaQUZg6cPsSXwFnD/1ZmqSlWumvl04FbcwkJeGb+61CXo/64
	TIiAkDWVu6xERHWoi9/j6rrORz/vY14fHinJTB7p4/w==
X-Google-Smtp-Source: AGHT+IFJk8qnqISvnyzJlIu1x4fSjfaBjo0D9uQFNPTNSEnsYGt4kdJdRxaJ/VgGa6eeiPgz5NcdlA==
X-Received: by 2002:a05:690c:638a:b0:781:4660:47f2 with SMTP id 00721157ae682-78146605eddmr137659087b3.47.1760556264539;
        Wed, 15 Oct 2025 12:24:24 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7828cdd054esm1535327b3.4.2025.10.15.12.24.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 12:24:23 -0700 (PDT)
Date: Wed, 15 Oct 2025 14:24:22 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org,
	Collin Funk <collin.funk1@gmail.com>, Sam James <sam@gentoo.org>
Subject: Re: [PATCH v4] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <20251015192422.5ytbfcvpfr42c2ad@illithid>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <4599445186b3e659166f5c73f682467703396e9e.1760543375.git.alx@kernel.org>
 <1924e1ed-bb96-4a08-a47e-8e77857fa431@redhat.com>
 <20251015165624.2xm73mgtymbwil6y@illithid>
 <abtyuyzyayvfpclfcfmexoiqe3umhpijytxguquyee3stkvyy2@26ohhywcpbjf>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ovqgmwydu4lnvefj"
Content-Disposition: inline
In-Reply-To: <abtyuyzyayvfpclfcfmexoiqe3umhpijytxguquyee3stkvyy2@26ohhywcpbjf>


--ovqgmwydu4lnvefj
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
MIME-Version: 1.0

Hi Alex,

At 2025-10-15T20:11:10+0200, Alejandro Colomar wrote:
> I prefer that they use badly written English by a human, than
> good-looking English written by an AI.

That's a tolerable and defensible position, but it is not the element of
your policy that is drawing pushback from Carlos, Sam, or me.

(...assuming I'm understanding Carlos and Sam correctly--as always I can
speak only for myself.)

> The principle I'm following is: consider an AI as a fancy version of
> a chat with Jia Tan.
[snip]
> Are you using the AI to walk?  Then it can't possibly affect the
> quality of the contribution.  Are you using it to translate something?
[snip]
> > I think Carlos is drawing a line in a good place.  By grounding
> > policy on the process of _production_ of content, rather than the
> > process of knowledge _reception_ by contributors (all of whom are
> > imperfect) we better avoid the pitfalls of hallucination in both
> > natural and artificial intellgences.
>=20
> Let's consider again the case that AI is a fancy version of a chat
> with Jia Tan.  Should we trust contributions where Jia Tan has
> influenced in any way?  I strongly believe that we shouldn't.

I don't think the Jia Tan scenario is a useful litmus test.

Jia Tan was presumably a state actor, maybe FSB/SVR, DIA/NSA, or MSS.

Another possibility is that Jia Tan was the agent of a huge metanational
corporation,[0] like those characterized by the erstwhile FAANG
acronyms.

Yet another is that Jia Tan was a front for a highly motivated
individual or small group, possibly a criminal enterprise in the
ransomware business.

All of these possible identities have in common a protection from civil
and possibly even criminal penalties for breach of contract or
fraudulent attestation of any warranty or guarantee or ask of them.
Criminal enterprises with sufficient resources routinely buy impunity
for their crimes and tortious offenses against the public.[1][2][3][4]

Nothing that "Signed-off-by:" implies is binding upon Jia Tan.  Not in
any practically enforceable sense.

The Jia Tans of the world can and will lie to all of us, and the Linux
man-pages project will be wholly unable to hold them to account.

> I think of the three concerns (legal, quality, ethical), the first one
> affects code produced directly by the tool, but quality concerns apply
> as well to code influenced by the tool.  And obviously, the ethical
> concerns apply to *any* use of AI.

Richard Stallman, too, attempts to persuade software developers of the
world to adopt his ethics.[5]  To what extent do you think he succeeds?

That's not a rhetorical question; projects that employ copyleft licenses
foreclose contributions from people who hold that BSD-style licenses, or
dedication to the public domain, are "the only true free[dom]".[6]

I don't suggest that you shouldn't hold the views that you do, or even
that you shouldn't express them in material that Linux man-pages
contributors are likely to see.  I _am_ saying that there seem to be
some accessibility applications of "AI" that are beneficial to some
potential contributors (and maybe some already existing), specifically
in the case of machine translation of existing English in the Linux
man-pages _to_ a person's native language so that they can better
understand the system documented, and subsequently contribute revisions
and additions to the project's pages, in English, from the metaphorical
sweat only of their own brow (meaning: without "AI assistance"), that
may be inexpertly composed but that other contributors like you and me
can wordsmith to a satisfactory level.

In a game-theoretic sense, when you devise a social contract, you should
do so in anticipation that your counterparties are those you can expect
to earnestly, if not necessarily perfectly, abide by it.  They are
"cooperators".  A social contract cannot constrain the actions of
"defectors" who abide by the contract, if at all, only to build up
reputation for the day they betray the community to their advantage.[7]

Even more broadly, this is the insight that informs Wilhoit's Law.[8]

Regards,
Branden

[0] https://en.wikipedia.org/wiki/Mars_trilogy
[1] https://www.reuters.com/markets/us/us-authorities-set-unveil-settlement=
-with-binance-source-2023-11-21/
[2] https://www.justice.gov/usao-edny/pr/goldman-sachs-resolves-foreign-bri=
bery-case-and-agrees-pay-over-29-billion
[3] https://subscriber.politicopro.com/article/2024/06/billionaire-michael-=
saylor-to-pay-40m-over-tax-fraud-charges-00161273
[4] https://www.reuters.com/sustainability/boards-policy-regulation/meta-in=
vestors-zuckerberg-reach-settlement-end-8-billion-trial-over-facebook-2025-=
07-17/
[5] https://www.fsf.org/about/what-is-free-software
[6] https://manpages.debian.org/unstable/mailcap/run-mailcap.1.en.html

[7] The title is cringe, but the piece is useful nonetheless.
    https://tryingtruly.substack.com/p/how-generous-tit-for-tat-wins-at-life

[8] https://crookedtimber.org/2018/03/21/liberals-against-progressives/#com=
ment-729288

--ovqgmwydu4lnvefj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmjv9N4ACgkQ0Z6cfXEm
bc7qAA//aOEPrwQ4p8JdR4/rmKcBySyn+KeSQG/2YTn/W6uPlCrC1T7nzCmnJb6U
26A1ZxB9HMt+zsZQsWBoAWjLY2I+X43dih+emDU4NPGRqAyfpIVxAlZQxZW0LJAy
XF3qCx0ALETV+fPwB9zmZkluMy6rpfubTsDzEQaWNtp1AFijJPW1HEVC4XY7Tx/X
tZps6Y27YVjbeYJcCJhOkXuVLrzMI2RWBuK6qUhmNnODpdvDE+u1jdTFQYMiisgJ
9dZFKxBf1W/3phMLKNne+rtw99UnZoqEMbQtt2DjFWNnFrV+R6TinW9jJr86iVmD
6913pWO6HK9hpcXTVZHKApnrmGQq+AkA+PMot97ZBWDXDkhMDMhzlpqv180H1/Mt
WuiHgLCoe21ow1xbEeEbFJD244qSViDZHVp5rIj9+4KvlnoRkbGh+VbSmT77+M1I
1IvcNcVUhgymejMzGlh32lywIx0ngSp8cAk8XTVJ4DtR1PkA/aCE9h0mwp/oPCRZ
uQDyRmjVa5aA6MeyPewjHApunxneFmp8NSJhHb7qoTjAMAhCek9gY+1Bz4Ou97h2
CivUBJDsh7jVXVqY0s4UJ/m86Tu0PvZ1BR/60oiBsc6zoVr+9Tao7wEUnGFaYy+L
oj3m1/zhmscy8lSw1oUE2Q/hU4zpaA3+Vw1Z3/wP387knhlKtfg=
=HTSU
-----END PGP SIGNATURE-----

--ovqgmwydu4lnvefj--

