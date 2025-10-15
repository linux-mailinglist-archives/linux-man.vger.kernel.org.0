Return-Path: <linux-man+bounces-4146-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D7504BDFA0A
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 18:21:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8D9B31888C4D
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 16:21:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDC51337698;
	Wed, 15 Oct 2025 16:20:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KeKGHz7K"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD84B3375DA
	for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 16:20:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760545245; cv=none; b=gklbYB22hyruO2wjZw8LWlWZQzmYbBceq3NtyJmrVf5cIlip8jL2Q0ofnhxrzTbbl7D14Q81T7FY3XcX7TLaGJReYRLh+6QagfM2g0zvPR3iyoaYEPYFfIDwuijCHVDdZqyLidC0noacyH7SzgsDrp5DsorcgAylrAwuiLopEeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760545245; c=relaxed/simple;
	bh=AYfDQI/TVabSrYmwHOKD0aJoF1I47d+wo3W4XzFG0Ms=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UlcRSQfxwRXiH1bg90RADdHCiZKM9aSubBEYZCYHPJEhC+7hz7qOr5gORk1c3AjvRkPXsH45N3Es18sG+gtoe2IbkoYpYGjxV74k82fIQuYa+sufMBewv0uJM27ad0rpIh+aaiXx1EvAkMk/DERAoZVRGwEFV6AlKludCGwLq48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KeKGHz7K; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 502B1C4CEF9;
	Wed, 15 Oct 2025 16:20:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760545245;
	bh=AYfDQI/TVabSrYmwHOKD0aJoF1I47d+wo3W4XzFG0Ms=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KeKGHz7KKLHCIklG2DyN45pWYc3/FHCdretY85+qH1VJHF1h41LgXdWvT+ZFFfLaI
	 oaZQYZr+AYkpcWoginMbfEVCwnF4Y0gLS1NnV//XOSJzKAKXPCz+DDyaLUFMOOHs3a
	 NHDty/2mPmw2PgEArtrANOUMEAD6OeM2Ex9YhMMxR7wiKnflqpqMp7xflB4rAx/XcZ
	 ktW8X0I+Y/Re3bSOL2Beu/6Se3Y2CEdN8UFbfY6gXvf4BhQbwyilca8lYA+krt5bor
	 ceagCSWxYFcx4X6VLBk4p+b+e1Bm6mwGwsNHQ5OIsR6TCikgjMWWtJ+P5z1Y+R+MUs
	 LUFWbPsdWAT4Q==
Date: Wed, 15 Oct 2025 18:20:40 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sam James <sam@gentoo.org>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org, 
	Collin Funk <collin.funk1@gmail.com>
Subject: Re: [PATCH v3] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <qbs5taw5aij5luerfojhdyewvclnzjgfrs3jumduuxevfy5mgz@bh3mhhb5m7f6>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <a6d76881a06350e807107bdd71d62efee4df485e.1760527144.git.alx@kernel.org>
 <4d14273a-ae17-4f68-9a91-e06fac1d9be5@redhat.com>
 <g5uo7olmmd5mh75ypoh72rleomaytx4eta7bmphvxqcnfa7fwq@u4nnsyzjrhp4>
 <426482e8-3c58-4ff4-ae1f-4c7e2e26bd22@redhat.com>
 <87ikgg8bgq.fsf@gentoo.org>
 <zbo53h5pugwczbscyg4n7tgydrnnaf6v3enc4stckobwswu377@dt4itqfzh7k3>
 <87a51s87vn.fsf@gentoo.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7bdse4wxocmm5z7b"
Content-Disposition: inline
In-Reply-To: <87a51s87vn.fsf@gentoo.org>


--7bdse4wxocmm5z7b
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Sam James <sam@gentoo.org>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org, 
	Collin Funk <collin.funk1@gmail.com>
Subject: Re: [PATCH v3] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <qbs5taw5aij5luerfojhdyewvclnzjgfrs3jumduuxevfy5mgz@bh3mhhb5m7f6>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <a6d76881a06350e807107bdd71d62efee4df485e.1760527144.git.alx@kernel.org>
 <4d14273a-ae17-4f68-9a91-e06fac1d9be5@redhat.com>
 <g5uo7olmmd5mh75ypoh72rleomaytx4eta7bmphvxqcnfa7fwq@u4nnsyzjrhp4>
 <426482e8-3c58-4ff4-ae1f-4c7e2e26bd22@redhat.com>
 <87ikgg8bgq.fsf@gentoo.org>
 <zbo53h5pugwczbscyg4n7tgydrnnaf6v3enc4stckobwswu377@dt4itqfzh7k3>
 <87a51s87vn.fsf@gentoo.org>
MIME-Version: 1.0
In-Reply-To: <87a51s87vn.fsf@gentoo.org>

Hi Sam,

On Wed, Oct 15, 2025 at 05:09:00PM +0100, Sam James wrote:
> Alejandro Colomar <alx@kernel.org> writes:
>=20
> > Hi Carlos, Sam,
> >
> > On Wed, Oct 15, 2025 at 03:51:33PM +0100, Sam James wrote:
> >> >>> Though it has been discussed on-list that this policy could be see=
n as
> >> >>> forbiding assistive technologies, but that this was not the intent=
 of
> >> >>> the Gentoo Council's wording.
> >> >> Didn't they?  Do you have a source for that?
> >> >
> >> > https://inbox.sourceware.org/libc-alpha/5523336.irdbgypaU6@kona/
> >> > ~~~
> >> > As someone who was present at the initital discussion, I can assure =
that
> >> > banning accessibility helps was not the intention.
> >> > ~~~
> >> > - Andreas Huettel
> >>=20
> >> +1 (as someone else who also voted on it). We may amend it to make this
> >> part clear in future.
> >
> > Thanks.  I find the wording to imply that it also prohibits assistive
> > technologies (and I like that sense).  I'd add a paragraph claifying it
> > in the sense of disallowing them:
>=20
> Eh? We're saying we *don't* want to do that.

Yup.  I'm saying I disagree with you, which is why I added a paragraph
clarifying the sense.


Cheers,
Alex

> >
> > 	It is expressly forbidden to contribute to this project any
> > 	content that has been created with the assistance of artificial
> > 	intelligence tools.
> >
> > 	This also includes AI-based assistive tools used in the
> > 	contributing process, even if such tools do not generate the
> > 	contributed code.
> >
> > This includes for example AI-based linters and static analyzers.
> >
> >
> > Cheers,
> > Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--7bdse4wxocmm5z7b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjvydgACgkQ64mZXMKQ
wqnq7g//aIFHQokeq3tuD/69zgSCPmiTp/WeONb/YI23/U4cOsjE38xvtLfHw7Gi
PCFlZ6s2d5OpswS6QiOTOC2T0XkYAS9ZETu0yDM4vu8+bIavYl0ZbEINtzQj8gjQ
MridwEDt1utSjO3Th/kWQgMLv6qaUIHeIwhyDYnNsg8VOQgXbCM3CgMpJWR8xCO6
zKAyvVE9F76VcUJnzzBbWupa2FXLkP8pCU4LPNm1S6SwX2t782b5cOf+6OI/u7aU
3lXPQqoxlm9eV2y2f9gikPkbXrPbh+dUMmIGIL0r2VpQJie2hoqg6OeTPLJGvROJ
PkWFXpPg32J2MMpLdze6F9uvZxT3koXFrKxhAgzhtMTPBH83I1XYDhnSLyGVeP2T
AK3f4cxZw8/rVUfNDirC7WOR5qTY5HftqGZzq3IQeWIe3n/gDQt44VWxeAYm+8I7
qUu1bfvlZhBBT2/W/7ha7VkkabO+PmEjbWlMsXCeroTDx/K1tCZ0rWv4qipU/+lG
4VD9KCvY8it/bjds3qGeCFX2vxu67Pqx5wyyyrX6wpWnNABA9tl4MxfebhB2K3iP
NmH5Ju8xlW0EgT0/VJvUh+36nM92kqhmNN11XLnEGHdtQuR7VAQnlKdr2mjHWoaa
hYT4NpzIx5l1R7qIxjVbGwsG+ThG9WWMSaEKKTlG2y21l4BzRhQ=
=pnKS
-----END PGP SIGNATURE-----

--7bdse4wxocmm5z7b--

