Return-Path: <linux-man+bounces-683-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B71D1887D33
	for <lists+linux-man@lfdr.de>; Sun, 24 Mar 2024 15:25:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D6B5F1C209E0
	for <lists+linux-man@lfdr.de>; Sun, 24 Mar 2024 14:25:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C8F717C7F;
	Sun, 24 Mar 2024 14:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GSLMiQCs"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0610CA64
	for <linux-man@vger.kernel.org>; Sun, 24 Mar 2024 14:25:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711290340; cv=none; b=XCkMlFf0LdjhYVya2pWoM3K9MA7lFCTt/ZX/2x5kgJvGYatRfa2RR2zy2pSjXnGEa2znl5T6Uox3Wl/3bl5pgmjdhIGLEMN8ELhYPcn4z/deu8Ig/u4Z0MBR7MM+FSA2EtO9lwDDUxt/qf50sy4x1Iv/jXCM6+qF8CZDShV5nKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711290340; c=relaxed/simple;
	bh=8+GixEpUlVicrkq2GXwnNsgtuMFIiSSlrQLEUI110Kw=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=omW5u8FfspN6bOfHnt8HK4V+dpj8r52p3nHLobypX4aYZ32LA6cAW0ZpwcdcqIyRuLFFmMaVAJE/5CRUQtzb6lL+X04DdgNLpunO+mgDzf65tzyXnJQF+LIwLf2XN/+q3LpdvkETOk/0+IKx3OfdHq1bY7c74O36W5onQoFPSU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GSLMiQCs; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 142D5C433F1;
	Sun, 24 Mar 2024 14:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711290340;
	bh=8+GixEpUlVicrkq2GXwnNsgtuMFIiSSlrQLEUI110Kw=;
	h=Date:From:To:Cc:Subject:From;
	b=GSLMiQCsdRnUtP9oRfhkJWkdCgfbCZVsdm/vy3+XA6bDrR6KqTlKiAL/fMENl2D/M
	 LTJgp/IUx8Ydq5wjHwWRZODHQgWiTjRgyeIWdSw1k72q3S7Qa+WNqo8s06soivRzrw
	 8KWwbuo/tWxqZvYYL6XVjROrJffFoi4s2vYGFzzFvgT/4hoKoAgybGo/dCbg9qsRaP
	 g4CJd5QmE0yEUCBCenmnkmT++pyC+hXm3Ocvjxi6J4j5vp1BGej4A87l5mOBs7pFgm
	 T/+xRSRXiGWaJfUYy+awtUfLrH67FLlGQplqTrmUSKbc/woHq3GmET7ih4yBIlRFZN
	 XMF8Ib5xgQyJg==
Date: Sun, 24 Mar 2024 15:25:29 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Michael Kerrisk <mtk.manpages@gmail.com>,
	Marcos Fouces <marcos@debian.org>,
	"Dr. Tobias Quathamer" <toddy@debian.org>, andyrtr@archlinux.org,
	Luna Jernberg <droidbittin@gmail.com>, Sam James <sam@gentoo.org>,
	man-pages-maintainers@fedoraproject.org,
	Lukas Javorsky <ljavorsk@redhat.com>, Petr Gajdos <pgajdos@suse.cz>
Subject: man-pages HEAD (eventually 6.8) build-system improvements
Message-ID: <ZgA33_NA8qO2CKqD@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ojoRfps6IFzJcu8h"
Content-Disposition: inline


--ojoRfps6IFzJcu8h
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 24 Mar 2024 15:25:29 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Michael Kerrisk <mtk.manpages@gmail.com>,
	Marcos Fouces <marcos@debian.org>,
	"Dr. Tobias Quathamer" <toddy@debian.org>, andyrtr@archlinux.org,
	Luna Jernberg <droidbittin@gmail.com>, Sam James <sam@gentoo.org>,
	man-pages-maintainers@fedoraproject.org,
	Lukas Javorsky <ljavorsk@redhat.com>, Petr Gajdos <pgajdos@suse.cz>
Subject: man-pages HEAD (eventually 6.8) build-system improvements

Hi!

I'm excited to share list of improvements to our build system that I
think will be meaningful to downstram distributors:

-  I've reorganized the build-system files in a much more intuitive way,
   and the most direct benefit of this is that the build dependencies
   are now implicit in the file names; so much, that I've removed the
   documentation for it (which got obsolete very easily), and replaced
   the `make help` help with a script that will tell the dependencies:

	$ make help
	To see a list of targets, run:
		$ make nothing -p \
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

   Since I needed to make a choice, the build dependencies are expressed
   in terms of Debian packages, and the names of the binaries in Debian.
   You'll need to translate these to your distro.  On Debian, you could
   script the installation of dependencies:

	$ find share/mk/configure/build-depends -type f \
	| sed 's,share/mk/configure/build-depends/,,' \
	| sed 's,\.mk,,' \
	| sed 's,/.*,,' \
	| grep -v checkpatch \
	| xargs apt-get install;

   (This already proved useful when discussing about an issue with a
   downstream packager, so I could list some commands to reproduce some
   behavior in a clean installation of Debian (in a Docker container).)

   (checkpatch is the script checkpatch.pl from the Linux kernel
   sources, which I have a package for, but need to polish it for
   public distribution.)

   As you can see from that `make help`, variables exposed to users for
   configuration are also more intuitively placed, within a ./configure/
   subdirectory of the build system.  Anything not in that subdir is
   just implementation details, not intended for users to tweak them.

   I've also made target names more consistent (for example,
   'build-book' is now 'build-pdf-book', and is triggered by the parent
   'build-pdf').  In general, -* subtargets are always triggered by the
   target named by a prefix of it.  Hopefully, that's also intuitive
   enough that need not be documented (and of course, you can see it's
   now another script in `make help`).  This differs from autotools
   behavior, which is to only build as much as your current system
   --with its installed dependencies-- can run; I believe that behavior
   is bogus, as different people running the same make(1) target on
   different systems, will see different behavior.  IMO, the right thing
   to do is to behave the same everywhere, and fail hard when something
   can't be done due to a missing dependency.  With subtargets, we do
   allow building only partially, if some system doesn't want to run or
   build some stuff, but users need to explicitly specify so.

-  We stamp the date and version in the manual pages at `make install`
   time.  This means now the (unreleased) and (date) placeholders will
   be in the repository, but when one installs from source with
   `make install`, the pages will be marked with the date of the last
   commit that modified a page, and the version extracted from
   git-describe(1).

   This should help fix the manual pages at Michael's <man7.org>, which
   now have the (unreleased) and (date) placeholders.  I'm not 100% if
   he's running `make install` or if he is just copying the pages from
   the repository; I hope he is doing the former, in which case they'll
   get the stamp when 6.8 is released and he gets that version.

-  The version is not stamped on the pages distributed in the release
   tarballs anymore; we now only stamp the page date.  This will allow
   distributions to stamp their own versions, such as 6.8-1, by using
   the $EXTRAVERSION variable.  So, distributions will be able to run

	$ make install EXTRAVERSION=3D-1 prefix=3D/usr DESTDIR=3Dtmpdir

   And get their version suffix stamped after the upstream version.

-  The PDF book is now stable enough, and I decided to add an install
   target for it:

	$ make install-pdf-book

   This means distros can start installing the PDF book in their
   systems if they want, to please those who want to read the manual
   typeset, without having to download it from the website.

	"The manual was intended to be typeset; some detail is sacrificed
	on terminals."  (man(1), _Unix Time-Sharing System Programmer's
	Manual_, Eighth Edition, Volume 1, February 1985)

   The script for producing the book was contributed by Deri James.

-  The build system works on other projects (this was already possible,
   but limited to just some features).  I've been using it to produce
   PDF books of the manual pages in the shadow project, and also forked
   it to write a build system for the liba2i library (of recent
   creation)[1] with minimal changes.  That helped find the assumptions
   made that depended on our project, and changed them to make them more
   generic.

   [1]  <https://git.kernel.org/pub/scm/libs/liba2i/liba2i.git/>

-  Already in 6.7, but noteworthy.  The build system now has a list of
   lints and checks known to fail, and doesn't run them by default.
   This allows downstream packagers run `make lint build check` without
   having to make exceptions.  Any errors are now regressions, and we
   should be careful to not introduce them.  With time, I'll try to
   remove the internal exceptions, although some aren't easily fixable.

   It is also easier on contributors, which now can just
   `make lint build check` after their patches, and expect it to not
   give any errors (else, they screwed it).

-  Already in 6.7, but noteworthy.  We have a 'distcheck' target, which
   does the usual stuff described by GNU autotools' 'distcheck', but it
   is better, as we have a GNUmakefile-based build system, and can
   express dependencies better.  We run in parallel as much as is
   possible, and don't need to do any read-only magic stuff, since we
   always run out-of-tree builds, contained in <.tmp/>.

   It doesn't do 'installcheck' (we don't even have it; what would we
   actually test?), though, but I don't think that's sensible, since an
   install check should run mandb(8) to actually have a proper install,
   but I think that would be too intrusive, because that's
   system-dependent, and I believe users should decide to run mandb(8)
   manually after `make install` (if they use man-db at all!), and it's
   not our business (consider users installing into /opt and not wanting
   to actually modify their systems).

   It goes a step beyond GNU's 'distcheck': we run `make dist` from
   within the extracted tarball, just like autotools, but then we make
   sure that the second tarball is identical byte-per-byte to the first
   one, by running diffoscope(1) to diff both tarballs.

Please comment any doubts you have about these features.

Have a lovely day!
Alex


P.S.:  Here's the list of build dependencies, as of $now:

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
groff/gropdf
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
xz-utils/xz

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--ojoRfps6IFzJcu8h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYAN9kACgkQnowa+77/
2zLQFw/8DuQv3aJbH9iHavBaUYPiUC5EddWIZ0R5fPO/14oGJ2DlpT9wERAClYiB
qWNt/naZY2ZLrIxCinbPIn1nw2kDBFtNYeuJM2lUDWGJmY+Q3CzxGqPQDSFvzAok
41aVhSxSUcRomLuxN94EZ339tFqBJK2zAv4ZvER8TzKuTdYUas2Qp1s4MmKK/hH8
tZN1R+cgb4Fkw0vLMBSna6QjH+WWUDa3/Vu8ijzrNg0pF5VdjsQNFz9/Hf43AaT+
t7ckKbnkPFmmpy5xiDzrLOp/7a7h24trabAjPP0TaKe13Mv4DEF8RXH1QDmEjGZZ
EHoP3QKr7sPJvyHI7gUpvhB1SoHRkETmPOPmRkTHLF61ZvsU0sIONrW5NCHSDzvV
nSLhVw/b6mWwz2Z0CT4NNL3pjhFCfkBfPi7aUjLw7QSdUGuT7q48dyryRB2REyx1
3a6XF5hRlN7+b9bn9R28EJvAvbuOW67n/ImlT5sDjasu9H/CgKlN3k9kh143uOQG
3UlcHQ3sveSwqArjVxBL0Zfk4vGkR5IyVGBTnOjeKyi/iIOqPYCAXGRTa4+fy42S
RKB4GKnfK1+zlBXg0QOld5guj1Q1yOjIf8hDf+PRNu3B5MP6Kfd1A4Hq+g177fxS
2CEGPL8i1ExZH6BNVK+vAweu6MmNGlvU/1zyBZQoiRixCh5LJrI=
=NZ1z
-----END PGP SIGNATURE-----

--ojoRfps6IFzJcu8h--

