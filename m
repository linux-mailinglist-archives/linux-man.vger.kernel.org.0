Return-Path: <linux-man+bounces-1207-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF2A909D94
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 14:58:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 14DC8B2166F
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 12:58:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72346187554;
	Sun, 16 Jun 2024 12:58:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHuVCR0R"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312AC16C6AF
	for <linux-man@vger.kernel.org>; Sun, 16 Jun 2024 12:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718542704; cv=none; b=B+zRGupPHis+gLByxJs065LT8TQMR65c+DF7NNLiiPnCshnD3I4EtMJTT/kNYFbZ2WMYZWMoasr+WGUkRtWifuSrkvnsx3SZ48hOXjkzcqAEullEgFSi6dY6FnQAIPXbrQHLJRO3FHigm/24x8wILYJyJfVVJfq5XaVEGFP1qGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718542704; c=relaxed/simple;
	bh=GZcVvfLgkF13BKwwK+u6UNdRJDqOhI+OVjZRoeYq/Cs=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=nN84Tc/Lg2Bx/82ISb1qb9U9CkLJbwn8pz5QD8BUDn7tRckAQAXAa8ZcsOKkM7S6IfvmzJT5+pEvIXOO75lg4ywEEvRAOBmF16fnhMbRtGRmuQCgFsS4XAf7lfm8SlrmitI1O72vmSxul9uocvtUxTUFlDfjJNuG25ljvcijn2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHuVCR0R; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C61E0C2BBFC;
	Sun, 16 Jun 2024 12:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718542703;
	bh=GZcVvfLgkF13BKwwK+u6UNdRJDqOhI+OVjZRoeYq/Cs=;
	h=Date:From:To:Cc:Subject:From;
	b=VHuVCR0R1UI+ce8XixlYxPqTAJxLwQx8r7vdh7QgZtmZ2KfS/s8v4Rj5oCgZzD929
	 eqEaI+Et+i53KX2ILSVOIN79kSYJdnIaSfJ6oWu1B16322EHeVkWnGvBLv+x5lwE6n
	 8pFb0LOEifxWTTF6AagbA5FO8bR/3eFwSPJsMLvcz+bZfPMa9NH2kv1e3kr9pRWj87
	 J9eQwzZmxT9wmMpScL/GYci6Uuh1hURAzhnEpRxGhGQWx4KnAbG850rzXoHVFqownY
	 G6KK3BGkrK0bW6QFMsiaOufBG9t7VeC4J7yWWB5iSe672CvGMvTOipEqZjDuxBq9tX
	 VtE4GaiHhWrdQ==
Date: Sun, 16 Jun 2024 14:58:20 +0200
From: Alejandro Colomar <alx@kernel.org>
To: toddy@debian.org
Cc: marcos@debian.org, linux-man@vger.kernel.org
Subject: Debian manpages Build-Depends
Message-ID: <kt2jczwpcjm7ylszg37vbg5ubjudgxw3fjhuiwbgfrq2f3x73b@rdkpvaie73kg>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2ohnmfucwxgfwg5g"
Content-Disposition: inline


--2ohnmfucwxgfwg5g
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: toddy@debian.org
Cc: marcos@debian.org, linux-man@vger.kernel.org
Subject: Debian manpages Build-Depends
MIME-Version: 1.0

Hi Tobias,

I've noticed you removed most Build-Depends in

commit fc3a690d91ec913950d1e9ea8cfab7f7e5821ce6
Author: Dr. Tobias Quathamer <toddy@debian.org>
Date:   Fri Jun 7 23:07:31 2024 +0200

    Remove packages from Build-Depends to allow migration to testing.
   =20
    There's no clear explanation in d/changelog or the commit
    messages as to why all those packages should be needed.
   =20
    However, it hinders testing migration (currently due to the
    dependency on iwyu).


leaving just `debhelper-compat (=3D 13), groff (>=3D 1.23.0), mandoc`.

The entire list of build dependencies upstream is:

	$ find share/mk/configure/build-depends -type f \
		| sed 's,share/mk/configure/build-depends/,,' \
		| sed 's,\.mk,,' \
		| sort;
	binutils/ld
	bsdextrautils/col
	bzip2/bzip2
	checkpatch/checkpatch
	clang-tidy/clang-tidy
	clang/clang
	coreutils/cat
	coreutils/cp
	coreutils/cut
	coreutils/echo
	coreutils/expr
	coreutils/head
	coreutils/install
	coreutils/ln
	coreutils/mkdir
	coreutils/realpath
	coreutils/rm
	coreutils/sort
	coreutils/stat
	coreutils/tac
	coreutils/tail
	coreutils/test
	coreutils/touch
	coreutils/true
	cpp/cpp
	cppcheck/cppcheck
	cpplint/cpplint
	diffoscope/diffoscope
	findutils/find
	findutils/xargs
	fontforge/fontforge
	gcc/cc
	git/git
	grep/grep
	groff-base/eqn
	groff-base/grops
	groff-base/grotty
	groff-base/nroff
	groff-base/pic
	groff-base/preconv
	groff-base/tbl
	groff-base/troff
	groff/afmtodit
	groff/gropdf
	groff/pfbtops
	groff/post-grohtml
	gzip/gzip
	iwyu/iwyu
	libc-bin/locale
	lzip/lzip
	man/man
	mandoc/mandoc
	moreutils/sponge
	pkgconf/pkgconf
	sed/sed
	tar/tar
	texlive-fonts-extra-links/Tinos-Regular.ttf
	texlive-fonts-extra/Tinos.pfb
	xz-utils/xz

(or just the packages:)

	$ find share/mk/configure/build-depends -type f \
		| sed 's,share/mk/configure/build-depends/,,' \
		| sed 's,/.*\.mk,,' \
		| sort \
		| uniq;
	binutils
	bsdextrautils
	bzip2
	checkpatch
	clang
	clang-tidy
	coreutils
	cpp
	cppcheck
	cpplint
	diffoscope
	findutils
	fontforge
	gcc
	git
	grep
	groff
	groff-base
	gzip
	iwyu
	libc-bin
	lzip
	man
	mandoc
	moreutils
	pkgconf
	sed
	tar
	texlive-fonts-extra
	texlive-fonts-extra-links
	xz-utils


This includes dependencies for building a PDF book of the manual pages,
creating the distribution tarball, testing the programs in the EXAMPLES
sections, and many other targets.

Debian doesn't need all that, so you can restrict that list to the
targets that Debian does run: `make check`, `make install` (and you may
want to `make lint`).  For `make check` and `make install` only, you'll
need a smaller list:

	$ find share/mk/ -type f \
		| xargs grep include.*configure/build-depends \
		| sed 's,:.*/configure/build-depends/,:,' \
		| sed 's,\.mk$,,' \
		| sort \
		| grep -v \
			-e /lint/ -e /dist/ -e /pdf/ -e /ps/ -e /html/ \
			-e /fonts/ -e /examples/ -e /gcc/ -e /clang/ \
			-e /binutils/ -e /cpp/ \
		| sed 's/.*://' \
		| sort \
		| uniq;
	bsdextrautils/col
	coreutils/cat
	coreutils/cp
	coreutils/echo
	coreutils/expr
	coreutils/install
	coreutils/ln
	coreutils/rm
	coreutils/sort
	coreutils/stat
	coreutils/tail
	coreutils/test
	coreutils/touch
	coreutils/true
	findutils/find
	findutils/xargs
	git/git
	grep/grep
	groff-base/eqn
	groff-base/grotty
	groff-base/nroff
	groff-base/preconv
	groff-base/tbl
	groff-base/troff
	libc-bin/locale
	man/man
	moreutils/sponge
	sed/sed

(or just the packages:)

	$ find share/mk/ -type f \
		| xargs grep include.*configure/build-depends \
		| sed 's,:.*/configure/build-depends/,:,' \
		| sed 's,\.mk$,,' \
		| sort \
		| grep -v \
			-e /lint/ -e /dist/ -e /pdf/ -e /ps/ -e /html/ \
			-e /fonts/ -e /examples/ -e /gcc/ -e /clang/ \
			-e /binutils/ -e /cpp/ \
		| sed 's/.*://' \
		| sed 's,/.*,,' \
		| sort \
		| uniq;
	bsdextrautils
	coreutils
	findutils
	git
	grep
	groff-base
	libc-bin
	man
	moreutils
	sed


You should add those at least, or dh_auto_test(1) may fail, I think.

BTW, mandoc(1) is not necessary for `make check` or `make install`, so
you could just remove it.


Have a lovely day!
Alex


--=20
<https://www.alejandro-colomar.es/>

--2ohnmfucwxgfwg5g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZu4WYACgkQnowa+77/
2zKW4hAAol986sWVd1RpmlRuvOam2iIXE2qIn+kGhrMuuDXPRt8TKsOiv2SeU+kL
C92iVO/g0K8hQTjdNumHHTcRwJB4Lsr7Y7ozxq4PwJROVbvYeOAMK8JOGbsVnLio
1RCYKRGtPMZs71XdRvjpG3OntDi02B8hNYti/EMVT68WLUoHgj+nqlzt324uVSyI
1s0D2TFK0zeKmpvsYL6ABBU8UXcMpSS454zuIR18QhbjAA8AMI4U2DkxZ3ulvp0R
yx1Z3NuqcB/x0TNtWNgudnkBOR1kZxlHks/jWYLCSn31xEY1uQXDt+4k9tkLXVLU
0MyvA/rbo2Ay2HU8f9gjJ75fQWwn8IRuW6j57RTrn3GWFMrvBI3kN4k5b4WTpxgu
Kt7uBxrnsukARg64BPMZHM6i8ltekHg1gR769eAX/yvceNxbajwAja+opZuxYJRz
r9ZtVzTsT6HKSmICG0V9mAKGl33FJvNquwd+D3h8zpG78uzBU1qB98/rhCjuZjTK
Bbf49K7/4bZ/3R8bt1LMl5P0S0XLuahJRtDRi+2N3e4gDYY5G7ZfkT+/RZ3TV5by
KatDg5n3SAmKFe+Lxae/1RQ/stIYyeCl2BT+OI9hlLblq3zb1B3nbfuW0qvGJw8l
mSwn7Nc3WTtYOslPYhNcEGcmqjZO3Q6LiRQfPk6bvpvrVXWm5gM=
=hbmu
-----END PGP SIGNATURE-----

--2ohnmfucwxgfwg5g--

