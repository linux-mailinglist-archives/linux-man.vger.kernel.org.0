Return-Path: <linux-man+bounces-4226-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C1490C1AC47
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 14:37:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 070E418988C7
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 13:30:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 998472641FB;
	Wed, 29 Oct 2025 13:25:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hhw7d2a9"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558F3246BB9;
	Wed, 29 Oct 2025 13:25:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761744316; cv=none; b=cF5Mgm1DSZW6+eTX9+8Stur5XbXg9H9gIoCV/lIRknZWi2kpIfdeBENdwRe5d//gpvtug6gkoTcUaGfb6czc8opAGH06di8JhoudeRPQIFCp3jJXiBUwc5iF+Meg276g9Qfh9butqbgXJx9XdBS67UiG18HOY2Yg6Gy6z/APHn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761744316; c=relaxed/simple;
	bh=katCKghEuzzRWiPDmJ5bO5CV0MVd38Dh62WCeKmWr7w=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=H7wjxJ7jwLaoP8h7gdX68Wpkow3/FrI+Fxn/aeH7pJE5Pbc2yEga2fk+ex8emdSPSPNQWV1VYHEFYPB3ckGkSDZcmyj8nhDM3yqEumc1/vNEJPfeMf3cgw1Dn8+SsxyqeUF+BDafwC9clGuA48tVQ5ObZzE/ik5OiFF2n3Zx0XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hhw7d2a9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EBDE1C4CEFD;
	Wed, 29 Oct 2025 13:25:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761744316;
	bh=katCKghEuzzRWiPDmJ5bO5CV0MVd38Dh62WCeKmWr7w=;
	h=Date:From:To:Cc:Subject:From;
	b=hhw7d2a9ofDEwPVU/V0JIPzIgEECf0GgZwhzXbYOiE65r817fRNHqU23j8grjvO0b
	 qnom/K8ho87H1m5G8DTx/A0UpGq4nY+soswIVv1x4AV4UXGDhXsmWvQ4EZnJFDLjcj
	 1jNKP8Cud8CP5aRANCjFs67AJGDDJnlH9IFnkn9+zRKraiaSGcFbdC5OcqBgb4/OcG
	 UKIoD115eHkHgCXjCcNHIoV6vD2McB6NTs3TsQjO0TtGR/DmK5vm8lTB9yj0g2+mn4
	 nHDCFoNy4VfXHJptnpQsq84gQ6DvcQO7NQmkDQlbJVr70Kd92SNrDc7nOzf8XvKTDo
	 AiC9ZKVCX45ew==
Date: Wed, 29 Oct 2025 14:24:59 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
Subject: man-pages-6.16 released
Message-ID: <5cy4sb3beseqeehhva5r5f5ji3ofvotzobqcp3634k3lqeeoqi@nxf5gxvdifcn>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="c3bbmtjujgvpbaml"
Content-Disposition: inline


--c3bbmtjujgvpbaml
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
Subject: man-pages-6.16 released
Message-ID: <5cy4sb3beseqeehhva5r5f5ji3ofvotzobqcp3634k3lqeeoqi@nxf5gxvdifcn>
MIME-Version: 1.0

Gidday!

I'm proud to announce:

	man-pages-6.16 - manual pages for GNU/Linux

Tarball download:
<https://www.kernel.org/pub/linux/docs/man-pages/>
Git repository:
<https://git.kernel.org/cgit/docs/man-pages/man-pages.git/>
Online PDF book:
<https://www.kernel.org/pub/linux/docs/man-pages/book/>

Thanks to all the contributors to this release (in BCC)!
And thanks to our sponsors!

	-  Adfinis		<https://adfinis.com/>
	-  Google		<https://opensource.google/>
	-  Hudson River Trading	<https://www.hudsonrivertrading.com/>
	-  Meta			<https://www.meta.com/>
	-  Red Hat		<https://www.redhat.com/>

(The list of sponsors will change soon, as we're in talks for renewing
 sponsors.  If any company would like to sponsor the project, it would
 be a great moment to manifest.)

You are receiving this message either because:

        a)  (BCC) You contributed to this release.

        b)  You are subscribed to <linux-man@vger.kernel.org>,
            <linux-kernel@vger.kernel.org>, or
            <libc-alpha@sourceware.org>.

        c)  (BCC) I have information (possibly inaccurate) that you are
            the maintainer of a translation of the manual pages, or are
            the maintainer of the manual pages set in a particular
            distribution, or have expressed interest in helping with
            man-pages maintenance, or have otherwise expressed interest
            in being notified about man-pages releases.
            If you don't want to receive such messages from me, or you
            know of some other translator or maintainer who may want to
            receive such notifications, send me a message.
            If you want to be added to this list (which I store
            encrypted), send me a message.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D NEWS =3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

This release adds two build dependencies:

-  awk/awk
-  pcre2-utils/pcre2grep


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Linux Software=
 Map =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

Begin4
Title:          Linux man-pages
Version:        6.16
Entered-date:   2025-10-29
Description:    Manual pages for GNU/Linux.  This package contains
                manual pages for sections 2, 3, 4, 5, and 7, and
                subsections of those.  Only a few pages are provided in
                sections 1, 6, and 8, and none in 9.
Keywords:       man pages
Maintained-by:  Alejandro Colomar <alx@kernel.org>
Primary-site:   http://www.kernel.org/pub/linux/docs/man-pages
                2.7M  man-pages-6.16.tar.gz
Copying-policy: several; the pages are all freely distributable as long as
                nroff source is provided
End


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Changes in man=
-pages-6.16 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Released: 2025-10-29, Aldaya


New and rewritten pages
-----------------------

man2/
	fsconfig.2
	fsmount.2
	fsopen.2
	fspick.2
	move_mount.2
	open_tree.2

man2const/
	PR_FUTEX_HASH_GET_SLOTS.2const
	PR_FUTEX_HASH_SET_SLOTS.2const

man2type/
	mount_attr.2type			(split from mount_setattr(2))

man3/
	_Fork.3
	countof.3
	memeq.3
	streq.3


Newly documented interfaces in existing pages
---------------------------------------------

man2/
	mount_setattr.2
		glibc wrapper

	pidfd_open.2
		PIDFD_THREAD

	pidfd_send_signal.2
		PIDFD_SIGNAL_THREAD
		PIDFD_SIGNAL_THREAD_GROUP
		PIDFD_SIGNAL_PROCESS_GROUP

	quotactl.2
		quotactl_fd(2)

	readv.2
		RWF_DONTCACHE

	sigaction.2
		SI_ASYNCNL
		FPE_FLTUNK
		FPE_CONDTRAP
		SEGV_ACCADI
		SEGV_ADIDERR
		SEGV_ADIPERR
		SEGV_MTEAERR
		SEGV_MTESERR
		SEGV_CPERR
		TRAP_UNK
		TRAP_PERF
		SYS_USER_DISPATCH
		EMT_TAGOVF

man3/
	abs.3
		umaxabs(3)

	opendir.3
		ENAMETOOLONG

man7/
	operator.7
		(type){}
		alignof
		_Countof

	rtnetlink.7
		RTAX_UNSPEC
		RTAX_LOCK
		RTAX_MTU
		RTAX_WINDOW
		RTAX_RTT
		RTAX_RTTVAR
		RTAX_SSTHRESH
		RTAX_CWND
		RTAX_ADVMSS
		RTAX_REORDERING
		RTAX_HOPLIMIT
		RTAX_INITCWND
		RTAX_FEATURES
		RTAX_RTO_MIN
		RTAX_INITRWND
		RTAX_QUICKACK
		RTAX_CC_ALGO
		RTAX_FASTOPEN_NO_COOKIE

	sched.7
		CONFIG_PREEMPT
		CONFIG_PREEMPT_LAZY

	tcp.7
		TCP_SAVE_SYN
		TCP_SAVED_SYN


New and changed links
---------------------

man2/
	open_tree_attr.2			(open_tree(2))
	quotactl_fd.2				(quotactl(2))
man3/
	umaxabs.3				(abs(3))


Global changes
--------------

-  man/
   -  Update documentation for POSIX.1-2024 (still more work to do).
   -  SYNOPSIS: Use GNU forward-declarations of parameters for sizes of
      array parameters.
   -  Improve style of source code for tbl(1) tables.
   -  man2/: Use the common name 'fd' instead of 'fildes'.
   -  Use semantic newlines.
   -  EXAMPLES
      -  Use err(3) and errc(3bsd) instead of similar macros.
      -  Fix includes (thanks to iwyu(1)).
      -  Use NITEMS() consistently.
      -  Don't name unused parameters.
-  share/mk/
   -  Add support for the chapter man3attr.
   -  help: Document the usual targets.
   -  lint-man-blank: Add target to lint about blank lines.
   -  lint-man-ws: Diagnose spurious use of white space.
   -  lint-man-quote: Diagnose an unmatched quote.
   -  lint-man-poems: Diagnose (lack of) semantic newlines.
   -  lint-man-dash: Diagnose unescaped dashes
   -  Merge handling of man(7) and mdoc(7) pages.
   -  lint, build, check: Move exceptions to separate files.
   -  Remove unused variables.
   -  Unify local variable names.
   -  Silence diagnostics about unnamed parameters.
   -  configure/build-depends/:
      -  Add awk/awk.
      -  Add pcre2-utils/pcre2grep.


Changes to individual files
---------------------------

-  src/bin/
   -  sortman(1): Fix order of intro(*) pages for subsections.
   -  diffman-git(1): Show sections as hunk context.

The manual pages and other files in the repository have been improved
beyond what this changelog covers.  To learn more about changes applied
to individual pages, or the authors of changes, use git(1).

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--c3bbmtjujgvpbaml
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkCFasACgkQ64mZXMKQ
wqmBtRAAsHe6jbrxZSgaP2zT0yESE6S2wrGb4Q1cVd5iE+OwAnvsfQsarLxBshNI
X3R7joraZunvb84E5rBud+y1MIoo6EzvaxzqBmW/Ftr1+68BMb2eDW+jBiDZWwes
J4HdYFMRJx1CIj5oGGYZJCZMEmWgovNo5REqxW6kQnSt2o+4CaS41ysBoIpWamoF
IkhLhp7V1kuRyUIaumiZ/Fhl8g73kTZ0Xxuelj1ta943Tkna6RlvcOUaOgdhFpNy
o/DahzyVRzfUzaBbSsqTZM57p2LQIFh+KMDY3q/YWq0d0AqtoGrxOZUso8SW3a5W
hW4c71gxuk8xxiTvrCcb3lZosdcqbEsMUfwF6NDh9qHEq+21BIiHUeDb4N7NAx4p
PPkgx29N6PKCQxz+go9OMi90n+MS+SW02oi0ZCOAhmIsZWKO/c64DILftvZouZET
wKyo/PigRQWnkP0PeKX/Ord5KotrjADIAhOAY7BhXcEKm1KCdEa6k8bmJeDSKpMe
mXIEjtkwB9KAqX8/tqqQCylMOZ362f3v2xAYHzFR517ynjvndLWGotJyL7IEob5f
aonR6Y/GEuIZFpZf3i1fZgTvjsuU8Eep7TwlGPt4amWiJ/2Pb6/MLJNJjGctgn0m
A4r7sRDRKn6dYcv0oWxtY6/UbQ41P/+TDQHrfaPcO0jS9pFU+ZU=
=vNjb
-----END PGP SIGNATURE-----

--c3bbmtjujgvpbaml--

