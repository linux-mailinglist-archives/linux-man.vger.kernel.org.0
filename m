Return-Path: <linux-man+bounces-2894-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBA0AB1CA3
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 20:49:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5CBF41C45D97
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 18:49:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DF9723F403;
	Fri,  9 May 2025 18:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HN1Zi/0J"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C48423F431
	for <linux-man@vger.kernel.org>; Fri,  9 May 2025 18:49:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746816580; cv=none; b=XmVv1vW5R04pj6kV1lT+ifaZGlJoZkwnvS/S0ZiS25E6l1VY7Fr7nt4SNzDwM4XDxq7bNE6bdI1TIzNAqsanszASvK0NGJiZ5mzjCrGTc0cNSAktm3ghTdWu1RDSNOfAx/l6d5eU2pqFlyhGtAfeIPhJtGK23UREEgZCMdJp8+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746816580; c=relaxed/simple;
	bh=rYf0eOOnXvW3zTe1/xiiO9ADk+Af+ijHpCxZdAN8TDs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U63lwLDaO+59BlD02VhZZsg5vxOTO/wVLPCfZlodqOmejm0525QA1YvJ3N+pjt+2PBl5tU42ehx9ed4xTQsuwPlZkgFq4jztQuZ+3cFREknBpfjGCkRQsaST0anV++jocJjEeKZDbOqzepG8DaA5bUwz3od/GtgRsbtkcIDTbfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HN1Zi/0J; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA7F7C4CEE4;
	Fri,  9 May 2025 18:49:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746816579;
	bh=rYf0eOOnXvW3zTe1/xiiO9ADk+Af+ijHpCxZdAN8TDs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HN1Zi/0J6B5MqYu5VXB/UhGbMieNuCq9raXefjurT1QkapKdov8dtBJKtA0QJpG81
	 FAVRwMhr0rn2EPlqroOKNycVLjocNME148T15R5acdW3wjQ8VZ9uTXbHVwQ/2kXz86
	 esDrR8Tpogvjc+LBh0gcm7STQbKreEBjt2BPemMQ+DofAhQUEsoZKwhIK5xRbDGrmy
	 gQkSiXfVZJCcrxuMgjduRQYXTtzgg24YIUYtl8rFPLVXw16SlpzaE3NG1xVkVVDmmT
	 MB8KH4fiOByOt9t2XSMWYBUVXeFoCeG5qDhcd35Nd2AMofY+t//eCCvwmSUTE9kegA
	 d/f4RFyQc6Lkg==
Date: Fri, 9 May 2025 20:49:36 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Dave Martin <Dave.Martin@arm.com>
Cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
Message-ID: <bwtcqxfzrtnr2genjayihmgmqonac7blka6m43a5kbhq73mba7@l5jkhkp34h2d>
References: <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid>
 <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
 <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
 <aB4N4eD1gbZi6Cao@e133380.arm.com>
 <vvom7m3xnrzq6w64rm5wue4byj64mg6jynme7kqdzjs3xkpttp@elcgfz4quzdw>
 <aB4iqKfkuNpOXUuY@e133380.arm.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="li5iucugih5sqoux"
Content-Disposition: inline
In-Reply-To: <aB4iqKfkuNpOXUuY@e133380.arm.com>


--li5iucugih5sqoux
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Dave Martin <Dave.Martin@arm.com>
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
 <aB4N4eD1gbZi6Cao@e133380.arm.com>
 <vvom7m3xnrzq6w64rm5wue4byj64mg6jynme7kqdzjs3xkpttp@elcgfz4quzdw>
 <aB4iqKfkuNpOXUuY@e133380.arm.com>
MIME-Version: 1.0
In-Reply-To: <aB4iqKfkuNpOXUuY@e133380.arm.com>

Hi Dave,

On Fri, May 09, 2025 at 04:43:36PM +0100, Dave Martin wrote:
> > > Should the one-line replacement statement in each file refer back to
> > > the CREDITS file?
> >=20
> > I prefer not, because then someone can copy the files to a different
> > repository, without needing to modify the notices (they might take the
> > CREDITS file as CREDITS_Linux-man-pages).
>=20
> Fair enough, though would it make sense for the boilerplate line to at
> least become
>=20
> 	# Copyright, The authors of the Linux man-pages project
>=20
> ...?
>
> This remains meaningful out of context, but when shipped with the
> original tree this wording macthes up with the naming of the AUTHORS
> file (assuming that's what the file is called).

Hmmmm.  I see the point.  That sounds very reasonable.  Contributors
sounded more like inclusive of anyone who passes by and writes a few
lines, as opposed to authors which are usually considered only the long-
term ones.  But since we would list all of them as AUTHORS, they're
clearly included.  So, I'm going to do that change.

> > > Renaming the CREDITS file to AUTHORS and/or clarifying this in a brief
> > > top-level LICENSE / COPYING file might make the meaning clearer?
> >=20
> > Yes, now that I discarded the idea of crediting *all* contributors, I
> > agree this file should be renamed to AUTHORS.  Regarding a file solely
> > to clarify that the AUTHORS file holds the copyright holders of the
> > project, I guess by calling it AUTHORS it would already be obvious.  I'm
> > hesitant to add another file for explaining that because the more
> > uppercase files there are in the root of the repo, the harder it is to
> > understand their relationship.  However, I can add something in the
> > README, where I already document what each file is.
>=20
> Ack, it's probably fairly obvious what a file called "AUTHORS" means.
>=20
> Just a suggestion, would something like this work in README:
>=20
> +   AUTHORS
> +       List of individuals and organizations that have contributed
> +       content to the project.
> +

Certainly.  Thanks!

> This will still be a true description regardless of whether the list
> is complete or if non page content contributors are included.  (There
> are probably plenty of borderline cases as to whether something counts
> as a page content contribution or not.)

Yep.  For now, I haven't documented it, but I've drawn the line at:

	-  Had its name either in a copyright notice,
	-  or in a source line saying something like "modified by"
	-  or was 'Author' in a git commit.

Anyone who meets at least one of those has been included in CREDITS (to
be renamed to AUTHORS).

Exceptions are authors of code that was taken by this project, but who
didn't contribute to this project themselves.  For example, the regents
of the University of California wrote pages that have been incorporated
into this project, but they didn't consciously contribute to this
project.  Thus, I've retained their copyright notices, and didn't add
them to CREDITS.


Cheers,
Alex

>=20
> Cheers
> ---Dave
>=20

--=20
<https://www.alejandro-colomar.es/>

--li5iucugih5sqoux
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgeTjoACgkQ64mZXMKQ
wqludg//fYmXr4PBVv503JKC7a1MpALJTbxL6JESuxq7lU1s9FgimAG2RXOzyYP4
+at/yYgBhjd+1Ew7O4nMqg600L4WCTgBx223jBID54hoJ2yod956fQZyB73MAcxd
t53tKV8nqHisXr2bc6Gs8CdH5TOGOx6jOhMdoTG1glzLe6moGx3Aa2S4gE7yC4qy
O/r2K+3yv0E4x+6ITLNKoOrO87naLi1mS2hfP8YCes+bVW71f/HZUu9Nx+469qzr
9/7EtXQZeCkngMY1klmdAwy/dzslMxq7fmWYZh6/V+SYnBqvzoCBFeiNdVbhWsEf
ZWYkv2TxdTtcib5xfGxlTkRKvf+Dy6TrtZnjTx6eWqxpH2kkPhCZAmG2jRjiBLPt
RbOhxHZUFPaSz+Brihd5qdU5GPRMcBguvD0ROislak0otcuqetGD/vJnP7XnNIyU
Z9iGWbxPpLjnYQ69mRDkVAYz3VK4to8Y3eUESMrNDvji+V4JHjawBcFFHBhwgBIf
//hLId18ibOis7XGyyaxpIul7GjDex0qkWvEQa8ZQwehH0eMwIPNVin9lenvZC/P
UsoBgsMD0abM6buhaQvr24yIlW2DvyNRbkzuqg4LUVBVN9pkcKpZbn26arGYVdKf
YeTDZQzPN0Bjc6M5YfAN/YHnM0qQ3vVFtrjcHdQ7lmp5uHakasA=
=lM7n
-----END PGP SIGNATURE-----

--li5iucugih5sqoux--

