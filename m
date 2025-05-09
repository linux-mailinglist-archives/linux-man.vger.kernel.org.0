Return-Path: <linux-man+bounces-2895-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB06AB1CB6
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 20:54:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1F95A3A5673
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 18:53:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63F852405E4;
	Fri,  9 May 2025 18:53:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YkeyjFId"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C7922D4CE
	for <linux-man@vger.kernel.org>; Fri,  9 May 2025 18:53:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746816837; cv=none; b=BApjbdQH6nmHDpdu2klgLsvf4DnnCXENP3Fa10e69/xRP54Oo9/KwzhPabBkjt4w1ZqnOfTe9turyxO9AuhmtWHf10TDtUxYzjEAyO3AdwiYpLDxGgPV+cGF3PdSBRF/yI5vS8QXhbZqCzhlfeGFW5q3nm0HYMsq5UKWmnPfuxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746816837; c=relaxed/simple;
	bh=KlnFX1+eUNIM6xIAb+i3pADhQVLVAE5hRq7b7qwy9O8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tmFG6DOPWQmdfPgdIlmhPqzp6MyDgnAzF7CbT3ephiQ8J9e6+WBcs6kjzvECMHUnqmxAUrJP/W8QtBjBZWxoZykIbL6l4dRoOSYra1nXKgXIiMqlbqh7CGKiFIS33z9yicbTgGjF5QXK8IHhl5qjY3prNfcWy4Cm3OQYJ74HNrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YkeyjFId; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B5F2C4CEE4;
	Fri,  9 May 2025 18:53:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746816835;
	bh=KlnFX1+eUNIM6xIAb+i3pADhQVLVAE5hRq7b7qwy9O8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YkeyjFId6eawQFhzTNQmMBZ4DA99tbuhehHKDA3K0pW5RYUS8Kr89qTrKNT2ISgoE
	 sV0rt5Rl3soHEweiFg33ExsK3PC/gssnCLv8KmRn/VgMWnLIMe+DH8cRFyFcqLGlqp
	 GyPiZh+RasJNKKzyuyPEFbAWzB2DjSgk3nBxmAzY/KA/LPEGkyMEjxfJJB17q0gG+l
	 sT+kbVYtXVCYRCUs0XZgnywINZ6JeHJpxHu3kf/oHXgwkTTpSPezfWehxdmL9Wo8Vj
	 TJ+ygeUWJo01C22rrUr7J4fz8+vlYNRLdeKxtwol2uOZWHJ+WeuxgvKvX5GJoxyrdC
	 y6jLb5UCl9gXQ==
Date: Fri, 9 May 2025 20:53:52 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "Christoph Lameter (Ampere)" <cl@gentwo.org>
Cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
Message-ID: <zrz52gs465ywbyumumlayjj5qumjab2egluw4a6z6cpf6frwae@vigff7v53lg5>
References: <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid>
 <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
 <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
 <3b12f92f-3223-488d-6481-f8f010258d12@gentwo.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7ldvb3hocu3zg2ux"
Content-Disposition: inline
In-Reply-To: <3b12f92f-3223-488d-6481-f8f010258d12@gentwo.org>


--7ldvb3hocu3zg2ux
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "Christoph Lameter (Ampere)" <cl@gentwo.org>
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
 <3b12f92f-3223-488d-6481-f8f010258d12@gentwo.org>
MIME-Version: 1.0
In-Reply-To: <3b12f92f-3223-488d-6481-f8f010258d12@gentwo.org>

Hi Christoph,

On Fri, May 09, 2025 at 11:22:21AM -0700, Christoph Lameter (Ampere) wrote:
> There is a pending patch to standardize all my email addresses in the
> kernel. This patch may conflict with the one in Andrew's tree.
>=20
> The Email address going forward should be
>=20
> Christoph Lameter <cl@gentwo.org>

Done.  Thanks!

Since the man-pages repo is separate from the kernel, it doesn't
conflict with the kernel one.


Have a lovely day!
Alex

>=20
>=20
>=20
> On Fri, 9 May 2025, Alejandro Colomar wrote:
>=20
> > Hi all,
> >
> > I've added to BCC everyone whose copyright notices have been removed
> > (those that noted an email).  The full thread for this discussion can be
> > found here:
> > <https://lore.kernel.org/linux-man/jpin2dbnp5vpitnh7l4qmvkamzq3h3xljzsz=
nrudgioox3nn72@57uybxbe3h4p/T/#u>
> >
> > Please let me know if it's okay to you to transform your copyright
> > notices to make them uniform?  That is, do you approve
> > <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=
=3D9f2986c34166085225bb5606ebfd4952054e1657>
> > in what affects you?
> >
> > I've generated the BCC with
> >
> > 	$ git show 9f2986c34166085225bb5606ebfd4952054e1657 -- man \
> > 	| grep '^-[^-]' \
> > 	| grep @ \
> > 	| grep -o '[^     ]*@[^ ]*' \
> > 	| sed 's/,//g' \
> > 	| sed 's/\.$//' \
> > 	| sed 's/.*(//' \
> > 	| sed 's/<//' \
> > 	| sed 's/>//' \
> > 	| sed 's/\.)//' \
> > 	| sed 's/)//' \
> > 	| sort \
> > 	| uniq \
> > 	| sed 's/^/Bcc: /';
> >
> >
> > Have a lovely day!
> > Alex
> >
> > On Tue, Apr 08, 2025 at 11:28:29PM +0200, Alejandro Colomar wrote:
> > > Hi Carlos,
> > >
> > > On Tue, Apr 08, 2025 at 04:18:35PM -0400, Carlos O'Donell wrote:
> > > > On 4/8/25 8:42 AM, G. Branden Robinson wrote:
> > > > > Hi Alex,
> > > > >
> > > > > At 2025-04-08T01:05:02+0200, Alejandro Colomar wrote:
> > > > > > On Thu, Feb 13, 2025 at 12:20:58AM +0100, Alejandro Colomar wro=
te:
> > > > > > > On Wed, Feb 12, 2025 at 05:02:10PM -0600, G. Branden Robinson=
 wrote:
> > > > > > > > If you do this, I suggest you replace these lines with some=
thing
> > > > > > > > like:
> > > > > > > >
> > > > > > > > .\" See the Git revision history at
> > > > > > > > .\"   $URL
> > > > > > > > .\" for records of changes and contributors to this file.
> > > > > > >
> > > > > > > Good idea.
> > > > > >
> > > > > > I'm thinking I won't do that.  I don't want to add that overhea=
d to
> > > > > > each page.  People interested in the history of a page will alr=
eady
> > > > > > have a look at the git history, and there they'll find the old =
states
> > > > > > of a page, in which they'll find this information.
> > > > > >
> > > > > > And it would require some non-trivial work to add this note
> > > > > > consistently.  I'll go with a removal without replacement, I th=
ink.
> > > > >
> > > > > Acknowledged.  It's been a whole 7 weeks for so, so I don't clear=
ly
> > > > > remember my reasoning from February, but my suggestion may have b=
een at
> > > > > attempt to find a "conservative" alteration to file content or the
> > > > > expressed meaning of the comments.
> > > > >
> > > > > But, what's conservative in one dimension often is not in another=
, such
> > > > > as "labor required".
> > > > >
> > > > > I also agree that while Git is a complex suite of tools, "git log=
" is
> > > > > not among its deeper magicks.  At least not when run without argu=
ments.
> > > >
> > > > We did something similar in glibc and created a CONTRIBUTED-BY file=
 at the
> > > > top-level and moved all contribution lines out of the respective
> > > > files into the top-level file.
> > >
> > > Yep, a CREDITS file would be interesting.  I wouldn't keep info about
> > > which specific files were written by each contributor.  That seems
> > > something more appripriate for git-log(1).  The pre-git contributions
> > > will be visible in old versions of the pages (i.e., if one sees
> > > Jane Random Developer in CREDITS and wonders which pages she contribu=
ted
> > > to, they can `git log -S 'Jane Random Developer'` and similar commands
> > > to find out.
> > >
> > > Thanks!
> > >
> > >
> > > Have a lovely night!
> > > Alex
> > >
> > > >
> > > > e.g.
> > > > ~~~
> > > > The glibc project stopped adding "Contributed by" lines to source f=
iles in 2012
> > > > in favour of acknowledging contributors in the glibc manual and thr=
ough the git
> > > > log.  The record of existing "Contributed by" lines have now been m=
oved to this
> > > > file to acknowledge contributions by these developers to glibc.
> > > >
> > > > argp/argp-test.c:
> > > >     Written by Miles Bader <miles@gnu.ai.mit.edu>.
> > > >
> > > > argp/tst-argp1.c:
> > > >     Contributed by Ulrich Drepper <drepper@redhat.com>, 2002.
> > > > ...
> > > > ~~~
> > > > The top-level CONTRIBUTED-BY has ~3,000 Contributed/Written by line=
s.
> > > >
> > > > Sme of the authors predated the use of git and so it was simpler to=
 keep the
> > > > lines somewhere as part of the transition away from "Contributed by=
"-style
> > > > lines.
> > > >
> > > > --
> > > > Cheers,
> > > > Carlos.
> > > >
> > > >
> > >
> > > --
> > > <https://www.alejandro-colomar.es/>
> >
> >
> >
> >

--=20
<https://www.alejandro-colomar.es/>

--7ldvb3hocu3zg2ux
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgeTz8ACgkQ64mZXMKQ
wqlZTQ//dbFB2fgas577CFPPr3gS6VcH5hjVnhSotGFwAPHfHZkR1euTB4TIEYgq
9Oao68ec9Y9ECnTejNZnOa0P7hSn+G3RyicE9UzQ9LO96zZ7IVqOuumLF6p0hWss
xYuqswpcWSuJ71sGldh0n5Imybh9DKmWepLQ/J14Sdv3D/gh8IiM/TlBlD+JHdMq
z81Rd0zWAMS/sLxPo71li7PlGMTrifArZeVuSQwY/CLDphWrsSKdd+DvwG4GQsfj
p6LLxmhAGChLM/Jg3/44LP/uzNUIM1DBtOZRfR7fV13PyCnaDdC2mEm0tHnfyl/G
82L3KTNK0etZtvp1BggpVK2dQEP5nGLfWMO+Zzn8q+Ob7/sUiDw8NObpwO4wCI5+
4X8Zc0bHrlxaRn4ydUIVsIH+Y6CU4AmXgJ/KOVr10K3WOOCPci+qRlBUqYChVAFq
bFsJq4IvCTepod1+TXcO3BEeOwVWj6T/aF0eC84rQTFBsiA612CFsPNCJiToPEh9
fnAwa5EA1YL612IqgLtglu3mh4qwBv65umAFT20Kx8CIOCqAzf+tWLfRnsIh9n3I
I6DacnTgMjI2F2GSvxgfHrOuFyi8xOBx5bxnRCP0vzeyvlbGRJCjIDtMDaJZqnRw
/Dfc5JGnOmmPPpHUyTMQ9KZfmOTbDYWuK8AyO/PxJK5H/C8zcxk=
=1tJY
-----END PGP SIGNATURE-----

--7ldvb3hocu3zg2ux--

