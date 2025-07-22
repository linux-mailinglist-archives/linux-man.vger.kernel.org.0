Return-Path: <linux-man+bounces-3288-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 278C9B0D5EC
	for <lists+linux-man@lfdr.de>; Tue, 22 Jul 2025 11:25:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4F1051684BD
	for <lists+linux-man@lfdr.de>; Tue, 22 Jul 2025 09:25:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00C962DAFC8;
	Tue, 22 Jul 2025 09:25:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6LdRZyx"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B02C31DE2B5;
	Tue, 22 Jul 2025 09:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753176341; cv=none; b=JAd3IMLi2M9pK93SokpUizrjEFGOvA1KlCY95ADtC4/LPonIjMuCsbFaJpMB0rkOP77i3Mp+iVQROwptIOYdoe9xqOZ6PxH+oc+Lwp+38A8dcO+SBHnIVlEFcLk/ENB9KVpsKkZKoEgCLIrqM6zUZ5ejc02uzRMr7QS6IiEeq4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753176341; c=relaxed/simple;
	bh=ZqWFroESKvkon34SbT5o1vELS681mvkbcwiFz5eDMzI=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=o8aQ57uy93AVkIsjoS6XD8ee61/68izf+Q++J8kjjROQA5rYeiG5S4q1MCslg+abgIfrH67a8NK923S5ln5QcPNB3PgoZXIrBzpob3KFbt44Xw3T/QYlPWcv0yQyuXzuMK4o1WsVtgehobTH1vCE91zSAQv8wNCyT4GyxDrbQR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6LdRZyx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 661CCC4CEEB;
	Tue, 22 Jul 2025 09:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753176341;
	bh=ZqWFroESKvkon34SbT5o1vELS681mvkbcwiFz5eDMzI=;
	h=Date:From:To:Cc:Subject:From;
	b=A6LdRZyxjdPpnwmy3zksd4lHuxlufgZcHM+VLwsOIAgB2ZwWjKPJqhMGbN8+ltR6C
	 UNY7HqrMBNE+0TXvtdbcXPlnyhnQJFvTScHQ/Q3Y1UwZ19BHgT88JyKCSZumWnuIGS
	 D1nNICpsvyqB1lmQsBnuZ/nHqu8vDiM5QBsWEV+aA7+xmC2BjdqkfZ0HAUdj/gyFyW
	 QngfddZAqnU9cK7LQwqBQTzvtrcOXLF4tnQCJLhOg3JhYm9sasFOdG2hkRSHSB1CkQ
	 9TFYLxl+bUwJy3OkndaELbY07oJwcnpLEsbMljm46xI6+uS5HyeSJfVl/tTjlohJwX
	 iYmFW//CWZfMg==
Date: Tue, 22 Jul 2025 11:25:23 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
Subject: man-pages-6.15 released
Message-ID: <fmdgomr7g4qrj6vmaslvmwk7buyw3h7cdjemj6egjz7xcd35xy@bla7f5rxtiul>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ecfjjehfdqa3z6st"
Content-Disposition: inline


--ecfjjehfdqa3z6st
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
Subject: man-pages-6.15 released
MIME-Version: 1.0

Gidday!

I'm proud to announce:

	man-pages-6.15 - manual pages for GNU/Linux

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


Have a lovely day!
Alex


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


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Linux Software=
 Map =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

Begin4
Title:          Linux man-pages
Version:        6.15
Entered-date:   2025-07-20
Description:    Manual pages for GNU/Linux.  This package contains
                manual pages for sections 2, 3, 4, 5, and 7, and
                subsections of those.  Only a few pages are provided in
                sections 1, 6, and 8, and none in 9.
Keywords:       man pages
Maintained-by:  Alejandro Colomar <alx@kernel.org>
Primary-site:   http://www.kernel.org/pub/linux/docs/man-pages
                2.7M  man-pages-6.15.tar.gz
Copying-policy: several; the pages are all freely distributable as long as
                nroff source is provided
End


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Changes in man=
-pages-6.15 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Released: 2025-07-20, Aldaya


New and rewritten pages
-----------------------

man2/
	cachestat.2
	fcntl.2					(split into many pages)
	fcntl_locking.2				(previously, fcntl(2))
	futex.2					(split into many pages)

man2const/
	FUTEX_CMP_REQUEUE.2const		(previously, futex(2))
	FUTEX_CMP_REQUEUE_PI.2const		(previously, futex(2))
	FUTEX_FD.2const				(previously, futex(2))
	FUTEX_LOCK_PI.2const			(previously, futex(2))
	FUTEX_LOCK_PI2.2const			(previously, futex(2))
	FUTEX_REQUEUE.2const			(previously, futex(2))
	FUTEX_TRYLOCK_PI.2const			(previously, futex(2))
	FUTEX_UNLOCK_PI.2const			(previously, futex(2))
	FUTEX_WAIT.2const			(previously, futex(2))
	FUTEX_WAIT_BITSET.2const		(previously, futex(2))
	FUTEX_WAIT_REQUEUE_PI.2const		(previously, futex(2))
	FUTEX_WAKE.2const			(previously, futex(2))
	FUTEX_WAKE_OP.2const			(previously, futex(2))
	F_DUPFD.2const				(previously, fcntl(2))
	F_GETFD.2const				(previously, fcntl(2))
	F_GETFL.2const				(previously, fcntl(2))
	F_GETLEASE.2const			(previously, fcntl(2))
	F_GETPIPE_SZ.2const			(previously, fcntl(2))
	F_GETSIG.2const				(previously, fcntl(2))
	F_GET_RW_HINT.2const			(previously, fcntl(2))
	F_GET_SEALS.2const			(previously, fcntl(2))
	F_NOTIFY.2const				(previously, fcntl(2))
	PR_FUTEX_HASH.2const			(previously, fcntl(2))

man3attr/
	intro.3attr
	gnu::aligned.3attr
	gnu::format.3attr


Newly documented interfaces in existing pages
---------------------------------------------

man2/
	chmod.2
		fchmodat(AT_EMPTY_PATH)
		fchmodat(AT_SYMLINK_NOFOLLOW)

	ioctl_vt.2
		VT_GETCONSIZECSRPOS

	prctl.2
		PR_FUTEX_HASH

	*printf.3
		ERRORS

	statx.2
		statx.stx_atomic_write_unit_max_opt

man2const/
	PR_FUTEX_HASH.2const
		PR_FUTEX_HASH

	TIOCLINUX.2const
		TIOCL_GETBRACKETEDPASTE

	UFFDIO_API.2const
		UFFDIO_FEATURE_MOVE

man5/
	core.5
		/proc/sys/kernel/core_pattern	%F


New and changed links
---------------------

man2const/
	FUTEX_WAKE_BITSET.2const		(FUTEX_WAIT_BITSET(2const))
	F_ADD_SEALS.2const			(F_GET_SEALS(2const))
	F_DUPFD_CLOEXEC.2const			(F_DUPFD(2const))
	F_GETLK.2const				(fcntl_locking(2))
	F_GETOWN.2const				(F_GETSIG(2const))
	F_GETOWN_EX.2const			(F_GETSIG(2const))
	F_GET_FILE_RW_HINT.2const		(F_GET_RW_HINT(2const))
	F_OFD_GETLK.2const			(fcntl_locking(2))
	F_OFD_SETLK.2const			(fcntl_locking(2))
	F_OFD_SETLKW.2const			(fcntl_locking(2))
	F_SETFD.2const				(F_GETFD(2const))
	F_SETFL.2const				(F_GETFL(2const))
	F_SETLEASE.2const			(F_GETLEASE(2const))
	F_SETLK.2const				(fcntl_locking(2))
	F_SETLKW.2const				(fcntl_locking(2))
	F_SETOWN.2const				(F_GETSIG(2const))
	F_SETOWN_EX.2const			(F_GETSIG(2const))
	F_SETPIPE_SZ.2const			(F_GETPIPE_SZ(2const))
	F_SETSIG.2const				(F_GETSIG(2const))
	F_SET_FILE_RW_HINT.2const		(F_GET_RW_HINT(2const))
	F_SET_RW_HINT.2const			(F_GET_RW_HINT(2const))
	VT_GETCONSIZECSRPOS.2const		(ioctl_vt(2))


Global changes
--------------

-  CREDITS renamed to AUTHORS.

-  man/
   -  Don't use bold/italics for forward declarations of function
      parameters.  This differentiates them from actual parameters.
   -  fcntl(2) and futex(2) have been split into smaller pages that are
      easier to read, and also easier to maintain.
   -  Add section man3attr, for attributes.


Changes to individual files
---------------------------

-  man/
   -  realloc(3): Clarify (non)conformance of realloc(p,0) in glibc.

The manual pages and other files in the repository have been improved
beyond what this changelog covers.  To learn more about changes applied
to individual pages, or the authors of changes, use git(1).

--=20
<https://www.alejandro-colomar.es/>

--ecfjjehfdqa3z6st
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmh/WQMACgkQ64mZXMKQ
wqm+JQ//VtGHjnxRSXxsqUn31YX+JhjJqUz6jdkBfnaPFbTT4W+X2bTZSquHLh/g
L15q1yfnCAMZBYgJpFO9W3ncBfoFwrzdLbclHjqO1S5s45+NL/5Rcyq9fuVHquiM
hucuRSNe2lwvmLXyn5U0Glf3QJIa2lz81wdBNp+gk+zS7bg7LIEegXNlgJ37/i7W
yrhi6nvFTlvIlgRZsBe9ZF2pImKso9FxVceofOgodmx/Yl5TZ80xblKb+KStPVLE
oD06WZy8h/WXkww3h3dOBUl4KBoVWW8peCk4MqtOhKgHQiS5rnfiWHZyvHoDcdf4
qtt4SQiaH8vFQL4JWf+KsQzZVALMVkzzZ52Kr6mVQBJKA/89KmNeyCpn6U2q++CW
hTXIxCi/O2I0dgDevQfff7CD9ueFpLS3n8nYXPNJbaW5uqBkeR4eM1E8yvaXOazA
z2qy2T4DS96M+1b0rBkxYUqBJbruQp7kXHucua1qoQ6m4gNx61CV/Z30C9AE9JeU
7XaUkBHjCuyOjSgo68F8bn1BGCRHRCiVc2dkNVIe8u82yooqscRLivoPvrCYkkSV
i0kYg79l0g/REvezARqpA0FZTLGczRHEmLig3h/46n4nYK57rW08HLmiZAjRfqo8
ZLvH4XctvhFNYCbckZ35vufbpXtAdsV9PLaz3qcae0CD+6K0eqo=
=0+sg
-----END PGP SIGNATURE-----

--ecfjjehfdqa3z6st--

