Return-Path: <linux-man+bounces-2893-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 49FFFAB1C60
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 20:35:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AC2341C28460
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 18:35:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B15FC23C8C7;
	Fri,  9 May 2025 18:35:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J3eqqV+8"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E9401E9B2A
	for <linux-man@vger.kernel.org>; Fri,  9 May 2025 18:35:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746815720; cv=none; b=V1OlwmEmNQ6EnPA6ZnnTZV6fV7qEle5qbhyGiTeepigG06J1Erd5IFs7KULATDYUAx7IN7s00B8GrMWITmx3fH/d4QhTQxwa2nr+CvXBvsTn0ehDqQDbv6rEukxQvWKVkXYhzeZ/AOTXkuGVUzWjfx8DfOgIM5AOJLhD5CD0JL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746815720; c=relaxed/simple;
	bh=PdQwaS1jGZLMgNGzitvMMmyjGOFnIWnleaURTp2fWz8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sxpg8IDgWd1RFvl3BI7fSumznptkD28CZWW/O9Pu60kr4GH67QY+LTtd3532a3fR+uifAaH3Gldx9baod1+Cfy/SMyU1UcXkaP7hSkpavBtvh3wAKewRCPad8tUKtLsrEzOTu9NrFoTmxYFfzHZ1c5BdKHvfrO8q2Qc99fslY7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J3eqqV+8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6DFEC4CEE4;
	Fri,  9 May 2025 18:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746815718;
	bh=PdQwaS1jGZLMgNGzitvMMmyjGOFnIWnleaURTp2fWz8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=J3eqqV+8fMDJQgAZF9ZVgYJRIje8AjwZ1KRSxFmjJhaj5Dk2nh5jdhWW1yCtCYNmx
	 DO4Mbvlb9eoaBOVKeR+NrbrXks+RM8Oz6KvghlNCCKwjrM1ZNilLFX7l8cPvgovgA9
	 saTeLgfgI+kNeOB6KxrfmV8Tnz81N+65qZSnlhQlCyXZ0qoChDPzAgB++6dyhzWB96
	 rJL7MPNb3sAdZqJB0BkZw7LlCt+rlAOFr5nc1zjlf7pb+mDqpHnDwTBbv27WnuptZd
	 RvjRVEQEsAhvLHYikgJiPXEwm8spNu1cA+rlX6qP90hSOPS54oSb0JPl765SiJidgf
	 kfbYrlFSsuHUQ==
Date: Fri, 9 May 2025 20:35:15 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Tycho Andersen <tycho@tycho.pizza>
Cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
Message-ID: <vaja6de7wo5lbdf7nephc4eb5xpx4nhwv6y6nkdbppry7qz22r@6jw3zqipjunn>
References: <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid>
 <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
 <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
 <aB4bk7udjMKo336Q@tycho.pizza>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="o5uvg2lsyp32eeee"
Content-Disposition: inline
In-Reply-To: <aB4bk7udjMKo336Q@tycho.pizza>


--o5uvg2lsyp32eeee
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Tycho Andersen <tycho@tycho.pizza>
Cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
References: <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid>
 <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
 <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
 <aB4bk7udjMKo336Q@tycho.pizza>
MIME-Version: 1.0
In-Reply-To: <aB4bk7udjMKo336Q@tycho.pizza>

On Fri, May 09, 2025 at 09:13:23AM -0600, Tycho Andersen wrote:
> Hi Alex,

Hi Tycho,

>=20
> On Fri, May 09, 2025 at 02:54:31PM +0200, Alejandro Colomar wrote:
> > Hi all,
> >=20
> > I've added to BCC everyone whose copyright notices have been removed
> > (those that noted an email).  The full thread for this discussion can be
> > found here:
> > <https://lore.kernel.org/linux-man/jpin2dbnp5vpitnh7l4qmvkamzq3h3xljzsz=
nrudgioox3nn72@57uybxbe3h4p/T/#u>
> >=20
> > Please let me know if it's okay to you to transform your copyright
> > notices to make them uniform?  That is, do you approve
> > <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=
=3D9f2986c34166085225bb5606ebfd4952054e1657>
> > in what affects you?
>=20
> (thanks for clarifying about posting on-list.)
>=20
> Yes, I approve. (Though I have changed to using tycho@tycho.pizza as
> my primary e-mail address, it would be handy if you could make that
> correction during this process as well, but not required.)

Thanks!  (I had already added you to CREDITS with that address, unless
I'm mistaken.  Can you please check if all's good?)


Have a lovely day!
Alex

>=20
> Cheers,
>=20
> Tycho
>=20

--=20
<https://www.alejandro-colomar.es/>

--o5uvg2lsyp32eeee
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgeStgACgkQ64mZXMKQ
wqkbUw//ZrIEG+gH3I4oGljs1DLBtcQZTIDVQeNZyWoRzx3b51GNgwz9X+5SHCUH
RfRowVY1WgJhioIl4CDKpTgtQaox4ljgy91jtkrVECkyEkmYHr6tTlfhNcBlLCrH
cNC3K3T2Nh2eLXCPcyRvntUr6gZZ0iJ/Ce7hfpW9rPSj/Ibz4MW2RCmVH4PjVs/j
691ce4drQG0CMYXr/yG+sNzLgtzkgytT7MeGpE3UrDOhtOAq6Zfgd03QqmNZU96a
MEwf0UeQ/hz26txvmLQfJt4yeEagWd0YePs2NoOYaaA2KnQVQXQ7+Sp9MmDiW3Sy
LrDRnn4TJQHQ2HhKtL5P8hVOdHLn40Bb02MmDpSNRB1m6qE3oAVH6uJYmSHYnMxZ
qc8dtlqiKHFW7hRlYQjElw8u6zjk120DTK8q52o4JNwXokCkbTWl4jJxRV1TYkxT
pNe3yBWPehRv2BxWRWdS4xDjml8noFwCFzbXfRIJqglbR9x+HooPoxtej5xVh7iF
6uLlZunALYxwbMazwhP/rruRtGw3PmgkkxL2tOBuAiyw6pocCM2RwP/3oOgar42e
/RQRVPWAup3p88WAuKXtbZOzfrBETpqw1j5pVWG32WZs+UsXyDrizijq7uiv7fNx
9focyUFSbnPaVzwVSsWx4B768OUMaR6Svcvj3Qk/73zsAIK+RwM=
=BV7w
-----END PGP SIGNATURE-----

--o5uvg2lsyp32eeee--

