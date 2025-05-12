Return-Path: <linux-man+bounces-2910-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C62C5AB4418
	for <lists+linux-man@lfdr.de>; Mon, 12 May 2025 20:52:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 29AC93BCA2D
	for <lists+linux-man@lfdr.de>; Mon, 12 May 2025 18:51:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BF8D1E5705;
	Mon, 12 May 2025 18:52:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Tp66h7TF"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3AC622B59D
	for <linux-man@vger.kernel.org>; Mon, 12 May 2025 18:52:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747075927; cv=none; b=QiUT4lP+3uFPXE5QqqUX/8KhEL7dKdQYVaS4uWVzOMKPyGdfwLCiEt4qwi4sOTJwGQe50GioLj2WEgRNAf6QkK2p5eEeT33VfKsdRblGa/hcP7LIdmMadCzh1xYyUbtmH3ZBjrJKaz27ZMGH5l+RuabyaQb/XXGHVn9H3Wd/Z6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747075927; c=relaxed/simple;
	bh=RQ04CHGaUcDA5AQ3KVNxA1+9NtAT32ktNQrFsp/RNAo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jGZpJp1DksxlEQFN/uC0WsFHdO/FvlatbW+unWjNRVhKC44kS9hsVvugDgojZZWtfHEP5TcoGseV1WBK8lVXse/uPru2ok9fZNsUECthSBRDc/s7YBLjsGaHOVMnLGjqUK31DRHYig1JtUwu4fNmoMQVdVxaWVfMIhvOr2NPjkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Tp66h7TF; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1747075923;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=nYkFiZ+cr2NzgiZI80i0gEcswdNkqg4ewli+fYezJ4Y=;
	b=Tp66h7TFhClld09qJWTcPYuVx4h9fvK/yKcASXsvMNv7i7rWikPpSuQtKKZPKRbuVVSWuq
	m1xuhjQ4Xrf9vR++mrSEuAxwSztDzLNypycJEuXKUE7N6mH/eohqxxmlvLWTLbjCBTkq6V
	CCs0DAqrsTcZRSLOzWyJhPzP5soSyb4=
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-617-BTUUjOuaOUCDsHb_CIZV6g-1; Mon,
 12 May 2025 14:52:01 -0400
X-MC-Unique: BTUUjOuaOUCDsHb_CIZV6g-1
X-Mimecast-MFC-AGG-ID: BTUUjOuaOUCDsHb_CIZV6g_1747075921
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EBDDB1956087;
	Mon, 12 May 2025 18:52:00 +0000 (UTC)
Received: from localhost (unknown [10.2.16.161])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 50978180045B;
	Mon, 12 May 2025 18:52:00 +0000 (UTC)
Date: Mon, 12 May 2025 14:51:59 -0400
From: Stefan Hajnoczi <stefanha@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>,
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
Message-ID: <20250512185159.GJ141177@fedora>
References: <cover.1739389071.git.amitpinhass@gmail.com>
 <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid>
 <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
 <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Fmzz7bWbkL3d8W0u"
Content-Disposition: inline
In-Reply-To: <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111


--Fmzz7bWbkL3d8W0u
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 09, 2025 at 02:54:31PM +0200, Alejandro Colomar wrote:
> Hi all,
>=20
> I've added to BCC everyone whose copyright notices have been removed
> (those that noted an email).  The full thread for this discussion can be
> found here:
> <https://lore.kernel.org/linux-man/jpin2dbnp5vpitnh7l4qmvkamzq3h3xljzsznr=
udgioox3nn72@57uybxbe3h4p/T/#u>
>=20
> Please let me know if it's okay to you to transform your copyright
> notices to make them uniform?  That is, do you approve
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=
=3D9f2986c34166085225bb5606ebfd4952054e1657>
> in what affects you?

Hi Alejandro,
I approve. Thanks!

Stefan

>=20
> I've generated the BCC with
>=20
> 	$ git show 9f2986c34166085225bb5606ebfd4952054e1657 -- man \
> 	| grep '^-[^-]' \
> 	| grep @ \
> 	| grep -o '[^     ]*@[^ ]*' \
> 	| sed 's/,//g' \
> 	| sed 's/\.$//' \
> 	| sed 's/.*(//' \
> 	| sed 's/<//' \
> 	| sed 's/>//' \
> 	| sed 's/\.)//' \
> 	| sed 's/)//' \
> 	| sort \
> 	| uniq \
> 	| sed 's/^/Bcc: /';
>=20
>=20
> Have a lovely day!
> Alex
>=20
> On Tue, Apr 08, 2025 at 11:28:29PM +0200, Alejandro Colomar wrote:
> > Hi Carlos,
> >=20
> > On Tue, Apr 08, 2025 at 04:18:35PM -0400, Carlos O'Donell wrote:
> > > On 4/8/25 8:42 AM, G. Branden Robinson wrote:
> > > > Hi Alex,
> > > >=20
> > > > At 2025-04-08T01:05:02+0200, Alejandro Colomar wrote:
> > > > > On Thu, Feb 13, 2025 at 12:20:58AM +0100, Alejandro Colomar wrote:
> > > > > > On Wed, Feb 12, 2025 at 05:02:10PM -0600, G. Branden Robinson w=
rote:
> > > > > > > If you do this, I suggest you replace these lines with someth=
ing
> > > > > > > like:
> > > > > > >=20
> > > > > > > .\" See the Git revision history at
> > > > > > > .\"   $URL
> > > > > > > .\" for records of changes and contributors to this file.
> > > > > >=20
> > > > > > Good idea.
> > > > >=20
> > > > > I'm thinking I won't do that.  I don't want to add that overhead =
to
> > > > > each page.  People interested in the history of a page will alrea=
dy
> > > > > have a look at the git history, and there they'll find the old st=
ates
> > > > > of a page, in which they'll find this information.
> > > > >=20
> > > > > And it would require some non-trivial work to add this note
> > > > > consistently.  I'll go with a removal without replacement, I thin=
k.
> > > >=20
> > > > Acknowledged.  It's been a whole 7 weeks for so, so I don't clearly
> > > > remember my reasoning from February, but my suggestion may have bee=
n at
> > > > attempt to find a "conservative" alteration to file content or the
> > > > expressed meaning of the comments.
> > > >=20
> > > > But, what's conservative in one dimension often is not in another, =
such
> > > > as "labor required".
> > > >=20
> > > > I also agree that while Git is a complex suite of tools, "git log" =
is
> > > > not among its deeper magicks.  At least not when run without argume=
nts.
> > >=20
> > > We did something similar in glibc and created a CONTRIBUTED-BY file a=
t the
> > > top-level and moved all contribution lines out of the respective
> > > files into the top-level file.
> >=20
> > Yep, a CREDITS file would be interesting.  I wouldn't keep info about
> > which specific files were written by each contributor.  That seems
> > something more appripriate for git-log(1).  The pre-git contributions
> > will be visible in old versions of the pages (i.e., if one sees
> > Jane Random Developer in CREDITS and wonders which pages she contributed
> > to, they can `git log -S 'Jane Random Developer'` and similar commands
> > to find out.
> >=20
> > Thanks!
> >=20
> >=20
> > Have a lovely night!
> > Alex
> >=20
> > >=20
> > > e.g.
> > > ~~~
> > > The glibc project stopped adding "Contributed by" lines to source fil=
es in 2012
> > > in favour of acknowledging contributors in the glibc manual and throu=
gh the git
> > > log.  The record of existing "Contributed by" lines have now been mov=
ed to this
> > > file to acknowledge contributions by these developers to glibc.
> > >=20
> > > argp/argp-test.c:
> > >     Written by Miles Bader <miles@gnu.ai.mit.edu>.
> > >=20
> > > argp/tst-argp1.c:
> > >     Contributed by Ulrich Drepper <drepper@redhat.com>, 2002.
> > > ...
> > > ~~~
> > > The top-level CONTRIBUTED-BY has ~3,000 Contributed/Written by lines.
> > >=20
> > > Sme of the authors predated the use of git and so it was simpler to k=
eep the
> > > lines somewhere as part of the transition away from "Contributed by"-=
style
> > > lines.
> > >=20
> > > --=20
> > > Cheers,
> > > Carlos.
> > >=20
> > >=20
> >=20
> > --=20
> > <https://www.alejandro-colomar.es/>
>=20
>=20
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--Fmzz7bWbkL3d8W0u
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEhpWov9P5fNqsNXdanKSrs4Grc8gFAmgiQ04ACgkQnKSrs4Gr
c8igwgf/UMdYy4uR8zgvr9Xf6VsHDOSRE2ky34q4FUTEDPtmuEbxx4Y8T4GjnaTC
gXDiSeYjXE7KwAbLqMnYgEniqMattPSN0VwxakeXCmdrWrxWgTdoS9TjfVQlESwB
Uyb10hWznreA6v5bgKHLbhDvtC76H7CocSQlVe3my8wAY0QGK27OekVgvfnqk2gp
T7trxTfCM0S0krf/5yOthBlzp4HMEw8wtCQBDhjtvPBD2HOGvu9FSBqhg/TjUV6+
D0Zy4agA1gcNT/LFyUmvXfx3TKrnv9MqM9vh8v9SvW9dqfvK2dDos6x3OKGkvdVV
PCl1I/T/zqfRYC+JrA5oI77XNz6T/A==
=zMzj
-----END PGP SIGNATURE-----

--Fmzz7bWbkL3d8W0u--


