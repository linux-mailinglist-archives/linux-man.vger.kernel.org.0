Return-Path: <linux-man+bounces-3378-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E79B1D45A
	for <lists+linux-man@lfdr.de>; Thu,  7 Aug 2025 10:40:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 363C518C2C15
	for <lists+linux-man@lfdr.de>; Thu,  7 Aug 2025 08:40:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B76F4256C8B;
	Thu,  7 Aug 2025 08:39:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tim3II7N"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78644255240
	for <linux-man@vger.kernel.org>; Thu,  7 Aug 2025 08:39:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754555992; cv=none; b=PBUxE7bXDHf0BEqaqkN4y4eL+2lLcYr7Odhh4Hd6ZWI15+1xR+Dahi0ZFhAMTHBioI6GVLzn160HZdxOLj0nYUChX83UGEAVg42TvxNxLLLt6sR6HA+BDBQinE4MeHduiMacYFQoFDuvZH55F6KPr3G2yEbB1HSn1uoK2K5KD5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754555992; c=relaxed/simple;
	bh=/gp69ImAzSKOiIyOGGx9T+jqcKm0zmPtwG/ncssS6Ss=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UJCxHwZAPlSQDyZfDK20j/4idNE6BlYj3CDbJbX2QPWBoLbKyTDLXygifBzCG/Z8LdHWbRGZA+15HkymvBU0jnp88uYaFUGYbvGOCuIo1PR0xrlB0o2kEOsVaBZ0R6sZhy4gBmBQ4EXyPo14dlfmOIEhWlKx1y9g8TvBkYsDJfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tim3II7N; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF9BCC4CEF6;
	Thu,  7 Aug 2025 08:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754555992;
	bh=/gp69ImAzSKOiIyOGGx9T+jqcKm0zmPtwG/ncssS6Ss=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tim3II7NKMT32lL5f2R+fr02lIzwl3/7iuZG8uwjWtC4CF06Ps/UQqvOKzmF0Dk8N
	 c+Mtv6j8kq12srspq8IBlIZYun0ZJYSheU7F3ipU9exYHwSoM7JObdZFf/LzSPypFj
	 AQXyH5gAqNMZl7s2UG8vHlY5DMVpsxQyBlW1KcILzV+3/7UL3e50iOiZRnngxNbdMj
	 1su5Kr8yAApu0euPMgGJCepdblPsEcOkh+SguiCWzOmUKMKj+K/P/PjsiOWHrUu8vE
	 fQGZAxmVdeHc+zCzs33iwuOOYu+WcHn2/dASWV0nLqFxFYPArIlbVsZW2pTKXaD6nc
	 PFGZoRTcCy9Xg==
Date: Thu, 7 Aug 2025 10:39:44 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Aleksa Sarai <cyphar@cyphar.com>
Cc: Askar Safin <safinaskar@zohomail.com>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>, brauner <brauner@kernel.org>, dhowells <dhowells@redhat.com>, 
	jack <jack@suse.cz>, linux-man <linux-man@vger.kernel.org>, 
	"mtk.manpages" <mtk.manpages@gmail.com>, viro <viro@zeniv.linux.org.uk>
Subject: Re: How and when to control hyphenation (was: [PATCH 05/10]
 fsconfig.2: document 'new' mount api)
Message-ID: <luezmvvdbzwtrut5v6fgf2pfxzxf2rs4lhugauy5yxxtkhldzn@oifkl6ac24bl>
References: <20250806074619.59685-1-safinaskar@zohomail.com>
 <20250806075021.ndodyx44xsyzxcu6@illithid>
 <2025-08-06.1754469395-mega-bleep-potent-sharpie-prepaid-quiz-2a9Vy3@cyphar.com>
 <20250806091157.ldpnbcbtik4eudjh@illithid>
 <k34wjawrqcq2aqohsovkca2kad3ba3kmg57zwvrzw4wujq62dg@rittgebtd6ev>
 <1987fc9ace9.ad1bf95b21215.9089923989658816796@zohomail.com>
 <nrs5g7ftfyft5oxyywxpfvqfzp2pz7aevpp2j3s2rlohg2cedi@ahriex4sfjbk>
 <2025-08-06.1754495159-milky-sorcerer-initial-handbook-chief-sabers-600j6C@cyphar.com>
 <wdqayj3fchloe63ihmc2xfraa6fluwj62pnpa2z3b3pl2suaaj@av63luwddd6i>
 <2025-08-07.1754532747-hissy-sailor-strict-surname-sharper-subtitle-wsVAqG@cyphar.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="srv2bs4vvfsnxzor"
Content-Disposition: inline
In-Reply-To: <2025-08-07.1754532747-hissy-sailor-strict-surname-sharper-subtitle-wsVAqG@cyphar.com>


--srv2bs4vvfsnxzor
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
References: <20250806074619.59685-1-safinaskar@zohomail.com>
 <20250806075021.ndodyx44xsyzxcu6@illithid>
 <2025-08-06.1754469395-mega-bleep-potent-sharpie-prepaid-quiz-2a9Vy3@cyphar.com>
 <20250806091157.ldpnbcbtik4eudjh@illithid>
 <k34wjawrqcq2aqohsovkca2kad3ba3kmg57zwvrzw4wujq62dg@rittgebtd6ev>
 <1987fc9ace9.ad1bf95b21215.9089923989658816796@zohomail.com>
 <nrs5g7ftfyft5oxyywxpfvqfzp2pz7aevpp2j3s2rlohg2cedi@ahriex4sfjbk>
 <2025-08-06.1754495159-milky-sorcerer-initial-handbook-chief-sabers-600j6C@cyphar.com>
 <wdqayj3fchloe63ihmc2xfraa6fluwj62pnpa2z3b3pl2suaaj@av63luwddd6i>
 <2025-08-07.1754532747-hissy-sailor-strict-surname-sharper-subtitle-wsVAqG@cyphar.com>
MIME-Version: 1.0
In-Reply-To: <2025-08-07.1754532747-hissy-sailor-strict-surname-sharper-subtitle-wsVAqG@cyphar.com>

On Thu, Aug 07, 2025 at 12:14:00PM +1000, Aleksa Sarai wrote:
> > I developed that script when I got tired of updating the hard-coded
> > help, as it always got out of sync with the real Makefile.  :)
>=20
> I'll definitely keep this "make -p" pipeline as a neat tool in my
> toolbelt.

Thanks!  :-)

> > 	$ make -R help
> > 	Common targets:
> > 		all		Synonym of 'build'
> > 		build		Build the usual stuff
> > 		build-all	Build everything
> > 		check		Check the results of the build
> > 		clean		Remove all temporary files
> > 		dist		Produce the release tarball
> > 		distcheck	Check the release tarball
> > 		help		Print this help
> > 		install		Install the usual stuff
> > 		install-all	Install everything
> > 		lint		Lint the source code
> > 		nothing		Do nothing; useful for debugging
> > 		uninstall	Uninstall everything (might leave traces)
> >=20
> > 	To see the full list of targets, run:
> > 		$ make -R -p nothing \
> > 		| grep '^\.PHONY:' \
> > 		| tr ' ' '\n' \
> > 		| grep -v '^\.PHONY:' \
> > 		| sort;
> >=20
> > 	To see a list of variables, run:
> > 		$ find GNUmakefile share/mk/configure -type f \
> > 		| sort \
> > 		| xargs grep '^[^[:space:]].*=3D' \
> > 		| sed 's/=3D.*/=3D/' \
> > 		| grep -v -e ':DEFAULT_.*=3D' -e ':MAKEFILE_.*INCLUDED :=3D';
> >=20
> > 	To see a list of dependencies (package/program), run:
> > 		$ find share/mk/configure/build-depends -type f \
> > 		| sed 's,share/mk/configure/build-depends/,,' \
> > 		| sed 's,\.mk,,' \
> > 		| sort;
>=20
> Looks good to me!

Thanks!  I've pushed a commit:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3Db=
67ac0da88ed90f767f89b8eadfae960b7c2230f>


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--srv2bs4vvfsnxzor
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmiUZlAACgkQ64mZXMKQ
wqkgaQ/8DuMc/SgsG85u20v6MXeIaHMnkDaM5VLLPU8aLR5RmbmS3ZUcltJjA2Y6
22Uj1WQmCLRPf2rFM8PEZgcvxcemUVlNcpod4pQor4i3l+48UcEc7y0DxCI6haPe
ryJQZwc0rn192QWUP1XfuYzHV4Kxovsk1wwkjh8wXAFosEaT9AouB7+/qJyX4Tr4
BjDQn3dLD7mzQ/Osfqfq6lusV/O4w29vQqBidiuCHGjXoKcKVmAUkpDkRS5eFvkz
YJaBW6w6KA7wT8+GuR+V2z3q7LqF+AGlCiEuyw/VZ3cEL63V4efe3n7KZ9zPQuBb
+kxdtgy9LACgspPBSsG3rQCocsvStSLXVuWY8A8hFXOVnzLZxB6Old3jftycfloa
b511WycXtwbAoPvJ090XC1Dd3xhsyNle2M4RId3QH1PGZ4g2lCu8Q6w6Zk8xqPhW
GCakFHylHtfnaAlx9fgmdfikrYX6nSItP7odWYDpHZ1gJq3CxPmCvlBDmxfB2R03
x5fvbUyEg/EVmxpBe19cs76UBEL6urPPuYUMhcYZAjfYxu9xyZfUlT4a5tKM7Ty/
ZUFfVDKd6oTgRv6TyV75pamynCGmKA6KQkYwKlhwN5jwK0ugoT5g+2V/A1PRw4v2
CeHFszJCWFlDC3u9aWB7irNjcvHICmcjIRMVTBqNUyo/tYYAC8U=
=sMGS
-----END PGP SIGNATURE-----

--srv2bs4vvfsnxzor--

