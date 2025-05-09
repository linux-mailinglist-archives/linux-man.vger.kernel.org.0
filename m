Return-Path: <linux-man+bounces-2874-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2ACAB142B
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 14:58:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E0787B20FB9
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 12:55:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78CEC293725;
	Fri,  9 May 2025 12:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bI0rnayl"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C896293458
	for <linux-man@vger.kernel.org>; Fri,  9 May 2025 12:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746795308; cv=none; b=uc/BrKMJoqsJU0V05ZwrNhbM4+iwivpNeuFEprdzq6qiE1xg1g3uNOErWsZzUFgLM8BFOxhOeQaht9kJaVn4yP4+qgiXd2pMZAR8DfHAQR8SZReayRvWaTGrQqjVi8J9ouQnNm83OFm8emMnqWBcV++gaSbq15QrcHyduclAWRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746795308; c=relaxed/simple;
	bh=jD2z+dMneWV16LQz8e74khqpe4Mp1Nb1GEIjQEWfySE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MKy8nG+pAp/xAWG2OcliUEaQtl4jfWd4lMz/THIe6BrtXCtc82S9PUwDiLZ7e8PwdtrVJw4wRgYQOV7SXziOUNwDmHqYPrrZTHiem686yjuoxFfdTjhSUvVfmhUemqc8pVzgvv4GENn+ib11zqgSNhCJ332Si7lJNQoIetUfShc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bI0rnayl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1D27C4CEE4;
	Fri,  9 May 2025 12:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746795307;
	bh=jD2z+dMneWV16LQz8e74khqpe4Mp1Nb1GEIjQEWfySE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bI0rnayl8BeNH/ydjEJrgSYmZ3gDhDh9JEInY37qfjM2OUpz5g5095F7KANH35BFX
	 bns5HyaiajLA9pr/+kuMkPe21rDWmEgTQW/bIghxhJ/nywchQ0bK3vLYxnxfcb+Ll7
	 dNKEU+NNmshW9rCsDBnwXtTEKLvNhNFtlUVsbCb5EebbwFDiOLeO8txItjitrluPor
	 PWMgA+tsob6Zy4YUwhmLhiZBqcvwUy0/l9jhE8uVog3DKMMwFlq/vZxs/iEFl7eRGk
	 AJiYsDtBQS1lVDjFUFdCAjKRSOONYZOdiY3BZUlyq6EuruppHDWvM4Ap0lO8CGwQSP
	 2RmgdgFTgrGlQ==
Date: Fri, 9 May 2025 14:54:31 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Carlos O'Donell <carlos@redhat.com>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
Message-ID: <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
References: <cover.1739389071.git.amitpinhass@gmail.com>
 <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid>
 <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pyvrhdhlfpzweujj"
Content-Disposition: inline
In-Reply-To: <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>


--pyvrhdhlfpzweujj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Carlos O'Donell <carlos@redhat.com>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
References: <cover.1739389071.git.amitpinhass@gmail.com>
 <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid>
 <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
MIME-Version: 1.0
In-Reply-To: <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>

Hi all,

I've added to BCC everyone whose copyright notices have been removed
(those that noted an email).  The full thread for this discussion can be
found here:
<https://lore.kernel.org/linux-man/jpin2dbnp5vpitnh7l4qmvkamzq3h3xljzsznrud=
gioox3nn72@57uybxbe3h4p/T/#u>

Please let me know if it's okay to you to transform your copyright
notices to make them uniform?  That is, do you approve
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3D9=
f2986c34166085225bb5606ebfd4952054e1657>
in what affects you?

I've generated the BCC with

	$ git show 9f2986c34166085225bb5606ebfd4952054e1657 -- man \
	| grep '^-[^-]' \
	| grep @ \
	| grep -o '[^     ]*@[^ ]*' \
	| sed 's/,//g' \
	| sed 's/\.$//' \
	| sed 's/.*(//' \
	| sed 's/<//' \
	| sed 's/>//' \
	| sed 's/\.)//' \
	| sed 's/)//' \
	| sort \
	| uniq \
	| sed 's/^/Bcc: /';


Have a lovely day!
Alex

On Tue, Apr 08, 2025 at 11:28:29PM +0200, Alejandro Colomar wrote:
> Hi Carlos,
>=20
> On Tue, Apr 08, 2025 at 04:18:35PM -0400, Carlos O'Donell wrote:
> > On 4/8/25 8:42 AM, G. Branden Robinson wrote:
> > > Hi Alex,
> > >=20
> > > At 2025-04-08T01:05:02+0200, Alejandro Colomar wrote:
> > > > On Thu, Feb 13, 2025 at 12:20:58AM +0100, Alejandro Colomar wrote:
> > > > > On Wed, Feb 12, 2025 at 05:02:10PM -0600, G. Branden Robinson wro=
te:
> > > > > > If you do this, I suggest you replace these lines with something
> > > > > > like:
> > > > > >=20
> > > > > > .\" See the Git revision history at
> > > > > > .\"   $URL
> > > > > > .\" for records of changes and contributors to this file.
> > > > >=20
> > > > > Good idea.
> > > >=20
> > > > I'm thinking I won't do that.  I don't want to add that overhead to
> > > > each page.  People interested in the history of a page will already
> > > > have a look at the git history, and there they'll find the old stat=
es
> > > > of a page, in which they'll find this information.
> > > >=20
> > > > And it would require some non-trivial work to add this note
> > > > consistently.  I'll go with a removal without replacement, I think.
> > >=20
> > > Acknowledged.  It's been a whole 7 weeks for so, so I don't clearly
> > > remember my reasoning from February, but my suggestion may have been =
at
> > > attempt to find a "conservative" alteration to file content or the
> > > expressed meaning of the comments.
> > >=20
> > > But, what's conservative in one dimension often is not in another, su=
ch
> > > as "labor required".
> > >=20
> > > I also agree that while Git is a complex suite of tools, "git log" is
> > > not among its deeper magicks.  At least not when run without argument=
s.
> >=20
> > We did something similar in glibc and created a CONTRIBUTED-BY file at =
the
> > top-level and moved all contribution lines out of the respective
> > files into the top-level file.
>=20
> Yep, a CREDITS file would be interesting.  I wouldn't keep info about
> which specific files were written by each contributor.  That seems
> something more appripriate for git-log(1).  The pre-git contributions
> will be visible in old versions of the pages (i.e., if one sees
> Jane Random Developer in CREDITS and wonders which pages she contributed
> to, they can `git log -S 'Jane Random Developer'` and similar commands
> to find out.
>=20
> Thanks!
>=20
>=20
> Have a lovely night!
> Alex
>=20
> >=20
> > e.g.
> > ~~~
> > The glibc project stopped adding "Contributed by" lines to source files=
 in 2012
> > in favour of acknowledging contributors in the glibc manual and through=
 the git
> > log.  The record of existing "Contributed by" lines have now been moved=
 to this
> > file to acknowledge contributions by these developers to glibc.
> >=20
> > argp/argp-test.c:
> >     Written by Miles Bader <miles@gnu.ai.mit.edu>.
> >=20
> > argp/tst-argp1.c:
> >     Contributed by Ulrich Drepper <drepper@redhat.com>, 2002.
> > ...
> > ~~~
> > The top-level CONTRIBUTED-BY has ~3,000 Contributed/Written by lines.
> >=20
> > Sme of the authors predated the use of git and so it was simpler to kee=
p the
> > lines somewhere as part of the transition away from "Contributed by"-st=
yle
> > lines.
> >=20
> > --=20
> > Cheers,
> > Carlos.
> >=20
> >=20
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--pyvrhdhlfpzweujj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgd+wEACgkQ64mZXMKQ
wqkLzBAAgYwk3GA6gDS5ccl1eS3+aXHZruXFLEwgoxBawjFmBmOn+fwxptbJR0gG
whU4ijTePNRTr0RviihhO6G8hMnMgUUwIuC1ksS1Terg/jXNTc6mKRnEagXRJGMq
VBu4usTTz0cgrAfrdP2r6zvtmvgLjJYmEwPfQwyhqdtnUlk/Pynab56jpPqgKA0u
Xpni/oogz6cOzhLdiEDms5c7cJeM2ex4Qg2hrU8v3jIoB7dvXodi6KB6aW83C/4O
O4If6djJz+6lssyNvL/PbHj30jTYMCyhM/0Tu34zQ2pwfRYP7al6DJkRMczk+BHK
OhfHYwZtr3MyvVJBkPc01fwfqiywpGzOmAh5tNrwCmfLG2yKKXe9pT320W+gVm3G
fQSDb59H+x7lxl0qH0uhefumH323602OIlK56Q5wXA7mO+j4Mb3aN0JE3MnZ4InW
6IdR3LPh2WC39MBCfnIyFPOIKNLWxmuHLeKl4CNzb4QOShfyYlvZWtWZBgtf2u0u
s4EYAyY4/Rz20KgTYWGG8vyxN/ETKsIYlDOzK2X7N4IRQ7XURCW6lpiG+v5LdqUF
WuDAhNBxWSMEZ6VzQKGpphTlSkH1TjU9xkEdGQYfFFwDWOSRK922S/Vs/alc1d2h
uK1x4lFV5A0C3R1ep7EwuCggXv7RQenr9IU21Fhr/6sTrOcWb1A=
=J8Je
-----END PGP SIGNATURE-----

--pyvrhdhlfpzweujj--

