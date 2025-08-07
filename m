Return-Path: <linux-man+bounces-3377-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 02113B1D0DC
	for <lists+linux-man@lfdr.de>; Thu,  7 Aug 2025 04:14:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A03F318C6EC3
	for <lists+linux-man@lfdr.de>; Thu,  7 Aug 2025 02:14:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D109C1A704B;
	Thu,  7 Aug 2025 02:14:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b="riLzozBa"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9749D19E7F7
	for <linux-man@vger.kernel.org>; Thu,  7 Aug 2025 02:14:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754532860; cv=none; b=JUfXyRl1i4fCPS8XInwYSqXuQiVkYwowy6BIUC+CEMLwZIqqX1oa9CrZlLy7JuyTSOotOYRfZp21T+dAKD+20ugmludIQJrNwXASO6BdIymJoc/u7Uiw6Q7h+0/3wxQ8MfFjYyWhO3BhQY30XdtG/TZNgbQ6D/ac8QaNw8kmB4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754532860; c=relaxed/simple;
	bh=XFX/Zoa4U+23SXSD3ol1oN0mQO1jNSiE6+/UOMdc+5Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h3pE+itcMcNaIwREcprKycFz7bXKH4zDjh7Mrkiy5yFjA1/45KVwfYDxhRZbZ7Xq5LHelsadlqG8O/4R6+1+ZEZVxMN2DFzqICsV62M5RgZih1evOZwg/RO6rgZUvL5VaF/EZ1h5/i2WpykoO3HtQEu2aps2qrcEwTdYHor3yCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com; spf=pass smtp.mailfrom=cyphar.com; dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b=riLzozBa; arc=none smtp.client-ip=80.241.56.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cyphar.com
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4by9hP3nszz9srK;
	Thu,  7 Aug 2025 04:14:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyphar.com; s=MBO0001;
	t=1754532853;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=GP2Lx0igtGNyIe6W0X8BQfca+yVT5yRje7zUP+GLR4U=;
	b=riLzozBaow+cmp3YU9wIVRoD2fWj/6CNZAzma1bJ293jvaGGbpxWO6x525ljO5kS6mPQhJ
	6IiTTEY+r3grxzhStWf7ZLuRrdxlCECSFpU3j7TN7JBwsHdYs309kBbovKj9/Nm8s1ktnh
	L2ahfQTnBt93/0QbWCPNObZ4quH+ca+6xG5ma8IOBJso+75KQJdp1+hhxsUEkjEGVlAAYt
	9TF744JF33Q/Ws3k/NSZixwKGg17zlnU8uJToxk/f3NZ1MkTF8KKBNiYkuBE1tPQ1Vh0vI
	ECbON4NHize7aKxjmCvLXEwsV5l3G6s5oLRBEiYLZMwleUESfP3RWDZrOzmzAw==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of cyphar@cyphar.com designates 2001:67c:2050:b231:465::202 as permitted sender) smtp.mailfrom=cyphar@cyphar.com
Date: Thu, 7 Aug 2025 12:14:00 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Askar Safin <safinaskar@zohomail.com>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>, brauner <brauner@kernel.org>, dhowells <dhowells@redhat.com>, 
	jack <jack@suse.cz>, linux-man <linux-man@vger.kernel.org>, 
	"mtk.manpages" <mtk.manpages@gmail.com>, viro <viro@zeniv.linux.org.uk>
Subject: Re: How and when to control hyphenation (was: [PATCH 05/10]
 fsconfig.2: document 'new' mount api)
Message-ID: <2025-08-07.1754532747-hissy-sailor-strict-surname-sharper-subtitle-wsVAqG@cyphar.com>
References: <20250806-new-mount-api-v1-5-8678f56c6ee0@cyphar.com>
 <20250806074619.59685-1-safinaskar@zohomail.com>
 <20250806075021.ndodyx44xsyzxcu6@illithid>
 <2025-08-06.1754469395-mega-bleep-potent-sharpie-prepaid-quiz-2a9Vy3@cyphar.com>
 <20250806091157.ldpnbcbtik4eudjh@illithid>
 <k34wjawrqcq2aqohsovkca2kad3ba3kmg57zwvrzw4wujq62dg@rittgebtd6ev>
 <1987fc9ace9.ad1bf95b21215.9089923989658816796@zohomail.com>
 <nrs5g7ftfyft5oxyywxpfvqfzp2pz7aevpp2j3s2rlohg2cedi@ahriex4sfjbk>
 <2025-08-06.1754495159-milky-sorcerer-initial-handbook-chief-sabers-600j6C@cyphar.com>
 <wdqayj3fchloe63ihmc2xfraa6fluwj62pnpa2z3b3pl2suaaj@av63luwddd6i>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="axxlcxzggczaibhc"
Content-Disposition: inline
In-Reply-To: <wdqayj3fchloe63ihmc2xfraa6fluwj62pnpa2z3b3pl2suaaj@av63luwddd6i>
X-Rspamd-Queue-Id: 4by9hP3nszz9srK


--axxlcxzggczaibhc
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: How and when to control hyphenation (was: [PATCH 05/10]
 fsconfig.2: document 'new' mount api)
MIME-Version: 1.0

On 2025-08-06, Alejandro Colomar <alx@kernel.org> wrote:
> Hi Aleksa,
>=20
> On Thu, Aug 07, 2025 at 01:56:03AM +1000, Aleksa Sarai wrote:
> > On 2025-08-06, Alejandro Colomar <alx@kernel.org> wrote:
> > > I've also worked on a build system that will help you with diagnostics
> > > if you make mistakes.  Please run 'make -R help' to see what it has to
> > > offer.  'make -R lint-man' is the most obvious thing one should run to
> > > verify their manual-page patches.
> >=20
> > Maybe it's just me, but I was confused by the output of "make -R help".
> > It wasn't clear to me the first few times I read it that the output is
> > telling me to run
> >=20
> >   $ make -R -p nothing \
> >           | grep '^\.PHONY:' \
> >           | tr ' ' '\n' \
> >           | grep -v '^\.PHONY:' \
> >           | sort;
> >=20
> > in order to get a list of make targets (and is actually a generic way of
> > getting a list of make targets).
>=20
> Yup; if you add a 'nothing' target to any Makefile, this should work
> (if they use .PHONY correctly).  (I just tried it with the Linux
> Makefile just to see, and it did a good job.  The names of the targets
> are a bit weird, and I don't know what most of them are for, but at
> least we can list them.)
>=20
> I developed that script when I got tired of updating the hard-coded
> help, as it always got out of sync with the real Makefile.  :)

I'll definitely keep this "make -p" pipeline as a neat tool in my
toolbelt.

> > Would it be possible for "make -R help"
> > to have a pre-defined list of the most common commands to run, like the
> > kernel makefile does?
>=20
> Yep, I could list and explain these:
>=20
> 	all
> 	build
> 	build-all
> 	check
> 	clean
> 	dist
> 	distcheck
> 	help
> 	install
> 	install-all
> 	lint
> 	nothing
> 	uninstall
>=20
> And tell the user to run the command for the complete list.
> Sounds reasonable to me.
>=20
> How about this?
>=20
> 	diff --git i/GNUmakefile w/GNUmakefile
> 	index 9530a66f5..e1cc44bbb 100644
> 	--- i/GNUmakefile
> 	+++ w/GNUmakefile
> 	@@ -46,7 +46,22 @@ nothing:;
> 	=20
> 	 .PHONY: help
> 	 help:
> 	-       $(info  $(INFO_)To see a list of targets, run:)
> 	+       $(info  $(INFO_)Common targets:)
> 	+       $(info  $(INFO_)        all             Synonym of 'build')
> 	+       $(info  $(INFO_)        build           Build the usual stuff)
> 	+       $(info  $(INFO_)        build-all       Build everything)
> 	+       $(info  $(INFO_)        check           Check the results of the=
 build)
> 	+       $(info  $(INFO_)        clean           Remove all temporary fil=
es)
> 	+       $(info  $(INFO_)        dist            Produce the release tarb=
all)
> 	+       $(info  $(INFO_)        distcheck       Check the release tarbal=
l)
> 	+       $(info  $(INFO_)        help            Print this help)
> 	+       $(info  $(INFO_)        install         Install the usual stuff)
> 	+       $(info  $(INFO_)        install-all     Install everything)
> 	+       $(info  $(INFO_)        lint            Lint the source code)
> 	+       $(info  $(INFO_)        nothing         Do nothing; useful for d=
ebugging)
> 	+       $(info  $(INFO_)        uninstall       Uninstall everything (mi=
ght leave traces))
> 	+       $(info  )
> 	+       $(info  $(INFO_)To see the full list of targets, run:)
> 		$(info  $(INFO_)        $$ make -R -p nothing \)
> 		$(info  $(INFO_)        | grep '^\.PHONY:' \)
> 		$(info  $(INFO_)        | tr ' ' '\n' \)
>=20
> Here's the output:
>=20
> 	$ make -R help
> 	Common targets:
> 		all		Synonym of 'build'
> 		build		Build the usual stuff
> 		build-all	Build everything
> 		check		Check the results of the build
> 		clean		Remove all temporary files
> 		dist		Produce the release tarball
> 		distcheck	Check the release tarball
> 		help		Print this help
> 		install		Install the usual stuff
> 		install-all	Install everything
> 		lint		Lint the source code
> 		nothing		Do nothing; useful for debugging
> 		uninstall	Uninstall everything (might leave traces)
>=20
> 	To see the full list of targets, run:
> 		$ make -R -p nothing \
> 		| grep '^\.PHONY:' \
> 		| tr ' ' '\n' \
> 		| grep -v '^\.PHONY:' \
> 		| sort;
>=20
> 	To see a list of variables, run:
> 		$ find GNUmakefile share/mk/configure -type f \
> 		| sort \
> 		| xargs grep '^[^[:space:]].*=3D' \
> 		| sed 's/=3D.*/=3D/' \
> 		| grep -v -e ':DEFAULT_.*=3D' -e ':MAKEFILE_.*INCLUDED :=3D';
>=20
> 	To see a list of dependencies (package/program), run:
> 		$ find share/mk/configure/build-depends -type f \
> 		| sed 's,share/mk/configure/build-depends/,,' \
> 		| sed 's,\.mk,,' \
> 		| sort;

Looks good to me!

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
https://www.cyphar.com/

--axxlcxzggczaibhc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS2TklVsp+j1GPyqQYol/rSt+lEbwUCaJQL6AAKCRAol/rSt+lE
b1SYAP0bvcEB6GW3aVxDDpI7bSqIZDrSnZvT9l4lx1/LxnW7xQD9H1nEC10XR9Im
zZjcftc/IVf2U/n9yM7p0A3ejPy5DQo=
=tx27
-----END PGP SIGNATURE-----

--axxlcxzggczaibhc--

