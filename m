Return-Path: <linux-man+bounces-2285-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E59A19AE3
	for <lists+linux-man@lfdr.de>; Wed, 22 Jan 2025 23:27:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 63086188B82F
	for <lists+linux-man@lfdr.de>; Wed, 22 Jan 2025 22:27:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9F691C8FB4;
	Wed, 22 Jan 2025 22:27:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6odvHiN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76AFB149E17;
	Wed, 22 Jan 2025 22:27:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737584822; cv=none; b=SSuhctMOmbvtP03Fwr0jDTniZO/pQ5Dv3t/HSMVEyjg/bGnouoo6klzwvDK9gyK5UOHwyZvUNNrlowRLKtls4OWYEg54K8hxgaZVrU/gBPiPahDuKuPtzKrPKe8Mo91L7HtKuAeSM+dPtSJMzB308uhRNyH/oRXvzeM1fXfuH18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737584822; c=relaxed/simple;
	bh=R+OntxJwv8jblZZmxjtv8yV+j8O9bqtKmQ8f9/0QrMQ=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=hS7Ce6N36bTID9eR76bthyGGb5FVE8YitvRw2knmt0NjyyYOLkM5GZlEB4GsLHFDDP9o2eSkV//XQTZY2ikq3UDo0JcSXqDDX/Q+720ke1HWmHRiGzpIwXnP7pgnYQKvlxdDEuG3wLaANuyo/dLkEydCYes9CB8f32Sc4+sXAeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6odvHiN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C64CFC4CED2;
	Wed, 22 Jan 2025 22:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737584821;
	bh=R+OntxJwv8jblZZmxjtv8yV+j8O9bqtKmQ8f9/0QrMQ=;
	h=Date:From:To:Cc:Subject:From;
	b=p6odvHiNz44JJwvGetrZnQ5ZWXgtGWwZ3p9+mQHlD96hbHpFy7dhP22sPlmjK58jk
	 R35gD6NVcvc27R9xSb0xlIefxTsJfFXGeEs04e7nHz5tEv/7BggChhbB7/RM61FLJ3
	 4oPSTH48eIDYMidfbbiIK5EntE9hcqhyZ4gSQpYTnGiVoT7Bt4AjONttLZS0fXftez
	 gWsd0IbCEbPVZsScOnA6+uZTKkDIhxiIMcamPbz7+tO5X0Ek/4TNlvrLl6rKFHWZu3
	 PVF2BdNjO2wV8mKCSFb+uR4Phq13WYGRWb9IZG+gEiggmH3v4Ojb4yP/JufTlfPv2G
	 NEAODTremLscg==
Date: Wed, 22 Jan 2025 23:26:48 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: libc-alpha@sourceware.org, linux-kernel@vger.kernel.org
Subject: man-pages-6.10 released
Message-ID: <glkd5bliwzofuoevcr5uqxkkebrwnwfqxiea4dblnjjj24sl72@22f5lir52umy>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oaknpgmnk5syct33"
Content-Disposition: inline


--oaknpgmnk5syct33
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: libc-alpha@sourceware.org, linux-kernel@vger.kernel.org
Subject: man-pages-6.10 released
MIME-Version: 1.0

Gidday!

I'm proud to announce:

	man-pages-6.10 - manual pages for GNU/Linux

I'm also very happy to announce that I'm back to maintaining this
project.  My work on this project, this release, and many more to come,
have been possible thanks to our sponsors.  Thank you very much!

	-  Adfinis		<https://adfinis.com/>
	-  Google		<https://opensource.google/>
	-  Hudson River Trading	<https://www.hudsonrivertrading.com/>
	-  Meta			<https://www.meta.com/>
	-  Red Hat		<https://www.redhat.com/>

Tarball download:
<https://www.kernel.org/pub/linux/docs/man-pages/>
Git repository:
<https://git.kernel.org/cgit/docs/man-pages/man-pages.git/>
Online PDF book:
<https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/book/>


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


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Changes in man=
-pages-6.10 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Released: 2024-01-22, Aldaya


New and rewritten pages
-----------------------

man1/
	diffman-git.1
	mansect.1
	pdfman.1
	sortman.1

man2/
	keyctl.2				(split into many pages)
	listmount.2
	statmount.2
	uretprobe.2

man2const/
	KEYCTL_ASSUME_AUTHORITY.2const		(previously, keyctl.2)
	KEYCTL_CHOWN.2cons			(previously, keyctl.2)t
	KEYCTL_CLEAR.2cons			(previously, keyctl.2)t
	KEYCTL_DESCRIBE.2cons			(previously, keyctl.2)t
	KEYCTL_DH_COMPUTE.2cons			(previously, keyctl.2)t
	KEYCTL_GET_KEYRING_ID.2cons		(previously, keyctl.2)t
	KEYCTL_GET_PERSISTENT.2cons		(previously, keyctl.2)t
	KEYCTL_GET_SECURITY.2cons		(previously, keyctl.2)t
	KEYCTL_INSTANTIATE.2cons		(previously, keyctl.2)t
	KEYCTL_INVALIDATE.2cons			(previously, keyctl.2)t
	KEYCTL_JOIN_SESSION_KEYRING.2cons	(previously, keyctl.2)t
	KEYCTL_LINK.2cons			(previously, keyctl.2)t
	KEYCTL_READ.2cons			(previously, keyctl.2)t
	KEYCTL_RESTRICT_KEYRING.2cons		(previously, keyctl.2)t
	KEYCTL_REVOKE.2cons			(previously, keyctl.2)t
	KEYCTL_SEARCH.2cons			(previously, keyctl.2)t
	KEYCTL_SESSION_TO_PARENT.2cons		(previously, keyctl.2)t
	KEYCTL_SETPERM.2cons			(previously, keyctl.2)t
	KEYCTL_SET_REQKEY_KEYRING.2cons		(previously, keyctl.2)t
	KEYCTL_SET_TIMEOUT.2cons		(previously, keyctl.2)t
	KEYCTL_UNLINK.2cons			(previously, keyctl.2)t
	KEYCTL_UPDATE.2cons			(previously, keyctl.2)t
	PR_RISCV_SET_ICACHE_FLUSH_CTX.2const

man3/
	__riscv_flush_icache.3
	timespec_get.3
	wcscasecmp.3				(merged wcsncasecmp.3 with it)
	wcsncasecmp.3				(merged into wcsncasecmp.3)


Newly documented interfaces in existing pages
---------------------------------------------

man2/
	io_submit.2
		RWF_ATOMIC
		RWF_NOAPPEND
	landlock_add_rule.2
		Landlock ABI v4
	landlock_create_ruleset.2
		Landlock ABI v4
	madvise.2
		MADV_GUARD_INSTALL
		MADV_GUARD_REMOVE
	perf_event_open.2
		struct perf_event_attr::inherit && cpus=3D-1
	posix_fadvise.2
		POSIX_FADV_NOREUSE
	prctl.2
		PR_RISCV_SET_ICACHE_FLUSH_CTX
	process_madvise.2
		All flags permitted for calling process
	readv.2
		RWF_ATOMIC
		RWF_NOAPPEND
	stat.2
		AT_EMPTY_PATH && NULL
	statx.2
		AT_EMPTY_PATH && NULL
		STATX_DIO_READ_ALIGN
		STATX_MNT_ID_UNIQUE
		STATX_SUBVOL
		STATX_WRITE_ATOMIC

man3/
	dlinfo.3
		RTLD_DI_PHDR
	fnmatch.3
		FNM_IGNORECASE

man7/
	landlock.7
		Landlock ABI v4
		Landlock ABI v5
	rtnetlink.7
		struct ifa_cacheinfo


New and changed links
---------------------

man2/
	riscv_flush_icache.2			(__riscv_flush_icache(3))

man2const/
	KEYCTL_INSTANTIATE_IOV.2const		(KEYCTL_INSTANTIATE(2const))
	KEYCTL_NEGATE.2const			(KEYCTL_INSTANTIATE(2const))
	KEYCTL_REJECT.2const			(KEYCTL_INSTANTIATE(2const))

man3/
	timespec_getres.3			(timespec_get(3))
	wcsncasecmp.3				(wcscasecmp(3))


Removed pages
-------------


Removed links
-------------


Global changes
--------------

-  src/bin/
   -  Add a few programs that are useful for maintaining manual pages:
      diffman-git(1), mansect(1), pdfman(1), sortman(1)

-  SPONSORS
   -  Add file listing the sponsors of this project.

-  CONTRIBUTING*
   -  Expand documentation for contributing to the project.  Especially,
      regarding help using git(1).

-  man/
   -  Split keyctl.2
   -  man2/, man3/: SYNOPSIS: Rename function parameters for consistency
      and correctness.
   -  man2/, man3/: SYNOPSIS: Use typeof() to improve readability of
      function pointers.
   -  man1/: SYNOPSIS: Use .SY/.YS for formatting commands.

-  share/mk/
   -  Refactor *FLAGS and LDLIBS variables, as requested by some
      distros.

-  LICENSES/
   -  Add GPL-3.0-or-later.


Changes to individual files
---------------------------

The manual pages and other files in the repository have been improved
beyond what this changelog covers.  To learn more about changes applied
to individual pages, or the authors of changes, use git(1).


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Linux Software=
 Map =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

Begin4
Title:          Linux man-pages
Version:        6.10
Entered-date:   2025-01-22
Description:    Manual pages for GNU/Linux.  This package contains
                manual pages for sections 2, 3, 4, 5, and 7, and
                subsections of those.  Only a few pages are provided in
                sections 1, 6, and 8, and none in 9.
Keywords:       man pages
Maintained-by:  Alejandro Colomar <alx@kernel.org>
Primary-site:   http://www.kernel.org/pub/linux/docs/man-pages
                2.7M  man-pages-6.10.tar.gz
Copying-policy: several; the pages are all freely distributable as long as
                nroff source is provided
End

--=20
<https://www.alejandro-colomar.es/>

--oaknpgmnk5syct33
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeRcKcACgkQnowa+77/
2zKP9A//e0UV1fEVo8bMiaBlhEe7zKCZ+2wj5ZQLhbOtNF8zKkhtvxuASrZHhalR
t+xWyJ34sS2S0VD9i7h3kvK/u12wKcOrozxtTE2KB0OrbFytZvlQS/afAdLoEfWM
VMoEVK1ymkAReTD1fwSsI1hzzn1CokRiRiUdLzx4hrzK9i4Xo+cPNB9jylgNwNH8
aYfVV2H6DIGLUnwhUZnLGXeLDeCdbc5bDHQw7G/rtLJghwWX9heAAdEqVaMhggkl
3DGkkd9i+TfcGJOpqGCmbijwRx1gSK9ExNliCmDA0UF6b4dYXZ9mp3pkOzHv6DfF
Sp/JmjsNB7Jc2931Z6F0jJSkOyoGdhhi7+wbFEnpiDvhY0cMQ7kU2VmbIRkn5Fwz
8e4+qfTi53neWPNJP04UQmWqX/zp4J224AppoBb6SF3MX5hgpe/reoHQFE5gAsJm
NjivTrUJWM6UO4kEPIoGS0g+hAxM8nFxLcyDlJECVav5Y2biIEsNhHwMQK9QzakF
uiQHdgiSIClqv/jxiJsnNERH5RPGSLzI+j32RGgcFx5oYk/1QeJIRT9H0mMd9d2P
6u66BXa7C9BKOf6llf+1EUo4aOQ5EIZVney20oea8OGMrF+bjZ8z4LcGDiNM9tdH
C1XhlbTeNvnA4AfllnQZq3Th/5mU1XoLHl0kjQ0Tf7mQxgDisVI=
=9x1b
-----END PGP SIGNATURE-----

--oaknpgmnk5syct33--

