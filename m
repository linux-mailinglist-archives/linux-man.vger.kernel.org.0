Return-Path: <linux-man+bounces-990-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C71D8CD55C
	for <lists+linux-man@lfdr.de>; Thu, 23 May 2024 16:06:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2C0561F23B3E
	for <lists+linux-man@lfdr.de>; Thu, 23 May 2024 14:06:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EFCE13B7BE;
	Thu, 23 May 2024 14:06:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XvBLJc5D"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBD41DFF0
	for <linux-man@vger.kernel.org>; Thu, 23 May 2024 14:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716473184; cv=none; b=PKzU3WU8RSYoD4+aO/j9R7fiiwVsJHWe32w+tizTPodjlnJRlnbu00vrBZUQmo+De63C37qR1TZ+C11X1s/1vm94b1KEVX5ZTIIl5RCJk2ue+h+L0p343ZRIAIH1MVQOJ5FLfJ60i0X83fZxnZUnJZ1ExH75M5joi9wpwpO4B4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716473184; c=relaxed/simple;
	bh=MpCnd2Wwm2r+n50CT+S5ENNDeLv3TujgP0FOMl7ZLr0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NvspYYW73T0Mng3Tt4wuZ04MKsYFzEKEQ2bNIL9VrOpov5FT079tk9sTLC+MKsV/jMyLO/436ABwOqiHwqMRk97vT51EUKdcBvZApJzX6U+htIhUFrFmFW4dCxwp1sE32qvCV8Wgr6c/5UfKTKwebHXcYh6Z/wly9c9cypBmvAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XvBLJc5D; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BCA7CC2BD10;
	Thu, 23 May 2024 14:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716473183;
	bh=MpCnd2Wwm2r+n50CT+S5ENNDeLv3TujgP0FOMl7ZLr0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XvBLJc5DYK1UzqFwqMeZLm4uvMF2M6K/cCqlu/o8FvwjEJ8cqFfW8zQpYm12ts2N7
	 VrzDsMPGgP3n2w6ntOIhYqyCIjcxz8SoBsjuE1Tsytgx+4IvcQszA5L7CKCM0RuDfw
	 difdpEh0Skgw7LQ3HIwqQ7nEMFhpzDELN0ToxiWa6dPS9WRmzr70PPeuKLKI+OWj+K
	 w6xOkUZ8O5byYV6Nmfl4RYIZkgjMiV+aHyc1skMFPmhkP3U8zi2PsaTzwerXmtwnNn
	 dWyfJMfwjEclphdALg4/8tDsPiUiNaXCkOQan1AEzHy/InzGpyR4Ix0WUp6O08Wftw
	 OX35xakpQVEBA==
Date: Thu, 23 May 2024 16:06:20 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Rodrigo Campos <rodrigo@sdfg.com.ar>
Cc: linux-man@vger.kernel.org, Elliott Hughes <enh@google.com>, 
	"G. Branden Robinson" <branden@debian.org>
Subject: Re: [PATCH] mount_setattr.2: Update supported file-systems
Message-ID: <f5owlnsgnkw5ykmzxoed56v3a4keuujnegirrb23iqeajvk47e@gkhu7x2l54ho>
References: <Zh-6YjDhSBUNKmqP@debian>
 <b52c03a3-bc07-4358-aec4-9728f213d31e@sdfg.com.ar>
 <Zi93EAyeU4byltGB@debian>
 <60e07e4b-3cbf-497b-aecf-bd482bb4974f@sdfg.com.ar>
 <yjpaqj7tekvhazxklqnpxknwy5lyg7yp6m5cedbtiwks3ioxsb@ive3dxu6vqoc>
 <cb13f9fa-495f-4698-b3fc-f26388598e2f@sdfg.com.ar>
 <yvj2oqis7jzkghfkssgf4lpr65tx72eqwnc4qq7jjyyzznqq4g@r433igknppga>
 <17973283-7d86-41cc-b720-dca87a425f1c@sdfg.com.ar>
 <qyn3hupk2sqn2bogy3zdlfc5mqndfu42uwxnfvb6z6l6ueiqcy@al4qxblxfj2o>
 <4fbaa4ff-b107-4233-90d9-d1dbeb96628b@sdfg.com.ar>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5wnw7o5thdchxvvj"
Content-Disposition: inline
In-Reply-To: <4fbaa4ff-b107-4233-90d9-d1dbeb96628b@sdfg.com.ar>


--5wnw7o5thdchxvvj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Rodrigo Campos <rodrigo@sdfg.com.ar>
Cc: linux-man@vger.kernel.org, Elliott Hughes <enh@google.com>, 
	"G. Branden Robinson" <branden@debian.org>
Subject: Re: [PATCH] mount_setattr.2: Update supported file-systems
References: <Zh-6YjDhSBUNKmqP@debian>
 <b52c03a3-bc07-4358-aec4-9728f213d31e@sdfg.com.ar>
 <Zi93EAyeU4byltGB@debian>
 <60e07e4b-3cbf-497b-aecf-bd482bb4974f@sdfg.com.ar>
 <yjpaqj7tekvhazxklqnpxknwy5lyg7yp6m5cedbtiwks3ioxsb@ive3dxu6vqoc>
 <cb13f9fa-495f-4698-b3fc-f26388598e2f@sdfg.com.ar>
 <yvj2oqis7jzkghfkssgf4lpr65tx72eqwnc4qq7jjyyzznqq4g@r433igknppga>
 <17973283-7d86-41cc-b720-dca87a425f1c@sdfg.com.ar>
 <qyn3hupk2sqn2bogy3zdlfc5mqndfu42uwxnfvb6z6l6ueiqcy@al4qxblxfj2o>
 <4fbaa4ff-b107-4233-90d9-d1dbeb96628b@sdfg.com.ar>
MIME-Version: 1.0
In-Reply-To: <4fbaa4ff-b107-4233-90d9-d1dbeb96628b@sdfg.com.ar>

Hi Rodrigo,

On Thu, May 23, 2024 at 11:24:19AM GMT, Rodrigo Campos wrote:
> On 5/21/24 2:16 PM, Alejandro Colomar wrote:
> > [CC +=3D Elliott]
> >=20
> > Hi Rodrigo,
> >=20
> > > I prefer an HTML website (a 8mb pdf is not the best experience, speci=
ally on
> > > mobile), and a fixed link that is kept updated with the latest info i=
s what
> > > I'd love (doesn't matter if it is latest git or latest release, the f=
act
> > > that is periodically updated is what matter to me).
> >=20
> > This has been asked in the past at least by a Google (bionic libc)
> > employee.  If any company is willing to put money in it, we could do
>=20
> I don't think I can help with that, sorry :-(

I guess.  In any case, if that changes, please let us know.  ;)

> > something; here are certainly programmers that could do it (I'm not just
> > thinking of setting up a website, but also of improving the tools that
> > generate the HTML from manual pages; that is, groff(1)).
>=20
> Fair. Just out of curiosity, do you have any improvements in mind? Or not
> from the top of your head?

G. Branden Robinson, maintainer of groff(1) has been proposing several
in the last few years in the mailing list.  The .MR macro is the one
that has already been published in groff-1.23.0.  There are a few other
improvements.  Plus very many bugs that I reported against grohtml(1)
that need investigation.

> Best,
> Rodrigo

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--5wnw7o5thdchxvvj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZPTU8ACgkQnowa+77/
2zKuxw//eU53zEahxDgbYfUKKfSepJa28GxB5QbVapyO0UWsyOTMpSpiHPhogrqE
+GaRgJb8Gql97QIGe+kfmUg8QeITraeraVKWbrmHrCVQ5+H0t7WKw1LYr34QHPmG
RTLTokkuq+hMm0zSsyHNYEP59xGPH4dMWVvqO7SrHst/pBVfT9ULd2Ot0F6xGaXM
iHS5du2/FqoN25gAxjUdDW/VkXQj/0xHXDVfw1ckqgcqm+Hej9I7o2IqcbigGRXj
uBLphHBYYsd0u+C/vvoJ9pQw6yDAXVroHqGAomxTPppZWt9BiZHkkTFU7jplcFsY
QyqOY/IDCIyZM7wPSTzgI74D0ngJYiTZC6gQ4Pc5epwKCaQC92kKxcrVklBDMKim
d60FSwF6U+fzH9DGtA8Z6mUoa2HC8jNt41svHK54M65aLyqSlhCCRJB1mYZUNjs6
pjKL2TYxYprzRiZQHt297x2s1DtK5vklLkNDPLik/LDZN4N8prlDTbiEsb5W5BRO
v1WIWAfxLZ/ca1hRrAw1+m/QAd5fftthhYwWN49I67Tbtg0LIjDw+pnK80WRPFr9
sNPiQb0ETp1ztB9frQw4KfyG/4dwZRqvJG5I2hI0y8YNxH/Tw47y9RfZOKfNgkmS
qdfNAxP6i3oF070FhYTr/xtYn8Ggj9HILwyyYz9/496NaiYz8yc=
=UhfV
-----END PGP SIGNATURE-----

--5wnw7o5thdchxvvj--

