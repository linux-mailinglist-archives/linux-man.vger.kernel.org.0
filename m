Return-Path: <linux-man+bounces-2757-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 90DC8A81794
	for <lists+linux-man@lfdr.de>; Tue,  8 Apr 2025 23:28:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1E4B13BC425
	for <lists+linux-man@lfdr.de>; Tue,  8 Apr 2025 21:28:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67ADD254867;
	Tue,  8 Apr 2025 21:28:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ey7ResFP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276112528E8
	for <linux-man@vger.kernel.org>; Tue,  8 Apr 2025 21:28:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744147710; cv=none; b=jsjHpmM+fENcLqSKFpm9OhCx+aOXrL+whpduxBse1QUiKsZq/NM+iXwlk8yrcVXDKw2ML7P8qRlC2Ii9Zk+l0FZMMta4NrFIfgANHzuIFMpu8XbbMOrGMIzpm6HeNz/0veEOVowEvOKubjj6MGmiyv9vo9dpO/smbvEMWHfFNwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744147710; c=relaxed/simple;
	bh=IxM4zQKLi+Bp5TB0zPoYQphEnNqVTZQYEl/8w6t4rTQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qZU8BJGmoZltZmApCEcXM/WsUuI6Pe/MTQcOgIqO1+TZjqMSV7Pd0+LdbozjbO3pFIu0a54vX49ilgqlRS8bjQwfhPnVd1Td9CVsLprGVDUymTbQzYYzMzW73nodjufqwI1moz9+FB0gRm+eV6fPfu2ljbrkSGrG7kzAxA029rU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ey7ResFP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE7BEC4CEE5;
	Tue,  8 Apr 2025 21:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744147709;
	bh=IxM4zQKLi+Bp5TB0zPoYQphEnNqVTZQYEl/8w6t4rTQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ey7ResFPUaNqAKio1Q2oN5L1Pruu8DqM8XdL4E32akjhct/OD165ommn7Yjt0aWfO
	 zcEBPewv372jEG6OCTSmfgXIpsamNpZe5E9rjjs0b29+VStF5evXPWZyoGT55mpMO9
	 zVwPTtjTbumC+L9AT8/iOYTbmPAPVnH6vZ2+S1xvb2zw2JK1bb0xPD+VxTA1I0gCc9
	 HOCzp/bgekrfbWDZo6YDqqB+mIGZY+iNcNKOHkykcBzZ3QbNnKLXFlk41c5pZiz+FC
	 4eH4wbXcAJZa7jy9gWvwjOwJc8kNynHQ/FR8cNM8Ce9vFbfXWKBQfPPh1XCh2co8oA
	 Cl85Ehv5t0Jkg==
Date: Tue, 8 Apr 2025 23:28:26 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	linux-man@vger.kernel.org
Subject: Re: Removing in-source contribution records contributer
Message-ID: <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
References: <cover.1739389071.git.amitpinhass@gmail.com>
 <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid>
 <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="svagspsblrqvkpam"
Content-Disposition: inline
In-Reply-To: <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>


--svagspsblrqvkpam
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	linux-man@vger.kernel.org
Subject: Re: Removing in-source contribution records contributer
References: <cover.1739389071.git.amitpinhass@gmail.com>
 <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid>
 <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
MIME-Version: 1.0
In-Reply-To: <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>

Hi Carlos,

On Tue, Apr 08, 2025 at 04:18:35PM -0400, Carlos O'Donell wrote:
> On 4/8/25 8:42 AM, G. Branden Robinson wrote:
> > Hi Alex,
> >=20
> > At 2025-04-08T01:05:02+0200, Alejandro Colomar wrote:
> > > On Thu, Feb 13, 2025 at 12:20:58AM +0100, Alejandro Colomar wrote:
> > > > On Wed, Feb 12, 2025 at 05:02:10PM -0600, G. Branden Robinson wrote:
> > > > > If you do this, I suggest you replace these lines with something
> > > > > like:
> > > > >=20
> > > > > .\" See the Git revision history at
> > > > > .\"   $URL
> > > > > .\" for records of changes and contributors to this file.
> > > >=20
> > > > Good idea.
> > >=20
> > > I'm thinking I won't do that.  I don't want to add that overhead to
> > > each page.  People interested in the history of a page will already
> > > have a look at the git history, and there they'll find the old states
> > > of a page, in which they'll find this information.
> > >=20
> > > And it would require some non-trivial work to add this note
> > > consistently.  I'll go with a removal without replacement, I think.
> >=20
> > Acknowledged.  It's been a whole 7 weeks for so, so I don't clearly
> > remember my reasoning from February, but my suggestion may have been at
> > attempt to find a "conservative" alteration to file content or the
> > expressed meaning of the comments.
> >=20
> > But, what's conservative in one dimension often is not in another, such
> > as "labor required".
> >=20
> > I also agree that while Git is a complex suite of tools, "git log" is
> > not among its deeper magicks.  At least not when run without arguments.
>=20
> We did something similar in glibc and created a CONTRIBUTED-BY file at the
> top-level and moved all contribution lines out of the respective
> files into the top-level file.

Yep, a CREDITS file would be interesting.  I wouldn't keep info about
which specific files were written by each contributor.  That seems
something more appripriate for git-log(1).  The pre-git contributions
will be visible in old versions of the pages (i.e., if one sees
Jane Random Developer in CREDITS and wonders which pages she contributed
to, they can `git log -S 'Jane Random Developer'` and similar commands
to find out.

Thanks!


Have a lovely night!
Alex

>=20
> e.g.
> ~~~
> The glibc project stopped adding "Contributed by" lines to source files i=
n 2012
> in favour of acknowledging contributors in the glibc manual and through t=
he git
> log.  The record of existing "Contributed by" lines have now been moved t=
o this
> file to acknowledge contributions by these developers to glibc.
>=20
> argp/argp-test.c:
>     Written by Miles Bader <miles@gnu.ai.mit.edu>.
>=20
> argp/tst-argp1.c:
>     Contributed by Ulrich Drepper <drepper@redhat.com>, 2002.
> ...
> ~~~
> The top-level CONTRIBUTED-BY has ~3,000 Contributed/Written by lines.
>=20
> Sme of the authors predated the use of git and so it was simpler to keep =
the
> lines somewhere as part of the transition away from "Contributed by"-style
> lines.
>=20
> --=20
> Cheers,
> Carlos.
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--svagspsblrqvkpam
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmf1lPoACgkQ64mZXMKQ
wqkgkg/+KrD4GAPgU044ajm7sKW8MrDlzZTsVWj1IsDpLaiJ+qpyZAHQdSb50DIV
CXflHGDseKhZ6+EukC7xh+f6AKxXU3XkOyc8Z6ejD4U0NfJgm3LRxjb+y0u/Eyqo
aUW+0ki5WF+b9Ylnk5Vraaq55OCa+eiHWjvDg3/73uN3w8pK26gl4tKw/8bYyDwr
DOHN2QyqIhAYg0j/4ttkgyuyeOyDhE+nfPhbxMTCfOaB388OO5+5+uw422j8WhWQ
pA7uQ6O8MG1XpfkOHo5Zm+u0Frnd9iQ37mvDo2UAzZtUa6xcUG8o5agNmkElhDKJ
QDCUUZgaQTKk7C4en4fTP2o4bcOTAf2NMw6ngEjQRXJSGUL/GcQMa8RAcufRDUqU
O6iP5zT1IvQu78B5hFXyBLV8erIMBUAh7QSU1V8AECAbWvXiYZoXyOAVJk58quQW
oL3Pn8zEj5qqtst7jXt12QohW2/veoV6G1xdryCiiPL0CmBds4KLrhIqVUSMmGQ1
RRfa+aDOXcvJn9WSlVOkqR/OYVQkbuHsN3pC3OUgCLfiq2hyGXc+rjrQSo/gSxEk
cyScvtTcYRvLw9av6JzLFJ+w7zJN6ule8DYNSC1yn0+xyvWf2sshoGeVugqM/CR0
wle6cI3eJSCgqv97Vo9vnZeGrSc3PhX9d3Nk1+B7c3tHBb0t9cY=
=1YjT
-----END PGP SIGNATURE-----

--svagspsblrqvkpam--

