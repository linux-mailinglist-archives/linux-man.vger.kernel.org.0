Return-Path: <linux-man+bounces-2899-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C24AB1EC0
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 23:11:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7B7B33A3D75
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 21:10:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAD8925F7AD;
	Fri,  9 May 2025 21:11:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gn+SD1p2"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 990B125D533
	for <linux-man@vger.kernel.org>; Fri,  9 May 2025 21:11:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746825072; cv=none; b=Ttgy8KwmTTLo/os2M148HvR1D9CBup8XDmZBu4NLapTBWKv/JCMjYnxOquIl4ItZDRGU8YL77XpOQb+IKj5U8s+bRJ8eJOfabk1RoMjUF7N+qawUHZJ42V76UVIhCTtKLNJJ41Wpv+zIsEsjP5utekx5rShmud82nV76FqgmOZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746825072; c=relaxed/simple;
	bh=AdLzfZJL/PcS9WMyNg6GbfHVK7gjEL60H3jCiA0mdfk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=leftnVRRmVHBmHBbHrWdNs+IYLaQkGOyfxYKECm0ifchg2FF5QKzDGsUqbhe4P1e0axpesYBQqIN4EMp2wcf3WT5CpLCNTc2dpQp0EOYViBH73N/K8CoLTDJ8uq/0onuA7Pi7d9XYXRMxomKVvj12jgVppqqR9Yh8v7X1xlYo/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gn+SD1p2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8950C4CEE4;
	Fri,  9 May 2025 21:11:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746825071;
	bh=AdLzfZJL/PcS9WMyNg6GbfHVK7gjEL60H3jCiA0mdfk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Gn+SD1p2pMyXl/XFPz9L8Lms/Oc/Dicraf7bNOiMD2mUZ6+Kfs236BsxIlpSk8YAO
	 K3w5XvBZWDpZ81pqy0YubJpq/2VH+MMfyJCFy/phfxNjKzdsNTfySP485Mx6mK4f4o
	 QNVlH3eAtZmt15R8IfRIDorRiKVfSyXHGTgvziIe+DXiFKm63cOPZfKAahkpUec0rS
	 5CXp1twJlqiAgfPbqVeWvQf1mTOwaJQ+jhoYZ5q5+mX+TvWqAweORidpVZK0lyU8K/
	 +zsZTPL7G16EeCcF0IjSye8RPksraCd4B3KtIB9z4VDm3gNwCpotXWBdUOV1qLcf6S
	 4rS6vl451Ww8w==
Date: Fri, 9 May 2025 23:11:08 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Tycho Andersen <tycho@tycho.pizza>
Cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
Message-ID: <dzjwjragsfpbtqs5iozyw3xl2p2hjpzhlwbxbhlvnusc5gtqwo@rlg22rpe53mq>
References: <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid>
 <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
 <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
 <aB4bk7udjMKo336Q@tycho.pizza>
 <vaja6de7wo5lbdf7nephc4eb5xpx4nhwv6y6nkdbppry7qz22r@6jw3zqipjunn>
 <aB5r4YOVpW5rNKL5@tycho.pizza>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6qepylajbafgrrxh"
Content-Disposition: inline
In-Reply-To: <aB5r4YOVpW5rNKL5@tycho.pizza>


--6qepylajbafgrrxh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Tycho Andersen <tycho@tycho.pizza>
Cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
References: <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid>
 <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
 <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
 <aB4bk7udjMKo336Q@tycho.pizza>
 <vaja6de7wo5lbdf7nephc4eb5xpx4nhwv6y6nkdbppry7qz22r@6jw3zqipjunn>
 <aB5r4YOVpW5rNKL5@tycho.pizza>
MIME-Version: 1.0
In-Reply-To: <aB5r4YOVpW5rNKL5@tycho.pizza>

Hi Tycho,

On Fri, May 09, 2025 at 02:56:01PM -0600, Tycho Andersen wrote:
> > > Yes, I approve. (Though I have changed to using tycho@tycho.pizza as
> > > my primary e-mail address, it would be handy if you could make that
> > > correction during this process as well, but not required.)
> >=20
> > Thanks!  (I had already added you to CREDITS with that address, unless
> > I'm mistaken.  Can you please check if all's good?)
>=20
> Here I see:
>=20
> https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/diff/CREDITS?=
id=3D9f2986c34166085225bb5606ebfd4952054e1657
>=20
> tycho@tycho.ws; but it's also fine if you want to keep the commit id
> the same.

Ahh, I see.  There are three commits that touch that file:  The first
one took the names from "modified by" and similar lines in source code.
(You don't appear in that one.)  The second one took the names from
copyright notices.  I picked @tycho.ws in that one.  Then, the third one
took names from commit Author.  In that one, I updated your main to the
@tycho.pizza one.

	$ git log -p man-pages-6.14 -- AUTHORS CREDITS \
	| grep \
		-e ^commit \
		-e ^Date: \
		-e '^    \(CREDITS\|AUTHORS\|\*\|man/\)' \
		-e tycho \
		-e ^--- -e ^+++
	commit 0cf255ac79231999d79cd656f81013089d2d4153
	Date:   Fri Apr 11 16:15:50 2025 +0200
	    CREDITS: Add commit authors
	--- a/CREDITS
	+++ b/CREDITS
	-Tycho Andersen <tycho@tycho.ws>
	+Tycho Andersen <tycho@tycho.pizza>
	commit 9f2986c34166085225bb5606ebfd4952054e1657
	Date:   Fri Apr 11 02:19:48 2025 +0200
	    *, CREDITS: Unify copyright notices
	--- a/CREDITS
	+++ b/CREDITS
	+Tycho Andersen <tycho@tycho.ws>
	commit 52b7bab3a44fb5d2d464fa8acd6beee3b62269aa
	Date:   Fri Mar 14 14:02:41 2025 +0100
	    man/, CREDITS: Move in-source contribution records to CREDITS
	--- /dev/null
	+++ b/CREDITS


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--6qepylajbafgrrxh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgeb2YACgkQ64mZXMKQ
wqn6zg/+KFrXwVrcdbzfK3sIurfLK44Rox1tp29ppzZe0b1+8sKu/vjF78kwNPVv
65Jiy2U2vA5tymknZdUPPTo1BFaRt0t5evCUnNeBT3VB/Xgyfd9Ftch6MjQMmK6P
sUvzAFAD2bj1+kXZF28aTsQHhtajgzsbuSUlKZlyX7HxmhvmDNSMQZfw1+W0jAlF
SBvM5yPKnWStsE6a3IoOumqXN5+xarDhqG6Tcf9BPT8enU8EQCuh3qOfC4NxtZ4A
PSOan675loHZkqlHi9QiGHiwDak01taSgqKuiPfAfT21VzCFf2009Pe1Uyquorxa
lzlYvxULmjRizYmX4bHNi6NrzUIq+yvRhkEodc5EeTEdPBYQL1BbUSRX1nbDl9Dt
jX3YNoArsyqU0vp5jqKnPjgsY7+FRylTnNmV+ahFVIrI718S8/pS3YOn5vUvuqga
ngw0QtB7gt/b2Uef6Pc4RghXfGf/nZSnj0xjbfoVp6GYIPoqcnuAgCIj63Y1Fxm6
I8lJoIqh150ZgsAUJUxVA4pD1lgAHAvv7Hpzg/VIvwDhcfx+HNdCLPb8pwaeCVgv
xNKEhSb+I3WcnGzzAtq9FJX9aOLxWhT3TdyD4dmGzfOblS4NsbBptKcJBiceFGMm
MP8MnX8MEd0+alY1OJEV/M+pfARuRICjdZNynXMGf102etDLIZ4=
=Xb87
-----END PGP SIGNATURE-----

--6qepylajbafgrrxh--

