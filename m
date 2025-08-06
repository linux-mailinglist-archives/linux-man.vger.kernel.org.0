Return-Path: <linux-man+bounces-3375-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 132FBB1CEC1
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 23:57:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 19225163E41
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 21:57:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C16622A4E9;
	Wed,  6 Aug 2025 21:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GwcCgKg8"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0DF92E36E7
	for <linux-man@vger.kernel.org>; Wed,  6 Aug 2025 21:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754517467; cv=none; b=gZOSmB60T8GoY2ac0dMYnErkwn4jaxwgI12zcQJGVjYjtSMPMasgsHnh8X+ShEZHLfuZSrBFFtjAIzasXPkHoIBlZ16HhMFRjg623GVIunOM6XfVmkVcxXUOSGr1wpCf0Jr8SKwv39m6qMjYpXqSH/jG7k7emSi03L3Rd7LYxBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754517467; c=relaxed/simple;
	bh=Mku0ma3XOhHHiSCSp0cSn/dVJbJH8Nt0Zry4kw91qdY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Xk6rvpzFdie2uRtNYO6QcVXu6qJOM2uepknotIfQtqaVWtunhWsqYodUpdJLzFQ8gKLeMDN+QTkUsOlvYAvMyMh1YhM+hqVO5TcqNw5mpfAITEAE0ngzVO9IgsfNvJiyAEdhqINDGz9BvKhYiNTmbBsdM6P9N1cVSxawnXZ5r7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GwcCgKg8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A69E5C4CEF7;
	Wed,  6 Aug 2025 21:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754517466;
	bh=Mku0ma3XOhHHiSCSp0cSn/dVJbJH8Nt0Zry4kw91qdY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GwcCgKg88UM74LMi7blgowQ/zE8SjX5yKuZQqcvVW1qO5k3Mz8ws5aiiAKCv2poB7
	 NZH21JxogJUI2fuOKDoMhmqTb4/fs7aP1gS9Wr2u3FsP9Y1A5d55tEvaPiJR5aiu2e
	 NqDfzzvf+fUjzNyv7NZYySPH90IaoH8Sj27otpXGxr2o6EJzEmkxIag1lL5cdnQ11M
	 Q/Vq+BKJ+X6fQ+8FZoDFvpUG3HT35WU9eQQK1F8YBhB9NyIf7Pfg+fgD3cG4JzJ3l0
	 goHcnJMS1AIGFqvPV5YOmxjHiwN1jWP9wWQfhBrum7Ti85nbNIdjfrUqjeGMvx6WCv
	 HgyNESVSVHHoA==
Date: Wed, 6 Aug 2025 23:57:38 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Aleksa Sarai <cyphar@cyphar.com>
Cc: Askar Safin <safinaskar@zohomail.com>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>, brauner <brauner@kernel.org>, dhowells <dhowells@redhat.com>, 
	jack <jack@suse.cz>, linux-man <linux-man@vger.kernel.org>, 
	"mtk.manpages" <mtk.manpages@gmail.com>, viro <viro@zeniv.linux.org.uk>
Subject: Re: How and when to control hyphenation (was: [PATCH 05/10]
 fsconfig.2: document 'new' mount api)
Message-ID: <wdqayj3fchloe63ihmc2xfraa6fluwj62pnpa2z3b3pl2suaaj@av63luwddd6i>
References: <20250806-new-mount-api-v1-5-8678f56c6ee0@cyphar.com>
 <20250806074619.59685-1-safinaskar@zohomail.com>
 <20250806075021.ndodyx44xsyzxcu6@illithid>
 <2025-08-06.1754469395-mega-bleep-potent-sharpie-prepaid-quiz-2a9Vy3@cyphar.com>
 <20250806091157.ldpnbcbtik4eudjh@illithid>
 <k34wjawrqcq2aqohsovkca2kad3ba3kmg57zwvrzw4wujq62dg@rittgebtd6ev>
 <1987fc9ace9.ad1bf95b21215.9089923989658816796@zohomail.com>
 <nrs5g7ftfyft5oxyywxpfvqfzp2pz7aevpp2j3s2rlohg2cedi@ahriex4sfjbk>
 <2025-08-06.1754495159-milky-sorcerer-initial-handbook-chief-sabers-600j6C@cyphar.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pnhaq3e2ey6mghzs"
Content-Disposition: inline
In-Reply-To: <2025-08-06.1754495159-milky-sorcerer-initial-handbook-chief-sabers-600j6C@cyphar.com>


--pnhaq3e2ey6mghzs
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Aleksa Sarai <cyphar@cyphar.com>
Cc: Askar Safin <safinaskar@zohomail.com>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>, brauner <brauner@kernel.org>, dhowells <dhowells@redhat.com>, 
	jack <jack@suse.cz>, linux-man <linux-man@vger.kernel.org>, 
	"mtk.manpages" <mtk.manpages@gmail.com>, viro <viro@zeniv.linux.org.uk>
Subject: Re: How and when to control hyphenation (was: [PATCH 05/10]
 fsconfig.2: document 'new' mount api)
References: <20250806-new-mount-api-v1-5-8678f56c6ee0@cyphar.com>
 <20250806074619.59685-1-safinaskar@zohomail.com>
 <20250806075021.ndodyx44xsyzxcu6@illithid>
 <2025-08-06.1754469395-mega-bleep-potent-sharpie-prepaid-quiz-2a9Vy3@cyphar.com>
 <20250806091157.ldpnbcbtik4eudjh@illithid>
 <k34wjawrqcq2aqohsovkca2kad3ba3kmg57zwvrzw4wujq62dg@rittgebtd6ev>
 <1987fc9ace9.ad1bf95b21215.9089923989658816796@zohomail.com>
 <nrs5g7ftfyft5oxyywxpfvqfzp2pz7aevpp2j3s2rlohg2cedi@ahriex4sfjbk>
 <2025-08-06.1754495159-milky-sorcerer-initial-handbook-chief-sabers-600j6C@cyphar.com>
MIME-Version: 1.0
In-Reply-To: <2025-08-06.1754495159-milky-sorcerer-initial-handbook-chief-sabers-600j6C@cyphar.com>

Hi Aleksa,

On Thu, Aug 07, 2025 at 01:56:03AM +1000, Aleksa Sarai wrote:
> On 2025-08-06, Alejandro Colomar <alx@kernel.org> wrote:
> > I've also worked on a build system that will help you with diagnostics
> > if you make mistakes.  Please run 'make -R help' to see what it has to
> > offer.  'make -R lint-man' is the most obvious thing one should run to
> > verify their manual-page patches.
>=20
> Maybe it's just me, but I was confused by the output of "make -R help".
> It wasn't clear to me the first few times I read it that the output is
> telling me to run
>=20
>   $ make -R -p nothing \
>           | grep '^\.PHONY:' \
>           | tr ' ' '\n' \
>           | grep -v '^\.PHONY:' \
>           | sort;
>=20
> in order to get a list of make targets (and is actually a generic way of
> getting a list of make targets).

Yup; if you add a 'nothing' target to any Makefile, this should work
(if they use .PHONY correctly).  (I just tried it with the Linux
Makefile just to see, and it did a good job.  The names of the targets
are a bit weird, and I don't know what most of them are for, but at
least we can list them.)

I developed that script when I got tired of updating the hard-coded
help, as it always got out of sync with the real Makefile.  :)

> Would it be possible for "make -R help"
> to have a pre-defined list of the most common commands to run, like the
> kernel makefile does?

Yep, I could list and explain these:

	all
	build
	build-all
	check
	clean
	dist
	distcheck
	help
	install
	install-all
	lint
	nothing
	uninstall

And tell the user to run the command for the complete list.
Sounds reasonable to me.

How about this?

	diff --git i/GNUmakefile w/GNUmakefile
	index 9530a66f5..e1cc44bbb 100644
	--- i/GNUmakefile
	+++ w/GNUmakefile
	@@ -46,7 +46,22 @@ nothing:;
	=20
	 .PHONY: help
	 help:
	-       $(info  $(INFO_)To see a list of targets, run:)
	+       $(info  $(INFO_)Common targets:)
	+       $(info  $(INFO_)        all             Synonym of 'build')
	+       $(info  $(INFO_)        build           Build the usual stuff)
	+       $(info  $(INFO_)        build-all       Build everything)
	+       $(info  $(INFO_)        check           Check the results of the b=
uild)
	+       $(info  $(INFO_)        clean           Remove all temporary files)
	+       $(info  $(INFO_)        dist            Produce the release tarbal=
l)
	+       $(info  $(INFO_)        distcheck       Check the release tarball)
	+       $(info  $(INFO_)        help            Print this help)
	+       $(info  $(INFO_)        install         Install the usual stuff)
	+       $(info  $(INFO_)        install-all     Install everything)
	+       $(info  $(INFO_)        lint            Lint the source code)
	+       $(info  $(INFO_)        nothing         Do nothing; useful for deb=
ugging)
	+       $(info  $(INFO_)        uninstall       Uninstall everything (migh=
t leave traces))
	+       $(info  )
	+       $(info  $(INFO_)To see the full list of targets, run:)
		$(info  $(INFO_)        $$ make -R -p nothing \)
		$(info  $(INFO_)        | grep '^\.PHONY:' \)
		$(info  $(INFO_)        | tr ' ' '\n' \)

Here's the output:

	$ make -R help
	Common targets:
		all		Synonym of 'build'
		build		Build the usual stuff
		build-all	Build everything
		check		Check the results of the build
		clean		Remove all temporary files
		dist		Produce the release tarball
		distcheck	Check the release tarball
		help		Print this help
		install		Install the usual stuff
		install-all	Install everything
		lint		Lint the source code
		nothing		Do nothing; useful for debugging
		uninstall	Uninstall everything (might leave traces)

	To see the full list of targets, run:
		$ make -R -p nothing \
		| grep '^\.PHONY:' \
		| tr ' ' '\n' \
		| grep -v '^\.PHONY:' \
		| sort;

	To see a list of variables, run:
		$ find GNUmakefile share/mk/configure -type f \
		| sort \
		| xargs grep '^[^[:space:]].*=3D' \
		| sed 's/=3D.*/=3D/' \
		| grep -v -e ':DEFAULT_.*=3D' -e ':MAKEFILE_.*INCLUDED :=3D';

	To see a list of dependencies (package/program), run:
		$ find share/mk/configure/build-depends -type f \
		| sed 's,share/mk/configure/build-depends/,,' \
		| sed 's,\.mk,,' \
		| sort;


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--pnhaq3e2ey6mghzs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmiTz8oACgkQ64mZXMKQ
wqmm6BAAq+hbMZUSmhk7PNeYAO/ZqDnKVutLP2ao/eNKGMJfWeU5yAQcagsF5qq/
0oe54RO1k8MjUTwxf/o9rBvMRsyG3T2wow8T3M1jXRUqUz7SlSeWhZJWIo444oKm
wwSkk8eL0xiKWk4N6B/DgrMtQHl19FncQ2A4ryUI5a6VK4AsNET/XkMKQFEd6kkM
+AMYPTY5xpvLaxZy1Hsqb0LaFwSKsFyTFV8WYVl/5mBkFMfZzRZqiMOApv/biOKj
lIGpMnaQ07/EptS9AGzbO+G2ikUdwZtuJAAb6uvLqW4kjZtpdJIBl2Se4pcHVbnw
vkqi7NcjUtkxJ7M2MJZX9g5Dm2JISfA2B/twVmlhe446Y8PiwyBSS6j7lRzJhmpr
UcMhVpYB7jOaWFBi1H09MbiK+PcaYfJmeqCTHdCwBgS85YOWvci+TAQrZHEXJe+0
rfcK1iPLvsFw3COvxnOhXn70y50iNUdgAXFw7gO3XNNsOUuejl/NpQ/lb2uLaJRA
+x9E8oWKSgp9+e8dZZpE1k9Gvy7zotpEvgV/jACpmXyjy/+BeHjDqu60X1xckKYK
Zq6aY1Sj/y5AvpmFayGLiK5EwzILdrhSI461JzFDfhehYKW1RFAUUsdaF+IUEWK1
mM+WHxC0LbRt6a/yzN9+XzPlDinfhh8C/yd3UC/c+Ljn5dWlbRk=
=NpPp
-----END PGP SIGNATURE-----

--pnhaq3e2ey6mghzs--

