Return-Path: <linux-man+bounces-1882-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F069BF47A
	for <lists+linux-man@lfdr.de>; Wed,  6 Nov 2024 18:44:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA5041C23A5D
	for <lists+linux-man@lfdr.de>; Wed,  6 Nov 2024 17:44:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4430E2071FE;
	Wed,  6 Nov 2024 17:44:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rkRtqA7N"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F221D645;
	Wed,  6 Nov 2024 17:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730915052; cv=none; b=TBi6IetYwhSlPQ1PmsaK3oK8HiUsxsX1d7tJGHMEafMtbyV/XdqlwicFo6MRDiCKHR2yvyY46P6uGxrfiaHKSRJPlt7BzmjfL2YMcB9wSiKtRB56ph+Ry+8RJBVOBTy9aCOzsaxYOLhnioedKMCegeyqTUV/7YpBkTQwFHdPfEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730915052; c=relaxed/simple;
	bh=Rssw4J64+/02oRAFGD+lHZDXB3WZSNvYoCZVgffjPdM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rQEf44v4Pv5A0y9Kr/9ZnKtf2o1aE9cSbYm27gEY4/Lh4MqrEhcP+RPlsL8v+PlSIksQ9lMvf6YcI3bOqFutB42C9p0Sr7YFyclXFmYrchniI52Dw3EZV0Thu1YO60fLKIp4qjUpzdHz0YHDB6QgkTZ4TnbVklLcKso0LfQ3c9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rkRtqA7N; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3AE1CC4CEC6;
	Wed,  6 Nov 2024 17:44:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730915051;
	bh=Rssw4J64+/02oRAFGD+lHZDXB3WZSNvYoCZVgffjPdM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rkRtqA7N1pjtZQoeJV8DM5HVJXz225396PwTJsAdU3cp2sstTbKgJ/TKy8HT60JQ3
	 mWulyIac15Ab/IpxyJO5EaamStBBFDfMeAsX8Q4ZJOvIHTmNrf/5rnowghQzqs+dm3
	 dIvpN0V7H9WfxkkbwwT1bXltIAbgxrrOiZRhY+MUAQbzD8UTEZxYr05Z4UuuPO0+yt
	 +dK+QMqC9wIfhAAL1ymyhpQdmbdFFhjOp3sRLrvUIwNDJLMI2lqH1WfUf/B85isJV5
	 vjGJuLcBXlmykdjpauuimAeCpwl/I9/8vRXoQqOjHkJq/8dUoQlnIFTDF3hDvzxDXJ
	 Vfguq7y5qDT9w==
Date: Wed, 6 Nov 2024 18:44:08 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Stephen Hemminger <stephen@networkplumber.org>
Cc: Kuniyuki Iwashima <kuniyu@amazon.com>, alexhenrie24@gmail.com, 
	branden@debian.org, linux-man@vger.kernel.org, netdev@vger.kernel.org
Subject: Re: [PATCH] rtnetlink.7: Document struct ifa_cacheinfo
Message-ID: <soyssk73kxv4njvwmfq635q4wolfjhgprlq3mfvxnciurzxhsh@g72tril7ys2k>
References: <20241105041507.1292595-1-alexhenrie24@gmail.com>
 <20241105055338.61082-1-kuniyu@amazon.com>
 <xfzcwmn6syhywvdcu6kn3mkuwqpo5usiwkssblvk6qrpoys5dp@hwgvspb43tdo>
 <20241106091801.3e021842@hermes.local>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ktvgng6dma7l4oys"
Content-Disposition: inline
In-Reply-To: <20241106091801.3e021842@hermes.local>


--ktvgng6dma7l4oys
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Stephen Hemminger <stephen@networkplumber.org>
Cc: Kuniyuki Iwashima <kuniyu@amazon.com>, alexhenrie24@gmail.com, 
	branden@debian.org, linux-man@vger.kernel.org, netdev@vger.kernel.org
Subject: Re: [PATCH] rtnetlink.7: Document struct ifa_cacheinfo
References: <20241105041507.1292595-1-alexhenrie24@gmail.com>
 <20241105055338.61082-1-kuniyu@amazon.com>
 <xfzcwmn6syhywvdcu6kn3mkuwqpo5usiwkssblvk6qrpoys5dp@hwgvspb43tdo>
 <20241106091801.3e021842@hermes.local>
MIME-Version: 1.0
In-Reply-To: <20241106091801.3e021842@hermes.local>

Hi Stephen,

On Wed, Nov 06, 2024 at 09:18:01AM GMT, Stephen Hemminger wrote:
> On Tue, 5 Nov 2024 12:33:48 +0100
> Alejandro Colomar <alx@kernel.org> wrote:
>=20
> > Hi Alex, Kuniyuki, Branden,
> >=20
> > On Mon, Nov 04, 2024 at 09:53:38PM GMT, Kuniyuki Iwashima wrote:
> > > From: Alex Henrie <alexhenrie24@gmail.com>
> > > Date: Mon,  4 Nov 2024 21:14:20 -0700 =20
> > > > struct ifa_cacheinfo contains the address's creation time, update t=
ime,
> > > > preferred lifetime, and valid lifetime. See =20
> >=20
> > We use two spaces after period (the correct amount).  :)
>=20
> Double spacing after period is a leftover from using typewriters.

That's a lie that modern style guides repeat believing that repeating it
will eventually make it true (as if that were possible).

The origin is much older, and ancient (pre-typewriter) books already
used different space lengths for after period.

The true reason why the 2-space tradition was replaced by the 1-space
modern rule is that editorials started hiring incompetent people, and
it seems it was hard for that incompetent people to decide if one space
or two spaces were appropriate at a given place, so they would get it
wrong.  To avoid being embarrased by frequent spacing typos, instead of
hiring competent people (which would have been expensive), they simply
changed the rules to accomodate for those incompetent ones, and told
them to unconditionally use 1 space always.  That also reduces the time
they had to think about the number of spaces being used, so they became
more efficient.

But that removes information from the text.  If a sentence ends in some
initials, it's hard to distinguish if it's the end of a sentence, or if
the sentence continues and the dot is just for the initials.  It seems
the editorials just cared about generating text faster, and didn't care
at all about readers having more difficulty in reading what they wrote
(which just shows the low quality of what they produced).

Ironically enough, studies promoted by the defendants of the one-space
rule proof that two spaces result in more readable text.  They try to
write their conclusions as if not, but if you read enough in their
experiments, you realize how blind they are with their own experiments.

And also ironically, those one-space defendants say two-space tradition
is obsolete cruft from times where mono-spaced fonts were prevalent.
Guess what?  We here still live in a world were mono-spaced fonts are
the rule (anyone reading manual pages in a terminal here?) (I guess none
of us programs with proportional fonts, right?), so even if all those
lies were true (and they are not), in our reigns two-spaces should still
be the rule.

We had some discussion about this a few years ago, and we had links for
the claims I'm making, so I want to eventually recollect those links and
document it well for all contributors to see.

> Modern usage is single space after period.
>=20
> https://www.grammarly.com/blog/punctuation-capitalization/spaces-after-pe=
riod/
>=20
> 	These days most contemporary style guides also recommend using a single =
space between sentences,
> 	including:
>=20
> 	The Chicago Manual of Style
> 	The American Psychological Association (often referred to as =E2=80=9CAP=
A=E2=80=9D)
> 	Microsoft Manual of Style
> 	The Gregg Reference Manual
> 	The Associated Press Stylebook

Paraphrasing the Linux kernel coding style...

	First off, I=E2=80=99d suggest printing out a copy of the Chicago Manual
	of Style, and NOT read it.  Burn it, it=E2=80=99s a great symbolic
	gesture.


Have a lovely night!
Alex


--=20
<https://www.alejandro-colomar.es/>

--ktvgng6dma7l4oys
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIyBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcrquIACgkQnowa+77/
2zKHZg/4uKym2MgdUWEYEc8UstBlEZE+CEeG3US1gOnec9f2RU2Yyi2F1cGV8nld
L2j/lou1/3HpAXhu8thE1BTXzKV8Lfpy0+cXXkqBaEs5lYZjT4UWdDXMlihp8hDv
jKn8qqDka3/uNzarUt+bD+ncelZZI8hyU4sd8KF658RKpyKrD27Ln/JJxDCPn4VR
ugzUymZ9iWFHADX0sDPaQm11OPzCHbOcpLww3T6ODh4gnEFpFJxWcZdqNvSLpniU
Jrv+d+YPDRjTAN4h+PyRBDqfN2m9KX+FhoGgDgSInw5pI/qcoqXEobxVB82lOByS
20WeBZpmYBRaS0UolZPdPSdwzfa1vLxacJ3QvTeS/eLIcGU3q/WZnEGm1/sfY9CO
hw2A3RNTnmFm5DgwtdhcghuKNEtZrpqGXCyim8YXER0OryShbLzffvsGok2orw9F
yIJ7jd+b+RgYjCF2I+MPJpo0YWxV9YNcWKIEZVIzzQBNmLkO0dWBfMghpoNCjx+h
JN3hDwO9d1MCCGtRppEWu/gY/6zq5N1qXlpuN1cyX7E62xHCfbDbj+oG4MPBIVUw
iq/3XxRqE2wR2M0a4kxKmj911CaPXWSO6B0jOP2OLSsnsEXoR0/HRaY1CP/H/f4Y
2L9jPhJB1Z/Sha675Natk9L/8IW7unHTwwdfVR/omAv69CpTHw==
=Y7iw
-----END PGP SIGNATURE-----

--ktvgng6dma7l4oys--

